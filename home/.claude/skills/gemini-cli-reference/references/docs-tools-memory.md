[Skip to content](https://geminicli.com/docs/tools/memory/#_top)

# Memory files

Copy as MarkdownCopied!

Gemini CLI persists durable facts, user preferences, and project details by
editing Markdown memory files directly.

## Technical reference

[Section titled “Technical reference”](https://geminicli.com/docs/tools/memory/#technical-reference)

The agent routes memories to the appropriate Markdown file: shared project
instructions go in repository `GEMINI.md` files, private project notes go in the
per-project private memory folder, and cross-project personal preferences go in
the global `~/.gemini/GEMINI.md` file.

## Technical behavior

[Section titled “Technical behavior”](https://geminicli.com/docs/tools/memory/#technical-behavior)

- **Storage:** Edits Markdown files with `write_file` or `replace`.
- **Loading:** The stored facts are automatically included in the hierarchical
context system for all future sessions.
- **Format:** Keeps durable instructions concise and avoids duplicating the same
fact across multiple memory tiers.

## Use cases

[Section titled “Use cases”](https://geminicli.com/docs/tools/memory/#use-cases)

- Persisting user preferences (for example, “I prefer functional programming”).
- Saving project-wide architectural decisions.
- Storing frequently used aliases or system configurations.

## Next steps

[Section titled “Next steps”](https://geminicli.com/docs/tools/memory/#next-steps)

- Follow the [Memory management guide](https://geminicli.com/docs/cli/tutorials/memory-management)
for practical examples.
- Learn how the [Project context (GEMINI.md)](https://geminicli.com/docs/cli/gemini-md) system loads
this information.

Last updated: May 13, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.