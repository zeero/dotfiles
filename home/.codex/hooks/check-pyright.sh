#!/bin/bash

# Codex PostToolUse Hook: Check Pyright
# This script runs pyright after a Python file is modified by Codex.

# Read stdin into a variable
INPUT=$(cat)

# Extract tool_name and file_path using jq
TOOL_NAME=$(echo "$INPUT" | jq -r '.tool_name')
# tool_input can have various keys depending on the tool (Edit uses 'file' or 'path', Write uses 'path' or 'file', etc.)
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file // .tool_input.path // .tool_input.relative_path // .tool_input.file_path // empty')

# Only proceed if it's a file modification tool and a Python file
# Target Codex tools: Edit, Write, apply_patch
if [[ "$TOOL_NAME" =~ ^(Edit|Write|apply_patch)$ ]] && [[ "$FILE_PATH" == *.py ]]; then
    
    # Notify user via stderr
    echo "[HOOK] Running pyright for $FILE_PATH..." >&2

    # Run pyright
    PYRIGHT_OUTPUT=$(pyright 2>&1)
    PYRIGHT_EXIT_CODE=$?

    # Construct the response
    if [ $PYRIGHT_EXIT_CODE -eq 0 ]; then
        STATUS_MSG="✅ Pyright: No type errors found."
        ADDITIONAL_CONTEXT="Pyright check passed after your edit to $FILE_PATH."
    else
        STATUS_MSG="❌ Pyright: Type errors detected!"
        ADDITIONAL_CONTEXT="Pyright found errors after your edit to $FILE_PATH:\n\n$PYRIGHT_OUTPUT"
    fi

    # Output JSON
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
    # Allow other tools/files without modification
    echo "{\"decision\": \"allow\"}"
fi
