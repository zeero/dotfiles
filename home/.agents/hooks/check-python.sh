#!/bin/bash

# CodexがPythonファイルを編集した際に、コードスタイルの一貫性を保ちつつ、
# 静的型チェックを効率的に行うため、Ruff（フォーマットと自動修正）とPyright（型チェック）を統合して実行します。
# 1回のプロセス起動にまとめることで、ファイル保存時のフック処理のオーバーヘッドを削減しています。

# ツールの入力を標準入力から受け取ります。
INPUT=$(cat)

# どのツールが実行され、どのファイルが対象かをJSONから抽出します。
TOOL_NAME=$(echo "$INPUT" | jq -r '.tool_name')
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file // .tool_input.path // .tool_input.relative_path // .tool_input.file_path // empty')

# 編集系ツールかつPythonファイルの場合のみ実行し、無駄なプロセス起動を避けます。
if [[ "$TOOL_NAME" =~ ^(Edit|Write|apply_patch|replace|write_file|mcp_serena_.*)$ ]] && [[ "$FILE_PATH" == *.py ]]; then
    
    # 実行中のタスクを伝えるため、進捗を標準エラーに出力します。
    echo "[HOOK] Running python checks (Ruff & Pyright) for $FILE_PATH..." >&2

    # 1. Ruff による自動修正とフォーマット
    # まず自動修正（check --fix）を行って不要なインポートなどのコード構造を整理し、
    # その修正によって生じるフォーマットの崩れも漏れなく整えるために、後からフォーマット（format）を適用します。
    CHECK_OUTPUT=$(ruff check --fix . 2>&1)
    CHECK_EXIT_CODE=$?

    FORMAT_OUTPUT=$(ruff format "$FILE_PATH" 2>&1)
    FORMAT_EXIT_CODE=$?

    # 2. Pyright による型チェック
    # 自動修正が適用された最新のファイル状態に対して型チェックを実行します。
    PYRIGHT_OUTPUT=$(pyright 2>&1)
    PYRIGHT_EXIT_CODE=$?

    # 3. git diff --check による空白エラーのチェック
    # 変更によって空白エラー（行末の空白など）が導入されていないかを確認します。
    GIT_CHECK_OUTPUT=$(git diff --check 2>&1)
    GIT_CHECK_EXIT_CODE=$?

    # 4. 実行結果の集計とメッセージ構築
    # すべてのツールが成功（終了コードがすべて0）したかどうかを判定します。
    if [ $FORMAT_EXIT_CODE -eq 0 ] && [ $CHECK_EXIT_CODE -eq 0 ] && [ $PYRIGHT_EXIT_CODE -eq 0 ] && [ $GIT_CHECK_EXIT_CODE -eq 0 ]; then
        STATUS_MSG="✅ Python checks passed (Ruff & Pyright & Git)"
        ADDITIONAL_CONTEXT="Ruff formatted $FILE_PATH and ran lint check successfully.\nPyright: No type errors found.\nGit: No whitespace errors found (git diff --check)."
    else
        STATUS_MSG="⚠️ Python checks completed with warnings/errors"
        ADDITIONAL_CONTEXT="Issues found during Python checks.\n\n"
        ADDITIONAL_CONTEXT+="[ruff format (Exit: $FORMAT_EXIT_CODE)]\n$FORMAT_OUTPUT\n\n"
        ADDITIONAL_CONTEXT+="[ruff check --fix (Exit: $CHECK_EXIT_CODE)]\n$CHECK_OUTPUT\n\n"
        ADDITIONAL_CONTEXT+="[pyright (Exit: $PYRIGHT_EXIT_CODE)]\n$PYRIGHT_OUTPUT\n\n"
        ADDITIONAL_CONTEXT+="[git diff --check (Exit: $GIT_CHECK_EXIT_CODE)]\n$GIT_CHECK_OUTPUT"
    fi

    # Codexに結果を返すためのJSONを出力します。
    jq -n \
        --arg msg "$STATUS_MSG" \
        --arg ctx "$ADDITIONAL_CONTEXT" \
        '{
            "systemMessage": $msg,
            "hookSpecificOutput": {
                "additionalContext": $ctx
            }
        }'
else
    # Pythonファイル以外、または編集以外のツールの場合は、そのまま処理を通します。
    echo "{\"decision\": \"allow\"}"
fi
