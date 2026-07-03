#!/usr/bin/env python3
"""Compact a Claude Code session .jsonl transcript into a small text digest.

WHY: raw transcripts are large and dominated by tool-call/tool-result noise.
The dreaming pass only needs the conversational substance -- what the user
asked for and what the assistant concluded -- to surface new durable facts.
Emitting a trimmed digest keeps the reasoning subagent's context affordable
so many sessions can be reviewed in one run.

Defensive by design: the transcript schema varies across Claude Code versions,
so every line is parsed independently and unparseable lines are skipped rather
than aborting the whole digest.
"""

import json
import re
import signal
import sys

# Truncation keeps head AND tail: long assistant turns tend to put the
# conclusion at the end, which is exactly what fact-mining needs.
HEAD_CHARS = 800
TAIL_CHARS = 400

# Harness-injected noise embedded as text inside user messages: system
# reminders, slash-command echoes, and local command output. None of it is
# conversational substance, and it eats the per-turn budget if kept.
NOISE_TAG_RE = re.compile(
    r"<(system-reminder|local-command-caveat|local-command-stdout|"
    r"local-command-stderr|command-name|command-message|command-args|"
    r"command-contents)>.*?</\1>",
    re.DOTALL,
)
BLANK_LINES_RE = re.compile(r"\n{3,}")


def text_from(content):
    """Pull human-readable text out of a message's content field.

    Content may be a bare string or a list of typed blocks; only 'text' blocks
    carry conversational meaning (tool_use / tool_result / thinking are noise
    for the purpose of mining durable facts).
    """
    if isinstance(content, str):
        return content
    if isinstance(content, list):
        parts = []
        for block in content:
            if isinstance(block, dict) and block.get("type") == "text":
                parts.append(block.get("text", ""))
        return "\n".join(parts)
    return ""


def clean(text):
    text = NOISE_TAG_RE.sub("", text)
    return BLANK_LINES_RE.sub("\n\n", text).strip()


def main():
    if len(sys.argv) < 2:
        sys.exit("usage: digest_transcript.py <transcript.jsonl>")
    path = sys.argv[1]
    with open(path, errors="replace") as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            try:
                entry = json.loads(line)
            except Exception:
                continue
            # Sidechain (subagent) turns are execution detail, not the user's
            # conversation -- durable facts about the user don't live there.
            if entry.get("isSidechain"):
                continue
            msg = entry.get("message") or {}
            role = entry.get("type") or msg.get("role")
            if role not in ("user", "assistant"):
                continue
            body = msg.get("content") if msg else entry.get("content")
            text = clean(text_from(body))
            if not text:
                continue
            if len(text) > HEAD_CHARS + TAIL_CHARS + 40:
                text = text[:HEAD_CHARS] + "\n…[truncated]…\n" + text[-TAIL_CHARS:]
            print(f"{role.upper()}: {text}\n")


if __name__ == "__main__":
    # Dying quietly on a closed pipe (e.g. `| head`) beats a traceback.
    try:
        signal.signal(signal.SIGPIPE, signal.SIG_DFL)
    except (AttributeError, ValueError):
        pass
    main()
