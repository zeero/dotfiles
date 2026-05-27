[Skip to main content](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#__docusaurus_skipToContent_fallback)

On this page

MCP lets Hermes Agent connect to external tool servers so the agent can use tools that live outside Hermes itself — GitHub, databases, file systems, browser stacks, internal APIs, and more.

If you have ever wanted Hermes to use a tool that already exists somewhere else, MCP is usually the cleanest way to do it.

## What MCP gives you [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#what-mcp-gives-you "Direct link to What MCP gives you")

- Access to external tool ecosystems without writing a native Hermes tool first
- Local stdio servers and remote HTTP MCP servers in the same config
- Automatic tool discovery and registration at startup
- Utility wrappers for MCP resources and prompts when supported by the server
- Per-server filtering so you can expose only the MCP tools you actually want Hermes to see

## Quick start [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#quick-start "Direct link to Quick start")

1. Install MCP support (already included if you used the standard install script):

```bash
cd ~/.hermes/hermes-agent
uv pip install -e ".[mcp]"
```

2. Add an MCP server to `~/.hermes/config.yaml`:

```yaml
mcp_servers:
  filesystem:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-filesystem", "/home/user/projects"]
```

3. Start Hermes:

```bash
hermes chat
```

4. Ask Hermes to use the MCP-backed capability.

For example:

```text
List the files in /home/user/projects and summarize the repo structure.
```

Hermes will discover the MCP server's tools and use them like any other tool.

## Catalog: one-click install for Nous-approved MCPs [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#catalog-one-click-install-for-nous-approved-mcps "Direct link to Catalog: one-click install for Nous-approved MCPs")

Hermes ships a curated catalog of MCP servers that Nous staff has reviewed
and merged. They're disabled by default — install only what you actually
want.

```bash
hermes mcp                # interactive picker (default)
hermes mcp catalog        # plain-text list, scriptable
hermes mcp install n8n    # install a catalog entry by name
```

The picker shows each entry with its current status:

```text
n8n          available              Manage and inspect n8n workflows from Hermes
linear       enabled                Linear issue/project management (remote OAuth)
github       installed (disabled)   GitHub repo + PR tools
```

Hit `Enter` on a row to install (and walk through any required credentials),
enable, disable, or uninstall. Catalog entries are stored under
`optional-mcps/` in the hermes-agent repo — presence in that directory means
Nous approval. There is no community submission tier; entries are added by
merging a PR.

Catalog entries can require:

- **API key** — Hermes prompts at install time and writes the value to
`~/.hermes/.env`. Non-secret values (base URLs) go to the same file.
- **OAuth** (remote MCP) — written as `auth: oauth` in your config; the MCP
client opens a browser on first connection.
- **OAuth** (third-party provider like Google/GitHub) — Hermes points you at
`hermes auth <provider>` if you haven't authenticated already.

### Tool selection at install time [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#tool-selection-at-install-time "Direct link to Tool selection at install time")

After credentials are configured, Hermes probes the MCP server to list every
tool it exposes and presents a checklist:

```text
Select tools for 'linear' (SPACE toggle, ENTER confirm)
  [x] find_issues       Find issues matching a query
  [x] get_issue         Get a single issue
  [x] create_issue      Create a new issue
  [ ] delete_workspace  Delete a Linear workspace
  ...
```

The pre-checked rows come from:

1. **Your prior selection** if you've installed this entry before (reinstalls
preserve what you had — the manifest's defaults don't override it)
2. **The manifest's `tools.default_enabled`** if the entry declares one (some
catalog entries pre-prune mutating or rarely-useful tools)
3. **Everything** if neither applies

Submit the checklist with ENTER. Only the checked tools end up in
`mcp_servers.<name>.tools.include`. If you select everything, no filter is
written (cleanest config shape, identical behavior).

**If the probe fails** (server unreachable, OAuth not yet completed,
backing service not running), the install still succeeds: the manifest's
`tools.default_enabled` is applied directly (if declared), or no filter is
written (if not). Re-run `hermes mcp configure <name>` once the server is
reachable to refine.

### Trust model [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#trust-model "Direct link to Trust model")

Installing a catalog entry runs whatever the manifest specifies — `git clone`,
the entry's `bootstrap` commands (`pip install`, `npm install`, etc.), and
ultimately the MCP server's own code. Manifests are gated by PR review into
the hermes-agent repo, so Nous has reviewed each entry before it shipped —
**but you should still read the manifest before installing**, especially the
`source:` field's repository, the `install.bootstrap:` commands, and any
`transport.command:` invocation.

Manifests live at
[`optional-mcps/<name>/manifest.yaml`](https://github.com/NousResearch/hermes-agent/tree/main/optional-mcps)
on GitHub. The picker also prints the manifest's `source:` URL at install
time so you can quickly verify the upstream repo.

### Manifest version compatibility [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#manifest-version-compatibility "Direct link to Manifest version compatibility")

Manifests pin a `manifest_version`. The catalog is forward-compatible: if a
PR adds an entry with a newer `manifest_version` than your installed Hermes
understands, the picker will surface a warning (`⚠ '<name>' requires a newer Hermes`) for that entry instead of silently hiding it. Run `hermes update`
to install the latest Hermes when you see that.

### Runtime `${ENV_VAR}` substitution [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#runtime-env_var-substitution "Direct link to runtime-env_var-substitution")

Inside an entry's `transport.command`, `transport.args`, `transport.url`,
and `headers`, `${VAR}` placeholders are resolved at server-connect time
from environment variables (which include everything in `~/.hermes/.env`).
This is useful when a catalog entry wants to reference a value the user
configured elsewhere — e.g. `${HOME}/foo` or `${MY_PROVIDER_TOKEN}`.

Note this is distinct from `${INSTALL_DIR}` in catalog manifests, which is
substituted at install-time with the path the catalog cloned the entry's
repo into.

### Updating tool selection later [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#updating-tool-selection-later "Direct link to Updating tool selection later")

```bash
hermes mcp configure linear
```

Reopens the same checklist with your current selection pre-checked. Use this
when you want more tools enabled, or when the server has added new tools that
you want to opt into.

### Updating the catalog manifest [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#updating-the-catalog-manifest "Direct link to Updating the catalog manifest")

MCPs are never auto-updated. Re-run `hermes mcp install <name>` to refresh
after a Hermes update if a manifest version changed.

To add an MCP to the catalog, open a PR against
[`optional-mcps/`](https://github.com/NousResearch/hermes-agent/tree/main/optional-mcps).

## Two kinds of MCP servers [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#two-kinds-of-mcp-servers "Direct link to Two kinds of MCP servers")

### Stdio servers [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#stdio-servers "Direct link to Stdio servers")

Stdio servers run as local subprocesses and talk over stdin/stdout.

```yaml
mcp_servers:
  github:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-github"]
    env:
      GITHUB_PERSONAL_ACCESS_TOKEN: "***"
```

Use stdio servers when:

- the server is installed locally
- you want low-latency access to local resources
- you are following MCP server docs that show `command`, `args`, and `env`

### HTTP servers [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#http-servers "Direct link to HTTP servers")

HTTP MCP servers are remote endpoints Hermes connects to directly.

```yaml
mcp_servers:
  remote_api:
    url: "https://mcp.example.com/mcp"
    headers:
      Authorization: "Bearer ***"
```

Use HTTP servers when:

- the MCP server is hosted elsewhere
- your organization exposes internal MCP endpoints
- you do not want Hermes spawning a local subprocess for that integration

### OAuth-authenticated HTTP servers [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#oauth-authenticated-http-servers "Direct link to OAuth-authenticated HTTP servers")

Most hosted MCP servers (Linear, Sentry, Atlassian, Asana, Figma, Stripe, …) require OAuth 2.1 instead of a static bearer token. Set `auth: oauth` and Hermes handles discovery, dynamic client registration, PKCE, token exchange, refresh, and step-up auth via the MCP Python SDK.

```yaml
mcp_servers:
  linear:
    url: "https://mcp.linear.app/mcp"
    auth: oauth
```

On first connect, Hermes prints an authorize URL, opens your browser when possible, and waits for the OAuth callback on a local loopback port. Tokens are cached at `~/.hermes/mcp-tokens/<server>.json` with 0o600 perms; subsequent runs reuse them silently until refresh fails.

**Remote / headless hosts.** When Hermes runs on a different machine than your browser, the loopback callback can't reach your laptop. Two ways to complete the flow:

- **Paste-back (no setup):** on an interactive terminal Hermes prints "Or paste the redirect URL here…" alongside the authorize URL. Open the URL in your browser, approve, copy the full URL the browser ends up on (the redirect will show a connection error — that's expected), paste it at the prompt. Bare `?code=…&state=…` query strings work too.
- **SSH port forward:**`ssh -N -L <port>:127.0.0.1:<port> user@host` in a separate terminal, then let the redirect flow normally.

See [OAuth over SSH / Remote Hosts](https://hermes-agent.nousresearch.com/docs/guides/oauth-over-ssh#mcp-servers) for the full walkthrough, including DCR-less servers (e.g. Slack), pre-registered `client_id`/`client_secret`, scope customization, and re-auth via `hermes mcp login <server>`.

**Pitfall — config auto-reload race.** When you edit `~/.hermes/config.yaml` from inside a running Hermes session, the CLI auto-reloads MCP connections with a 30s timeout. That's not enough for an interactive OAuth flow. Add the entry, then run `hermes mcp login <server>` from a fresh terminal — it waits the full 5 minutes for you to complete auth.

## Basic configuration reference [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#basic-configuration-reference "Direct link to Basic configuration reference")

Hermes reads MCP config from `~/.hermes/config.yaml` under `mcp_servers`.

### Common keys [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#common-keys "Direct link to Common keys")

| Key | Type | Meaning |
| --- | --- | --- |
| `command` | string | Executable for a stdio MCP server |
| `args` | list | Arguments for the stdio server |
| `env` | mapping | Environment variables passed to the stdio server |
| `url` | string | HTTP MCP endpoint |
| `headers` | mapping | HTTP headers for remote servers |
| `timeout` | number | Tool call timeout |
| `connect_timeout` | number | Initial connection timeout |
| `enabled` | bool | If `false`, Hermes skips the server entirely |
| `supports_parallel_tool_calls` | bool | If `true`, tools from this server may run concurrently |
| `tools` | mapping | Per-server tool filtering and utility policy |

### Minimal stdio example [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#minimal-stdio-example "Direct link to Minimal stdio example")

```yaml
mcp_servers:
  filesystem:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-filesystem", "/tmp"]
```

### Minimal HTTP example [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#minimal-http-example "Direct link to Minimal HTTP example")

```yaml
mcp_servers:
  company_api:
    url: "https://mcp.internal.example.com"
    headers:
      Authorization: "Bearer ***"
```

## Built-in presets [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#built-in-presets "Direct link to Built-in presets")

For well-known MCP servers, `hermes mcp add` accepts a `--preset` flag that fills in the transport details so you don't have to look up the command and args. The preset only supplies defaults — anything else (env vars, headers, filtering) you pass on the same command line still wins.

| Preset | What it wires up |
| --- | --- |
| `codex` | The Codex CLI's MCP server (`codex mcp-server` over stdio). Requires the `codex` CLI on PATH. |

```bash
# Add Codex CLI as an MCP server in one line
hermes mcp add codex --preset codex
```

That writes the equivalent of:

```yaml
mcp_servers:
  codex:
    command: "codex"
    args: ["mcp-server"]
```

You can pick any local name (`hermes mcp add my-codex --preset codex` is fine); the preset only provides the `command`/`args` defaults.

## How Hermes registers MCP tools [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#how-hermes-registers-mcp-tools "Direct link to How Hermes registers MCP tools")

Hermes prefixes MCP tools so they do not collide with built-in names:

```text
mcp_<server_name>_<tool_name>
```

Examples:

| Server | MCP tool | Registered name |
| --- | --- | --- |
| `filesystem` | `read_file` | `mcp_filesystem_read_file` |
| `github` | `create-issue` | `mcp_github_create_issue` |
| `my-api` | `query.data` | `mcp_my_api_query_data` |

In practice, you usually do not need to call the prefixed name manually — Hermes sees the tool and chooses it during normal reasoning.

## MCP utility tools [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#mcp-utility-tools "Direct link to MCP utility tools")

When supported, Hermes also registers utility tools around MCP resources and prompts:

- `list_resources`
- `read_resource`
- `list_prompts`
- `get_prompt`

These are registered per server with the same prefix pattern, for example:

- `mcp_github_list_resources`
- `mcp_github_get_prompt`

### Important [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#important "Direct link to Important")

These utility tools are now capability-aware:

- Hermes only registers resource utilities if the MCP session actually supports resource operations
- Hermes only registers prompt utilities if the MCP session actually supports prompt operations

So a server that exposes callable tools but no resources/prompts will not get those extra wrappers.

## Per-server filtering [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#per-server-filtering "Direct link to Per-server filtering")

You can control which tools each MCP server contributes to Hermes, allowing fine-grained management of your tool namespace.

### Disable a server entirely [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#disable-a-server-entirely "Direct link to Disable a server entirely")

```yaml
mcp_servers:
  legacy:
    url: "https://mcp.legacy.internal"
    enabled: false
```

If `enabled: false`, Hermes skips the server completely and does not even attempt a connection.

### Whitelist server tools [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#whitelist-server-tools "Direct link to Whitelist server tools")

```yaml
mcp_servers:
  github:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-github"]
    env:
      GITHUB_PERSONAL_ACCESS_TOKEN: "***"
    tools:
      include: [create_issue, list_issues]
```

Only those MCP server tools are registered.

### Blacklist server tools [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#blacklist-server-tools "Direct link to Blacklist server tools")

```yaml
mcp_servers:
  stripe:
    url: "https://mcp.stripe.com"
    tools:
      exclude: [delete_customer]
```

All server tools are registered except the excluded ones.

### Precedence rule [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#precedence-rule "Direct link to Precedence rule")

If both are present:

```yaml
tools:
  include: [create_issue]
  exclude: [create_issue, delete_issue]
```

`include` wins.

### Filter utility tools too [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#filter-utility-tools-too "Direct link to Filter utility tools too")

You can also separately disable Hermes-added utility wrappers:

```yaml
mcp_servers:
  docs:
    url: "https://mcp.docs.example.com"
    tools:
      prompts: false
      resources: false
```

That means:

- `tools.resources: false` disables `list_resources` and `read_resource`
- `tools.prompts: false` disables `list_prompts` and `get_prompt`

### Full example [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#full-example "Direct link to Full example")

```yaml
mcp_servers:
  github:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-github"]
    env:
      GITHUB_PERSONAL_ACCESS_TOKEN: "***"
    tools:
      include: [create_issue, list_issues, search_code]
      prompts: false

  stripe:
    url: "https://mcp.stripe.com"
    headers:
      Authorization: "Bearer ***"
    tools:
      exclude: [delete_customer]
      resources: false

  legacy:
    url: "https://mcp.legacy.internal"
    enabled: false
```

## What happens if everything is filtered out? [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#what-happens-if-everything-is-filtered-out "Direct link to What happens if everything is filtered out?")

If your config filters out all callable tools and disables or omits all supported utilities, Hermes does not create an empty runtime MCP toolset for that server.

That keeps the tool list clean.

## Runtime behavior [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#runtime-behavior "Direct link to Runtime behavior")

### Discovery time [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#discovery-time "Direct link to Discovery time")

Hermes discovers MCP servers at startup and registers their tools into the normal tool registry.

### Dynamic Tool Discovery [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#dynamic-tool-discovery "Direct link to Dynamic Tool Discovery")

MCP servers can notify Hermes when their available tools change at runtime by sending a `notifications/tools/list_changed` notification. When Hermes receives this notification, it automatically re-fetches the server's tool list and updates the registry — no manual `/reload-mcp` required.

This is useful for MCP servers whose capabilities change dynamically (e.g. a server that adds tools when a new database schema is loaded, or removes tools when a service goes offline).

The refresh is lock-protected so rapid-fire notifications from the same server don't cause overlapping refreshes. Prompt and resource change notifications (`prompts/list_changed`, `resources/list_changed`) are received but not yet acted on.

### Reloading [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#reloading "Direct link to Reloading")

If you change MCP config, use:

```text
/reload-mcp
```

This reloads MCP servers from config and refreshes the available tool list. For runtime tool changes pushed by the server itself, see [Dynamic Tool Discovery](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#dynamic-tool-discovery) above.

### Toolsets [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#toolsets "Direct link to Toolsets")

Each configured MCP server also creates a runtime toolset when it contributes at least one registered tool:

```text
mcp-<server>
```

That makes MCP servers easier to reason about at the toolset level.

## Security model [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#security-model "Direct link to Security model")

### Stdio env filtering [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#stdio-env-filtering "Direct link to Stdio env filtering")

For stdio servers, Hermes does not blindly pass your full shell environment.

Only explicitly configured `env` plus a safe baseline are passed through. This reduces accidental secret leakage.

### Config-level exposure control [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#config-level-exposure-control "Direct link to Config-level exposure control")

The new filtering support is also a security control:

- disable dangerous tools you do not want the model to see
- expose only a minimal whitelist for a sensitive server
- disable resource/prompt wrappers when you do not want that surface exposed

## Example use cases [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#example-use-cases "Direct link to Example use cases")

### GitHub server with a minimal issue-management surface [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#github-server-with-a-minimal-issue-management-surface "Direct link to GitHub server with a minimal issue-management surface")

```yaml
mcp_servers:
  github:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-github"]
    env:
      GITHUB_PERSONAL_ACCESS_TOKEN: "***"
    tools:
      include: [list_issues, create_issue, update_issue]
      prompts: false
      resources: false
```

Use it like:

```text
Show me open issues labeled bug, then draft a new issue for the flaky MCP reconnection behavior.
```

### Stripe server with dangerous actions removed [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#stripe-server-with-dangerous-actions-removed "Direct link to Stripe server with dangerous actions removed")

```yaml
mcp_servers:
  stripe:
    url: "https://mcp.stripe.com"
    headers:
      Authorization: "Bearer ***"
    tools:
      exclude: [delete_customer, refund_payment]
```

Use it like:

```text
Look up the last 10 failed payments and summarize common failure reasons.
```

### Filesystem server for a single project root [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#filesystem-server-for-a-single-project-root "Direct link to Filesystem server for a single project root")

```yaml
mcp_servers:
  project_fs:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-filesystem", "/home/user/my-project"]
```

Use it like:

```text
Inspect the project root and explain the directory layout.
```

## Troubleshooting [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#troubleshooting "Direct link to Troubleshooting")

### MCP server not connecting [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#mcp-server-not-connecting "Direct link to MCP server not connecting")

Check:

```bash
# Verify MCP deps are installed (already included in standard install)
cd ~/.hermes/hermes-agent && uv pip install -e ".[mcp]"

node --version
npx --version
```

Then verify your config and restart Hermes.

### Tools not appearing [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#tools-not-appearing "Direct link to Tools not appearing")

Possible causes:

- the server failed to connect
- discovery failed
- your filter config excluded the tools
- the utility capability does not exist on that server
- the server is disabled with `enabled: false`

If you are intentionally filtering, this is expected.

### Why didn't resource or prompt utilities appear? [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#why-didnt-resource-or-prompt-utilities-appear "Direct link to Why didn't resource or prompt utilities appear?")

Because Hermes now only registers those wrappers when both are true:

1. your config allows them
2. the server session actually supports the capability

This is intentional and keeps the tool list honest.

## Parallel Tool Calls [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#parallel-tool-calls "Direct link to Parallel Tool Calls")

By default, MCP tools run sequentially — one at a time. If your MCP server exposes tools that are safe to run concurrently (e.g. read-only queries, independent API calls), you can opt-in to parallel execution:

```yaml
mcp_servers:
  docs:
    command: "docs-server"
    supports_parallel_tool_calls: true
```

When `supports_parallel_tool_calls` is `true`, Hermes may execute multiple tools from that server at the same time within a single tool-call batch, just like it does for built-in read-only tools (web\_search, read\_file, etc.).

caution

Only enable parallel calls for MCP servers whose tools are safe to run at the same time. If tools read and write shared state, files, databases, or external resources, review the read/write race conditions before enabling this setting.

## MCP Sampling Support [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#mcp-sampling-support "Direct link to MCP Sampling Support")

MCP servers can request LLM inference from Hermes via the `sampling/createMessage` protocol. This allows an MCP server to ask Hermes to generate text on its behalf — useful for servers that need LLM capabilities but don't have their own model access.

Sampling is **enabled by default** for all MCP servers (when the MCP SDK supports it). Configure it per-server under the `sampling` key:

```yaml
mcp_servers:
  my_server:
    command: "my-mcp-server"
    sampling:
      enabled: true            # Enable sampling (default: true)
      model: "openai/gpt-4o"  # Override model for sampling requests (optional)
      max_tokens_cap: 4096     # Max tokens per sampling response (default: 4096)
      timeout: 30              # Timeout in seconds per request (default: 30)
      max_rpm: 10              # Rate limit: max requests per minute (default: 10)
      max_tool_rounds: 5       # Max tool-use rounds in sampling loops (default: 5)
      allowed_models: []       # Allowlist of model names the server may request (empty = any)
      log_level: "info"        # Audit log level: debug, info, or warning (default: info)
```

The sampling handler includes a sliding-window rate limiter, per-request timeouts, and tool-loop depth limits to prevent runaway usage. Metrics (request count, errors, tokens used) are tracked per server instance.

To disable sampling for a specific server:

```yaml
mcp_servers:
  untrusted_server:
    url: "https://mcp.example.com"
    sampling:
      enabled: false
```

## Running Hermes as an MCP server [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#running-hermes-as-an-mcp-server "Direct link to Running Hermes as an MCP server")

In addition to connecting **to** MCP servers, Hermes can also **be** an MCP server. This lets other MCP-capable agents (Claude Code, Cursor, Codex, or any MCP client) use Hermes's messaging capabilities — list conversations, read message history, and send messages across all your connected platforms.

### When to use this [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#when-to-use-this "Direct link to When to use this")

- You want Claude Code, Cursor, or another coding agent to send and read Telegram/Discord/Slack messages through Hermes
- You want a single MCP server that bridges to all of Hermes's connected messaging platforms at once
- You already have a running Hermes gateway with connected platforms

### Quick start [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#quick-start-1 "Direct link to Quick start")

```bash
hermes mcp serve
```

This starts a stdio MCP server. The MCP client (not you) manages the process lifecycle.

### MCP client configuration [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#mcp-client-configuration "Direct link to MCP client configuration")

Add Hermes to your MCP client config. For example, in Claude Code's `~/.claude/claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "hermes": {
      "command": "hermes",
      "args": ["mcp", "serve"]
    }
  }
}
```

Or if you installed Hermes in a specific location:

```json
{
  "mcpServers": {
    "hermes": {
      "command": "/home/user/.hermes/hermes-agent/venv/bin/hermes",
      "args": ["mcp", "serve"]
    }
  }
}
```

### Available tools [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#available-tools "Direct link to Available tools")

The MCP server exposes 10 tools, matching OpenClaw's channel bridge surface plus a Hermes-specific channel browser:

| Tool | Description |
| --- | --- |
| `conversations_list` | List active messaging conversations. Filter by platform or search by name. |
| `conversation_get` | Get detailed info about one conversation by session key. |
| `messages_read` | Read recent message history for a conversation. |
| `attachments_fetch` | Extract non-text attachments (images, media) from a specific message. |
| `events_poll` | Poll for new conversation events since a cursor position. |
| `events_wait` | Long-poll / block until the next event arrives (near-real-time). |
| `messages_send` | Send a message through a platform (e.g. `telegram:123456`, `discord:#general`). |
| `channels_list` | List available messaging targets across all platforms. |
| `permissions_list_open` | List pending approval requests observed during this bridge session. |
| `permissions_respond` | Allow or deny a pending approval request. |

### Event system [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#event-system "Direct link to Event system")

The MCP server includes a live event bridge that polls Hermes's session database for new messages. This gives MCP clients near-real-time awareness of incoming conversations:

```text
# Poll for new events (non-blocking)
events_poll(after_cursor=0)

# Wait for next event (blocks up to timeout)
events_wait(after_cursor=42, timeout_ms=30000)
```

Event types: `message`, `approval_requested`, `approval_resolved`

The event queue is in-memory and starts when the bridge connects. Older messages are available through `messages_read`.

### Options [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#options "Direct link to Options")

```bash
hermes mcp serve              # Normal mode
hermes mcp serve --verbose    # Debug logging on stderr
```

### How it works [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#how-it-works "Direct link to How it works")

The MCP server reads conversation data directly from Hermes's session store (`~/.hermes/sessions/sessions.json` and the SQLite database). A background thread polls the database for new messages and maintains an in-memory event queue. For sending messages, it uses the same `send_message` infrastructure as the Hermes agent itself.

The gateway does NOT need to be running for read operations (listing conversations, reading history, polling events). It DOES need to be running for send operations, since the platform adapters need active connections.

### Current limits [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#current-limits "Direct link to Current limits")

- The embedded `hermes mcp serve` exposes a **stdio-only** MCP server today. If you need an HTTP MCP server, run a separate adapter — or, much more commonly, use the MCP **client** side of Hermes, which already speaks both stdio and HTTP (`url` \+ `headers` in `mcp_servers.yaml` / `config.yaml`; see [HTTP servers](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#http-servers) above).
- Event polling at ~200ms intervals via mtime-optimized DB polling (skips work when files are unchanged)
- No `claude/channel` push notification protocol yet
- Text-only sends (no media/attachment sending through `messages_send`)

## Related docs [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp\#related-docs "Direct link to Related docs")

- [Use MCP with Hermes](https://hermes-agent.nousresearch.com/docs/guides/use-mcp-with-hermes)
- [CLI Commands](https://hermes-agent.nousresearch.com/docs/reference/cli-commands)
- [Slash Commands](https://hermes-agent.nousresearch.com/docs/reference/slash-commands)
- [FAQ](https://hermes-agent.nousresearch.com/docs/reference/faq)

- [What MCP gives you](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#what-mcp-gives-you)
- [Quick start](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#quick-start)
- [Catalog: one-click install for Nous-approved MCPs](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#catalog-one-click-install-for-nous-approved-mcps)
  - [Tool selection at install time](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#tool-selection-at-install-time)
  - [Trust model](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#trust-model)
  - [Manifest version compatibility](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#manifest-version-compatibility)
  - [Runtime `${ENV_VAR}` substitution](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#runtime-env_var-substitution)
  - [Updating tool selection later](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#updating-tool-selection-later)
  - [Updating the catalog manifest](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#updating-the-catalog-manifest)
- [Two kinds of MCP servers](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#two-kinds-of-mcp-servers)
  - [Stdio servers](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#stdio-servers)
  - [HTTP servers](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#http-servers)
  - [OAuth-authenticated HTTP servers](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#oauth-authenticated-http-servers)
- [Basic configuration reference](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#basic-configuration-reference)
  - [Common keys](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#common-keys)
  - [Minimal stdio example](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#minimal-stdio-example)
  - [Minimal HTTP example](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#minimal-http-example)
- [Built-in presets](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#built-in-presets)
- [How Hermes registers MCP tools](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#how-hermes-registers-mcp-tools)
- [MCP utility tools](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#mcp-utility-tools)
  - [Important](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#important)
- [Per-server filtering](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#per-server-filtering)
  - [Disable a server entirely](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#disable-a-server-entirely)
  - [Whitelist server tools](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#whitelist-server-tools)
  - [Blacklist server tools](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#blacklist-server-tools)
  - [Precedence rule](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#precedence-rule)
  - [Filter utility tools too](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#filter-utility-tools-too)
  - [Full example](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#full-example)
- [What happens if everything is filtered out?](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#what-happens-if-everything-is-filtered-out)
- [Runtime behavior](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#runtime-behavior)
  - [Discovery time](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#discovery-time)
  - [Dynamic Tool Discovery](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#dynamic-tool-discovery)
  - [Reloading](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#reloading)
  - [Toolsets](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#toolsets)
- [Security model](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#security-model)
  - [Stdio env filtering](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#stdio-env-filtering)
  - [Config-level exposure control](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#config-level-exposure-control)
- [Example use cases](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#example-use-cases)
  - [GitHub server with a minimal issue-management surface](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#github-server-with-a-minimal-issue-management-surface)
  - [Stripe server with dangerous actions removed](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#stripe-server-with-dangerous-actions-removed)
  - [Filesystem server for a single project root](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#filesystem-server-for-a-single-project-root)
- [Troubleshooting](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#troubleshooting)
  - [MCP server not connecting](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#mcp-server-not-connecting)
  - [Tools not appearing](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#tools-not-appearing)
  - [Why didn't resource or prompt utilities appear?](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#why-didnt-resource-or-prompt-utilities-appear)
- [Parallel Tool Calls](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#parallel-tool-calls)
- [MCP Sampling Support](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#mcp-sampling-support)
- [Running Hermes as an MCP server](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#running-hermes-as-an-mcp-server)
  - [When to use this](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#when-to-use-this)
  - [Quick start](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#quick-start-1)
  - [MCP client configuration](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#mcp-client-configuration)
  - [Available tools](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#available-tools)
  - [Event system](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#event-system)
  - [Options](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#options)
  - [How it works](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#how-it-works)
  - [Current limits](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#current-limits)
- [Related docs](https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp#related-docs)