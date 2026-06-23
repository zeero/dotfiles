---
name: jules-orchestrator
description: Uses Jules (an asynchronous AI agent) to automate and manage large-scale codebase changes, test additions, refactoring, and dependency updates. Always use this skill when the user mentions 「大規模な修正を依頼したい」「時間がかかる作業をバックグラウンドでやってほしい」「Julesを使って」, or when a refactoring is too broad to do manually (e.g., project-wide symbol renaming, adding unit tests across all files).
---

# 🎼 jules-orchestrator

Jules は、既存のリポジトリと直接連携して自律的に動作する非同期コーディングアシスタントです。このスキルは、Jules CLI (`jules`) を操作して、タスクの発行から成果物の適用までをオーケストレートします。

## 🛠️ 事前準備
Jules がインストールされていない、または認証が必要な場合は以下のコマンドを実行してください。
- インストール: `npm install -g @google/jules`
- ログイン: `jules login`（GitHub連携が必要な場合は https://jules.google.com を案内）

## 🚀 ワークフロー

### 1. 新規タスクの作成 (Delegation)
大規模な変更が必要な場合、Jules にタスクを委譲します。

1.  **リポジトリの特定**:
    - `git config --get remote.origin.url` でリモートURLを取得し、`username/repo_name` 形式を抽出します。
2.  **タスクの発行**:
    - `jules remote new --repo <repo_name> --session "<task_description>"`
3.  **ユーザーへの報告**:
    - セッションが開始されたこと、ステータス確認は `/jules status` で行えること、およびコンソールURLを伝えます。

### 2. タスクの進捗確認と成果物の適用
既存のタスクの状態を確認し、完了していれば変更を適用します。

1.  **セッション一覧の取得**:
    - `jules remote list --session`
2.  **対象セッションの特定**:
    - ユーザーが「最新」と言えば `lastActive` が最も新しいものを選びます。
3.  **ステータスに応じた対応**:
    - **`Awaiting user feedback`**: ユーザーにコンソールでのフィードバックを促します。
    - **`Completed`**: 以下の手順で Diff を適用します。

#### 📥 Diff の適用手順
1.  **パッチの取得**:
    - `mkdir -p .jules`
    - `jules remote pull --session <session_id> > .jules/diff.patch`
2.  **整合性の確認**:
    - `head -n 500 .jules/diff.patch` を読み、現在のディレクトリ構造と一致するか確認します。
3.  **適用方法の選択をユーザーに提示**:
    - **a) ローカルに直接適用**: `patch -p1 < .jules/diff.patch` 実行後、`git status` で確認。
    - **b) 新規ブランチで公開**: `git checkout -b <branch_name>` -> `git apply --index .jules/diff.patch` -> `git commit` -> `git push`。

## ⚠️ 注意事項
- **コンテキストの保護**: `.jules` ディレクトリは作業用です。コミットに含めないよう、適用後は `rm -rf .jules` で削除してください。
- **安全第一**: 大規模な変更を適用する前には、必ずユーザーに確認を求め、可能であれば現在の作業を `git stash` するよう提案してください。
