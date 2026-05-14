[Skip to content](https://geminicli.com/docs/tools/activate-skill/#_top)

# Activate skill tool (\`activate\_skill\`)

Copy as MarkdownCopied!

The `activate_skill` tool lets Gemini CLI load specialized procedural expertise
and resources when they are relevant to your request.

## Description

[Section titled “Description”](https://geminicli.com/docs/tools/activate-skill/#description)

Skills are packages of instructions and tools designed for specific engineering
tasks, such as reviewing code or creating pull requests. Gemini CLI uses this
tool to “activate” a skill, which provides it with detailed guidelines and
specialized tools tailored to that task.

### Arguments

[Section titled “Arguments”](https://geminicli.com/docs/tools/activate-skill/#arguments)

`activate_skill` takes one argument:

- `name` (enum, required): The name of the skill to activate (for example,
`code-reviewer`, `pr-creator`, or `docs-writer`).

## Usage

[Section titled “Usage”](https://geminicli.com/docs/tools/activate-skill/#usage)

The `activate_skill` tool is used exclusively by the Gemini agent. You cannot
invoke this tool manually.

When the agent identifies that a task matches a discovered skill, it requests to
activate that skill. Once activated, the agent’s behavior is guided by the
skill’s specific instructions until the task is complete.

## Behavior

[Section titled “Behavior”](https://geminicli.com/docs/tools/activate-skill/#behavior)

The agent uses this tool to provide professional-grade assistance:

- **Specialized logic:** Skills contain expert-level procedures for complex
workflows.
- **Dynamic capability:** Activating a skill can grant the agent access to new,
task-specific tools.
- **Contextual awareness:** Skills help the agent focus on the most relevant
standards and conventions for a particular task.

## Next steps

[Section titled “Next steps”](https://geminicli.com/docs/tools/activate-skill/#next-steps)

- Learn how to [Use Agent Skills](https://geminicli.com/docs/cli/skills).
- See the [Build agent skills](https://geminicli.com/docs/cli/creating-skills) guide.

Last updated: Apr 30, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.