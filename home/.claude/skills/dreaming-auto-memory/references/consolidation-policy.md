# Consolidation policy

The detailed rules for the reasoning half of a dream. The SKILL.md workflow
tells you *when* to read this; this file tells you *how* to decide what to
keep, merge, drop, or flag. The guiding principle mirrors the managed-agents
"dreams" feature: **rebuild the store into a cleaner version without ever
silently losing information the user still needs.** The staging + approval gate
is the safety net, so bias toward a genuinely reorganized result rather than a
timid copy — but never delete something you cannot justify.

## Format discovery (do this first)

Other environments do not necessarily use this machine's memory conventions, so
never hard-code a schema. Learn it from what is already there:

1. Read the index file if one exists (commonly `MEMORY.md`). Note how it lists
   entries — the exact bullet/line shape, whether it groups by section.
2. Read a sample of the existing memory files (up to ~8, spread across the
   store). Infer:
   - the frontmatter fields in use (e.g. `name`, `description`, `metadata.type`)
     and the set of `type` values that actually appear;
   - body conventions (e.g. a `**Why:**` / `**How to apply:**` structure,
     `[[wikilink]]` cross-references between entries);
   - the file-naming convention (kebab-case slug vs `type_topic.md`, etc.).
3. **Preserve whatever you find.** Every file you write into the staged store
   must match the discovered format. Do not introduce new frontmatter fields,
   rename types, or restyle bodies.

If the store is empty (fresh environment, zero memory files), fall back to the
Claude Code standard: one fact per file, frontmatter with `name` /
`description` / `metadata.type` (types `user` / `feedback` / `project` /
`reference`), and a `MEMORY.md` index with one line per memory.

## Recency signals (how to decide which value wins)

Contradictions are resolved by recency, but "recent" has to be inferred from
signals that actually exist for files:

- **Transcript-derived facts always beat older memory.** If a new session says
  the user now prefers X where an old memory says Y, X wins — the later
  utterance is the current truth.
- **Between two memory files that contradict, the higher file mtime wins.**
  Mtime is imperfect (a bulk rewrite can reset it), so treat it as a signal,
  not proof: if the mtimes are close or the contradiction is substantive,
  prefer to flag rather than pick.
- **Explicit dates in the body override mtime** when present (e.g. a memory that
  says "as of 2026-05"). Absolute dates are more trustworthy than filesystem
  metadata.

## Operations

### Merge duplicates
Two or more entries expressing the same fact → combine into one, keeping the
clearest phrasing and unioning any non-conflicting detail. Preserve
cross-references so links do not dangle. This is the safest operation; do it
confidently.

### Resolve clear contradictions
When entries conflict and a recency signal clearly identifies the winner,
keep the winning value and drop the losing one. Record the drop (with the
reason) in the report so the user can veto it.

### Drop stale entries
An entry is stale when it describes something no longer true. Only drop
**confidently** — e.g. two memories where one explicitly supersedes the other.
For staleness that depends on the outside world (a memory referencing a file,
flag, or path that may no longer exist), do **not** verify by touching the
filesystem and do **not** auto-drop: existence is environment-dependent and
outside the store's scope. Flag it instead (see below).

### Surface new insights (transcript mining)
Read the transcript digests for durable, reusable facts the store does not yet
capture — stable user preferences, project constraints, corrections the user
made, hard-won setup/command knowledge. Write each as a new memory file in the
discovered format. Be selective: skip one-off debugging chatter, ephemeral task
state, and anything the `instructions` steering told you to ignore. A good new
insight is one that would save time the *next* time a similar situation arises.

### Flag, don't delete (要確認 / needs-review)
When you cannot confidently pick a winner, or an entry's validity depends on
external state you should not probe, **leave the entry untouched in the staged
store** and list it in the report under a "needs review" heading with a short
reason. Do not inject a foreign marker field into the memory file — that could
confuse the host's memory recall. The report is where ambiguity surfaces; the
human resolves it at the approval gate.

## Steering with instructions

If the invocation passed free-form `instructions` (the equivalent of the dreams
API `instructions` field), apply them throughout: what to read closely, what to
prioritize merging or dropping, and which kinds of insight to surface or ignore.
Example: "focus on coding-style preferences; ignore one-off debugging notes."

## report.md structure

Write `report.md` into the staging dir using this shape so the summary returned
to the main context is easy to skim:

```
# Dream report — <timestamp>

## Summary
- added: N   merged: N   dropped: N   needs-review: N
- transcripts processed: N (session ids: ...)   |   or: no new transcripts

## Added (new insights)
- <file>: <one-line reason / source session>

## Merged
- <resulting file> ← <sources>: <what was combined>

## Dropped
- <file>: <why it is stale/superseded, and the recency signal used>

## Needs review (要確認)
- <file>: <why you could not decide — left untouched>
```

If there were no new transcripts, still run memory-only consolidation (merge /
contradiction / staleness across existing files) and say "no new transcripts"
in the summary.
