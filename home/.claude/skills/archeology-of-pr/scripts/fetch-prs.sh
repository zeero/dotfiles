#!/usr/bin/env bash
#
# archeology-of-pr の取得パート。マージ済み PR から人間のレビューのやり取りを
# 取り出し、PR ごとの Markdown として書き出す。
#
# 抽出・判定はモデルが行うので、ここでは「落とす条件が客観的に決まるもの」だけを
# 落とす: bot の発言、人間の指摘が 1 件も無い PR。
#
# usage:
#   fetch-prs.sh [--repo OWNER/NAME] [--limit N] [--before PR] [--after PR] [--out DIR]
#
#   --before / --after は PR 番号。掘削済み区間の外側だけを取りに行くために使う。
#     新着方向: --after  <区間の上端>
#     過去方向: --before <区間の下端>

set -euo pipefail

REPO=""
LIMIT=100
BEFORE=""
AFTER=""
OUT=""

while [ $# -gt 0 ]; do
  case "$1" in
    --repo)    REPO="$2";   shift 2 ;;
    --limit)   LIMIT="$2";  shift 2 ;;
    --before)  BEFORE="$2"; shift 2 ;;
    --after)   AFTER="$2";  shift 2 ;;
    --out)     OUT="$2";    shift 2 ;;
    -h|--help) sed -n '3,17p' "$0"; exit 0 ;;
    *) echo "unknown option: $1" >&2; exit 2 ;;
  esac
done

command -v gh >/dev/null || { echo "gh が見つかりません" >&2; exit 1; }
command -v jq >/dev/null || { echo "jq が見つかりません" >&2; exit 1; }

if [ -z "$REPO" ]; then
  REPO="$(gh repo view --json nameWithOwner -q .nameWithOwner)"
fi
OWNER="${REPO%%/*}"
NAME="${REPO##*/}"

if [ -z "$OUT" ]; then
  OUT="$(mktemp -d "${TMPDIR:-/tmp}/archeology-of-pr.XXXXXX")"
fi
mkdir -p "$OUT"

WORK="$OUT/.work"
mkdir -p "$WORK"

read -r -d '' QUERY <<'GRAPHQL' || true
query($owner:String!, $name:String!, $cursor:String) {
  repository(owner:$owner, name:$name) {
    pullRequests(states:MERGED, first:25, after:$cursor,
                 orderBy:{field:CREATED_AT, direction:DESC}) {
      pageInfo { hasNextPage endCursor }
      nodes {
        number title body url mergedAt headRefOid
        author { login __typename }
        reviewThreads(first:50) {
          nodes {
            isResolved isOutdated path line
            resolvedBy { login }
            comments(first:20) {
              nodes {
                body diffHunk path originalLine createdAt
                author { login __typename }
                authorAssociation
                originalCommit { oid }
              }
            }
          }
        }
      }
    }
  }
}
GRAPHQL

# --- 1. ページをたどって PR を集める -------------------------------------
# PR 番号は作成順に振られるので、CREATED_AT 降順で回しながら番号で絞り込める。
# 欲しい件数（人間の指摘がある PR）が貯まるか、ページが尽きたら止める。

: > "$WORK/nodes.jsonl"
CURSOR=""
COLLECTED=0
SCANNED=0

while :; do
  args=(-f "owner=$OWNER" -f "name=$NAME" -f "query=$QUERY")
  [ -n "$CURSOR" ] && args+=(-f "cursor=$CURSOR")

  page="$(gh api graphql "${args[@]}")"

  echo "$page" \
    | jq -c --argjson before "${BEFORE:-null}" --argjson after "${AFTER:-null}" '
        .data.repository.pullRequests.nodes[]
        | select($before == null or .number < $before)
        | select($after  == null or .number > $after)
        # bot の発言はここで落とす。規範として欲しいのはチームの暗黙知なので、
        # linter 相当の自動指摘は対象外。
        | .reviewThreads.nodes |= map(
            .comments.nodes |= map(select((.author.__typename // "") != "Bot"
                                          and ((.author.login // "") | endswith("[bot]") | not)))
            | select((.comments.nodes | length) > 0)
          )
        | select((.reviewThreads.nodes | length) > 0)
      ' >> "$WORK/nodes.jsonl" || true

  SCANNED=$(( SCANNED + $(echo "$page" | jq '.data.repository.pullRequests.nodes | length') ))
  COLLECTED=$(wc -l < "$WORK/nodes.jsonl" | tr -d ' ')

  if [ "$COLLECTED" -ge "$LIMIT" ]; then break; fi
  if [ "$(echo "$page" | jq -r '.data.repository.pullRequests.pageInfo.hasNextPage')" != "true" ]; then break; fi
  CURSOR="$(echo "$page" | jq -r '.data.repository.pullRequests.pageInfo.endCursor')"
done

head -n "$LIMIT" "$WORK/nodes.jsonl" | jq -s '.' > "$WORK/prs.json"
COLLECTED="$(jq 'length' "$WORK/prs.json")"

if [ "$COLLECTED" -eq 0 ]; then
  echo "scanned=$SCANNED collected=0 out=$OUT"
  echo "人間のレビュー指摘がある PR は見つかりませんでした。" > "$OUT/manifest.md"
  exit 0
fi

# --- 2. 指摘後に実際に変わったコードを取る --------------------------------
# isOutdated が true のスレッドだけ、指摘時点のコミットから PR の先頭までを比較する。
# false なら指摘先のコードは変わっていない（＝直されなかった）ので取りに行かない。

: > "$WORK/patches.jsonl"
while IFS=$'\t' read -r base head; do
  [ -z "$base" ] && continue
  cmp_json="$(gh api "repos/$REPO/compare/$base...$head" 2>/dev/null || echo '{}')"
  echo "$cmp_json" | jq -c --arg key "$base...$head" '
    {key: $key,
     files: ([.files // [] | .[] | {(.filename): (.patch // "")}] | add // {})}
  ' >> "$WORK/patches.jsonl"
done < <(jq -r '
  .[] | .headRefOid as $head
  | .reviewThreads.nodes[]
  | select(.isOutdated)
  | (.comments.nodes[0].originalCommit.oid // empty) as $base
  | "\($base)\t\($head)"
' "$WORK/prs.json" | sort -u)

jq -s 'map({(.key): .files}) | add // {}' "$WORK/patches.jsonl" > "$WORK/patches.json"

# --- 3. PR ごとの Markdown を書き出す ------------------------------------

jq -r --slurpfile patches "$WORK/patches.json" '
  def trunc(n): if (. | length) > n then (.[0:n] + "\n…（以下略）") else . end;

  .[] | . as $pr | $pr.headRefOid as $head |
  ([
    "# PR #\($pr.number) — \($pr.title)",
    "",
    "- URL: \($pr.url)",
    "- 作者: @\($pr.author.login // "unknown")",
    "- merged: \($pr.mergedAt)",
    "",
    "## 本文",
    "",
    (($pr.body // "") | trunc(1500)),
    ""
  ] + ([$pr.reviewThreads.nodes | to_entries[] | .key as $i | .value as $t |
    ([
      "## スレッド \($i + 1) — \($t.path // "?"):\($t.line // $t.comments.nodes[0].originalLine // "?")",
      "",
      "- 解決: \(if $t.isResolved then "解決済み" + (if $t.resolvedBy.login then " (@\($t.resolvedBy.login))" else "" end) else "未解決" end)",
      "- 指摘先のコード: \(if $t.isOutdated then "指摘後に変更された" else "指摘後も変わっていない" end)",
      "",
      "### 指摘時のコード",
      "",
      "```",
      (($t.comments.nodes[0].diffHunk // "") | trunc(1200)),
      "```",
      ""
    ] + [$t.comments.nodes | to_entries[] | .key as $j | .value as $c |
      "\(if $j == 0 then "### 指摘" else "### 返信 \($j)" end) — @\($c.author.login // "unknown") (\($c.authorAssociation // "?"))\n\n\($c.body | trunc(1500))\n"
    ] + (
      if $t.isOutdated then
        ($t.comments.nodes[0].originalCommit.oid // "") as $base |
        ($patches[0]["\($base)...\($head)"][$t.path] // "") as $patch |
        (if $patch == "" then [] else
          ["### 指摘後の実際の変更", "", "```diff", ($patch | trunc(2000)), "```", ""]
        end)
      else [] end
    ))
    | join("\n")
  ])) | join("\n")
  | "<<<ARCHEOLOGY-OF-PR \($pr.number)>>>\n" + .
' "$WORK/prs.json" \
| awk -v out="$OUT" '
    /^<<<ARCHEOLOGY-OF-PR [0-9]+>>>$/ {
      n = $0; gsub(/[^0-9]/, "", n);
      file = sprintf("%s/pr-%s.md", out, n);
      next
    }
    file { print > file }
  '

# --- 4. マニフェスト -----------------------------------------------------

MIN="$(jq '[.[].number] | min' "$WORK/prs.json")"
MAX="$(jq '[.[].number] | max' "$WORK/prs.json")"

{
  echo "# 取得結果"
  echo
  echo "- リポジトリ: $REPO"
  echo "- 走査した PR: ${SCANNED} 件（マージ済み）"
  echo "- 人間のレビュー指摘があった PR: ${COLLECTED} 件"
  echo "- 取得した PR 番号の範囲: #${MIN} 〜 #${MAX}"
  echo "- 出力先: $OUT"
  echo
  echo "## ファイル一覧"
  echo
  jq -r '.[] | "- pr-\(.number).md — \(.title)"' "$WORK/prs.json"
} > "$OUT/manifest.md"

echo "scanned=$SCANNED collected=$COLLECTED range=$MIN..$MAX out=$OUT"
