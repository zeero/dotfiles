#!/usr/bin/env python3
"""Compact a Claude Code session .jsonl transcript into a small text digest.

WHY: raw transcripts are large and dominated by tool-call/tool-result noise.
The dreaming pass only needs the conversational substance -- what the user
asked for and what the assistant concluded -- to surface new durable facts.
Emitting a trimmed digest keeps the fork's context affordable so many sessions
can be reviewed in one run.

Defensive by design: the transcript schema varies across Claude Code versions,
so every line is parsed independently and unparseable lines are skipped rather
than aborting the whole digest.
"""

import json
import sys

PER_TURN_CHARS = 1200  # cap keeps one long turn from swamping the digest


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
            msg = entry.get("message") or {}
            role = entry.get("type") or msg.get("role")
            if role not in ("user", "assistant"):
                continue
            body = msg.get("content") if msg else entry.get("content")
            text = text_from(body).strip()
            if not text:
                continue
            if len(text) > PER_TURN_CHARS:
                text = text[:PER_TURN_CHARS] + " …[truncated]"
            print(f"{role.upper()}: {text}\n")


if __name__ == "__main__":
    main()
