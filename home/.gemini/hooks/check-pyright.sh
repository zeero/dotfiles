#!/bin/bash

# Gemini CLI AfterTool Hook: Check Pyright
# This script runs pyright after a Python file is modified.

# Read stdin into a variable
INPUT=$(cat)

# Extract tool_name and file_path using jq
TOOL_NAME=$(echo "$INPUT" | jq -r '.tool_name')
# tool_input can be nested, so we check both common locations
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // .tool_input.relative_path // empty')

# Only proceed if it's a file modification tool and a Python file
if [[ "$TOOL_NAME" =~ ^(replace|write_file|mcp_serena_replace_content|mcp_serena_replace_symbol_body|mcp_serena_insert_after_symbol|mcp_serena_insert_before_symbol)$ ]] && [[ "$FILE_PATH" == *.py ]]; then
    
    # Notify user via stderr (Gemini CLI captures this but doesn't parse as JSON)
    echo "[HOOK] Running pyright for $FILE_PATH..." >&2

    # Run pyright. We use the project root if available.
    # We capture stdout and stderr together.
    PYRIGHT_OUTPUT=$(pyright 2>&1)
    PYRIGHT_EXIT_CODE=$?

    # Construct the system message and additional context
    if [ $PYRIGHT_EXIT_CODE -eq 0 ]; then
        STATUS_MSG="✅ Pyright: No type errors found."
        ADDITIONAL_CONTEXT="Pyright check passed after modifying $FILE_PATH."
    else
        STATUS_MSG="❌ Pyright: Type errors detected!"
        # We provide the output to the agent so it can fix the issues.
        ADDITIONAL_CONTEXT="Pyright found errors after your change to $FILE_PATH:\n\n$PYRIGHT_OUTPUT"
    fi

    # Output the JSON response
    # - systemMessage: shown to the user
    # - additionalContext: appended to the tool result for the agent
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
    # For other tools or files, just allow without any modification
    echo "{\"decision\": \"allow\"}"
fi
