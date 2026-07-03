#!/usr/bin/env bash
# Discard a staged dream without applying it.
#
# WHY a script instead of a raw `rm -rf`: deletion is wrapped here so the
# model never issues an unguarded rm, and the target is validated to really
# be a staged dream dir before anything is removed.
set -euo pipefail

staged_dir="${1:?usage: dream_discard.sh <staged_dir>}"
staged_dir="$(cd "$staged_dir" 2>/dev/null && pwd -P)" || {
  echo "ERROR: staged dir not found: $1"; exit 1; }

parent="$(basename "$(dirname "$staged_dir")")"
name="$(basename "$staged_dir")"
if [[ "$parent" != ".dream" || "$name" != staged-* ]]; then
  echo "ERROR: not a staged dream dir (expected .../.dream/staged-*): $staged_dir"
  exit 1
fi
if [[ ! -f "$staged_dir/.dream-meta.json" ]]; then
  echo "ERROR: no .dream-meta.json inside -- refusing to delete: $staged_dir"
  exit 1
fi

rm -rf "$staged_dir"
echo "DISCARDED: $staged_dir (live store untouched)"
