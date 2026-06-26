#!/usr/bin/env bash
#
# learning スキルのセットアップ要否ゲート。毎回安全に再実行できる（冪等）。
# 確認不要の決定論的セットアップ（ディレクトリ作成・テンプレコピー・repo の
# LEARNINGS.md / STRATEGY_SPEC.md 作成）まで行い、人の判断・要確認が残る作業は
# ACTION NEEDED として出力する。CLAUDE.md は読み書きしない（モデル＋ユーザ確認に残す）。

set -euo pipefail

# テンプレは agent 固有変数に依存せず自己位置から相対解決する（skill ディレクトリ
# ごと symlink されていても機能する）。
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATES="$SCRIPT_DIR/../assets/templates"

# 今回作成した項目に応じて ACTION NEEDED を出し分ける。
machine_created=0
repo_created=0

echo "=== learning skill setup check ==="

# --- machine: ~/.agents/{learnings,reflection}/ ---
# 各項目を独立にガードし、無いものだけ作成する（片方だけ存在しても齟齬なく補完）。
ensure_dir() {
  local label="$1" dest="$2" src="$3"
  if [ -e "$dest" ]; then
    printf '[machine] %-10s : already present\n' "$label"
  else
    mkdir -p "$dest"
    cp -R "$src/." "$dest/"
    printf '[machine] %-10s : created          (%s)\n' "$label" "$dest"
    machine_created=1
  fi
}

ensure_dir "learnings" "$HOME/.agents/learnings" "$TEMPLATES/global/learnings"
ensure_dir "reflection" "$HOME/.agents/reflection" "$TEMPLATES/global/reflection"

# --- repo: <repo>/LEARNINGS.md, STRATEGY_SPEC.md ---
# LEARNINGS.md の有無を repo セットアップ済みの sentinel とする。
repo_root="$(git rev-parse --show-toplevel 2>/dev/null || true)"
if [ -z "$repo_root" ]; then
  echo "[repo]    skipped (not a git repo)"
else
  if [ -e "$repo_root/LEARNINGS.md" ]; then
    printf '[repo]    %-16s : already present\n' "LEARNINGS.md"
  else
    cp "$TEMPLATES/project/LEARNINGS.md" "$repo_root/LEARNINGS.md"
    printf '[repo]    %-16s : created     (%s)\n' "LEARNINGS.md" "$repo_root/LEARNINGS.md"
    repo_created=1
  fi
  # STRATEGY_SPEC.md は素のテンプレのままコピー（中身埋めはモデルの判断）。
  if [ -e "$repo_root/STRATEGY_SPEC.md" ]; then
    printf '[repo]    %-16s : already present\n' "STRATEGY_SPEC.md"
  else
    cp "$TEMPLATES/project/STRATEGY_SPEC.md" "$repo_root/STRATEGY_SPEC.md"
    printf '[repo]    %-16s : created     (bare; needs filling)\n' "STRATEGY_SPEC.md"
    repo_created=1
  fi
fi

# --- ACTION NEEDED: 今回作成した項目に対応するものだけ ---
if [ "$machine_created" -eq 0 ] && [ "$repo_created" -eq 0 ]; then
  echo
  echo "--- all set (nothing to do) ---"
  exit 0
fi

echo
echo "--- ACTION NEEDED (model) ---"
if [ "$machine_created" -eq 1 ]; then
  echo "- [global] compound-rules 方針節を ~/.claude/CLAUDE.md 等に追記（グローバル設定編集なので要ユーザ確認）"
fi
if [ "$repo_created" -eq 1 ]; then
  echo "- [repo] STRATEGY_SPEC.md の TODO を README/CLAUDE.md/docs から自明な範囲で埋める（残 TODO と埋めた内容を報告）"
  echo "- [repo] CLAUDE.md の作業サイクル節が無ければ cycle-section を追記（既存 CLAUDE.md 編集なので要ユーザ確認・skill 紐づけ）"
fi
