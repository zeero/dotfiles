# Context Engineering: goosehints / Skills / Recipes / Slash Commands

## 全体像

| ツール | 用途 | スコープ |
|-------|------|---------|
| `.goosehints` | 常時適用される背景知識・一般ルール | グローバル or プロジェクト |
| **Skills** | 特定タスクの再利用可能ワークフロー（SKILL.md） | グローバル or プロジェクト |
| **Recipes** | 拡張+プロンプト+設定のパッケージ | 共有・再配布向け |
| **Slash Commands** | レシピを `/コマンド` で呼び出すショートカット | プロジェクト |

---

## .goosehints

毎回同じ説明を繰り返している、プロジェクト固有のコンテキストを伝えたい → `.goosehints` で解決。

### ファイルの場所

| 種別 | パス |
|-----|------|
| グローバル（全セッションに適用） | `~/.config/goose/.goosehints` |
| ローカル（プロジェクト固有） | `.goosehints`（プロジェクトルートや任意のディレクトリ） |

両方存在する場合はどちらも読み込まれる。競合時はローカルが優先。

**注意:** Developer 拡張機能が有効になっている必要がある（デフォルトで有効）。

### 書き方

```text
# グローバルの .goosehints 例
Always use TypeScript for new Next.js projects.
Prefer functional components over class components.

@coding-standards.md   # 別ファイルを参照（相対パス）
docs/contributing.md   # PRプロセスの説明
```

- 自然言語で記述する
- `@ファイルパス` でファイルの内容を参照させられる
- セッション開始時と、ネストしたディレクトリにアクセスした時に読み込まれる
- トークンを消費するので簡潔に書く

### カスタムコンテキストファイル名

`.goosehints` 以外のファイル名も使える（例: `CLAUDE.md`）:

```bash
CONTEXT_FILE_NAMES=".goosehints,CLAUDE.md" goose session
```

---

## Skills（SKILL.md）

繰り返し使うマルチステップのワークフローや専門知識 → Skills で定義。

**必要拡張機能:** Summon extension（v1.25.0+）

### ファイル構造

```
~/.agents/skills/          ← グローバルスキル
└── code-review/
    └── SKILL.md

.agents/skills/            ← プロジェクトスキル
└── deploy/
    ├── SKILL.md
    └── scripts/
        └── deploy.sh

# 後方互換: .goose/skills/, .claude/skills/ も検索される
```

### SKILL.md の書き方

```markdown
---
name: code-review
description: PRのコードレビューチェックリスト。コードレビューやPRレビューの際に使用する。
---

# Code Review

## チェックリスト

### 機能
- [ ] PRの説明通りの動作をしているか
- [ ] エッジケースが処理されているか

### セキュリティ
- [ ] 認証情報がコードに含まれていないか
- [ ] ユーザー入力が適切に検証されているか
```

### スキルの自動発動

セッション開始時にGooseがスキルを検出してシステムプロンプトに追加する。

リクエストがスキルの目的に明らかに一致する場合、または明示的に指示した場合に自動ロード:
```
「code-reviewスキルでこのPRをレビューして」
「deployスキルに従って本番環境にデプロイして」
```

CLI で手動ロード:
```
/skills                        # 利用可能なスキル一覧
/skills code-review deploy     # 複数スキルをロード
```

### サポートファイルの利用

スキルディレクトリにスクリプトやテンプレートを置くと、Goose が Developer 拡張機能でアクセスできる:

```markdown
## 手順
1. `scripts/setup.sh <project-name>` を実行
2. `templates/config.json` をプロジェクトにコピー
3. 認証情報を設定
```

---

## Recipes（レシピ）

拡張機能・プロンプト・設定をまとめた再利用可能ワークフロー。チームや他ユーザーと共有できる。

### レシピのフォーマット（YAML）

```yaml
version: "1.0"
name: security-auditor
description: コードベースのセキュリティ監査を実行する
instructions: |
  このコードベースのセキュリティ問題を徹底的に分析してください。
  脆弱性、認証の問題、インジェクションリスクに注目してください。
extensions:
  - type: builtin
    name: developer
parameters:
  - name: target_path
    description: 分析対象のパス
    required: true
```

### レシピの実行

```bash
# CLIから実行
goose run --recipe recipe.yaml

# パラメータ付き
goose run --recipe recipe.yaml --params target_path=./src

# セッション内から
/recipe security-auditor
```

### セッションをレシピとして保存

```bash
goose session save --name my-workflow
```

### Subrecipes（サブレシピ）

レシピから別のレシピを呼び出す階層構造:
```yaml
instructions: |
  以下のサブレシピを並列実行してください:
  1. security-check レシピでセキュリティ確認
  2. performance-audit レシピでパフォーマンス確認
```

---

## Slash Commands（スラッシュコマンド）

レシピを素早く呼び出すためのカスタムコマンド。プロジェクトの `.goose/commands/` に配置。

### ファイル構造

```
.goose/commands/
└── deploy.yaml
```

### コマンド定義（YAML）

```yaml
name: deploy
description: 本番環境にデプロイする
recipe: recipes/deploy.yaml
parameters:
  - name: env
    description: デプロイ先環境 (staging/production)
    default: staging
```

### 使い方

セッション内で:
```
/deploy env=production
```

---

## Subagents（サブエージェント）

独立したGooseインスタンスにタスクを委譲。並列処理で効率化。

**条件:** Autonomous パーミッションモード（デフォルト）が必要。

### 使い方（自然言語）

```
「このコードのセキュリティレビューをサブエージェントに任せて」
「3つのHTMLテンプレートを並列で作成して」
「まずコードを分析して、その後ドキュメントを生成して」
```

| 実行方式 | キーワード | 例 |
|--------|----------|----|
| 直列（デフォルト） | first...then, after | 「まず〜して、それから〜」 |
| 並列 | parallel, simultaneously, 並列 | 「〜を並列で実行して」 |

タイムアウトは 5 分。失敗した場合は出力なし（並列の場合は成功したものの結果のみ返る）。
