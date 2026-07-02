#!/usr/bin/env bash
#
# learning スキルのセットアップ要否ゲート。毎回安全に再実行できる（冪等）。
# 確認不要の決定論的セットアップ（repo の .learnings/index.md / STRATEGY_SPEC.md
# 作成）まで行い、人の判断・要確認が残る作業は ACTION NEEDED として出力する。
# CLAUDE.md は読み書きしない（モデル＋ユーザ確認に残す）。

set -euo pipefail

# テンプレは agent 固有変数に依存せず自己位置から相対解決する（skill ディレクトリ
# ごと symlink されていても機能する）。
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATES="$SCRIPT_DIR/../assets/templates"

repo_created=0

echo "=== learning skill setup check ==="

# --- repo: <repo>/.learnings/index.md, STRATEGY_SPEC.md ---
# .learnings/index.md の有無を repo セットアップ済みの sentinel とする。
repo_root="$(git rev-parse --show-toplevel 2>/dev/null || true)"
if [ -z "$repo_root" ]; then
  echo "[repo]    skipped (not a git repo)"
else
  if [ -e "$repo_root/.learnings/index.md" ]; then
    printf '[repo]    %-16s : already present\n' ".learnings/index.md"
  else
    mkdir -p "$repo_root/.learnings"
    cp "$TEMPLATES/project/learnings/index.md" "$repo_root/.learnings/index.md"
    printf '[repo]    %-16s : created     (%s)\n' ".learnings/index.md" "$repo_root/.learnings/index.md"
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
if [ "$repo_created" -eq 0 ]; then
  echo
  echo "--- all set (nothing to do) ---"
  exit 0
fi

echo
echo "--- ACTION NEEDED (model) ---"
echo "- [repo] STRATEGY_SPEC.md の TODO を README/CLAUDE.md/docs から自明な範囲で埋める（残 TODO と埋めた内容を報告）"
echo "- [repo] CLAUDE.md の作業サイクル節が無ければ cycle-section を追記（@.learnings/index.md の常時ロード指定を含む。既存 CLAUDE.md 編集なので要ユーザ確認・skill 紐づけ）"
