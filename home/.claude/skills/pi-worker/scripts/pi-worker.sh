#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -gt 0 ]; then
  ARGUMENTS="$*"
elif [ -z "${ARGUMENTS:-}" ]; then
  printf 'usage: %s "<task prompt>"\n' "$0" >&2
  printf 'or set ARGUMENTS and run %s\n' "$0" >&2
  exit 64
fi

exec ollama launch pi --model qwen3.6:27b-coding-nvfp4 -- -p "$ARGUMENTS"
