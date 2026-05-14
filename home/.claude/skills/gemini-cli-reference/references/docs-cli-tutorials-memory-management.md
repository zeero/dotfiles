[Skip to content](https://geminicli.com/docs/cli/tutorials/memory-management/#_top)

# Manage context and memory

Copy as MarkdownCopied!

Control what Gemini CLI knows about you and your projects. In this guide, you’ll
learn how to define project-wide rules with `GEMINI.md`, teach the agent
persistent facts, and inspect the active context.

## Prerequisites

[Section titled “Prerequisites”](https://geminicli.com/docs/cli/tutorials/memory-management/#prerequisites)

- Gemini CLI installed and authenticated.
- A project directory where you want to enforce specific rules.

## Why manage context?

[Section titled “Why manage context?”](https://geminicli.com/docs/cli/tutorials/memory-management/#why-manage-context)

Gemini CLI is powerful but general. It doesn’t know your preferred testing
framework, your indentation style, or your preference against `any` in
TypeScript. Context management solves this by giving the agent persistent
memory.

You’ll use these features when you want to:

- **Enforce standards:** Ensure every generated file matches your team’s style
guide.
- **Set a persona:** Tell the agent to act as a “Senior Rust Engineer” or “QA
Specialist.”
- **Remember facts:** Save details like “My database port is 5432” so you don’t
have to repeat them.

## How to define project-wide rules (GEMINI.md)

[Section titled “How to define project-wide rules (GEMINI.md)”](https://geminicli.com/docs/cli/tutorials/memory-management/#how-to-define-project-wide-rules-geminimd)

The most powerful way to control the agent’s behavior is through `GEMINI.md`
files. These are Markdown files containing instructions that are automatically
loaded into every conversation.

### Scenario: Create a project context file

[Section titled “Scenario: Create a project context file”](https://geminicli.com/docs/cli/tutorials/memory-management/#scenario-create-a-project-context-file)

1. In the root of your project, create a file named `GEMINI.md`.

2. Add your instructions:



```
# Project Instructions




- **Framework:** We use React with Vite.

- **Styling:** Use Tailwind CSS for all styling. Do not write custom CSS.

- **Testing:** All new components must include a Vitest unit test.

- **Tone:** Be concise. Don't explain basic React concepts.
```

3. Start a new session. Gemini CLI will now know these rules automatically.


### Scenario: Using the hierarchy

[Section titled “Scenario: Using the hierarchy”](https://geminicli.com/docs/cli/tutorials/memory-management/#scenario-using-the-hierarchy)

Context is loaded hierarchically. This lets you have general rules for
everything and specific rules for sub-projects.

1. **Global:**`~/.gemini/GEMINI.md` (Rules for _every_ project you work on).
2. **Project Root:**`./GEMINI.md` (Rules for the current repository).
3. **Subdirectory:**`./src/GEMINI.md` (Rules specific to the `src` folder).

**Example:** You might set “Always use strict typing” in your global config, but
“Use Python 3.11” only in your backend repository.

## How to teach the agent facts (Memory)

[Section titled “How to teach the agent facts (Memory)”](https://geminicli.com/docs/cli/tutorials/memory-management/#how-to-teach-the-agent-facts-memory)

Sometimes you don’t want to write a config file. You just want to tell the agent
something once and have it remember forever. You can do this naturally in chat.

### Scenario: Saving a memory

[Section titled “Scenario: Saving a memory”](https://geminicli.com/docs/cli/tutorials/memory-management/#scenario-saving-a-memory)

Just tell the agent to remember something.

**Prompt:**`Remember that I prefer using 'const' over 'let' wherever possible.`

The agent will use the `save_memory` tool to store this fact in your global
memory file.

**Prompt:**`Save the fact that the staging server IP is 10.0.0.5.`

### Scenario: Using memory in conversation

[Section titled “Scenario: Using memory in conversation”](https://geminicli.com/docs/cli/tutorials/memory-management/#scenario-using-memory-in-conversation)

Once a fact is saved, you don’t need to invoke it explicitly. The agent “knows”
it.

**Next Prompt:**`Write a script to deploy to staging.`

**Agent Response:** “I’ll write a script to deploy to **10.0.0.5**…”

## How to manage and inspect context

[Section titled “How to manage and inspect context”](https://geminicli.com/docs/cli/tutorials/memory-management/#how-to-manage-and-inspect-context)

As your project grows, you might want to see exactly what instructions the agent
is following.

### Scenario: View active context

[Section titled “Scenario: View active context”](https://geminicli.com/docs/cli/tutorials/memory-management/#scenario-view-active-context)

To see the full, concatenated set of instructions currently loaded (from all
`GEMINI.md` files and saved memories), use the `/memory show` command.

**Command:**`/memory show`

This prints the raw text the model receives at the start of the session. It’s
excellent for debugging why the agent might be ignoring a rule.

### Scenario: Refresh context

[Section titled “Scenario: Refresh context”](https://geminicli.com/docs/cli/tutorials/memory-management/#scenario-refresh-context)

If you edit a `GEMINI.md` file while a session is running, the agent won’t know
immediately. Force a reload with:

**Command:**`/memory reload`

## Best practices

[Section titled “Best practices”](https://geminicli.com/docs/cli/tutorials/memory-management/#best-practices)

- **Keep it focused:** Avoid adding excessive content to `GEMINI.md`. Keep
instructions actionable and relevant to code generation.
- **Use negative constraints:** Explicitly telling the agent what _not_ to do
(for example, “Do not use class components”) is often more effective than
vague positive instructions.
- **Review often:** Periodically check your `GEMINI.md` files to remove outdated
rules.

## Next steps

[Section titled “Next steps”](https://geminicli.com/docs/cli/tutorials/memory-management/#next-steps)

- Learn about [Session management](https://geminicli.com/docs/cli/tutorials/session-management) to see how short-term
history works.
- Explore the [Command reference](https://geminicli.com/docs/reference/commands) for more
`/memory` options.
- Read the technical spec for [Project context](https://geminicli.com/docs/cli/gemini-md).
- Try the experimental [Auto Memory](https://geminicli.com/docs/cli/auto-memory) feature to extract
memory updates and reusable skills from your past sessions automatically.

Last updated: May 5, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.