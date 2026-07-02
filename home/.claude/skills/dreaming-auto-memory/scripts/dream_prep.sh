#!/usr/bin/env bash
# Resolve the auto-memory store, detect git tracking, compute the session
# transcripts not yet processed since the last dream, and create the staging
# workspace.
#
# WHY text output (not JSON): the consumer is the skill's own LLM context,
# which reads key/value lines fine. Avoiding a jq dependency keeps the skill
# portable to environments that don't have it installed.
set -euo pipefail

memory_override="${1:-}"

if [[ -n "$memory_override" ]]; then
  memory_dir="$(cd "$memory_override" 2>/dev/null && pwd -P)" || {
    echo "ERROR: memory path not found: $memory_override"; exit 1; }
  project_base="$(dirname "$memory_dir")"
else
  abs="$(pwd -P)"
  # Claude Code encodes the project cwd into the projects/ subdir name by
  # replacing path separators and dots with '-'. Mirror that to locate the
  # store for the current project.
  slug="$(printf '%s' "$abs" | sed 's#[/.]#-#g')"
  project_base="$HOME/.claude/projects/$slug"
  memory_dir="$project_base/memory"
fi

if [[ ! -d "$memory_dir" ]]; then
  echo "ERROR: auto-memory dir not found: $memory_dir"
  echo "HINT: pass the memory dir explicitly, e.g. /dreaming-auto-memory <path-to-memory>"
  exit 1
fi

state_file="$project_base/.dream-state.json"
transcripts_dir="$project_base"

# git tracking of the store decides whether apply snapshots a backup: a tracked
# store already has git history as its undo, so a backup would just be noise.
if git -C "$memory_dir" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git_tracked=true
else
  git_tracked=false
fi

# The staging workspace lives OUTSIDE memory/ so it never pollutes the store,
# git status, or future memory searches.
ts="$(date -u +%Y%m%dT%H%M%SZ)"
staged_dir="$project_base/.dream/staged-$ts"
mkdir -p "$staged_dir/memory"

memory_file_count="$(find "$memory_dir" -maxdepth 1 -type f -name '*.md' | wc -l | tr -d ' ')"

echo "MEMORY_DIR=$memory_dir"
echo "PROJECT_BASE=$project_base"
echo "TRANSCRIPTS_DIR=$transcripts_dir"
echo "STATE_FILE=$state_file"
echo "GIT_TRACKED=$git_tracked"
echo "STAGED_DIR=$staged_dir"
echo "MEMORY_FILE_COUNT=$memory_file_count"
echo "TIMESTAMP=$ts"

# Session ids already folded in by earlier dreams.
processed=""
if [[ -f "$state_file" ]] && command -v python3 >/dev/null 2>&1; then
  processed="$(python3 - "$state_file" <<'PY'
import json, sys
try:
    d = json.load(open(sys.argv[1]))
    print("\n".join(d.get("processed_session_ids", [])))
except Exception:
    pass
PY
)"
fi

# New transcripts = *.jsonl not already processed and not actively being
# written. An mtime younger than 60s excludes the live session (including this
# fork's own transcript), whose contents are incomplete.
echo "NEW_TRANSCRIPTS_BEGIN"
now="$(date +%s)"
shopt -s nullglob
for f in "$transcripts_dir"/*.jsonl; do
  sid="$(basename "$f" .jsonl)"
  if [[ -n "$processed" ]] && printf '%s\n' "$processed" | grep -qxF "$sid"; then
    continue
  fi
  mt="$(stat -f %m "$f" 2>/dev/null || stat -c %Y "$f" 2>/dev/null || echo 0)"
  if (( now - mt < 60 )); then continue; fi
  printf '%s\t%s\n' "$sid" "$f"
done
echo "NEW_TRANSCRIPTS_END"
