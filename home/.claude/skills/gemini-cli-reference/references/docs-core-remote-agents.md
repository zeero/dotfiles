[Skip to content](https://geminicli.com/docs/core/remote-agents/#_top)

# Remote Subagents

Copy as MarkdownCopied!

Gemini CLI supports connecting to remote subagents using the Agent-to-Agent
(A2A) protocol. This allows Gemini CLI to interact with other agents, expanding
its capabilities by delegating tasks to remote services.

Gemini CLI can connect to any compliant A2A agent. You can find samples of A2A
agents in the following repositories:

- [ADK Samples (Python)](https://github.com/google/adk-samples/tree/main/python)
- [ADK Python Contributing Samples](https://github.com/google/adk-python/tree/main/contributing/samples)

## Proxy support

[Section titled “Proxy support”](https://geminicli.com/docs/core/remote-agents/#proxy-support)

Gemini CLI routes traffic to remote agents through an HTTP/HTTPS proxy if one is
configured. It uses the `general.proxy` setting in your `settings.json` file or
standard environment variables (`HTTP_PROXY`, `HTTPS_PROXY`).

```
{

  "general": {

    "proxy": "http://my-proxy:8080"

  }

}
```

## Defining remote subagents

[Section titled “Defining remote subagents”](https://geminicli.com/docs/core/remote-agents/#defining-remote-subagents)

Remote subagents are defined as Markdown files (`.md`) with YAML frontmatter.
You can place them in:

1. **Project-level:**`.gemini/agents/*.md` (Shared with your team)
2. **User-level:**`~/.gemini/agents/*.md` (Personal agents)

### Configuration schema

[Section titled “Configuration schema”](https://geminicli.com/docs/core/remote-agents/#configuration-schema)

| Field | Type | Required | Description |
| :-- | :-- | :-- | :-- |
| `kind` | string | Yes | Must be `remote`. |
| `name` | string | Yes | A unique name for the agent. Must be a valid slug (lowercase letters, numbers, hyphens, and underscores only). |
| `agent_card_url` | string | Yes\* | The URL to the agent’s A2A card endpoint. Required if `agent_card_json` is not provided. |
| `agent_card_json` | string | Yes\* | The inline JSON string of the agent’s A2A card. Required if `agent_card_url` is not provided. |
| `auth` | object | No | Authentication configuration. See [Authentication](https://geminicli.com/docs/core/remote-agents/#authentication). |

### Single-subagent example

[Section titled “Single-subagent example”](https://geminicli.com/docs/core/remote-agents/#single-subagent-example)

```
---

kind: remote

name: my-remote-agent

agent_card_url: https://example.com/agent-card

---
```

### Multi-subagent example

[Section titled “Multi-subagent example”](https://geminicli.com/docs/core/remote-agents/#multi-subagent-example)

The loader explicitly supports multiple remote subagents defined in a single
Markdown file.

```
---

- kind: remote

  name: remote-1

  agent_card_url: https://example.com/1

- kind: remote

  name: remote-2

  agent_card_url: https://example.com/2

---
```

### Inline Agent Card JSON

[Section titled “Inline Agent Card JSON”](https://geminicli.com/docs/core/remote-agents/#inline-agent-card-json)

View formatting options for JSON strings

If you don’t have an endpoint serving the agent card, you can provide the A2A
card directly as a JSON string using `agent_card_json`.

When providing a JSON string in YAML, you must properly format it as a string
scalar. You can use single quotes, a block scalar, or double quotes (which
require escaping internal double quotes).

#### Using single quotes

[Section titled “Using single quotes”](https://geminicli.com/docs/core/remote-agents/#using-single-quotes)

Single quotes allow you to embed unescaped double quotes inside the JSON string.
This format is useful for shorter, single-line JSON strings.

```
---

kind: remote

name: single-quotes-agent

agent_card_json:

  '{ "protocolVersion": "0.3.0", "name": "Example Agent", "version": "1.0.0",

  "url": "dummy-url" }'

---
```

#### Using a block scalar

[Section titled “Using a block scalar”](https://geminicli.com/docs/core/remote-agents/#using-a-block-scalar)

The literal block scalar (`|`) preserves line breaks and is highly recommended
for multiline JSON strings as it avoids quote escaping entirely. The following
is a complete, valid Agent Card configuration using dummy values.

```
---

kind: remote

name: block-scalar-agent

agent_card_json: |

  {

    "protocolVersion": "0.3.0",

    "name": "Example Agent Name",

    "description": "An example agent description for documentation purposes.",

    "version": "1.0.0",

    "url": "dummy-url",

    "preferredTransport": "HTTP+JSON",

    "capabilities": {

      "streaming": true,

      "extendedAgentCard": false

    },

    "defaultInputModes": [\
\
      "text/plain"\
\
    ],

    "defaultOutputModes": [\
\
      "application/json"\
\
    ],

    "skills": [\
\
      {\
\
        "id": "ExampleSkill",\
\
        "name": "Example Skill Assistant",\
\
        "description": "A description of what this example skill does.",\
\
        "tags": [\
\
          "example-tag"\
\
        ],\
\
        "examples": [\
\
          "Show me an example."\
\
        ]\
\
      }\
\
    ]

  }

---
```

#### Using double quotes

[Section titled “Using double quotes”](https://geminicli.com/docs/core/remote-agents/#using-double-quotes)

Double quotes are also supported, but any internal double quotes in your JSON
must be escaped with a backslash.

```
---

kind: remote

name: double-quotes-agent

agent_card_json:

  '{ "protocolVersion": "0.3.0", "name": "Example Agent", "version": "1.0.0",

  "url": "dummy-url" }'

---
```

## Authentication

[Section titled “Authentication”](https://geminicli.com/docs/core/remote-agents/#authentication)

Many remote agents require authentication. Gemini CLI supports several
authentication methods aligned with the
[A2A security specification](https://a2a-protocol.org/latest/specification/#451-securityscheme).
Add an `auth` block to your agent’s frontmatter to configure credentials.

### Supported auth types

[Section titled “Supported auth types”](https://geminicli.com/docs/core/remote-agents/#supported-auth-types)

Gemini CLI supports the following authentication types:

| Type | Description |
| :-- | :-- |
| `apiKey` | Send a static API key as an HTTP header. |
| `http` | HTTP authentication (Bearer token, Basic credentials, or any IANA-registered scheme). |
| `google-credentials` | Google Application Default Credentials (ADC). Automatically selects access or identity tokens. |
| `oauth` | OAuth 2.0 Authorization Code flow with PKCE. Opens a browser for interactive sign-in. |

### Dynamic values

[Section titled “Dynamic values”](https://geminicli.com/docs/core/remote-agents/#dynamic-values)

For `apiKey` and `http` auth types, secret values (`key`, `token`, `username`,
`password`, `value`) support dynamic resolution:

| Format | Description | Example |
| :-- | :-- | :-- |
| `$ENV_VAR` | Read from an environment variable. | `$MY_API_KEY` |
| `!command` | Execute a shell command and use the trimmed output. | `!gcloud auth print-token` |
| literal | Use the string as-is. | `sk-abc123` |
| `$$` / `!!` | Escape prefix. `$$FOO` becomes the literal `$FOO`. | `$$NOT_AN_ENV_VAR` |

> **Security tip:** Prefer `$ENV_VAR` or `!command` over embedding secrets
> directly in agent files, especially for project-level agents checked into
> version control.

### API key (`apiKey`)

[Section titled “API key (apiKey)”](https://geminicli.com/docs/core/remote-agents/#api-key-apikey)

Sends an API key as an HTTP header on every request.

| Field | Type | Required | Description |
| :-- | :-- | :-- | :-- |
| `type` | string | Yes | Must be `apiKey`. |
| `key` | string | Yes | The API key value. Supports dynamic values. |
| `name` | string | No | Header name to send the key in. Default: `X-API-Key`. |

```
---

kind: remote

name: my-agent

agent_card_url: https://example.com/agent-card

auth:

  type: apiKey

  key: $MY_API_KEY

---
```

### HTTP authentication (`http`)

[Section titled “HTTP authentication (http)”](https://geminicli.com/docs/core/remote-agents/#http-authentication-http)

Supports Bearer tokens, Basic auth, and arbitrary IANA-registered HTTP
authentication schemes.

#### Bearer token

[Section titled “Bearer token”](https://geminicli.com/docs/core/remote-agents/#bearer-token)

Use the following fields to configure a Bearer token:

| Field | Type | Required | Description |
| :-- | :-- | :-- | :-- |
| `type` | string | Yes | Must be `http`. |
| `scheme` | string | Yes | Must be `Bearer`. |
| `token` | string | Yes | The bearer token. Supports dynamic values. |

```
auth:

  type: http

  scheme: Bearer

  token: $MY_BEARER_TOKEN
```

#### Basic authentication

[Section titled “Basic authentication”](https://geminicli.com/docs/core/remote-agents/#basic-authentication)

Use the following fields to configure Basic authentication:

| Field | Type | Required | Description |
| :-- | :-- | :-- | :-- |
| `type` | string | Yes | Must be `http`. |
| `scheme` | string | Yes | Must be `Basic`. |
| `username` | string | Yes | The username. Supports dynamic values. |
| `password` | string | Yes | The password. Supports dynamic values. |

```
auth:

  type: http

  scheme: Basic

  username: $MY_USERNAME

  password: $MY_PASSWORD
```

#### Raw scheme

[Section titled “Raw scheme”](https://geminicli.com/docs/core/remote-agents/#raw-scheme)

For any other IANA-registered scheme (for example, Digest, HOBA), provide the
raw authorization value.

| Field | Type | Required | Description |
| :-- | :-- | :-- | :-- |
| `type` | string | Yes | Must be `http`. |
| `scheme` | string | Yes | The scheme name (for example, `Digest`). |
| `value` | string | Yes | Raw value sent as `Authorization: <scheme> <value>`. Supports dynamic values. |

```
auth:

  type: http

  scheme: Digest

  value: $MY_DIGEST_VALUE
```

### Google Application Default Credentials (`google-credentials`)

[Section titled “Google Application Default Credentials (google-credentials)”](https://geminicli.com/docs/core/remote-agents/#google-application-default-credentials-google-credentials)

Uses
[Google Application Default Credentials (ADC)](https://cloud.google.com/docs/authentication/application-default-credentials)
to authenticate with Google Cloud services and Cloud Run endpoints. This is the
recommended auth method for agents hosted on Google Cloud infrastructure.

| Field | Type | Required | Description |
| :-- | :-- | :-- | :-- |
| `type` | string | Yes | Must be `google-credentials`. |
| `scopes` | string\[\] | No | OAuth scopes. Defaults to `https://www.googleapis.com/auth/cloud-platform`. |

```
---

kind: remote

name: my-gcp-agent

agent_card_url: https://my-agent-xyz.run.app/.well-known/agent.json

auth:

  type: google-credentials

---
```

#### How token selection works

[Section titled “How token selection works”](https://geminicli.com/docs/core/remote-agents/#how-token-selection-works)

The provider automatically selects the correct token type based on the agent’s
host:

| Host pattern | Token type | Use case |
| :-- | :-- | :-- |
| `*.googleapis.com` | **Access token** | Google APIs (Agent Engine, Vertex AI, etc.) |
| `*.run.app` | **Identity token** | Cloud Run services |

- **Access tokens** authorize API calls to Google services. They are scoped
(default: `cloud-platform`) and fetched via `GoogleAuth.getClient()`.
- **Identity tokens** prove the caller’s identity to a service that validates
the token’s audience. The audience is set to the target host. These are
fetched via `GoogleAuth.getIdTokenClient()`.

Both token types are cached and automatically refreshed before expiry.

#### Setup

[Section titled “Setup”](https://geminicli.com/docs/core/remote-agents/#setup)

`google-credentials` relies on ADC, which means your environment must have
credentials configured. Common setups:

- **Local development:** Run `gcloud auth application-default login` to
authenticate with your Google account.
- **CI / Cloud environments:** Use a service account. Set the
`GOOGLE_APPLICATION_CREDENTIALS` environment variable to the path of your
service account key file, or use workload identity on GKE / Cloud Run.

#### Allowed hosts

[Section titled “Allowed hosts”](https://geminicli.com/docs/core/remote-agents/#allowed-hosts)

For security, `google-credentials` only sends tokens to known Google-owned
hosts:

- `*.googleapis.com`
- `*.run.app`

Requests to any other host will be rejected with an error. If your agent is
hosted on a different domain, use one of the other auth types (`apiKey`, `http`,
or `oauth`).

#### Examples

[Section titled “Examples”](https://geminicli.com/docs/core/remote-agents/#examples)

The following examples demonstrate how to configure Google Application Default
Credentials.

**Cloud Run agent:**

```
---

kind: remote

name: cloud-run-agent

agent_card_url: https://my-agent-xyz.run.app/.well-known/agent.json

auth:

  type: google-credentials

---
```

**Google API with custom scopes:**

```
---

kind: remote

name: vertex-agent

agent_card_url: https://us-central1-aiplatform.googleapis.com/.well-known/agent.json

auth:

  type: google-credentials

  scopes:

    - https://www.googleapis.com/auth/cloud-platform

    - https://www.googleapis.com/auth/compute

---
```

### OAuth 2.0 (`oauth`)

[Section titled “OAuth 2.0 (oauth)”](https://geminicli.com/docs/core/remote-agents/#oauth-20-oauth)

Performs an interactive OAuth 2.0 Authorization Code flow with PKCE. On first
use, Gemini CLI opens your browser for sign-in and persists the resulting tokens
for subsequent requests.

| Field | Type | Required | Description |
| :-- | :-- | :-- | :-- |
| `type` | string | Yes | Must be `oauth`. |
| `client_id` | string | Yes\* | OAuth client ID. Required for interactive auth. |
| `client_secret` | string | No\* | OAuth client secret. Required by most authorization servers (confidential clients). Can be omitted for public clients that don’t require a secret. |
| `scopes` | string\[\] | No | Requested scopes. Can also be discovered from the agent card. |
| `authorization_url` | string | No | Authorization endpoint. Discovered from the agent card if omitted. |
| `token_url` | string | No | Token endpoint. Discovered from the agent card if omitted. |

```
---

kind: remote

name: oauth-agent

agent_card_url: https://example.com/.well-known/agent.json

auth:

  type: oauth

  client_id: my-client-id.apps.example.com

---
```

If the agent card advertises an `oauth2` security scheme with
`authorizationCode` flow, the `authorization_url`, `token_url`, and `scopes` are
automatically discovered. You only need to provide `client_id` (and
`client_secret` if required).

Tokens are persisted to disk and refreshed automatically when they expire.

### Auth validation

[Section titled “Auth validation”](https://geminicli.com/docs/core/remote-agents/#auth-validation)

When Gemini CLI loads a remote agent, it validates your auth configuration
against the agent card’s declared `securitySchemes`. If the agent requires
authentication that you haven’t configured, you’ll see an error describing
what’s needed.

`google-credentials` is treated as compatible with `http` Bearer security
schemes, since it produces Bearer tokens.

### Auth retry behavior

[Section titled “Auth retry behavior”](https://geminicli.com/docs/core/remote-agents/#auth-retry-behavior)

All auth providers automatically retry on `401` and `403` responses by
re-fetching credentials (up to 2 retries). This handles cases like expired
tokens or rotated credentials. For `apiKey` with `!command` values, the command
is re-executed on retry to fetch a fresh key.

### Agent card fetching and auth

[Section titled “Agent card fetching and auth”](https://geminicli.com/docs/core/remote-agents/#agent-card-fetching-and-auth)

When connecting to a remote agent, Gemini CLI first fetches the agent card
**without** authentication. If the card endpoint returns a `401` or `403`, it
retries the fetch **with** the configured auth headers. This lets agents have
publicly accessible cards while protecting their task endpoints, or to protect
both behind auth.

## Managing Subagents

[Section titled “Managing Subagents”](https://geminicli.com/docs/core/remote-agents/#managing-subagents)

Users can manage subagents using the following commands within Gemini CLI:

- `/agents list`: Displays all available local and remote subagents.
- `/agents reload`: Reloads the agent registry. Use this after adding or
modifying agent definition files.
- `/agents enable <agent_name>`: Enables a specific subagent.
- `/agents disable <agent_name>`: Disables a specific subagent.

## Disabling remote agents

[Section titled “Disabling remote agents”](https://geminicli.com/docs/core/remote-agents/#disabling-remote-agents)

Remote subagents are enabled by default. To disable them, set `enableAgents` to
`false` in your `settings.json`:

```
{

  "experimental": {

    "enableAgents": false

  }

}
```

Last updated: Apr 10, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.