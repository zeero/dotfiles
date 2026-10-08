#!/usr/bin/env bash
#
# PR の URL を渡すと、auto-pr-review を走らせる Claude Code のセッションを
# バックグラウンドで起動する。シェルから直接叩くための入り口。
#
# セッション名には PR 番号を使う。`claude agents` の一覧で、どの PR を見ている
# セッションかを名前だけで見分けられるようにするため。

set -uo pipefail

usage() {
  cat <<'USAGE'
usage: auto-pr-review.sh <PR の URL>

  例: auto-pr-review.sh https://github.com/charmbracelet/glow/pull/1036

exit code:
  0  セッションを起動した
  64 引数が不正
USAGE
}

[ $# -eq 1 ] || { usage >&2; exit 64; }
case "$1" in -h|--help) usage; exit 0 ;; esac

URL="$1"

# 取り出すのはセッション名に使う PR 番号だけ。owner/repo やホスト名の解釈は
# スキル側が URL から行うので、ここで二重に検証しない。
PR_NUMBER="$(printf '%s' "$URL" | sed -n 's|.*/pull/\([0-9][0-9]*\).*|\1|p')"
if [ -z "$PR_NUMBER" ]; then
  printf 'PR の URL に見えません (/pull/<番号> を含みません): %s\n' "$URL" >&2
  exit 64
fi

exec claude \
  --permission-mode auto \
  --model "opus" \
  --name "$PR_NUMBER" \
  --bg "/auto-pr-review $URL"
