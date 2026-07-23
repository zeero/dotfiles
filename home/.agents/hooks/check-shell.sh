#!/bin/bash

# シェルスクリプトを編集した際に、ShellCheck による静的解析で
# クォート漏れや未定義変数などの典型的な不具合を早期に検知します。
# シェルにはプロジェクト共通設定が無いため、check-python.sh と異なり
# ディレクトリ全体ではなく編集対象ファイル単体を検査します。

# ツールの入力を標準入力から受け取ります。
INPUT=$(cat)

# どのツールが実行され、どのファイルが対象かをJSONから抽出します。
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file // .tool_input.path // .tool_input.relative_path // .tool_input.file_path // empty')

# .sh ファイルの場合のみ実行し、無駄なプロセス起動を避けます。
if [[ "$FILE_PATH" == *.sh ]]; then

    # 実行中のタスクを伝えるため、進捗を標準エラーに出力します。
    echo "[HOOK] Running shell checks (ShellCheck) for $FILE_PATH..." >&2

    # 1. ShellCheck による静的解析
    # 自動修正はせず（誤修正リスクを避けるため）、指摘の提示に徹します。
    SHELLCHECK_OUTPUT=$(shellcheck "$FILE_PATH" 2>&1)
    SHELLCHECK_EXIT_CODE=$?

    # 2. git diff --check による空白エラーのチェック
    # 変更によって空白エラー（行末の空白など）が導入されていないかを確認します。
    GIT_CHECK_OUTPUT=$(git diff --check 2>&1)
    GIT_CHECK_EXIT_CODE=$?

    # 3. 実行結果の集計とメッセージ構築
    # すべてのチェックが成功（終了コードがすべて0）したかどうかを判定します。
    if [ $SHELLCHECK_EXIT_CODE -eq 0 ] && [ $GIT_CHECK_EXIT_CODE -eq 0 ]; then
        STATUS_MSG="✅ Shell checks passed (ShellCheck & Git)"
        ADDITIONAL_CONTEXT="ShellCheck: No issues found in $FILE_PATH.\nGit: No whitespace errors found (git diff --check)."
    else
        STATUS_MSG="⚠️ Shell checks completed with warnings/errors"
        ADDITIONAL_CONTEXT="Issues found during shell checks.\n\n"
        ADDITIONAL_CONTEXT+="[shellcheck (Exit: $SHELLCHECK_EXIT_CODE)]\n$SHELLCHECK_OUTPUT\n\n"
        ADDITIONAL_CONTEXT+="[git diff --check (Exit: $GIT_CHECK_EXIT_CODE)]\n$GIT_CHECK_OUTPUT"
    fi

    # Codex / Claude Code に結果を返すためのJSONを出力します。
    # hookEventName は Claude Code が additionalContext をモデルへ注入する条件。
    # Codex 側は未知フィールドとして無視するため、共用しても害はありません。
    jq -n \
        --arg msg "$STATUS_MSG" \
        --arg ctx "$ADDITIONAL_CONTEXT" \
        '{
            "systemMessage": $msg,
            "hookSpecificOutput": {
                "hookEventName": "PostToolUse",
                "additionalContext": $ctx
            }
        }'
else
    # .shファイル以外、または編集以外のツールの場合は、そのまま処理を通します。
    # decision は "block" 専用の値のため、通す場合は何も出力しない。
    :
fi
