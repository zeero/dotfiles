Docs

On this page

On this page

# Pi Documentation

Pi is a minimal terminal coding harness. It is designed to stay small at the core while being extended through TypeScript extensions, skills, prompt templates, themes, and pi packages.

## Quick start

Install Pi with npm:

```bash
npm install -g --ignore-scripts @earendil-works/pi-coding-agent
```

`--ignore-scripts` disables dependency lifecycle scripts during install. Pi does not require install scripts for normal npm installs.

On Linux or macOS, you can also use the installer:

```bash
curl -fsSL https://pi.dev/install.sh | sh
```

To uninstall pi itself, use npm for curl and npm installs:

```bash
npm uninstall -g @earendil-works/pi-coding-agent
```

For pnpm, Yarn, or Bun installs, use the matching global remove command: `pnpm remove -g @earendil-works/pi-coding-agent`, `yarn global remove @earendil-works/pi-coding-agent`, or `bun uninstall -g @earendil-works/pi-coding-agent`.

Then run it in a project directory:

```bash
pi
```

Authenticate with `/login` for subscription providers, or set an API key such as `ANTHROPIC_API_KEY` before starting pi.

For the full first-run flow, see [Quickstart](https://pi.dev/docs/latest/quickstart).

## Start here

- [Quickstart](https://pi.dev/docs/latest/quickstart) \- install, authenticate, and run a first session.
- [Using Pi](https://pi.dev/docs/latest/usage) \- interactive mode, slash commands, context files, and CLI reference.
- [Providers](https://pi.dev/docs/latest/providers) \- subscription and API-key setup for built-in providers.
- [Settings](https://pi.dev/docs/latest/settings) \- global and project settings.
- [Keybindings](https://pi.dev/docs/latest/keybindings) \- default shortcuts and custom keybindings.
- [Sessions](https://pi.dev/docs/latest/sessions) \- session management, branching, and tree navigation.
- [Compaction](https://pi.dev/docs/latest/compaction) \- context compaction and branch summarization.

## Customization

- [Extensions](https://pi.dev/docs/latest/extensions) \- TypeScript modules for tools, commands, events, and custom UI.
- [Skills](https://pi.dev/docs/latest/skills) \- Agent Skills for reusable on-demand capabilities.
- [Prompt templates](https://pi.dev/docs/latest/prompt-templates) \- reusable prompts that expand from slash commands.
- [Themes](https://pi.dev/docs/latest/themes) \- built-in and custom terminal themes.
- [Pi packages](https://pi.dev/docs/latest/packages) \- bundle and share extensions, skills, prompts, and themes.
- [Custom models](https://pi.dev/docs/latest/models) \- add model entries for supported provider APIs.
- [Custom providers](https://pi.dev/docs/latest/custom-provider) \- implement custom APIs and OAuth flows.

## Programmatic usage

- [SDK](https://pi.dev/docs/latest/sdk) \- embed pi in Node.js applications.
- [RPC mode](https://pi.dev/docs/latest/rpc) \- integrate over stdin/stdout JSONL.
- [JSON event stream mode](https://pi.dev/docs/latest/json) \- print mode with structured events.
- [TUI components](https://pi.dev/docs/latest/tui) \- build custom terminal UI for extensions.

## Reference

- [Session format](https://pi.dev/docs/latest/session-format) \- JSONL session file format, entry types, and SessionManager API.

## Platform setup

- [Windows](https://pi.dev/docs/latest/windows)
- [Termux on Android](https://pi.dev/docs/latest/termux)
- [tmux](https://pi.dev/docs/latest/tmux)
- [Terminal setup](https://pi.dev/docs/latest/terminal-setup)
- [Shell aliases](https://pi.dev/docs/latest/shell-aliases)

## Development

- [Development](https://pi.dev/docs/latest/development) \- local setup, project structure, and debugging.