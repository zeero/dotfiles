---
name: goose
description: >
  Goose (goose-docs.ai) の操作・設定・開発ガイド。
  「Gooseで〜したい」「Gooseの使い方は？」「Gooseのskillを作りたい」「GooseのRecipeって何？」
  「Gooseのextensionを追加したい」「Gooseの設定ファイルはどこ？」など、
  Gooseに関する質問や作業リクエストには必ずこのスキルを参照すること。
  Goose・goose・AIエージェント操作・goosehints・SKILL.md・レシピ・MCP拡張 というキーワードが含まれる場合も積極的に使用する。
---

# Goose 操作ガイド

Goose はオープンソースのローカルAIエージェント。CLI / Desktop App の両方で動作し、MCPサーバー経由でツール群を拡張できる。2026年4月からは **Agentic AI Foundation (AAIF)** に移管。

## 概念マップ

```
Goose
├── Provider（LLM: Anthropic / OpenAI / Google 等 40+）
├── Extensions（MCPサーバー: Developer / GitHub / Computeruse 等 70+）
├── Context Engineering
│   ├── .goosehints   ... セッション全体に適用される指示
│   ├── Skills        ... 再利用可能なタスク別ワークフロー (SKILL.md)
│   ├── Recipes       ... 拡張+プロンプト+設定のパッケージ
│   └── Slash Commands... /コマンドでレシピを呼び出す
├── Subagents         ... 独立して動くサブインスタンス（並列/直列）
└── Sessions          ... 会話履歴と作業コンテキスト
```

## クイックリファレンス

### セッション操作

```bash
goose session                    # 新規セッション開始
goose session --resume           # 直前のセッションを再開
goose session --name my-project  # 名前付きセッション
goose session list               # セッション一覧
goose run -i task.md             # ファイルからタスクを実行（非対話）
```

### セッション内スラッシュコマンド

| コマンド | 説明 |
|---------|------|
| `/exit` | セッション終了 |
| `/t` | ツール一覧表示 |
| `/skills` | スキル一覧・ロード (`/skills code-review`) |
| `/recipe <name>` | レシピを実行 |
| `/?` | ヘルプ |

### 設定・情報

```bash
goose configure       # プロバイダー・拡張機能の設定（インタラクティブ）
goose info            # バージョン・設定場所・セッション保存場所
goose info --verbose  # 詳細設定（環境変数・有効拡張機能）
goose update          # 最新安定版に更新
```

## 詳細リファレンス

詳細が必要な場合は以下を参照:

- **インストール・プロバイダー設定・拡張機能** → `references/getting-started.md`
- **CLIコマンド全体** → `references/cli-reference.md`
- **goosehints / Skills / Recipes / Slash Commands** → `references/context-engineering.md`

## パーミッションモード

| モード | 説明 |
|-------|------|
| Autonomous（デフォルト）| すべてのアクションを自動実行。サブエージェントも使用可能 |
| Smart Approval | リスクの高いアクションのみ確認 |
| Manual Approval | 全アクションを確認 |
| Chat Only | ツール実行なし。会話のみ |

パーミッションは `goose configure` または `~/.config/goose/config.yaml` で設定。

## よくある質問

**Q: Gooseの設定ファイルはどこ？**
`~/.config/goose/config.yaml`（`goose info` で確認できる）

**Q: セッション履歴はどこに保存される？**
`~/.local/share/goose/sessions/`（`goose info` で確認）

**Q: 複数タスクを並列処理したい**
サブエージェントを使う。「〜を並列で実行して」と指示するか、Autonomousモードでは自動的に使用される。詳細 → `references/context-engineering.md`

**Q: プロジェクト固有の設定を毎回説明したくない**
`.goosehints` ファイルを作成する。詳細 → `references/context-engineering.md`
