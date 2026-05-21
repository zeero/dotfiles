---
name: pi-agent-reference
description: Pi coding agent の公式リファレンスを参照して、Pi の導入、設定、providers/models、skills、extensions、packages、prompt templates、sessions、SDK、RPC、JSON event stream、terminal setup を調査・設計・実装するときに使う。
---

# Pi Agent Reference

## 概要

Pi coding agent の作業では、まずこの skill の `references/` に保存された公式 docs スナップショットを確認する。
インストール手順、設定値、API 仕様、拡張ポイントなど現在性が重要な内容を断定する場合は、必要に応じて https://pi.dev/docs/latest で最新状態を再確認する。

## 基本ワークフロー

1. ユーザーの依頼を「利用」「設定」「拡張」「連携」「セッション管理」「開発」のどれに近いか分類する。
2. 下の参照ガイドから、必要な reference だけを読む。
3. 公式 docs に基づく事実と、repo や環境に合わせた推論を分けて説明する。
4. dotfiles に反映する場合は、既存の配置規約と symlink 前提を確認してから最小差分で編集する。

## 参照ガイド

- 初回導入、基本操作、使い方: `references/docs-latest-quickstart.md`, `references/docs-latest-usage.md`, `references/docs-latest.md`
- 設定、provider、model、custom provider: `references/docs-latest-settings.md`, `references/docs-latest-providers.md`, `references/docs-latest-models.md`, `references/docs-latest-custom-provider.md`
- skills、prompt templates、packages、extensions: `references/docs-latest-skills.md`, `references/docs-latest-prompt-templates.md`, `references/docs-latest-packages.md`, `references/docs-latest-extensions.md`
- SDK、RPC、JSON event stream: `references/docs-latest-sdk.md`, `references/docs-latest-rpc.md`, `references/docs-latest-json.md`
- sessions、session file format、compaction: `references/docs-latest-sessions.md`, `references/docs-latest-session-format.md`, `references/docs-latest-session.md`, `references/docs-latest-compaction.md`
- terminal、TUI、keybindings、themes: `references/docs-latest-terminal-setup.md`, `references/docs-latest-tui.md`, `references/docs-latest-keybindings.md`, `references/docs-latest-themes.md`
- shell aliases、tmux、Termux、Windows: `references/docs-latest-shell-aliases.md`, `references/docs-latest-tmux.md`, `references/docs-latest-termux.md`, `references/docs-latest-windows.md`
- Pi 本体の開発や fork: `references/docs-latest-development.md`

## 回答ルール

- 公式 docs 由来の仕様、コマンド、設定キーを優先して答える。
- references にない挙動は推測として明示し、必要なら最新公式 docs の確認を提案する。
- インストールや認証、API key、provider 設定を扱うときは、秘密情報を出力やファイルに残さない。
- Pi packages や extensions を作る場合は、既存 dotfiles の skill / command / script 配置と衝突しない名前にする。
- `pi-worker` との違いを保つ。Pi を実行 worker として使う narrow task は `$pi-worker`、Pi の仕様調査や設定・拡張設計はこの skill を使う。
