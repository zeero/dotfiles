#!/usr/bin/env bash
set -euo pipefail

root="${1:-.}"
handover_dir="${root%/}/.claude"
handover_file="$handover_dir/HANDOVER.md"
archive_file="$handover_dir/HANDOVER.zip"

mkdir -p "$handover_dir"

if ! test -f "$handover_file"; then
  echo "No existing .claude/HANDOVER.md found."
  exit 0
fi

if ! command -v zip >/dev/null 2>&1; then
  echo "zip command is required to archive the existing HANDOVER.md." >&2
  exit 1
fi

previous_date="$(grep -m1 '^date:' "$handover_file" | sed 's/date:[[:space:]]*//' || true)"

if [[ -z "${previous_date//[[:space:]]/}" ]]; then
  previous_date="$(
    stat -f '%Sm' -t '%Y-%m-%dT%H-%M-%S' "$handover_file" 2>/dev/null \
      || stat -c '%y' "$handover_file" 2>/dev/null | sed 's/[. ].*//'
  )"
fi

safe_date="$(printf '%s' "$previous_date" | sed 's/^[[:space:]]*//; s/[[:space:]]*$//; s/[^A-Za-z0-9._-]/-/g')"

if [[ -z "$safe_date" ]]; then
  safe_date="$(date '+%Y-%m-%dT%H-%M-%S')"
fi

backup_stem="HANDOVER-$safe_date"
backup_file="$handover_dir/$backup_stem.md"
counter=1

while test -e "$backup_file"; do
  backup_stem="HANDOVER-$safe_date-$counter"
  backup_file="$handover_dir/$backup_stem.md"
  counter=$((counter + 1))
done

mv "$handover_file" "$backup_file"
zip -jrm "$archive_file" "$backup_file" >/dev/null

echo "Archived existing .claude/HANDOVER.md to .claude/HANDOVER.zip as $backup_stem.md."
