---
name: agent-skill-reference
description: Official Claude Code reference for agent skills. Use this when configuring frontmatter or other settings for agent skills.
---

# Agent Skill Reference

Claude Code の Agent Skills（`SKILL.md`）に関する公式 docs スナップショットを `references/` に保持する。
出典: https://code.claude.com/docs/en/skills （取得日 2026-06-26）。

## 基本ワークフロー

1. 依頼を「置き場所・探索」「frontmatter・置換」「作成・呼び出し制御」「高度なパターン」「評価・配布・トラブル」のどれに近いか分類する。
2. 下の参照ガイドから必要な reference だけを読む。
3. 仕様（コマンド名・frontmatter キー・置換変数）は docs 由来の事実を優先し、現在性が重要なら上記 URL で最新を再確認する。docs にない挙動は推測として明示する。

## 参照ガイド

- 置き場所・探索・bundled skills・live reload・additional dirs: `references/overview-and-locations.md`
- frontmatter 全フィールド・コンテンツ種別・コマンド名の決まり方・文字列置換: `references/frontmatter-and-substitutions.md`
- supporting files・呼び出し制御・content lifecycle・tool 事前承認・引数渡し: `references/authoring-and-invocation.md`
- 動的コンテキスト注入（`` !`cmd` ``）・subagent 実行（`context: fork`）・skill アクセス制限・`skillOverrides`: `references/advanced-patterns.md`
- 評価/イテレーション・共有/配布・ビジュアル出力・トラブルシュート: `references/eval-share-troubleshooting.md`

## frontmatter 早見表

`---` 区切りで `SKILL.md` 冒頭に置く。全フィールド optional、推奨は `description` のみ。詳細は `references/frontmatter-and-substitutions.md`。

| フィールド | 役割 |
| --- | --- |
| `name` | 一覧表示名。既定はディレクトリ名。`/` で打つコマンド名は plugin-root を除き **ディレクトリ名**で決まる（`name` ではない） |
| `description` | 何をするか＋いつ使うか。trigger 判定に使われる。`when_to_use` と合算で 1,536 文字で切られるので主用途を先頭に |
| `when_to_use` | trigger 用の追加文脈（フレーズ・例）。`description` に追記され文字数上限に算入 |
| `argument-hint` | 補完時のヒント（例 `[issue-number]`） |
| `arguments` | `$name` 置換用の位置引数名（空白区切り or YAML list） |
| `disable-model-invocation` | `true` で Claude の自動起動を抑止（手動 `/name` のみ）。subagent への preload も止まる |
| `user-invocable` | `false` で `/` メニューから隠す（Claude のみ起動可の背景知識向け） |
| `allowed-tools` | active 中に無確認で使える tool。制限ではなく事前承認 |
| `disallowed-tools` | active 中に使えなくする tool。次メッセージで解除 |
| `model` | active 中のモデル上書き。ターン終了で復帰。`inherit` 可 |
| `effort` | active 中の effort 上書き（`low`/`medium`/`high`/`xhigh`/`max`） |
| `context` | `fork` で subagent コンテキストで実行 |
| `agent` | `context: fork` 時の subagent タイプ（既定 `general-purpose`） |
| `hooks` | この skill のライフサイクルに紐づく hooks |
| `paths` | glob にマッチするファイル作業時のみ自動起動 |
| `shell` | inline shell 実行のシェル（`bash`/`powershell`） |

## 押さえておく要点

- **コマンド名の出所**: `~/.claude/skills/<dir>/SKILL.md` や `.claude/skills/<dir>/` は **ディレクトリ名**が `/コマンド`。frontmatter `name` は表示名で、plugin-root の `SKILL.md` のときだけコマンド名になる。
- **content lifecycle**: 起動した `SKILL.md` は1メッセージとして会話に入り、以降そのターンを通じて残る（再読込されない）。一度きりの手順ではなく恒常的な指示として書く。
- **trigger しない時**: description にユーザーが自然に言う語を入れる／`What skills are available?` で表示確認／直接 `/skill-name`。`--debug` で frontmatter parse エラーを確認。
- **trigger し過ぎる時**: description を具体化、または `disable-model-invocation: true`。

## このリポジトリでの扱い

- 実体は `dotfiles/home/.claude/skills/`。`~/.claude/skills` 等へ symlink され Claude Code / Codex / Antigravity から共有される（Tier 1 横断可搬）。skill 名＝親ディレクトリ名を厳守する。
- 仕様を反映して既存 skill を編集する場合は、既存の配置規約と symlink 前提を確認し最小差分で行う。
