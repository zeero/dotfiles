#!/usr/bin/env bash

# symlink 対象は scripts/symlink.yml に宣言。本スクリプトは yq で読み出して実行する薄いランナー。
# `--dry-run`（`-n`）で変更せず差分のみ表示する。変更が無いもの（= same）はノイズになるため非表示、
# 変更を含むセクションのヘッダーだけを遅延表示する。通常実行は従来どおり無出力（操作のみ）。
# yq は brew bundle で導入される前提（install フローの brew より後に走る）。

set -euo pipefail
export DOTFILES HOME
DOTFILES=$(realpath "$(dirname "$(realpath "$0")")/..")
YML="$(dirname "$(realpath "$0")")/symlink.yml"

DRY=0
case "${1:-}" in -n|--dry-run) DRY=1 ;; esac

# dry-run 集計。パイプ越しの while だとサブシェルで失われるため、yq はプロセス置換で読む（下記参照）。
declare -A N=([new]=0 [retarget]=0 [replace]=0 [unchanged]=0 [mkdir]=0 [cmd]=0 [warn]=0)
# set -e 下で (( x++ )) は結果0のとき終了コード1を返し中断するため、算術代入で増やす。
bump() { N[$1]=$(( ${N[$1]} + 1 )); }

# 変更を含むセクションのヘッダーのみ遅延表示する（空セクションのヘッダーを出さない）。
PENDING=""
emit() { [[ -n "$PENDING" ]] && { printf '\n=== %s ===\n' "$PENDING"; PENDING=""; }; printf '%s\n' "$1"; }

# 先頭 ~ を $HOME に置換し、${VAR} を展開する。
expand() { local s="${1/#\~/$HOME}"; eval "printf '%s' \"$s\""; }

# dry-run: ln/ln_fanout 共通の差分分類（src/dst は展開済み）。変更なしは件数のみで非表示。
plan_link() {
  local src="$1" dst="$2"
  if [[ ! -e "$src" && ! -L "$src" ]]; then emit "  ⚠️ missing src  $src"; bump warn; return; fi
  if [[ -L "$dst" ]]; then
    local cur; cur=$(readlink "$dst")
    if [[ "$cur" == "$src" ]]; then bump unchanged
    else emit "  🔄 retarget  $dst  (現: $cur)"; bump retarget; fi
  elif [[ -e "$dst" ]]; then
    emit "  ♻️ replace   $dst  (非シンボリックリンクの実体)"; bump replace
  else
    emit "  🆕 new       $dst -> $src"; bump new
  fi
}

do_mkdir() {
  local d; d=$(expand "$1")
  if (( DRY )); then
    [[ -d "$d" ]] && bump unchanged || { emit "  📁 mkdir     $d"; bump mkdir; }
  else mkdir -p "$d"; fi
}

do_ln() {
  local src dst; src=$(expand "$1"); dst=$(expand "$2")
  if (( DRY )); then plan_link "$src" "$dst"; return; fi
  [[ -e "$src" || -L "$src" ]] || { echo "WARN: missing src $src" >&2; return 0; }
  ln -sfh "$src" "$dst"
}

do_ln_fanout() {  # dir target filter(all|file|dir)
  local dir target filter; dir=$(expand "$1"); target=$(expand "$2"); filter="${3:-all}"
  local typeopt=(); case "$filter" in file) typeopt=(-type f);; dir) typeopt=(-type d);; esac
  if (( DRY )); then
    [[ -d "$dir" ]] || { emit "  ⚠️ missing dir  $dir"; bump warn; return; }
    while IFS= read -r child; do
      plan_link "$child" "$target/$(basename "$child")"
    done < <(find "$dir" -depth 1 "${typeopt[@]}")
    return
  fi
  [[ -d "$dir" ]] || { echo "WARN: missing dir $dir" >&2; return 0; }
  mkdir -p "$target"
  find "$dir" -depth 1 "${typeopt[@]}" -exec ln -sfh {} "$target" \;
}

do_cmd() {
  # expand() は引用符付き文字列を壊すため cmd には使わず、生文字列を単一 eval で解釈する。
  # これにより ${DOTFILES}/${HOME} の展開・埋め込み引用符（"File Templates"）・glob が正しく処理される。
  if (( DRY )); then emit "  ⚙️ cmd would run (効果未診断): $1"; bump cmd; return; fi
  eval "$1"
}

(( DRY )) && echo "DRY-RUN — 変更は行いません（= 変更なしは非表示）"

# yq | while のパイプだと while がサブシェル化し N 集計が消えるため、プロセス置換で main shell に保つ。
# mikefarah yq は jq と構文が異なる: セクションごとに [ヘッダ] + [ステップ群] を組んで .[] で
# 展開することで「宣言順の保持」と「セクション見出しの差し込み」を両立する（comma 分配の癖を回避）。
while IFS=$'\t' read -r kind a b c; do
  case "$kind" in
    @section)  PENDING="$a" ;;
    mkdir)     do_mkdir "$a" ;;
    ln)        do_ln        "$a" "$b" ;;
    ln_fanout) do_ln_fanout "$a" "$b" "$c" ;;
    cmd)       do_cmd       "$a" ;;
  esac
done < <(yq -r '
  .sections[] | (
    ["@section" + "\t" + .section] + [
      .steps[] | (
        [
          (select(has("mkdir"))     | "mkdir" + "\t" + .mkdir),
          (select(has("ln"))        | "ln" + "\t" + .ln.src + "\t" + .ln.dst),
          (select(has("ln_fanout")) | "ln_fanout" + "\t" + .ln_fanout.dir + "\t" + .ln_fanout.target + "\t" + (.ln_fanout.filter // "all")),
          (select(has("cmd"))       | "cmd" + "\t" + .cmd)
        ] | .[]
      )
    ]
  ) | .[]
' "$YML")

if (( DRY )); then
  printf '\nsummary: 🆕 new %s  🔄 retarget %s  ♻️ replace %s  ✅ unchanged %s  📁 mkdir %s  ⚙️ cmd %s  ⚠️ warn %s\n' \
    "${N[new]}" "${N[retarget]}" "${N[replace]}" "${N[unchanged]}" "${N[mkdir]}" "${N[cmd]}" "${N[warn]}"
fi
