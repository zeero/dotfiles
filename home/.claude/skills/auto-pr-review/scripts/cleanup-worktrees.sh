#!/usr/bin/env bash
#
# auto-pr-review が作った worktree のうち、PR が閉じているものを片付ける。
#
# 削除は `git worktree remove` を --force なしで呼ぶ。未保存の変更や未追跡ファイルが
# 残っている worktree は git 自身が削除を拒むため、その判定を自前で書かない。
# --force を足すとこの安全弁が消えるので、足さないこと。
#
# PR の状態を取得できなかったものは消さない。通信の失敗が削除に化けるのを防ぐため。

set -uo pipefail

SUFFIX="-auto-pr-review"

usage() {
  cat <<'USAGE'
usage: cleanup-worktrees.sh <owner/repo> [--keep <PR番号>]

  <owner/repo>    対象リポジトリ (例: zeero/dotfiles)
  --keep <PR番号> この PR の worktree は状態に関わらず残す

exit code:
  0  正常終了 (削除対象が無い場合を含む)
  2  ghq.root が未設定
  64 引数が不正
USAGE
}

die() {
  printf '%s\n' "$1" >&2
  exit "$2"
}

SLUG=""
KEEP=""
while [ $# -gt 0 ]; do
  case "$1" in
    --keep)
      [ $# -ge 2 ] || { usage >&2; exit 64; }
      KEEP="$2"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    -*)
      usage >&2
      exit 64
      ;;
    *)
      [ -z "$SLUG" ] || { usage >&2; exit 64; }
      SLUG="$1"
      shift
      ;;
  esac
done

[ -n "$SLUG" ] || { usage >&2; exit 64; }

GHQ_ROOT="$(git config ghq.root 2>/dev/null || true)"
[ -n "$GHQ_ROOT" ] || die "ghq.root が設定されていません (git config ghq.root)" 2
# ghq.root は "~/dev" のようにチルダ付きで書かれることがある
GHQ_ROOT="${GHQ_ROOT/#\~/$HOME}"

REPO_PATH="$GHQ_ROOT/github.com/$SLUG"
if [ ! -d "$REPO_PATH/.git" ] && [ ! -f "$REPO_PATH/.git" ]; then
  printf 'クローンが見つからないため掃除をスキップしました: %s\n' "$REPO_PATH"
  exit 0
fi
# `worktree list` はシンボリックリンクを解決した実体のパスを返すため、
# 置き場所の照合に使う側も同じ形に揃えておく。
REPO_REAL="$(cd "$REPO_PATH" && pwd -P)" \
  || die "クローンに入れません: $REPO_PATH" 2

removed=0
kept=0

# `worktree list --porcelain` は 1 ツリーにつき "worktree <path>" で始まるブロックを返す。
# パイプの while ループだと集計がサブシェルに閉じて消えるため、プロセス置換で回す。
while IFS= read -r line; do
  case "$line" in
    "worktree "*) ;;
    *) continue ;;
  esac
  wt_path="${line#worktree }"
  wt_name="$(basename "$wt_path")"

  # このスキルが作ったものだけを対象にする。名前だけで判定すると、同じ名前で
  # 別の場所に作られた worktree まで削除対象に入るため、置き場所も一致させる。
  # (prepare-worktree.sh は必ず <クローン>/.worktrees/<PR番号>-auto-pr-review に作る)
  case "$wt_path" in
    "$REPO_REAL/.worktrees/"*) ;;
    *) continue ;;
  esac
  case "$wt_name" in
    *"$SUFFIX") ;;
    *) continue ;;
  esac
  pr_number="${wt_name%"$SUFFIX"}"
  case "$pr_number" in
    ''|*[!0-9]*) continue ;;
  esac

  if [ -n "$KEEP" ] && [ "$pr_number" = "$KEEP" ]; then
    printf '残す  #%s (今回のレビュー対象)\n' "$pr_number"
    kept=$((kept + 1))
    continue
  fi

  state="$(gh pr view "$pr_number" --repo "$SLUG" --json state -q .state 2>/dev/null || true)"
  if [ -z "$state" ]; then
    printf '残す  #%s (PR の状態を取得できませんでした)\n' "$pr_number"
    kept=$((kept + 1))
    continue
  fi
  if [ "$state" = "OPEN" ]; then
    printf '残す  #%s (PR は開いています)\n' "$pr_number"
    kept=$((kept + 1))
    continue
  fi

  if remove_err="$(git -C "$REPO_PATH" worktree remove "$wt_path" 2>&1)"; then
    printf '削除  #%s (%s)\n' "$pr_number" "$state"
    removed=$((removed + 1))
  else
    case "$remove_err" in
      *"use --force"*)
        printf '残す  #%s (%s だが未保存の変更が残っています)\n' "$pr_number" "$state"
        ;;
      *)
        printf '残す  #%s (削除に失敗: %s)\n' "$pr_number" "$remove_err"
        ;;
    esac
    kept=$((kept + 1))
  fi
done < <(git -C "$REPO_PATH" worktree list --porcelain)

printf '掃除の結果: 削除 %d 件 / 残した %d 件\n' "$removed" "$kept"
printf 'レポートと中間データは削除していません。\n'
