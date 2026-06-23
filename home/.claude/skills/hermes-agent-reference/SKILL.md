---
name: hermes-agent-reference
description: Comprehensive official reference for Hermes Agent. Whenever the user asks about or requests building Hermes Agent deployment, configuration, or Slack integration, always activate this skill and read the appropriate file under references/.
---

# 📚 Hermes Agent 構築・設定リファレンス

本スキルは、Nous Research によって開発された自律型AIエージェント「Hermes Agent」の導入、モデル設定、Slackなどのメッセージングプラットフォーム連携、および詳細な動作設定（セキュリティ、セッション、MCP、プラグイン、Cron等）に関する包括的なガイドラインを提供します。

## 🔍 目次

1. [🚀 概要](#-概要)
2. [📂 リファレンス構成と参照ガイド](#-リファレンス構成と参照ガイド)
   1. [🔧 導入とクイックスタート](#-導入とクイックスタート)
   2. [⚙️ エージェント基本設定とプロファイル](#-エージェント基本設定とプロファイル)
   3. [🤖 モデルおよびプロバイダー設定](#-モデルおよびプロバイダー設定)
   4. [🐳 Docker構築とバックエンド](#-docker構築とバックエンド)
   5. [💬 Slackおよびメッセージング連携](#-slackおよびメッセージング連携)
   6. [🔒 セキュリティ・セッション・ファイル保護](#-セキュリティ・セッション・ファイル保護)
   7. [🔌 MCP・プラグイン・Cron自動化](#-mcp・プラグイン・cron自動化)
3. [📋 開発・運用時の重要チェックリスト](#-開発・運用時の重要チェックリスト)

---

## 🚀 概要

Hermes Agent は、永続メモリ、エージェント作成スキル、多数のメッセージングプラットフォーム（Slack、Telegram等）に対応したメッセージングゲートウェイを備えた、非常に強力な自律型コーディング・タスクエージェントです。
本スキルは、ユーザーの構築および設定プロセスにおいて、公式ドキュメントに基づいた正確な情報を提供し、DockerでのデプロイやSlackとの連携をスムーズに行うための「信頼できる唯一の情報源（Single Source of Truth）」として機能します。

## 📂 リファレンス構成と参照ガイド

Hermes Agent に関連する詳細なドキュメントは、すべて `references/` ディレクトリ内に Markdown 形式で保存されています。
特定のタスクを実行する際は、対応するファイルを `view_file` ツールで読み込んで、手順や設定フォーマットを厳密に遵守してください。

### 🔧 導入とクイックスタート
初めての構築や導入プロセスの理解には、以下のファイルを読み込みます。
* [docs-getting-started-installation.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-getting-started-installation.md): 各OS（Linux、macOS、WSL2等）へのインストール方法。
* [docs-getting-started-quickstart.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-getting-started-quickstart.md): インストールからチャット開始までのクイックセットアップ。
* [docs-user-guide-cli.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-cli.md): CLIでの基本的な操作コマンドとショートカット。

### ⚙️ エージェント基本設定とプロファイル
エージェントの基本設定や動作環境 of 設計には、以下のファイルを読み込みます。
* [docs-user-guide-configuration.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-configuration.md): `config.yaml` の構造、各種設定項目。**【最重要】**
* [docs-user-guide-profiles.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-profiles.md): 異なるエージェントの振る舞いや設定を切り替えるプロファイル管理。
* [docs-reference-environment-variables.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-reference-environment-variables.md): サポートされているすべての環境変数のリファレンス。

### 🤖 モデルおよびプロバイダー設定
使用するLLMモデルや推論プロバイダー（OpenRouter、OpenAI、Anthropic等）の網羅的設定には、以下を参照します。
* [docs-user-guide-configuring-models.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-configuring-models.md): モデル固有のパラメーター設定や切り替え方法。
* [docs-integrations-providers.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-integrations-providers.md): 対応プロバイダーの設定詳細。
* [docs-user-guide-features-provider-routing.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-features-provider-routing.md): どのプロファイルでどのプロバイダーを使用するかのルーティング設定。
* [docs-user-guide-features-fallback-providers.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-features-fallback-providers.md): プライマリプロバイダーがダウンした際のフォールバック設定。
* [docs-user-guide-features-credential-pools.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-features-credential-pools.md): 複数のAPIキーをローテーション・管理するプール設定。
* [docs-reference-model-catalog.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-reference-model-catalog.md): 公式が定義しているデフォルトのモデルカタログ。

### 🐳 Docker構築とバックエンド
Docker上での Hermes Agent 構築、および Docker バックエンドの実行には、以下を参照します。
* [docs-user-guide-docker.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-docker.md): Dockerを用いたエージェントのデプロイ、コンテナの実行、ダッシュボードの起動、および Dockerコンテナをターミナルバックエンドとして利用する方法。

### 💬 Slackおよびメッセージング連携
Slackとエージェントの連携（ソケットモード経由でのBot設定）やゲートウェイの動作については、以下を参照します。
* [docs-user-guide-messaging-slack.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-messaging-slack.md): Slack アプリの作成、ソケットモード（Socket Mode）の有効化、必要なスコープ（Scope）およびイベント（Event）の設定、トークンの登録手順。
* [docs-user-guide-messaging-index.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-messaging-index.md): メッセージングゲートウェイの全体構成と他の対応チャネル（Telegram, Discord等）の共通設定。

### 🔒 セキュリティ・セッション・ファイル保護
本番運用における安全性の担保とセッションの管理については、以下を参照します。
* [docs-user-guide-security.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-security.md): 危険なコマンド（ファイル削除や任意コード実行等）の実行前承認プロセス、権限管理、コンテナ分離、本番環境セキュリティのベストプラクティス。
* [docs-user-guide-sessions.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-sessions.md): チャット履歴の永続化、セッションの検索・管理、プラットフォームごとのセッション分離。
* [docs-user-guide-checkpoints-and-rollback.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-checkpoints-and-rollback.md): Git のシャドウリポジトリを用いたファイル変更の自動スナップショット、および破壊的変更時のロールバック保護機能。

### 🔌 MCP・プラグイン・Cron自動化
ツール拡張、自動処理の設定については、以下を参照します。
* [docs-user-guide-features-mcp.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-features-mcp.md): Model Context Protocol (MCP) を用いた外部ツールサーバーとの接続設定。
* [docs-reference-mcp-config-reference.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-reference-mcp-config-reference.md): MCP設定の詳細パラメータ、ツールフィルタリングルール。
* [docs-user-guide-features-plugins.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-features-plugins.md): プラグイン構造、ライフサイクルフックによるツール拡張。
* [docs-user-guide-features-cron.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-features-cron.md): 自然言語でタスクを定期実行させるための Cron スケジュール設定。
* [docs-user-guide-features-memory-providers.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-features-memory-providers.md): 外部メモリプラグイン（Honcho、Mem0等）との接続設定。
* [docs-user-guide-features-personality.md](file:///Users/zeero/.gemini/antigravity-cli/skills/hermes-agent-reference/references/docs-user-guide-features-personality.md): `SOUL.md` やカスタム人格ファイルによるエージェントの性格・発言のカスタマイズ。

## 📋 開発・運用時の重要チェックリスト

1. **Docker構築の成否チェック**:
   - `config.yaml` 内のバックエンド（`backend`）設定が `docker` に指定されているか？
   - 必要なボリュームマウント、ネットワーク設定が記述されているか？
2. **Slack連携の接続チェック**:
   - アプリ側で「Socket Mode」が ON になっており、App-Level Token（`xapp-...`）と Bot User OAuth Token（`xoxb-...`）が環境変数もしくは `config.yaml` に正しく定義されているか？
   - イベント購読（Event Subscriptions）で `message.im` や `app_mention` などの必要なイベントが購読登録されているか？
3. **エージェント・モデル設定**:
   - 認証情報プール（`credential-pools`）やプロバイダーのルーティングルール（`provider-routing`）が適切に記述されており、APIキーの漏洩や枯渇に対するフォールバックが設定されているか？
