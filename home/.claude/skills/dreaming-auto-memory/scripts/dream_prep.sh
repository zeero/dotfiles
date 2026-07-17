#!/usr/bin/env bash
# Resolve the auto-memory store, create the staging workspace, digest the
# not-yet-processed session transcripts within a byte budget, and write the
# apply metadata.
#
# WHY digesting happens here (not in the model's turn): it is deterministic
# work, and doing it in prep lets the byte budget be enforced exactly, so a
# cold start with dozens of transcripts cannot blow up the reasoning
# subagent's context.
# The remainder is carried over to the next dream via the watermark.
#
# WHY text output (not JSON): the consumer is the skill's own LLM context,
# which reads key/value lines fine. Avoiding a jq dependency keeps the skill
# portable to environments that don't have it installed.
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
session_override="${1:-}"

command -v python3 >/dev/null 2>&1 || {
  echo "ERROR: python3 required (transcript digesting and apply both need it)"; exit 1; }

# The session dir (project_base) is the anchor: it holds the transcripts,
# state, and staging workspace, with memory/ sitting directly inside it.
# Both branches resolve project_base first, then derive memory_dir from it --
# so the override path uses the same direction as the default path instead of
# reverse-deriving the parent from a memory-dir argument.
if [[ -n "$session_override" ]]; then
  project_base="$(cd "$session_override" 2>/dev/null && pwd -P)" || {
    echo "ERROR: session dir not found: $session_override"; exit 1; }
else
  abs="$(pwd -P)"
  # Claude Code encodes the project cwd into the projects/ subdir name by
  # replacing path separators, dots and userscores with '-'. Mirror that to locate the
  # store for the current project.
  slug="$(printf '%s' "$abs" | sed 's#[/._]#-#g')"
  project_base="$HOME/.claude/projects/$slug"
fi
memory_dir="$project_base/memory"

if [[ ! -d "$memory_dir" ]]; then
  echo "ERROR: auto-memory dir not found: $memory_dir"
  echo "HINT: pass the session dir explicitly, e.g. /dreaming-auto-memory <path-to-session-dir>"
  exit 1
fi

state_file="$project_base/.dream-state.json"

# Housekeeping: staged dirs left behind by abandoned dreams and old backups
# would otherwise accumulate forever. Reports are kept -- they are tiny and
# serve as the dream history.
if [[ -d "$project_base/.dream" ]]; then
  # 7-day retention for both abandoned staged dirs and backups. No -type
  # filter so this reaps staged-* dirs, backup-*.zip archives, and legacy
  # backup-* directories from before backups became zip files alike.
  find "$project_base/.dream" -maxdepth 1 \( -name 'staged-*' -o -name 'backup-*' \) -mtime +7 \
    -exec rm -rf {} + 2>/dev/null || true
fi

# The staging workspace lives OUTSIDE memory/ so it never pollutes the store,
# git status, or future memory searches.
ts="$(date -u +%Y%m%dT%H%M%SZ)"
staged_dir="$project_base/.dream/staged-$ts"
mkdir -p "$staged_dir/memory" "$staged_dir/digests"

memory_file_count="$(find "$memory_dir/" -maxdepth 1 -type f -name '*.md' | wc -l | tr -d ' ')"

# Digest-size budget per dream (bytes). Sessions beyond it are carried over
# to the next run -- the watermark only records what was actually digested.
budget="${DREAM_DIGEST_BUDGET_BYTES:-150000}"

echo "MEMORY_DIR=$memory_dir"
echo "PROJECT_BASE=$project_base"
echo "STATE_FILE=$state_file"
echo "STAGED_DIR=$staged_dir"
echo "MEMORY_FILE_COUNT=$memory_file_count"
echo "TIMESTAMP=$ts"
echo "DIGEST_BUDGET_BYTES=$budget"

# Select unprocessed transcripts (oldest first), digest them within the
# budget, and freeze the apply contract into .dream-meta.json. Writing the
# meta here -- rather than having the model author JSON by hand -- keeps the
# contract exact and the watermark deterministic.
python3 - "$project_base" "$state_file" "$staged_dir" "$budget" \
  "$script_dir/digest_transcript.py" "$memory_dir" "$ts" <<'PY'
import json
import os
import subprocess
import sys
import time

(project_base, state_file, staged_dir, budget_s, digest_script,
 memory_dir, ts) = sys.argv[1:8]
budget = int(budget_s)

# A session is skippable only if its transcript has not grown since it was
# digested: a resumed session appends to the same file, and a bare id-match
# would silently lose the appended turns forever.
processed = {}
try:
    d = json.load(open(state_file))
    p = d.get("processed_sessions")
    if isinstance(p, dict):
        processed = {
            sid: (info.get("size") if isinstance(info, dict) else None)
            for sid, info in p.items()
        }
    else:  # legacy list format: no sizes recorded, treat as fully processed
        processed = {sid: None for sid in d.get("processed_session_ids", [])}
except Exception:
    pass

now = time.time()
cands = []
for name in os.listdir(project_base):
    if not name.endswith(".jsonl"):
        continue
    path = os.path.join(project_base, name)
    if not os.path.isfile(path):
        continue
    st = os.stat(path)
    # An mtime younger than 60s means the session is still being written
    # (including the orchestrating session's own transcript); its contents
    # are incomplete.
    if now - st.st_mtime < 60:
        continue
    sid = name[: -len(".jsonl")]
    if sid in processed:
        rec = processed[sid]
        if rec is None or st.st_size <= rec:
            continue
    cands.append((st.st_mtime, st.st_size, sid, path))
cands.sort()  # oldest first: fold history in chronological order

digests_dir = os.path.join(staged_dir, "digests")
selected = []
total = 0
skipped = 0
for _mtime, size, sid, path in cands:
    # Always take at least one so a single oversized transcript cannot
    # starve the queue forever.
    if selected and total >= budget:
        skipped += 1
        continue
    out = os.path.join(digests_dir, sid + ".txt")
    with open(out, "w") as fh:
        subprocess.run([sys.executable, digest_script, path],
                       stdout=fh, check=False)
    dbytes = os.path.getsize(out)
    total += dbytes
    selected.append((sid, size, dbytes, out))

meta = {
    "memory_dir": memory_dir,
    "state_file": state_file,
    "last_dream_iso": ts,
    "processed_sessions": {sid: {"size": size} for sid, size, _, _ in selected},
}
with open(os.path.join(staged_dir, ".dream-meta.json"), "w") as fh:
    json.dump(meta, fh, indent=2)

print("DIGESTS_BEGIN")
for sid, _size, dbytes, out in selected:
    print(f"{sid}\t{dbytes}\t{out}")
print("DIGESTS_END")
print(f"DIGEST_TOTAL_BYTES={total}")
print(f"SKIPPED_TRANSCRIPT_COUNT={skipped}")
PY
