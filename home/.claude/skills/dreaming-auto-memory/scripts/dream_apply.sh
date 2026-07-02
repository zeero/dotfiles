#!/usr/bin/env bash
# Apply a staged dream to the live auto-memory store.
#
# This runs in the MAIN conversation context after the user approves the
# staged result, so it is deliberately cheap and deterministic -- all the
# expensive reasoning already happened in the fork that produced the staging
# dir. Everything it needs is recorded in <staged_dir>/.dream-meta.json.
set -euo pipefail

staged_dir="${1:?usage: dream_apply.sh <staged_dir>}"
meta="$staged_dir/.dream-meta.json"
[[ -f "$meta" ]] || { echo "ERROR: missing $meta -- nothing to apply"; exit 1; }
[[ -d "$staged_dir/memory" ]] || { echo "ERROR: missing $staged_dir/memory"; exit 1; }
command -v python3 >/dev/null 2>&1 || { echo "ERROR: python3 required to read dream metadata"; exit 1; }

# memory_dir / state_file / git_tracked are decided at prep time and frozen in
# the meta file so apply cannot drift from what was reviewed.
read -r memory_dir state_file git_tracked < <(python3 - "$meta" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
print(d["memory_dir"], d["state_file"], str(d.get("git_tracked", False)).lower())
PY
)

# A non-git store gets a full backup so the change is reversible; a git-tracked
# store relies on git history instead (a backup would just be untracked noise).
if [[ "$git_tracked" != "true" ]]; then
  backup="$(dirname "$memory_dir")/.dream/backup-$(date -u +%Y%m%dT%H%M%SZ)"
  mkdir -p "$backup"
  rsync -a --exclude='.git' "$memory_dir"/ "$backup"/
  echo "BACKUP=$backup"
fi

# Make the live store exactly match the staged tree -- this is what applies
# adds, merges, AND drops in one atomic-feeling step. A .git dir living inside
# the store is preserved so we never clobber the user's history.
rsync -a --delete --exclude='.git' "$staged_dir/memory"/ "$memory_dir"/

# Advance the watermark only now that apply has succeeded, unioning the newly
# processed session ids with any recorded by earlier dreams.
python3 - "$meta" "$state_file" <<'PY'
import json, sys
meta = json.load(open(sys.argv[1]))
state_file = sys.argv[2]
try:
    prev = json.load(open(state_file)).get("processed_session_ids", [])
except Exception:
    prev = []
merged = sorted(set(prev) | set(meta.get("processed_session_ids", [])))
json.dump(
    {"last_dream_iso": meta.get("last_dream_iso"), "processed_session_ids": merged},
    open(state_file, "w"),
    indent=2,
)
PY

echo "APPLIED: live store synced to $staged_dir/memory"
echo "STATE_UPDATED: $state_file"
