---
name: pi-worker
description: Delegate small, well-scoped coding tasks to the local pi worker through Ollama. Use when Codex needs a secondary pass for lightweight implementation work such as fixing pyright, type-checker, linter, or warning output; writing focused tests to improve coverage; asking for a minimal patch plan; or getting a second implementation suggestion for a narrow coding task.
---

# Pi Worker

## Overview

Use pi as a lightweight coding worker for narrow, verifiable tasks. Keep the main Codex session responsible for choosing the task, reviewing the output, applying any changes, and running verification.

## Workflow

1. Reduce the work to one small task with clear files, commands, and expected output.
2. Include only the relevant diagnostics or coverage gap, not the whole conversation.
3. Run `scripts/pi-worker.sh "<task prompt>"`.
4. Review pi's response before applying changes. Treat its output as a proposal, not an automatic edit.
5. Apply the chosen fix locally and run the relevant checker or tests.

## Prompt Shape

Ask for concrete, bounded output:

- For type/lint fixes: provide the command, exact diagnostics, relevant file paths, and ask for the smallest patch.
- For coverage work: provide the target module, current missing branches or uncovered lines, test framework, and ask for focused tests.
- For implementation suggestions: provide the existing behavior, desired behavior, constraints, and ask for a patch outline or code snippet.

Example:

```bash
scripts/pi-worker.sh "Fix these pyright errors with the smallest patch. Repo: /path/to/project. Files: src/app/foo.py. Diagnostics: <paste diagnostics>. Return a unified diff and mention tests to run."
```

## Guardrails

- Prefer pi for tasks that can be checked by a single test, linter, type-checker, or small diff review.
- Do not delegate broad architecture decisions, security-sensitive changes, secret handling, production operations, or destructive commands.
- Do not paste private credentials, tokens, or unrelated user data into the pi prompt.
- If pi suggests broad refactors, reduce the request and rerun with tighter constraints.

## Script

Use `scripts/pi-worker.sh` to call:

```bash
ollama launch pi --model qwen3.6:27b-coding-nvfp4 -- -p "$ARGUMENTS"
```
