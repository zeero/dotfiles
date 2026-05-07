# Getting Started: インストール・プロバイダー・拡張機能

## インストール

### Desktop App（推奨）
https://goose-docs.ai/docs/getting-started/installation からダウンロード。macOS / Windows / Linux 対応。

### CLI

```bash
# macOS
brew install goose

# Linux / macOS（curl）
curl -fsSL https://github.com/block/goose/releases/latest/download/install.sh | bash

# Windows（PowerShell）
irm https://github.com/block/goose/releases/latest/download/install.ps1 | iex
```

インストール後:
```bash
goose configure   # プロバイダーと拡張機能を設定
goose session     # 初回セッション開始
```

---

## LLMプロバイダー設定

`goose configure` で設定するか、`~/.config/goose/config.yaml` を直接編集。

### 主要プロバイダー

| プロバイダー | 備考 |
|-------------|------|
| Anthropic | Claude 系モデル。`ANTHROPIC_API_KEY` が必要 |
| OpenAI | GPT 系モデル。`OPENAI_API_KEY` が必要 |
| Google | Gemini 系モデル。`GOOGLE_API_KEY` が必要 |
| Ollama | ローカルモデル。APIキー不要 |
| Claude Code | Claude Code CLI をプロバイダーとして使用 |
| OpenRouter | 複数プロバイダーの統合ゲートウェイ |

### 設定例（config.yaml）

```yaml
GOOSE_PROVIDER: anthropic
GOOSE_MODEL: claude-sonnet-4-5
```

環境変数でもオーバーライド可能:
```bash
GOOSE_PROVIDER=openai GOOSE_MODEL=gpt-4o goose session
```

---

## 拡張機能（Extensions）

Goose の機能は MCP サーバーとして実装された「拡張機能」で拡張する。

### 管理方法

```bash
goose configure   # メニューから Extensions → Add/Remove
```

または `~/.config/goose/config.yaml` に直接記述:
```yaml
extensions:
  developer:
    enabled: true
  github:
    enabled: true
    env:
      GITHUB_TOKEN: ghp_xxxx
```

### 主要組み込み拡張機能

| 拡張機能 | 提供するツール |
|---------|--------------|
| **Developer**（デフォルト有効）| ファイル操作・コード実行・シェル・goosehints読み込み |
| **Computer Use** | スクリーンショット・クリック・キー操作 |
| **GitHub** | Issues・PR・コード検索 |
| **Summon** | Skills の検出・ロード（v1.25.0+ 必須） |
| **Memory** | セッション間の記憶 |
| **Tutorial** | インタラクティブなチュートリアル |

### カスタム拡張機能（外部 MCP サーバー）

```yaml
extensions:
  my-mcp-server:
    enabled: true
    type: stdio
    cmd: npx
    args: ["-y", "@my-org/my-mcp-server"]
    env:
      MY_API_KEY: "..."
```

type は `stdio`（デフォルト）/ `sse` / `streamable_http` から選択。

### アローリスト（インストール制限）

組織やチームで許可するMCPサーバーを制限したい場合:
```yaml
extensions:
  allowlist:
    enabled: true
    sources:
      - "https://my-company.internal/goose-allowlist.json"
```
