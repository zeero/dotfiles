[Skip to content](https://geminicli.com/docs/reference/tools/#_top)

# Tools reference

Copy as MarkdownCopied!

Gemini CLI uses tools to interact with your local environment, access
information, and perform actions on your behalf. These tools extend the model’s
capabilities beyond text generation, letting it read files, execute commands,
and search the web.

## How to use Gemini CLI’s tools

[Section titled “How to use Gemini CLI’s tools”](https://geminicli.com/docs/reference/tools/#how-to-use-gemini-clis-tools)

Tools are generally invoked automatically by Gemini CLI when it needs to perform
an action. However, you can also trigger specific tools manually using shorthand
syntax.

### Automatic execution and security

[Section titled “Automatic execution and security”](https://geminicli.com/docs/reference/tools/#automatic-execution-and-security)

When the model wants to use a tool, Gemini CLI evaluates the request against its
security policies.

- **User confirmation:** You must manually approve tools that modify files or
execute shell commands (mutators). The CLI shows you a diff or the exact
command before you confirm.
- **Sandboxing:** You can run tool executions in secure, containerized
environments to isolate changes from your host system. For more details, see
the [Sandboxing](https://geminicli.com/docs/cli/sandbox) guide.
- **Trusted folders:** You can configure which directories allow the model to
use system tools. For more details, see the
[Trusted folders](https://geminicli.com/docs/cli/trusted-folders) guide.

Review confirmation prompts carefully before allowing a tool to execute.

### How to use manually-triggered tools

[Section titled “How to use manually-triggered tools”](https://geminicli.com/docs/reference/tools/#how-to-use-manually-triggered-tools)

You can directly trigger key tools using special syntax in your prompt:

- **[File access](https://geminicli.com/docs/tools/file-system#read_many_files) (`@`):** Use the `@`
symbol followed by a file or directory path to include its content in your
prompt. This triggers the `read_many_files` tool.
- **[Shell commands](https://geminicli.com/docs/tools/shell) (`!`):** Use the `!` symbol followed by
a system command to execute it directly. This triggers the `run_shell_command`
tool.

## How to manage tools

[Section titled “How to manage tools”](https://geminicli.com/docs/reference/tools/#how-to-manage-tools)

Using built-in commands, you can inspect available tools and configure how they
behave.

### Tool discovery

[Section titled “Tool discovery”](https://geminicli.com/docs/reference/tools/#tool-discovery)

Use the `/tools` command to see what tools are currently active in your session.

- **`/tools`**: Lists all registered tools with their display names.
- **`/tools desc`**: Lists all tools with their full descriptions.

This is especially useful for verifying that
[MCP servers](https://geminicli.com/docs/tools/mcp-server) or custom tools are loaded correctly.

### Tool configuration

[Section titled “Tool configuration”](https://geminicli.com/docs/reference/tools/#tool-configuration)

You can enable, disable, or configure specific tools in your settings. For
example, you can set a specific pager for shell commands or configure the
browser used for web searches. See the [Settings](https://geminicli.com/docs/cli/settings) guide for
details.

## Available tools

[Section titled “Available tools”](https://geminicli.com/docs/reference/tools/#available-tools)

The following sections list all available tools, categorized by their primary
function. For detailed parameter information, see the linked documentation for
each tool.

### Execution

[Section titled “Execution”](https://geminicli.com/docs/reference/tools/#execution)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| [`run_shell_command`](https://geminicli.com/docs/tools/shell) | `Execute` | Executes arbitrary shell commands. Supports interactive sessions and background processes. Requires manual confirmation. |

### File System

[Section titled “File System”](https://geminicli.com/docs/reference/tools/#file-system)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| [`glob`](https://geminicli.com/docs/tools/file-system) | `Search` | Finds files matching specific glob patterns across the workspace. |
| [`grep_search`](https://geminicli.com/docs/tools/file-system) | `Search` | Searches for a regular expression pattern within file contents. Legacy alias: `search_file_content`. |
| [`list_directory`](https://geminicli.com/docs/tools/file-system) | `Read` | Lists the names of files and subdirectories within a specified path. |
| [`read_file`](https://geminicli.com/docs/tools/file-system) | `Read` | Reads the content of a specific file. Supports text, images, audio, and PDF. |
| [`read_many_files`](https://geminicli.com/docs/tools/file-system) | `Read` | Reads and concatenates content from multiple files. Often triggered by the `@` symbol in your prompt. |
| [`replace`](https://geminicli.com/docs/tools/file-system) | `Edit` | Performs precise text replacement within a file. Requires manual confirmation. |
| [`write_file`](https://geminicli.com/docs/tools/file-system) | `Edit` | Creates or overwrites a file with new content. Requires manual confirmation. |

### Interaction

[Section titled “Interaction”](https://geminicli.com/docs/reference/tools/#interaction)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| [`ask_user`](https://geminicli.com/docs/tools/ask-user) | `Communicate` | Requests clarification or missing information via an interactive dialog. |
| [`write_todos`](https://geminicli.com/docs/tools/todos) | `Other` | Maintains an internal list of subtasks. The model uses this to track its own progress. |

### Task Tracker (Experimental)

[Section titled “Task Tracker (Experimental)”](https://geminicli.com/docs/reference/tools/#task-tracker-experimental)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| [`tracker_create_task`](https://geminicli.com/docs/tools/tracker) | `Other` | Creates a new task in the experimental tracker. |
| [`tracker_update_task`](https://geminicli.com/docs/tools/tracker) | `Other` | Updates an existing task’s status, description, or dependencies. |
| [`tracker_get_task`](https://geminicli.com/docs/tools/tracker) | `Other` | Retrieves the full details of a specific task. |
| [`tracker_list_tasks`](https://geminicli.com/docs/tools/tracker) | `Other` | Lists tasks in the tracker, optionally filtered by status, type, or parent. |
| [`tracker_add_dependency`](https://geminicli.com/docs/tools/tracker) | `Other` | Adds a dependency between two tasks, ensuring topological execution. |
| [`tracker_visualize`](https://geminicli.com/docs/tools/tracker) | `Other` | Renders an ASCII tree visualization of the current task graph. |

### MCP

[Section titled “MCP”](https://geminicli.com/docs/reference/tools/#mcp)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| [`list_mcp_resources`](https://geminicli.com/docs/tools/mcp-resources) | `Search` | Lists all available resources exposed by connected MCP servers. |
| [`read_mcp_resource`](https://geminicli.com/docs/tools/mcp-resources) | `Read` | Reads the content of a specific Model Context Protocol (MCP) resource. |

### Memory

[Section titled “Memory”](https://geminicli.com/docs/reference/tools/#memory)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| [`activate_skill`](https://geminicli.com/docs/tools/activate-skill) | `Other` | Loads specialized procedural expertise from the `.gemini/skills` directory. |
| [`get_internal_docs`](https://geminicli.com/docs/tools/internal-docs) | `Think` | Accesses Gemini CLI’s own documentation for accurate answers about its capabilities. |

### Planning

[Section titled “Planning”](https://geminicli.com/docs/reference/tools/#planning)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| [`enter_plan_mode`](https://geminicli.com/docs/tools/planning) | `Plan` | Switches the CLI to a safe, read-only “Plan Mode” for researching complex changes. |
| [`exit_plan_mode`](https://geminicli.com/docs/tools/planning) | `Plan` | Finalizes a plan, presents it for review, and requests approval to start implementation. |

### System

[Section titled “System”](https://geminicli.com/docs/reference/tools/#system)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| `complete_task` | `Other` | Finalizes a subagent’s mission and returns the result to the parent agent. This tool is not available to the user. |

### Task Tracking

[Section titled “Task Tracking”](https://geminicli.com/docs/reference/tools/#task-tracking)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| `tracker_add_dependency` | `Think` | Adds a dependency between two existing tasks in the tracker. |
| `tracker_create_task` | `Think` | Creates a new task in the internal tracker to monitor progress. |
| `tracker_get_task` | `Think` | Retrieves the details and current status of a specific tracked task. |
| `tracker_list_tasks` | `Think` | Lists all tasks currently being tracked. |
| `tracker_update_task` | `Think` | Updates the status or details of an existing task. |
| `tracker_visualize` | `Think` | Generates a visual representation of the current task dependency graph. |
| `update_topic` | `Think` | Updates the current topic and status to keep the user informed of progress. |

### Web

[Section titled “Web”](https://geminicli.com/docs/reference/tools/#web)

| Tool | Kind | Description |
| :-- | :-- | :-- |
| [`google_web_search`](https://geminicli.com/docs/tools/web-search) | `Search` | Performs a Google Search to find up-to-date information. |
| [`web_fetch`](https://geminicli.com/docs/tools/web-fetch) | `Fetch` | Retrieves and processes content from specific URLs. **Warning:** This tool can access local and private network addresses (for example, localhost), which may pose a security risk if used with untrusted prompts. In Plan Mode, this tool requires explicit user confirmation. |

### Tool argument keys

[Section titled “Tool argument keys”](https://geminicli.com/docs/reference/tools/#tool-argument-keys)

When writing [`argsPattern`](https://geminicli.com/docs/reference/policy-engine#arguments-pattern) rules for the
[policy engine](https://geminicli.com/docs/reference/policy-engine), you need to know the JSON argument keys for
each tool. The following table lists the keys that appear in the JSON
representation of each tool’s arguments.

| Tool | JSON argument keys |
| :-- | :-- |
| `run_shell_command` | `command`, `description`, `dir_path`, `is_background` |
| `glob` | `pattern`, `dir_path`, `case_sensitive`, `respect_git_ignore`, `respect_gemini_ignore` |
| `grep_search` | `pattern`, `dir_path`, `include_pattern`, `exclude_pattern`, `names_only`, `case_sensitive`, `fixed_strings`, `context`, `after`, `before`, `no_ignore`, `max_matches_per_file`, `total_max_matches` |
| `list_directory` | `dir_path`, `ignore`, `file_filtering_options` |
| `read_file` | `file_path`, `start_line`, `end_line` |
| `read_many_files` | `include`, `exclude`, `recursive`, `useDefaultExcludes` |
| `write_file` | `file_path`, `content` |
| `replace` | `file_path`, `old_string`, `new_string`, `instruction`, `allow_multiple` |
| `ask_user` | `questions` (array of `question`, `header`, `type`, `options`) |
| `write_todos` | `todos` (array of `description`, `status`) |
| `activate_skill` | `name` |
| `get_internal_docs` | `path` |
| `enter_plan_mode` | `reason` |
| `exit_plan_mode` | `plan_path` |
| `tracker_create_task` | `title`, `description`, `type` |
| `tracker_update_task` | `id`, `title`, `description`, `status`, `dependencies` |
| `tracker_get_task` | `id` |
| `tracker_list_tasks` | `status`, `type`, `parentId` |
| `tracker_add_dependency` | `taskId`, `dependencyId` |
| `tracker_visualize` | _(none)_ |
| `update_topic` | `title`, `summary`, `strategic_intent` |
| `google_web_search` | `query` |
| `web_fetch` | `prompt` |

For example, to write a policy rule that blocks any `write_file` call targeting
a `.env` file, you would match against the `file_path` key:

```
[[rule]]

toolName = "write_file"

argsPattern = '"file_path":".*\.env"'

decision = "deny"

priority = 100

denyMessage = "Writing to .env files is not allowed."
```

For full argument descriptions and types, see the individual tool pages linked
in the [tables above](https://geminicli.com/docs/reference/tools/#available-tools).

## Under the hood

[Section titled “Under the hood”](https://geminicli.com/docs/reference/tools/#under-the-hood)

For developers, the tool system is designed to be extensible and robust. The
`ToolRegistry` class manages all available tools.

You can extend Gemini CLI with custom tools by configuring
`tools.discoveryCommand` in your settings or by connecting to MCP servers.

## Next steps

[Section titled “Next steps”](https://geminicli.com/docs/reference/tools/#next-steps)

- Learn how to [Set up an MCP server](https://geminicli.com/docs/tools/mcp-server).
- Explore [Agent Skills](https://geminicli.com/docs/cli/skills) for specialized expertise.
- See the [Command reference](https://geminicli.com/docs/reference/commands) for slash commands.

Last updated: May 13, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.