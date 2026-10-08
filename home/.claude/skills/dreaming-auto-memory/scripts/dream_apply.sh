#!/usr/bin/env bash
# Apply a staged dream to the live auto-memory store.
#
# This runs in the MAIN conversation context after the user approves the
# staged result, so it is deliberately cheap and deterministic -- all the
# expensive reasoning already happened in the subagent that produced the
# staging dir. Everything it needs is recorded in <staged_dir>/.dream-meta.json.
set -euo pipefail

staged_dir="${1:?usage: dream_apply.sh <staged_dir>}"
meta="$staged_dir/.dream-meta.json"
[[ -f "$meta" ]] || { echo "ERROR: missing $meta -- nothing to apply"; exit 1; }
[[ -d "$staged_dir/memory" ]] || { echo "ERROR: missing $staged_dir/memory"; exit 1; }
command -v python3 >/dev/null 2>&1 || { echo "ERROR: python3 required to read dream metadata"; exit 1; }

# memory_dir / state_file are decided at prep time and frozen in the meta
# file so apply cannot drift from what was reviewed. Tab-separated so paths
# containing spaces survive the round-trip.
IFS=$'\t' read -r memory_dir state_file < <(python3 - "$meta" <<'PY'
import json
import sys

d = json.load(open(sys.argv[1]))
print(d["memory_dir"], d["state_file"], sep="\t")
PY
)

# Guard: the sync below makes the live store EXACTLY match the staged tree,
# so anything written into the live store after prep (a concurrent session's
# auto-memory, a manual edit) was never reviewed and would be silently
# deleted. Refuse instead -- a fresh dream will fold those changes in.
python3 - "$meta" <<'PY'
import datetime
import json
import os
import sys

d = json.load(open(sys.argv[1]))
prep = (
    datetime.datetime.strptime(d["last_dream_iso"], "%Y%m%dT%H%M%SZ")
    .replace(tzinfo=datetime.timezone.utc)
    .timestamp()
)
changed = []
for root, dirs, files in os.walk(d["memory_dir"]):
    if ".git" in dirs:
        dirs.remove(".git")
    for f in files:
        p = os.path.join(root, f)
        # The prep timestamp has whole-second precision while mtimes carry
        # sub-second digits, so compare at second granularity -- otherwise a
        # file written in the same second as prep trips the guard.
        if int(os.path.getmtime(p)) > int(prep):
            changed.append(p)
if changed:
    print("ERROR: live store changed after this dream was staged:")
    for p in changed:
        print(f"  {p}")
    print("HINT: discard this staged dream and run /dreaming-auto-memory again")
    sys.exit(1)
PY

# Always snapshot a backup before touching the live store. Even a git-tracked
# store may hold uncommitted memories, so "git will save us" is not a given;
# a few kilobytes of markdown is cheap insurance either way. A single zip keeps
# the backup dir tidy and makes each snapshot one self-contained artifact --
# unzip it to diff against the store. cd into the store first so the archive
# holds store-relative paths, not the absolute path from the machine root.
backup="$(dirname "$memory_dir")/.dream/backup-$(date -u +%Y%m%dT%H%M%SZ).zip"
mkdir -p "$(dirname "$backup")"
( cd "$memory_dir" && zip -q -r -X "$backup" . -x '.git/*' )
echo "BACKUP=$backup"

# Make the live store exactly match the staged tree -- this is what applies
# adds, merges, AND drops in one atomic-feeling step. A .git dir living inside
# the store is preserved so we never clobber the user's history.
rsync -a --delete --exclude='.git' "$staged_dir/memory"/ "$memory_dir"/

# Advance the watermark only now that apply has succeeded, unioning the newly
# processed sessions with those recorded by earlier dreams.
python3 - "$meta" "$state_file" <<'PY'
import json
import sys

meta = json.load(open(sys.argv[1]))
state_file = sys.argv[2]
prev = {}
try:
    prev_raw = json.load(open(state_file))
    p = prev_raw.get("processed_sessions")
    if isinstance(p, dict):
        prev = p
    else:  # legacy list format
        prev = {sid: {} for sid in prev_raw.get("processed_session_ids", [])}
except Exception:
    pass
merged = {**prev, **(meta.get("processed_sessions") or {})}
json.dump(
    {"last_dream_iso": meta.get("last_dream_iso"), "processed_sessions": merged},
    open(state_file, "w"),
    indent=2,
)
PY

# The staged dir has served its purpose. The durable audit trail is the
# pre-apply backup above (diff it against the store to see what changed) plus
# the report text in the conversation -- the report is never a file, because
# the subagent that produced it cannot write findings to disk.
rm -rf "$staged_dir"

echo "APPLIED: live store synced (staging dir removed)"
echo "STATE_UPDATED: $state_file"
