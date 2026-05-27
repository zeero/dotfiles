[Skip to main content](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#__docusaurus_skipToContent_fallback)

On this page

This guide gets you from zero to a working Hermes setup that survives real use. Install, choose a provider, verify a working chat, and know exactly what to do when something breaks.

## Prefer to watch? [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#prefer-to-watch "Direct link to Prefer to watch?")

**Onchain AI Garage** put together a Masterclass walkthrough of installation, setup, and basic commands — a good companion to this page if you'd rather follow along on video. For more, see the full [Hermes Agent Tutorials & Use Cases](https://www.youtube.com/channel/UCqB1bhMwGsW-yefBxYwFCCg) playlist.

Hermes Agent Masterclass: 1. Installation, Setup, Basic Commands - YouTube

Tap to unmute

[Hermes Agent Masterclass: 1. Installation, Setup, Basic Commands](https://www.youtube.com/watch?v=R3YOGfTBcQg) [Tonbi's AI Garage](https://www.youtube-nocookie.com/channel/UCqB1bhMwGsW-yefBxYwFCCg)

Tonbi's AI Garage15.7K subscribers

[Watch on](https://www.youtube.com/watch?v=R3YOGfTBcQg)

## Who this is for [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#who-this-is-for "Direct link to Who this is for")

- Brand new and want the shortest path to a working setup
- Switching providers and don't want to lose time to config mistakes
- Setting up Hermes for a team, bot, or always-on workflow
- Tired of "it installed, but it still does nothing"

## The fastest path [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#the-fastest-path "Direct link to The fastest path")

Pick the row that matches your goal:

| Goal | Do this first | Then do this |
| --- | --- | --- |
| I just want Hermes working on my machine | `hermes setup` | Run a real chat and verify it responds |
| I already know my provider | `hermes model` | Save the config, then start chatting |
| I want a bot or always-on setup | `hermes gateway setup` after CLI works | Connect Telegram, Discord, Slack, or another platform |
| I want a local or self-hosted model | `hermes model` → custom endpoint | Verify the endpoint, model name, and context length |
| I want multi-provider fallback | `hermes model` first | Add routing and fallback only after the base chat works |

**Rule of thumb:** if Hermes cannot complete a normal chat, do not add more features yet. Get one clean conversation working first, then layer on gateway, cron, skills, voice, or routing.

* * *

## 1\. Install Hermes Agent [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#1-install-hermes-agent "Direct link to 1. Install Hermes Agent")

**Option A — pip (simplest):**

```bash
pip install hermes-agent
hermes postinstall     # optional: installs Node.js, browser, ripgrep, ffmpeg + runs setup
```

PyPI releases track tagged versions (major/minor releases), not every commit on `main`. For bleeding-edge, use Option B.

**Option B — git installer (tracks main branch):**

```bash
# Linux / macOS / WSL2 / Android (Termux)
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash
```

Android / Termux

If you're installing on a phone, see the dedicated [Termux guide](https://hermes-agent.nousresearch.com/docs/getting-started/termux) for the tested manual path, supported extras, and current Android-specific limitations.

Windows Users

Install [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install) first, then run the command above inside your WSL2 terminal.

After it finishes, reload your shell:

```bash
source ~/.bashrc   # or source ~/.zshrc
```

For detailed installation options, prerequisites, and troubleshooting, see the [Installation guide](https://hermes-agent.nousresearch.com/docs/getting-started/installation).

## 2\. Choose a Provider [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#2-choose-a-provider "Direct link to 2. Choose a Provider")

The single most important setup step. Use `hermes model` to walk through the choice interactively:

```bash
hermes model
```

Easiest path: Nous Portal

One subscription covers 300+ models plus the [Tool Gateway](https://hermes-agent.nousresearch.com/docs/user-guide/features/tool-gateway) (web search, image generation, TTS, cloud browser). On a fresh install:

```bash
hermes setup --portal
```

That logs you in, sets Nous as your provider, and turns on the Tool Gateway in one command.

Good defaults:

| Provider | What it is | How to set up |
| --- | --- | --- |
| **Nous Portal** | Subscription-based, zero-config | OAuth login via `hermes model` |
| **OpenAI Codex** | ChatGPT OAuth, uses Codex models | Device code auth via `hermes model` |
| **Anthropic** | Claude models directly — Max plan + extra usage credits (OAuth), or API key for pay-per-token | `hermes model` → OAuth login (requires Max + extra credits), or an Anthropic API key |
| **OpenRouter** | Multi-provider routing across many models | Enter your API key |
| **Z.AI** | GLM / Zhipu-hosted models | Set `GLM_API_KEY` / `ZAI_API_KEY` |
| **Kimi / Moonshot** | Moonshot-hosted coding and chat models | Set `KIMI_API_KEY` (or the Kimi-Coding-specific `KIMI_CODING_API_KEY`) |
| **Kimi / Moonshot China** | China-region Moonshot endpoint | Set `KIMI_CN_API_KEY` |
| **Arcee AI** | Trinity models | Set `ARCEEAI_API_KEY` |
| **GMI Cloud** | Multi-model direct API | Set `GMI_API_KEY` |
| **MiniMax (OAuth)** | MiniMax-M2.7 via browser OAuth — no API key needed | `hermes model` → MiniMax (OAuth) |
| **MiniMax** | International MiniMax endpoint | Set `MINIMAX_API_KEY` |
| **MiniMax China** | China-region MiniMax endpoint | Set `MINIMAX_CN_API_KEY` |
| **Alibaba Cloud** | Qwen models via DashScope | Set `DASHSCOPE_API_KEY` |
| **Hugging Face** | 20+ open models via unified router (Qwen, DeepSeek, Kimi, etc.) | Set `HF_TOKEN` |
| **AWS Bedrock** | Claude, Nova, Llama, DeepSeek via native Converse API | IAM role or `aws configure` ( [guide](https://hermes-agent.nousresearch.com/docs/guides/aws-bedrock)) |
| **Kilo Code** | KiloCode-hosted models | Set `KILOCODE_API_KEY` |
| **OpenCode Zen** | Pay-as-you-go access to curated models | Set `OPENCODE_ZEN_API_KEY` |
| **OpenCode Go** | $10/month subscription for open models | Set `OPENCODE_GO_API_KEY` |
| **DeepSeek** | Direct DeepSeek API access | Set `DEEPSEEK_API_KEY` |
| **NVIDIA NIM** | Nemotron models via build.nvidia.com or local NIM | Set `NVIDIA_API_KEY` (optional: `NVIDIA_BASE_URL`) |
| **GitHub Copilot** | GitHub Copilot subscription (GPT-5.x, Claude, Gemini, etc.) | OAuth via `hermes model`, or `COPILOT_GITHUB_TOKEN` / `GH_TOKEN` |
| **GitHub Copilot ACP** | Copilot ACP agent backend (spawns local `copilot` CLI) | `hermes model` (requires `copilot` CLI + `copilot login`) |
| **Custom Endpoint** | VLLM, SGLang, Ollama, or any OpenAI-compatible API | Set base URL + API key |

For most first-time users: choose a provider, accept the defaults unless you know why you're changing them. The full provider catalog with env vars and setup steps lives on the [Providers](https://hermes-agent.nousresearch.com/docs/integrations/providers) page.

Minimum context: 64K tokens

Hermes Agent requires a model with at least **64,000 tokens** of context. Models with smaller windows cannot maintain enough working memory for multi-step tool-calling workflows and will be rejected at startup. Most hosted models (Claude, GPT, Gemini, Qwen, DeepSeek) meet this easily. If you're running a local model, set its context size to at least 64K (e.g. `--ctx-size 65536` for llama.cpp or `-c 65536` for Ollama).

tip

You can switch providers at any time with `hermes model` — no lock-in. For a full list of all supported providers and setup details, see [AI Providers](https://hermes-agent.nousresearch.com/docs/integrations/providers).

### How settings are stored [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#how-settings-are-stored "Direct link to How settings are stored")

Hermes separates secrets from normal config:

- **Secrets and tokens** → `~/.hermes/.env`
- **Non-secret settings** → `~/.hermes/config.yaml`

The easiest way to set values correctly is through the CLI:

```bash
hermes config set model anthropic/claude-opus-4.6
hermes config set terminal.backend docker
hermes config set OPENROUTER_API_KEY sk-or-...
```

The right value goes to the right file automatically.

## 3\. Run Your First Chat [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#3-run-your-first-chat "Direct link to 3. Run Your First Chat")

```bash
hermes            # classic CLI
hermes --tui      # modern TUI (recommended)
```

You'll see a welcome banner with your model, available tools, and skills. Use a prompt that's specific and easy to verify:

Pick your interface

Hermes ships with two terminal interfaces: the classic `prompt_toolkit` CLI and a newer [TUI](https://hermes-agent.nousresearch.com/docs/user-guide/tui) with modal overlays, mouse selection, and non-blocking input. Both share the same sessions, slash commands, and config — try each with `hermes` vs `hermes --tui`.

```text
Summarize this repo in 5 bullets and tell me what the main entrypoint is.
```

```text
Check my current directory and tell me what looks like the main project file.
```

```text
Help me set up a clean GitHub PR workflow for this codebase.
```

**What success looks like:**

- The banner shows your chosen model/provider
- Hermes replies without error
- It can use a tool if needed (terminal, file read, web search)
- The conversation continues normally for more than one turn

If that works, you're past the hardest part.

## 4\. Verify Sessions Work [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#4-verify-sessions-work "Direct link to 4. Verify Sessions Work")

Before moving on, make sure resume works:

```bash
hermes --continue    # Resume the most recent session
hermes -c            # Short form
```

That should bring you back to the session you just had. If it doesn't, check whether you're in the same profile and whether the session actually saved. This matters later when you're juggling multiple setups or machines.

## 5\. Try Key Features [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#5-try-key-features "Direct link to 5. Try Key Features")

### Use the terminal [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#use-the-terminal "Direct link to Use the terminal")

```text
❯ What's my disk usage? Show the top 5 largest directories.
```

The agent runs terminal commands on your behalf and shows results.

### Slash commands [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#slash-commands "Direct link to Slash commands")

Type `/` to see an autocomplete dropdown of all commands:

| Command | What it does |
| --- | --- |
| `/help` | Show all available commands |
| `/tools` | List available tools |
| `/model` | Switch models interactively |
| `/personality pirate` | Try a fun personality |
| `/save` | Save the conversation |

### Multi-line input [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#multi-line-input "Direct link to Multi-line input")

Press `Alt+Enter`, `Ctrl+J`, or `Shift+Enter` to add a new line. `Shift+Enter` requires a terminal that sends it as a distinct sequence (Kitty / foot / WezTerm / Ghostty by default; iTerm2 / Alacritty / VS Code terminal once the Kitty keyboard protocol is enabled). `Alt+Enter` and `Ctrl+J` work in every terminal.

### Interrupt the agent [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#interrupt-the-agent "Direct link to Interrupt the agent")

If the agent is taking too long, type a new message and press Enter — it interrupts the current task and switches to your new instructions. `Ctrl+C` also works.

## 6\. Add the Next Layer [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#6-add-the-next-layer "Direct link to 6. Add the Next Layer")

Only after the base chat works. Pick what you need:

### Bot or shared assistant [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#bot-or-shared-assistant "Direct link to Bot or shared assistant")

```bash
hermes gateway setup    # Interactive platform configuration
```

Connect [Telegram](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/telegram), [Discord](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/discord), [Slack](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/slack), [WhatsApp](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/whatsapp), [Signal](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/signal), [Email](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/email), or [Home Assistant](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/homeassistant), or [Microsoft Teams](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/teams).

### Automation and tools [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#automation-and-tools "Direct link to Automation and tools")

- `hermes tools` — tune tool access per platform
- `hermes skills` — browse and install reusable workflows
- Cron — only after your bot or CLI setup is stable

### Sandboxed terminal [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#sandboxed-terminal "Direct link to Sandboxed terminal")

For safety, run the agent in a Docker container or on a remote server:

```bash
hermes config set terminal.backend docker    # Docker isolation
hermes config set terminal.backend ssh       # Remote server
```

### Voice mode [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#voice-mode "Direct link to Voice mode")

```bash
# From the Hermes install directory (the curl installer placed it at
# ~/.hermes/hermes-agent on Linux/macOS or %LOCALAPPDATA%\hermes\hermes-agent on Windows):
cd ~/.hermes/hermes-agent
uv pip install -e ".[voice]"
# Includes faster-whisper for free local speech-to-text
```

Then in the CLI: `/voice on`. Press `Ctrl+B` to record. See [Voice Mode](https://hermes-agent.nousresearch.com/docs/user-guide/features/voice-mode).

### Skills [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#skills "Direct link to Skills")

```bash
hermes skills search kubernetes
hermes skills install openai/skills/k8s
```

Or use `/skills` inside a chat session.

### MCP servers [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#mcp-servers "Direct link to MCP servers")

```yaml
# Add to ~/.hermes/config.yaml
mcp_servers:
  github:
    command: npx
    args: ["-y", "@modelcontextprotocol/server-github"]
    env:
      GITHUB_PERSONAL_ACCESS_TOKEN: "ghp_xxx"
```

### Editor integration (ACP) [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#editor-integration-acp "Direct link to Editor integration (ACP)")

ACP support ships with the standard `[all]` extras, so the curl installer already includes it. Just run:

```bash
hermes acp
```

(If you installed without `[all]`, run `cd ~/.hermes/hermes-agent && uv pip install -e ".[acp]"` first.)

See [ACP Editor Integration](https://hermes-agent.nousresearch.com/docs/user-guide/features/acp).

* * *

## Common Failure Modes [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#common-failure-modes "Direct link to Common Failure Modes")

These are the problems that waste the most time:

| Symptom | Likely cause | Fix |
| --- | --- | --- |
| Hermes opens but gives empty or broken replies | Provider auth or model selection is wrong | Run `hermes model` again and confirm provider, model, and auth |
| Custom endpoint "works" but returns garbage | Wrong base URL, model name, or not actually OpenAI-compatible | Verify the endpoint in a separate client first |
| Gateway starts but nobody can message it | Bot token, allowlist, or platform setup is incomplete | Re-run `hermes gateway setup` and check `hermes gateway status` |
| `hermes --continue` can't find old session | Switched profiles or session never saved | Check `hermes sessions list` and confirm you're in the right profile |
| Model unavailable or odd fallback behavior | Provider routing or fallback settings are too aggressive | Keep routing off until the base provider is stable |
| `hermes doctor` flags config problems | Config values are missing or stale | Fix the config, retest a plain chat before adding features |

## Recovery Toolkit [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#recovery-toolkit "Direct link to Recovery Toolkit")

When something feels off, use this order:

1. `hermes doctor`
2. `hermes model`
3. `hermes setup`
4. `hermes sessions list`
5. `hermes --continue`
6. `hermes gateway status`

That sequence gets you from "broken vibes" back to a known state fast.

* * *

## Quick Reference [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#quick-reference "Direct link to Quick Reference")

| Command | Description |
| --- | --- |
| `hermes` | Start chatting |
| `hermes model` | Choose your LLM provider and model |
| `hermes tools` | Configure which tools are enabled per platform |
| `hermes setup` | Full setup wizard (configures everything at once) |
| `hermes doctor` | Diagnose issues |
| `hermes update` | Update to latest version |
| `hermes gateway` | Start the messaging gateway |
| `hermes --continue` | Resume last session |

## Next Steps [​](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart\#next-steps "Direct link to Next Steps")

- **[CLI Guide](https://hermes-agent.nousresearch.com/docs/user-guide/cli)** — Master the terminal interface
- **[Configuration](https://hermes-agent.nousresearch.com/docs/user-guide/configuration)** — Customize your setup
- **[Messaging Gateway](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/)** — Connect Telegram, Discord, Slack, WhatsApp, Signal, Email, Home Assistant, Teams, and more
- **[Tools & Toolsets](https://hermes-agent.nousresearch.com/docs/user-guide/features/tools)** — Explore available capabilities
- **[AI Providers](https://hermes-agent.nousresearch.com/docs/integrations/providers)** — Full provider list and setup details
- **[Skills System](https://hermes-agent.nousresearch.com/docs/user-guide/features/skills)** — Reusable workflows and knowledge
- **[Tips & Best Practices](https://hermes-agent.nousresearch.com/docs/guides/tips)** — Power user tips

- [Prefer to watch?](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#prefer-to-watch)
- [Who this is for](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#who-this-is-for)
- [The fastest path](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#the-fastest-path)
- [1\. Install Hermes Agent](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#1-install-hermes-agent)
- [2\. Choose a Provider](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#2-choose-a-provider)
  - [How settings are stored](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#how-settings-are-stored)
- [3\. Run Your First Chat](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#3-run-your-first-chat)
- [4\. Verify Sessions Work](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#4-verify-sessions-work)
- [5\. Try Key Features](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#5-try-key-features)
  - [Use the terminal](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#use-the-terminal)
  - [Slash commands](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#slash-commands)
  - [Multi-line input](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#multi-line-input)
  - [Interrupt the agent](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#interrupt-the-agent)
- [6\. Add the Next Layer](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#6-add-the-next-layer)
  - [Bot or shared assistant](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#bot-or-shared-assistant)
  - [Automation and tools](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#automation-and-tools)
  - [Sandboxed terminal](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#sandboxed-terminal)
  - [Voice mode](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#voice-mode)
  - [Skills](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#skills)
  - [MCP servers](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#mcp-servers)
  - [Editor integration (ACP)](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#editor-integration-acp)
- [Common Failure Modes](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#common-failure-modes)
- [Recovery Toolkit](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#recovery-toolkit)
- [Quick Reference](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#quick-reference)
- [Next Steps](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart#next-steps)