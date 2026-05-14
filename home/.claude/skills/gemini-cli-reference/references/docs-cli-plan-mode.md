[Skip to content](https://geminicli.com/docs/cli/plan-mode/#_top)

# Plan Mode

Copy as MarkdownCopied!

Plan Mode is a read-only environment for architecting robust solutions before
implementation. With Plan Mode, you can:

- **Research:** Explore the project in a read-only state to prevent accidental
changes.
- **Design:** Understand problems, evaluate trade-offs, and choose a solution.
- **Plan:** Align on an execution strategy before any code is modified.

Plan Mode is enabled by default. You can manage this setting using the
`/settings` command.

## How to enter Plan Mode

[Section titled “How to enter Plan Mode”](https://geminicli.com/docs/cli/plan-mode/#how-to-enter-plan-mode)

Plan Mode integrates seamlessly into your workflow, letting you switch between
planning and execution as needed.

You can either configure Gemini CLI to start in Plan Mode by default or enter
Plan Mode manually during a session.

### Launch in Plan Mode

[Section titled “Launch in Plan Mode”](https://geminicli.com/docs/cli/plan-mode/#launch-in-plan-mode)

To start Gemini CLI directly in Plan Mode by default:

1. Use the `/settings` command.
2. Set **Default Approval Mode** to `Plan`.

To launch Gemini CLI in Plan Mode once:

1. Use `gemini --approval-mode=plan` when launching Gemini CLI.

### Enter Plan Mode manually

[Section titled “Enter Plan Mode manually”](https://geminicli.com/docs/cli/plan-mode/#enter-plan-mode-manually)

To start Plan Mode while using Gemini CLI:

- **Keyboard shortcut:** Press `Shift+Tab` to cycle through approval modes
(`Default` -\> `Auto-Edit` -\> `Plan`). Plan Mode is automatically removed from
the rotation when Gemini CLI is actively processing or showing confirmation
dialogs.

- **Command:** Type `/plan [goal]` in the input box. The `[goal]` is optional;
for example, `/plan implement authentication` will switch to Plan Mode and
immediately submit the prompt to the model.

- **Natural Language:** Ask Gemini CLI to “start a plan for…”. Gemini CLI
calls the
[`enter_plan_mode`](https://geminicli.com/docs/tools/planning#1-enter_plan_mode-enterplanmode) tool
to switch modes. This tool is not available when Gemini CLI is in
[YOLO mode](https://geminicli.com/docs/reference/configuration#command-line-arguments).


## How to use Plan Mode

[Section titled “How to use Plan Mode”](https://geminicli.com/docs/cli/plan-mode/#how-to-use-plan-mode)

Plan Mode lets you collaborate with Gemini CLI to design a solution before
Gemini CLI takes action.

1. **Provide a goal:** Start by describing what you want to achieve. Gemini CLI
will then enter Plan Mode (if it’s not already) to research the task.

2. **Discuss and agree on strategy:** As Gemini CLI analyzes your codebase, it
will discuss its findings and proposed strategy with you to ensure
alignment. It may ask you questions or present different implementation
options using [`ask_user`](https://geminicli.com/docs/tools/ask-user). **Gemini CLI will stop and**
**wait for your confirmation** before drafting the formal plan. You should
reach an informal agreement on the approach before proceeding.

3. **Review the plan:** Once you’ve agreed on the strategy, Gemini CLI creates
a detailed implementation plan as a Markdown file in your plans directory.
   - **View:** You can open and read this file to understand the proposed
     changes.
   - **Edit:** Press `Ctrl+X` to open the plan directly in your configured
     external editor.
4. **Approve or iterate:** Gemini CLI will present the finalized plan for your
formal approval.
   - **Approve:** If you’re satisfied with the plan, approve it to start the
     implementation immediately: **Yes, automatically accept edits** or **Yes,**
     **manually accept edits**.
   - **Iterate:** If the plan needs adjustments, provide feedback in the input
     box or [edit the plan file directly](https://geminicli.com/docs/cli/plan-mode/#collaborative-plan-editing). Gemini
     CLI will refine the strategy and update the plan.
   - **Cancel:** You can cancel your plan with `Esc`.

For more complex or specialized planning tasks, you can
[customize the planning workflow with skills](https://geminicli.com/docs/cli/plan-mode/#custom-planning-with-skills).

### Collaborative plan editing

[Section titled “Collaborative plan editing”](https://geminicli.com/docs/cli/plan-mode/#collaborative-plan-editing)

You can collaborate with Gemini CLI by making direct changes or leaving comments
in the implementation plan. This is often faster and more precise than
describing complex changes in natural language.

1. **Open the plan:** Press `Ctrl+X` when Gemini CLI presents a plan for
review.
2. **Edit or comment:**The plan opens in your configured external editor (for
example, VS Code or Vim). You can:

   - **Modify steps:** Directly reorder, delete, or rewrite implementation
     steps.
   - **Leave comments:** Add inline questions or feedback (for example, “Wait,
     shouldn’t we use the existing `Logger` class here?”).
3. **Save and close:** Save your changes and close the editor.
4. **Review and refine:** Gemini CLI automatically detects the changes, reviews
your comments, and adjusts the implementation strategy. It then presents the
refined plan for your final approval.

## How to exit Plan Mode

[Section titled “How to exit Plan Mode”](https://geminicli.com/docs/cli/plan-mode/#how-to-exit-plan-mode)

You can exit Plan Mode at any time, whether you have finalized a plan or want to
switch back to another mode.

- **Approve a plan:** When Gemini CLI presents a finalized plan, approving it
automatically exits Plan Mode and starts the implementation.
- **Keyboard shortcut:** Press `Shift+Tab` to cycle to the desired mode.
- **Natural language:** Ask Gemini CLI to “exit plan mode” or “stop planning.”

## Tool Restrictions

[Section titled “Tool Restrictions”](https://geminicli.com/docs/cli/plan-mode/#tool-restrictions)

Plan Mode enforces strict safety policies to prevent accidental changes.

These are the only allowed tools:

- **FileSystem (Read):** [`read_file`](https://geminicli.com/docs/tools/file-system#2-read_file-readfile),
[`list_directory`](https://geminicli.com/docs/tools/file-system#1-list_directory-readfolder),
[`glob`](https://geminicli.com/docs/tools/file-system#4-glob-findfiles)
- **Search:** [`grep_search`](https://geminicli.com/docs/tools/file-system#5-grep_search-searchtext),
[`google_web_search`](https://geminicli.com/docs/tools/web-search),
[`web_fetch`](https://geminicli.com/docs/tools/web-fetch) (requires explicit confirmation),
[`get_internal_docs`](https://geminicli.com/docs/tools/internal-docs)
- **Research Subagents:** [`codebase_investigator`](https://geminicli.com/docs/core/subagents#codebase-investigator),
[`cli_help`](https://geminicli.com/docs/core/subagents#cli-help-agent)
- **Interaction:** [`ask_user`](https://geminicli.com/docs/tools/ask-user)
- **MCP tools (Read):** Read-only [MCP tools](https://geminicli.com/docs/tools/mcp-server) (for
example, `github_read_issue`, `postgres_read_schema`) and core
[MCP resource tools](https://geminicli.com/docs/tools/mcp-resources) (`list_mcp_resources`,
`read_mcp_resource`) are allowed.
- **Planning (Write):** [`write_file`](https://geminicli.com/docs/tools/file-system#3-write_file-writefile) and
[`replace`](https://geminicli.com/docs/tools/file-system#6-replace-edit) only allowed for `.md`
files in the `~/.gemini/tmp/<project>/<session-id>/plans/` directory or your
[custom plans directory](https://geminicli.com/docs/cli/plan-mode/#custom-plan-directory-and-policies).
- **Memory:** [`save_memory`](https://geminicli.com/docs/tools/memory)
- **Skills:** [`activate_skill`](https://geminicli.com/docs/cli/skills) (allows loading specialized
instructions and resources in a read-only manner)

## Customization and best practices

[Section titled “Customization and best practices”](https://geminicli.com/docs/cli/plan-mode/#customization-and-best-practices)

Plan Mode is secure by default, but you can adapt it to fit your specific
workflows. You can customize how Gemini CLI plans by using skills, adjusting
safety policies, changing where plans are stored, or adding hooks.

### Custom planning with skills

[Section titled “Custom planning with skills”](https://geminicli.com/docs/cli/plan-mode/#custom-planning-with-skills)

You can use [Agent Skills](https://geminicli.com/docs/cli/skills) to customize how Gemini CLI
approaches planning for specific types of tasks. When a skill is activated
during Plan Mode, its specialized instructions and procedural workflows will
guide the research, design, and planning phases.

For example:

- A **“Database Migration”** skill could ensure the plan includes data safety
checks and rollback strategies.
- A **“Security Audit”** skill could prompt Gemini CLI to look for specific
vulnerabilities during codebase exploration.
- A **“Frontend Design”** skill could guide Gemini CLI to use specific UI
components and accessibility standards in its proposal.

To use a skill in Plan Mode, you can explicitly ask Gemini CLI to “use the
`<skill-name>` skill to plan…” or Gemini CLI may autonomously activate it
based on the task description.

### Custom policies

[Section titled “Custom policies”](https://geminicli.com/docs/cli/plan-mode/#custom-policies)

Plan Mode’s default tool restrictions are managed by the
[policy engine](https://geminicli.com/docs/reference/policy-engine) and defined in the built-in
[`plan.toml`](https://github.com/google-gemini/gemini-cli/blob/main/packages/core/src/policy/policies/plan.toml) file. The built-in policy (Tier 1) enforces the read-only state,
but you can customize these rules by creating your own policies in your
`~/.gemini/policies/` directory (Tier 2).

#### Global vs. mode-specific rules

[Section titled “Global vs. mode-specific rules”](https://geminicli.com/docs/cli/plan-mode/#global-vs-mode-specific-rules)

As described in the
[policy engine documentation](https://geminicli.com/docs/reference/policy-engine#approval-modes), any
rule that does not explicitly specify `modes` is considered “always active” and
will apply to Plan Mode as well.

To maintain the integrity of Plan Mode as a safe research environment,
persistent tool approvals are context-aware. Approvals granted in modes like
Default or Auto-Edit do not apply to Plan Mode, ensuring that tools trusted for
implementation don’t automatically execute while you’re researching. However,
approvals granted while in Plan Mode are treated as intentional choices for
global trust and apply to all modes.

If you want to manually restrict a rule to other modes but _not_ to Plan Mode,
you must explicitly specify the target modes. For example, to allow `npm test`
in default and Auto-Edit modes but not in Plan Mode:

```
[[rule]]

toolName = "run_shell_command"

commandPrefix = "npm test"

decision = "allow"

priority = 100

# By omitting "plan", this rule will not be active in Plan Mode.

modes = ["default", "autoEdit"]
```

#### Example: Automatically approve read-only MCP tools

[Section titled “Example: Automatically approve read-only MCP tools”](https://geminicli.com/docs/cli/plan-mode/#example-automatically-approve-read-only-mcp-tools)

By default, read-only MCP tools require user confirmation in Plan Mode. You can
use `toolAnnotations` and the `mcpName` wildcard to customize this behavior for
your specific environment.

`~/.gemini/policies/mcp-read-only.toml`

```
[[rule]]

toolName = "*"

mcpName = "*"

toolAnnotations = { readOnlyHint = true }

decision = "allow"

priority = 100

modes = ["plan"]
```

For more information on how the policy engine works, see the
[policy engine](https://geminicli.com/docs/reference/policy-engine) docs.

#### Example: Allow git commands in Plan Mode

[Section titled “Example: Allow git commands in Plan Mode”](https://geminicli.com/docs/cli/plan-mode/#example-allow-git-commands-in-plan-mode)

This rule lets you check the repository status and see changes while in Plan
Mode.

`~/.gemini/policies/git-research.toml`

```
[[rule]]

toolName = "run_shell_command"

commandPrefix = ["git status", "git diff"]

decision = "allow"

priority = 100

modes = ["plan"]
```

#### Example: Enable custom subagents in Plan Mode

[Section titled “Example: Enable custom subagents in Plan Mode”](https://geminicli.com/docs/cli/plan-mode/#example-enable-custom-subagents-in-plan-mode)

Built-in research [subagents](https://geminicli.com/docs/core/subagents) like
[`codebase_investigator`](https://geminicli.com/docs/core/subagents#codebase-investigator) and
[`cli_help`](https://geminicli.com/docs/core/subagents#cli-help-agent) are enabled by default in Plan
Mode. You can enable additional
[custom subagents](https://geminicli.com/docs/core/subagents#creating-custom-subagents) by adding a
rule to your policy.

`~/.gemini/policies/research-subagents.toml`

```
[[rule]]

toolName = "my_custom_subagent"

decision = "allow"

priority = 100

modes = ["plan"]
```

Tell Gemini CLI it can use these tools in your prompt, for example: _“You can_
_check ongoing changes in git.”_

### Custom plan directory and policies

[Section titled “Custom plan directory and policies”](https://geminicli.com/docs/cli/plan-mode/#custom-plan-directory-and-policies)

By default, planning artifacts are stored in a managed temporary directory
outside your project: `~/.gemini/tmp/<project>/<session-id>/plans/`.

You can configure a custom directory for plans in your `settings.json`. For
example, to store plans in a `.gemini/plans` directory within your project:

```
{

  "general": {

    "plan": {

      "directory": ".gemini/plans"

    }

  }

}
```

To maintain the safety of Plan Mode, user-configured paths for the plans
directory are restricted to the project root. This ensures that custom planning
locations defined within a project’s workspace cannot be used to escape and
overwrite sensitive files elsewhere. Any user-configured directory must reside
within the project boundary.

Using a custom directory requires updating your
[policy engine](https://geminicli.com/docs/reference/policy-engine) configurations to allow
`write_file` and `replace` in that specific location. For example, to allow
writing to the `.gemini/plans` directory within your project, create a policy
file at `~/.gemini/policies/plan-custom-directory.toml`:

```
[[rule]]

toolName = ["write_file", "replace"]

decision = "allow"

priority = 100

modes = ["plan"]

# Adjust the pattern to match your custom directory.

# This example matches any .md file in a .gemini/plans directory within the project.

argsPattern = "\"file_path\":\"[^\"]+[\\\\/]+\\.gemini[\\\\/]+plans[\\\\/]+[\\w-]+\\.md\""
```

### Using hooks with Plan Mode

[Section titled “Using hooks with Plan Mode”](https://geminicli.com/docs/cli/plan-mode/#using-hooks-with-plan-mode)

You can use the [hook system](https://geminicli.com/docs/hooks/writing-hooks) to automate parts of
the planning workflow or enforce additional checks when Gemini CLI transitions
into or out of Plan Mode.

Hooks such as `BeforeTool` or `AfterTool` can be configured to intercept the
`enter_plan_mode` and `exit_plan_mode` tool calls.

#### Example: Archive approved plans to GCS (`AfterTool`)

[Section titled “Example: Archive approved plans to GCS (AfterTool)”](https://geminicli.com/docs/cli/plan-mode/#example-archive-approved-plans-to-gcs-aftertool)

If your organizational policy requires a record of all execution plans, you can
use an `AfterTool` hook to securely copy the plan artifact to Google Cloud
Storage whenever Gemini CLI exits Plan Mode to start the implementation.

**`.gemini/hooks/archive-plan.sh`:**

```
#!/usr/bin/env bash

# Extract the plan filename from the tool input JSON

plan_filename=$(jq -r '.tool_input.plan_filename // empty')

# Construct the absolute path using the GEMINI_PLANS_DIR environment variable

plan_path="$GEMINI_PLANS_DIR/$plan_filename"

if [ -f "$plan_path" ]; then

  # Generate a unique filename using a timestamp

  filename="$(date +%s)_$(basename "$plan_path")"

  # Upload the plan to GCS in the background so it doesn't block the CLI

  gsutil cp "$plan_path" "gs://my-audit-bucket/gemini-plans/$filename" > /dev/null 2>&1 &

fi

# AfterTool hooks should generally allow the flow to continue

echo '{"decision": "allow"}'
```

To register this `AfterTool` hook, add it to your `settings.json`:

```
{

  "hooks": {

    "AfterTool": [\
\
      {\
\
        "matcher": "exit_plan_mode",\
\
        "hooks": [\
\
          {\
\
            "name": "archive-plan",\
\
            "type": "command",\
\
            "command": "~/.gemini/hooks/archive-plan.sh"\
\
          }\
\
        ]\
\
      }\
\
    ]

  }

}
```

## Commands

[Section titled “Commands”](https://geminicli.com/docs/cli/plan-mode/#commands)

- **`/plan copy`**: Copy the currently approved plan to your clipboard.

## Planning workflows

[Section titled “Planning workflows”](https://geminicli.com/docs/cli/plan-mode/#planning-workflows)

Plan Mode provides building blocks for structured research and design. These are
implemented as [extensions](https://geminicli.com/docs/extensions) using core planning tools
like [`enter_plan_mode`](https://geminicli.com/docs/tools/planning#1-enter_plan_mode-enterplanmode),
[`exit_plan_mode`](https://geminicli.com/docs/tools/planning#2-exit_plan_mode-exitplanmode), and
[`ask_user`](https://geminicli.com/docs/tools/ask-user).

### Built-in planning workflow

[Section titled “Built-in planning workflow”](https://geminicli.com/docs/cli/plan-mode/#built-in-planning-workflow)

The built-in planner uses an adaptive workflow to analyze your project, consult
you on trade-offs via [`ask_user`](https://geminicli.com/docs/tools/ask-user), and draft a plan for
your approval.

### Custom planning workflows

[Section titled “Custom planning workflows”](https://geminicli.com/docs/cli/plan-mode/#custom-planning-workflows)

You can install or create specialized planners to suit your workflow.

#### Conductor

[Section titled “Conductor”](https://geminicli.com/docs/cli/plan-mode/#conductor)

[Conductor](https://github.com/gemini-cli-extensions/conductor) is designed for spec-driven development. It organizes work into
“tracks” and stores persistent artifacts in your project’s `conductor/`
directory:

- **Automate transitions:** Switches to read-only mode via
[`enter_plan_mode`](https://geminicli.com/docs/tools/planning#1-enter_plan_mode-enterplanmode).
- **Streamline decisions:** Uses [`ask_user`](https://geminicli.com/docs/tools/ask-user) for
architectural choices.
- **Maintain project context:** Stores artifacts in the project directory using
[custom plan directory and policies](https://geminicli.com/docs/cli/plan-mode/#custom-plan-directory-and-policies).
- **Handoff execution:** Transitions to implementation via
[`exit_plan_mode`](https://geminicli.com/docs/tools/planning#2-exit_plan_mode-exitplanmode).

#### Build your own

[Section titled “Build your own”](https://geminicli.com/docs/cli/plan-mode/#build-your-own)

Since Plan Mode is built on modular building blocks, you can develop your own
custom planning workflow as an [extensions](https://geminicli.com/docs/extensions). By
leveraging core tools and [custom policies](https://geminicli.com/docs/cli/plan-mode/#custom-policies), you can define
how Gemini CLI researches and stores plans for your specific domain.

To build a custom planning workflow, you can use:

- **Tool usage:** Use core tools like
[`enter_plan_mode`](https://geminicli.com/docs/tools/planning#1-enter_plan_mode-enterplanmode),
[`ask_user`](https://geminicli.com/docs/tools/ask-user), and
[`exit_plan_mode`](https://geminicli.com/docs/tools/planning#2-exit_plan_mode-exitplanmode) to
manage the research and design process.
- **Customization:** Set your own storage locations and policy rules using
[custom plan directories](https://geminicli.com/docs/cli/plan-mode/#custom-plan-directory-and-policies) and
[custom policies](https://geminicli.com/docs/cli/plan-mode/#custom-policies).

By using Plan Mode as its execution environment, your custom methodology can
enforce read-only safety during the design phase while benefiting from
high-reasoning model routing.

## Automatic Model Routing

[Section titled “Automatic Model Routing”](https://geminicli.com/docs/cli/plan-mode/#automatic-model-routing)

When using an [auto model](https://geminicli.com/docs/reference/configuration#model), Gemini CLI
automatically optimizes [model routing](https://geminicli.com/docs/cli/telemetry#model-routing) based
on the current phase of your task:

1. **Planning Phase:** While in Plan Mode, the CLI routes requests to a
high-reasoning **Pro** model to ensure robust architectural decisions and
high-quality plans.
2. **Implementation Phase:** Once a plan is approved and you exit Plan Mode,
the CLI detects the existence of the approved plan and automatically
switches to a high-speed **Flash** model. This provides a faster, more
responsive experience during the implementation of the plan.

If the high-reasoning model is unavailable or you don’t have access to it,
Gemini CLI automatically and silently falls back to a faster model to ensure
your workflow isn’t interrupted.

This behavior is enabled by default to provide the best balance of quality and
performance. You can disable this automatic switching in your settings:

```
{

  "general": {

    "plan": {

      "modelRouting": false

    }

  }

}
```

## Cleanup

[Section titled “Cleanup”](https://geminicli.com/docs/cli/plan-mode/#cleanup)

By default, Gemini CLI automatically cleans up old session data, including all
associated plan files and task trackers.

- **Default behavior:** Sessions (and their plans) are retained for **30 days**.
- **Configuration:** You can customize this behavior via the `/settings` command
(search for **Enable Session Cleanup** or **Keep chat history**) or in your
`settings.json` file. See
[session retention](https://geminicli.com/docs/cli/session-management#session-retention) for more
details.

Manual deletion also removes all associated artifacts:

- **Command Line:** Use `gemini --delete-session <index|id>`.
- **Session Browser:** Press `/resume`, navigate to a session, and press `x`.

If you use a [custom plans directory](https://geminicli.com/docs/cli/plan-mode/#custom-plan-directory-and-policies),
those files are not automatically deleted and must be managed manually.

## Non-interactive execution

[Section titled “Non-interactive execution”](https://geminicli.com/docs/cli/plan-mode/#non-interactive-execution)

When running Gemini CLI in non-interactive environments (such as headless
scripts or CI/CD pipelines), Plan Mode optimizes for automated workflows:

- **Automatic transitions:** The policy engine automatically approves the
`enter_plan_mode` and `exit_plan_mode` tools without prompting for user
confirmation.
- **Automated implementation:** When exiting Plan Mode to execute the plan,
Gemini CLI automatically switches to
[YOLO mode](https://geminicli.com/docs/reference/policy-engine#approval-modes) instead of the
standard Default mode. This allows the CLI to execute the implementation steps
automatically without hanging on interactive tool approvals.

**Example:**

```
gemini --approval-mode plan -p "Analyze telemetry and suggest improvements"
```

Last updated: Apr 28, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.