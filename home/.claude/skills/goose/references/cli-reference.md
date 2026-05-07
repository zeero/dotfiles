# CLI リファレンス

## コアコマンド

```bash
goose --help              # ヘルプ表示
goose --version           # バージョン確認
goose info                # バージョン・設定場所・セッション保存場所
goose info --verbose      # 詳細設定（環境変数・有効拡張機能含む）
goose configure           # インタラクティブ設定（プロバイダー・拡張機能）
goose update              # 最新安定版に更新
goose update --canary     # カナリア版（開発版）に更新
```

## session コマンド

```bash
goose session                           # 新規セッション開始
goose session --resume                  # 直前のセッションを再開
goose session --resume <session-id>     # 指定セッションを再開
goose session --name my-project         # 名前付きセッション開始
goose session --working-dir /path       # 作業ディレクトリを指定
goose session --with-extension github   # 特定拡張機能を有効化
goose session --without-extension memory # 特定拡張機能を無効化

goose session list                      # セッション一覧（直近10件）
goose session list --limit 20           # 件数指定
goose session list --working-dir .      # 作業ディレクトリでフィルタ
```

## run コマンド（非対話実行）

```bash
goose run -i task.md                    # ファイルからタスクを実行
goose run -t "コードをレビューして"       # テキストからタスクを実行
goose run --recipe recipe.yaml          # レシピを実行
goose run --recipe recipe.yaml --params key=value  # パラメータ付き
goose run --no-session                  # セッション保存しない
```

## schedule コマンド

```bash
goose schedule add --name daily-report --cron "0 9 * * *" -i report.md
goose schedule list
goose schedule remove --schedule-id daily-report
goose schedule run --schedule-id daily-report   # 即時実行
```

## mcp コマンド

```bash
goose mcp list                          # 登録済みMCPサーバー一覧
```

## セッション内コマンド

| コマンド | 説明 |
|---------|------|
| `/?` | ヘルプ |
| `/exit` | セッション終了 |
| `/t` | ツール一覧 |
| `/skills` | スキル一覧・ロード |
| `/recipe <name>` | レシピ実行 |
| `/clear` | 会話をクリア |
| `/mode <mode>` | パーミッションモード変更 |
| `/p <profile>` | プロファイル切り替え |

## 環境変数

| 変数 | 説明 |
|-----|------|
| `GOOSE_PROVIDER` | 使用プロバイダー（例: `anthropic`） |
| `GOOSE_MODEL` | 使用モデル（例: `claude-sonnet-4-5`） |
| `GOOSE_MODE` | パーミッションモード（`autonomous`/`approve`/`chat`） |
| `ANTHROPIC_API_KEY` | Anthropic APIキー |
| `OPENAI_API_KEY` | OpenAI APIキー |
| `GOOGLE_API_KEY` | Google APIキー |
| `CONTEXT_FILE_NAMES` | カスタムコンテキストファイル名（デフォルト: `.goosehints`） |
| `GOOSE_WORKING_DIR` | デフォルト作業ディレクトリ |

## 設定ファイル（~/.config/goose/config.yaml）

```yaml
GOOSE_PROVIDER: anthropic
GOOSE_MODEL: claude-sonnet-4-5

extensions:
  developer:
    enabled: true
  github:
    enabled: true
    env:
      GITHUB_TOKEN: "ghp_xxxx"
  my-mcp:
    enabled: true
    type: stdio
    cmd: npx
    args: ["-y", "@my-org/my-mcp"]
    env:
      API_KEY: "xxxx"

# パーミッション設定
goose_mode: autonomous   # autonomous / approve / chat
```

## シェル補完のセットアップ

```bash
# zsh
goose completion zsh > ~/.zsh_completions/_goose
echo 'fpath=(~/.zsh_completions $fpath)' >> ~/.zshrc
source ~/.zshrc

# bash
goose completion bash > /etc/bash_completion.d/goose

# fish
goose completion fish > ~/.config/fish/completions/goose.fish
```
