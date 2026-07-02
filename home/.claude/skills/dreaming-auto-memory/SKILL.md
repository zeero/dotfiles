---
name: dreaming-auto-memory
argument-hint: "[steering instructions / path to memory dir]"
description: >
  Consolidate and reorganize Claude Code's auto-memory store the way the
  managed-agents "dreams" feature cleans a memory store: read the existing
  memory files plus the session transcripts recorded since the last run, then
  produce a rebuilt store with duplicates merged, stale or contradicted entries
  replaced by their latest value, and durable new insights surfaced — all
  non-destructively, staged for review before anything is applied. Use when the
  user runs /dreaming-auto-memory, or asks to clean up / compact / dedupe /
  reorganize / "garbage-collect" their auto-memory, resolve contradictory or
  outdated memories, or fold recent sessions into long-term memory. Portable:
  it discovers the store's format at runtime rather than assuming one.
user-invocable: true
disable-model-invocation: true
context: fork
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
---

# Dreaming for auto-memory

You are running a **dream**: a non-destructive consolidation pass over a Claude
Code auto-memory store. You read the existing memory alongside recent session
transcripts and build a cleaner, reorganized store — merging duplicates,
resolving contradictions toward the latest value, dropping what is confidently
stale, and surfacing durable new insights. You never modify the live store
yourself. You stage the result and hand a ready-to-run apply command back to the
main context, where the user approves it.

`$ARGUMENTS` (if present) is free-form steering — the equivalent of the dreams
API `instructions` field. It may instead be a path to the memory dir when
auto-detection fails. Treat a leading filesystem path as the override and the
rest as steering.

## Why this shape

Auto-memory is written incrementally during sessions, so over time it
accumulates duplicates, contradictions, and stale entries. A dream is the
periodic cleanup. It runs in a forked context because reading many transcripts
is token-heavy and should not pollute the main conversation. The expensive
reasoning happens here; the cheap, deterministic apply happens back in main
after the user says yes — that split is why fork and an interactive approval can
coexist.

## Workflow

### 1. Prepare (deterministic)

Run the prep script. Pass the memory-dir override as `$1` only if the user gave
one; otherwise pass nothing and let it derive the store from the current
project.

```bash
bash "${CLAUDE_SKILL_DIR}/scripts/dream_prep.sh" [memory-dir-override]
```

It prints `KEY=VALUE` lines (`MEMORY_DIR`, `STATE_FILE`, `GIT_TRACKED`,
`STAGED_DIR`, `TIMESTAMP`, `MEMORY_FILE_COUNT`, ...) and, between
`NEW_TRANSCRIPTS_BEGIN` / `NEW_TRANSCRIPTS_END`, tab-separated
`session_id<TAB>path` lines for each transcript not yet processed and not still
being written. Capture these values — you need `MEMORY_DIR`, `STATE_FILE`,
`GIT_TRACKED`, `STAGED_DIR`, `TIMESTAMP`, and the transcript list.

If it prints `ERROR:`, stop and relay the hint to the user (usually: pass the
memory dir explicitly). Do not guess a path.

### 2. Discover the format

Read `references/consolidation-policy.md` now — it holds the detailed rules for
everything below. Then discover the store's conventions (index file, frontmatter
fields, type taxonomy, body style, file naming) by sampling the existing memory,
and plan to preserve them. If the store is empty, use the documented fallback
format.

### 3. Digest recent transcripts (only if there are new ones)

For each transcript path from step 1, produce a compact digest and read it:

```bash
python3 "${CLAUDE_SKILL_DIR}/scripts/digest_transcript.py" <transcript.jsonl>
```

The digest strips tool-call noise down to the user/assistant conversation so you
can mine durable facts affordably. If there are no new transcripts, skip this
step and do memory-only consolidation.

### 4. Dream (the reasoning)

Following `references/consolidation-policy.md`, build the reorganized store:
merge duplicates, resolve clear contradictions by recency, drop only what is
confidently stale, and surface durable new insights from the digests. Anything
you cannot confidently decide — or whose validity depends on external state you
should not probe — gets **left untouched and flagged for review**, never
silently deleted. Honor any steering from `$ARGUMENTS` throughout.

Write the complete rebuilt store into `<STAGED_DIR>/memory/`, in the discovered
format, and regenerate the index file there. `<STAGED_DIR>/memory/` is the exact
desired end state: include every entry that should survive (adds, merges, and
untouched/flagged entries) and omit the ones you dropped.

### 5. Write the report and the apply metadata

Write `<STAGED_DIR>/report.md` in the structure defined by the policy file
(summary counts + added/merged/dropped/needs-review sections).

Write `<STAGED_DIR>/.dream-meta.json` — this is the contract the apply script
reads, so use exactly these keys:

```json
{
  "memory_dir": "<MEMORY_DIR>",
  "state_file": "<STATE_FILE>",
  "git_tracked": <true|false>,
  "last_dream_iso": "<TIMESTAMP>",
  "processed_session_ids": ["<session ids you actually folded in>"]
}
```

`processed_session_ids` is the list of transcript session ids from step 1 that
you incorporated (empty if there were no new transcripts). The watermark only
advances for sessions actually processed.

### 6. Hand off to the main context

You cannot apply the result yourself — apply must happen in the main context
after the user approves. End your turn by returning **exactly** this handoff, so
the main context has everything it needs without loading this skill:

```
## Dream staged — review before applying

<one-paragraph summary: counts of added / merged / dropped / needs-review, and
whether new transcripts were processed>

Full report: <STAGED_DIR>/report.md
Staged store: <STAGED_DIR>/memory/
Backup on apply: <"yes — non-git store" if GIT_TRACKED is false, else "no — git-tracked, use git to revert">

Ask the user for the apply decision with the AskUserQuestion tool — do not
apply on an inferred yes. Offer two options:
  - Apply — run: bash "${CLAUDE_SKILL_DIR}/scripts/dream_apply.sh" "<STAGED_DIR>"
  - Discard — nothing changed; run: rm -rf "<STAGED_DIR>"

Only run the matching command after the user picks. If the store is not
git-tracked, note in the question that Apply takes a backup first.
```

Resolve `${CLAUDE_SKILL_DIR}` and `<STAGED_DIR>` to their real absolute paths in
what you output — the main context will not re-expand them.

The approval gate is deliberately a structured AskUserQuestion prompt, not a
free-text confirmation: applying overwrites the live store, so the choice must
be explicit and unambiguous.

## Notes

- Never write into the live `MEMORY_DIR`; only ever into `STAGED_DIR`. The live
  store changes solely through `dream_apply.sh`, and only on approval.
- The apply script makes the live store exactly match the staged tree (adds,
  merges, and drops), backing up first when the store is not git-tracked, and
  advances the watermark only after a successful apply.
