#!/usr/bin/env bash
#
# PR をレビューするための worktree を用意し、レビュー範囲を key=value で出力する。
#
# worktree は detached HEAD にする。PR のブランチ名でチェックアウトすると、
# 同じブランチを他の場所で使っているときに衝突するため。
#
# 前回の中間データが残っていれば、上書きされる前に控えへ退避し、前回からの差分を
# レビュー範囲にできるかどうかを判定する。force-push や rebase で前回のコミットへ
# たどり着けない場合は差分を諦めて全体レビューへ倒す (黙って狭い範囲だけ見ない)。

set -uo pipefail

SUFFIX="-auto-pr-review"

usage() {
  cat <<'USAGE'
usage: prepare-worktree.sh <owner/repo> <PR番号>

exit code:
  0  正常終了
  2  ghq.root が未設定
  3  クローンが手元に無い (ghq get が必要)
  4  既存の worktree に未保存の変更が残っている
  5  git / gh の操作に失敗した
  6  worktree の置き場所に、worktree ではないディレクトリがある
  64 引数が不正
USAGE
}

die() {
  printf '%s\n' "$1" >&2
  exit "$2"
}

[ $# -eq 2 ] || { usage >&2; exit 64; }
case "$1" in -h|--help) usage; exit 0 ;; esac

SLUG="$1"
PR_NUMBER="$2"
case "$PR_NUMBER" in
  ''|*[!0-9]*) die "PR 番号が数値ではありません: $PR_NUMBER" 64 ;;
esac

GHQ_ROOT="$(git config ghq.root 2>/dev/null || true)"
[ -n "$GHQ_ROOT" ] || die "ghq.root が設定されていません (git config ghq.root)" 2
# ghq.root は "~/dev" のようにチルダ付きで書かれることがある
GHQ_ROOT="${GHQ_ROOT/#\~/$HOME}"

REPO_PATH="$GHQ_ROOT/github.com/$SLUG"
if [ ! -d "$REPO_PATH/.git" ] && [ ! -f "$REPO_PATH/.git" ]; then
  die "クローンが見つかりません: $REPO_PATH (ghq get $SLUG が必要)" 3
fi

WORKTREE_PATH="$REPO_PATH/.worktrees/${PR_NUMBER}${SUFFIX}"
REPORT_PATH="$REPO_PATH/.worktrees/${PR_NUMBER}${SUFFIX}.html"
DATA_PATH="$REPO_PATH/.worktrees/${PR_NUMBER}${SUFFIX}.json"

PR_META="$(gh pr view "$PR_NUMBER" --repo "$SLUG" --json state,baseRefName 2>/dev/null)" \
  || die "PR の情報を取得できませんでした: $SLUG#$PR_NUMBER" 5
# 取り出しに失敗した値をそのまま次の git コマンドへ渡すと、原因と無関係な場所で
# 失敗して追いにくくなるので、ここで止める。
PR_STATE="$(printf '%s' "$PR_META" | python3 -c 'import json,sys; print(json.load(sys.stdin)["state"])')" \
  || die "PR の情報を読み取れませんでした (state): $SLUG#$PR_NUMBER" 5
BASE_REF="$(printf '%s' "$PR_META" | python3 -c 'import json,sys; print(json.load(sys.stdin)["baseRefName"])')" \
  || die "PR の情報を読み取れませんでした (baseRefName): $SLUG#$PR_NUMBER" 5

git -C "$REPO_PATH" fetch --quiet origin "refs/pull/$PR_NUMBER/head" \
  || die "PR のコミットを取得できませんでした: refs/pull/$PR_NUMBER/head" 5
HEAD_SHA="$(git -C "$REPO_PATH" rev-parse FETCH_HEAD)" \
  || die "PR の先端のコミットを特定できませんでした: refs/pull/$PR_NUMBER/head" 5

git -C "$REPO_PATH" fetch --quiet origin "$BASE_REF" \
  || die "取り込み先ブランチを取得できませんでした: $BASE_REF" 5
BASE_SHA="$(git -C "$REPO_PATH" rev-parse FETCH_HEAD)" \
  || die "取り込み先のコミットを特定できませんでした: $BASE_REF" 5

MERGE_BASE="$(git -C "$REPO_PATH" merge-base "$BASE_SHA" "$HEAD_SHA")" \
  || die "取り込み先との共通祖先を特定できませんでした" 5

# 手で消された worktree の登録が残っていると worktree add が失敗する
git -C "$REPO_PATH" worktree prune

if [ -d "$WORKTREE_PATH" ]; then
  # worktree として登録されていないディレクトリに git -C を向けると、git は親を
  # さかのぼってメインのクローンを掴む。その状態で checkout すると、レビュー対象の
  # コミットでメインのクローンの HEAD が動いてしまう。触る前に、そのディレクトリ
  # 自身がリポジトリの最上位であることを確かめる。
  worktree_real="$(cd "$WORKTREE_PATH" && pwd -P)" \
    || die "worktree に入れません: $WORKTREE_PATH" 6
  worktree_top="$(git -C "$WORKTREE_PATH" rev-parse --show-toplevel 2>/dev/null || true)"
  if [ "$worktree_top" != "$worktree_real" ]; then
    die "worktree の置き場所に、worktree ではないディレクトリがあります: $WORKTREE_PATH" 6
  fi

  dirty="$(git -C "$WORKTREE_PATH" status --porcelain 2>/dev/null || true)"
  if [ -n "$dirty" ]; then
    die "既存の worktree に未保存の変更が残っています: $WORKTREE_PATH" 4
  fi
  git -C "$WORKTREE_PATH" checkout --quiet --detach "$HEAD_SHA" \
    || die "既存の worktree を更新できませんでした: $WORKTREE_PATH" 5
  WORKTREE_ACTION="reused"
else
  mkdir -p "$REPO_PATH/.worktrees"
  git -C "$REPO_PATH" worktree add --quiet --detach "$WORKTREE_PATH" "$HEAD_SHA" \
    || die "worktree を作成できませんでした: $WORKTREE_PATH" 5
  WORKTREE_ACTION="created"
fi

# 前回の中間データを控えへ退避する。退避してからモデルが DATA_PATH を書き直す。
ROUND=1
PREVIOUS_DATA=""
PREVIOUS_HEAD=""
if [ -f "$DATA_PATH" ]; then
  previous_round="$(python3 -c '
import json, sys
try:
    with open(sys.argv[1], encoding="utf-8") as f:
        print(int(json.load(f).get("run", {}).get("round", 1)))
except Exception:
    print(1)
' "$DATA_PATH")"
  PREVIOUS_HEAD="$(python3 -c '
import json, sys
try:
    with open(sys.argv[1], encoding="utf-8") as f:
        print(json.load(f).get("pr", {}).get("head_sha", "") or "")
except Exception:
    print("")
' "$DATA_PATH")"
  ROUND=$((previous_round + 1))
  PREVIOUS_DATA="$REPO_PATH/.worktrees/${PR_NUMBER}${SUFFIX}.r${previous_round}.json"
  # 退避に失敗したまま進むと、モデルが DATA_PATH を書き直した時点で前回の内容が
  # 失われる。控えが取れないなら、ここで止めるほうが安い。
  cp "$DATA_PATH" "$PREVIOUS_DATA" \
    || die "前回の中間データを控えへ退避できませんでした: $PREVIOUS_DATA" 5
fi

# 差分レビューにできるのは、前回のコミットが今回の履歴から辿れるときだけ。
# rebase / force-push されていると辿れず、その差分はレビュー範囲として意味を成さない。
REVIEW_MODE="full"
DELTA_RANGE=""
FALLBACK_REASON=""
if [ -z "$PREVIOUS_DATA" ]; then
  FALLBACK_REASON="初回のレビュー"
elif [ -z "$PREVIOUS_HEAD" ]; then
  FALLBACK_REASON="前回のデータに前回時点のコミットが記録されていない"
elif ! git -C "$REPO_PATH" cat-file -e "${PREVIOUS_HEAD}^{commit}" 2>/dev/null; then
  FALLBACK_REASON="前回時点のコミットが見つからない (履歴が書き換えられた可能性)"
elif ! git -C "$REPO_PATH" merge-base --is-ancestor "$PREVIOUS_HEAD" "$HEAD_SHA" 2>/dev/null; then
  FALLBACK_REASON="前回時点のコミットが現在の履歴から辿れない (rebase / force-push)"
elif [ "$PREVIOUS_HEAD" = "$HEAD_SHA" ]; then
  FALLBACK_REASON="前回から新しいコミットが無い"
else
  REVIEW_MODE="delta"
  DELTA_RANGE="${PREVIOUS_HEAD}..${HEAD_SHA}"
fi

cat <<EOF
REPO_PATH=$REPO_PATH
WORKTREE_PATH=$WORKTREE_PATH
WORKTREE_ACTION=$WORKTREE_ACTION
REPORT_PATH=$REPORT_PATH
DATA_PATH=$DATA_PATH
PREVIOUS_DATA=$PREVIOUS_DATA
PR_NUMBER=$PR_NUMBER
PR_STATE=$PR_STATE
BASE_REF=$BASE_REF
BASE_SHA=$BASE_SHA
HEAD_SHA=$HEAD_SHA
PREVIOUS_HEAD=$PREVIOUS_HEAD
MERGE_BASE=$MERGE_BASE
FULL_RANGE=${MERGE_BASE}..${HEAD_SHA}
REVIEW_MODE=$REVIEW_MODE
DELTA_RANGE=$DELTA_RANGE
FALLBACK_REASON=$FALLBACK_REASON
ROUND=$ROUND
EOF
