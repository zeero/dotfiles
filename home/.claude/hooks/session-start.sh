#!/bin/bash

SESSION_ID=$(cat | jq -r '.session_id')
if [ -n "$SESSION_ID" ] && [ -n "$CLAUDE_ENV_FILE" ]; then
  echo "export CLAUDE_SESSION_ID=\"$SESSION_ID\"" >> "$CLAUDE_ENV_FILE"
fi

