---
name: go-task-rules
description: Enforces the use of a standard `default` task in Taskfiles that lists all available tasks. Use this skill whenever creating, modifying, or auditing a `Taskfile.yml` or `taskfile.yml`.
---

# go-task-rules

This skill ensures that every `Taskfile.yml` has a consistent and helpful `default` task.

## The Rule 📋

Whenever you are working with `go-task` (Taskfiles), ensure the `default` task is defined exactly as follows:

```yaml
default:
  cmds:
    - task --list
  silent: true
```

## Why 💡

This pattern makes the Taskfile self-documenting. Running `task` without arguments will provide the user with a list of all available commands, making the development workflow more discoverable.

## Instructions 🛠️

1. **Creation**: If creating a new `Taskfile.yml`, always include the `default` task with the above configuration.
2. **Modification**: If editing an existing `Taskfile.yml` that lacks a `default` task, or has a different one, propose updating it to this standard.
3. **Auditing**: When reviewing a project, check for the presence and correctness of this `default` task.
