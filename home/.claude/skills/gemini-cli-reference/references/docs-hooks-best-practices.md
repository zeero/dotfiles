[Skip to content](https://geminicli.com/docs/hooks/best-practices/#_top)

# Hooks Best Practices

Copy as MarkdownCopied!

This guide covers security considerations, performance optimization, debugging
techniques, and privacy considerations for developing and deploying hooks in
Gemini CLI.

## Performance

[Section titled “Performance”](https://geminicli.com/docs/hooks/best-practices/#performance)

### Keep hooks fast

[Section titled “Keep hooks fast”](https://geminicli.com/docs/hooks/best-practices/#keep-hooks-fast)

Hooks run synchronously—slow hooks delay the agent loop. Optimize for speed by
using parallel operations:

```
// Sequential operations are slower

const data1 = await fetch(url1).then((r) => r.json());

const data2 = await fetch(url2).then((r) => r.json());

// Prefer parallel operations for better performance

// Start requests concurrently

const p1 = fetch(url1).then((r) => r.json());

const p2 = fetch(url2).then((r) => r.json());

// Wait for all results

const [data1, data2] = await Promise.all([p1, p2]);
```

### Cache expensive operations

[Section titled “Cache expensive operations”](https://geminicli.com/docs/hooks/best-practices/#cache-expensive-operations)

Store results between invocations to avoid repeated computation, especially for
hooks that run frequently (like `BeforeTool` or `AfterModel`).

```
const fs = require('fs');

const path = require('path');

const CACHE_FILE = '.gemini/hook-cache.json';

function readCache() {

  try {

    return JSON.parse(fs.readFileSync(CACHE_FILE, 'utf8'));

  } catch {

    return {};

  }

}

function writeCache(data) {

  fs.writeFileSync(CACHE_FILE, JSON.stringify(data, null, 2));

}

async function main() {

  const cache = readCache();

  const cacheKey = `tool-list-${(Date.now() / 3600000) | 0}`; // Hourly cache

  if (cache[cacheKey]) {

    // Write JSON to stdout

    console.log(JSON.stringify(cache[cacheKey]));

    return;

  }

  // Expensive operation

  const result = await computeExpensiveResult();

  cache[cacheKey] = result;

  writeCache(cache);

  console.log(JSON.stringify(result));

}
```

### Use appropriate events

[Section titled “Use appropriate events”](https://geminicli.com/docs/hooks/best-practices/#use-appropriate-events)

Choose hook events that match your use case to avoid unnecessary execution.

- **`AfterAgent`**: Fires **once** per turn after the model finishes its final
response. Use this for quality validation (Retries) or final logging.
- **`AfterModel`**: Fires after **every chunk** of LLM output. Use this for
real-time redaction, PII filtering, or monitoring output as it streams.

If you only need to check the final completion, use `AfterAgent` to save
performance.

### Filter with matchers

[Section titled “Filter with matchers”](https://geminicli.com/docs/hooks/best-practices/#filter-with-matchers)

Use specific matchers to avoid unnecessary hook execution. Instead of matching
all tools with `*`, specify only the tools you need. This saves the overhead of
spawning a process for irrelevant events.

```
{

  "matcher": "write_file|replace",

  "hooks": [\
\
    {\
\
      "name": "validate-writes",\
\
      "type": "command",\
\
      "command": "./validate.sh"\
\
    }\
\
  ]

}
```

### Optimize JSON parsing

[Section titled “Optimize JSON parsing”](https://geminicli.com/docs/hooks/best-practices/#optimize-json-parsing)

For large inputs (like `AfterModel` receiving a large context), standard JSON
parsing can be slow. If you only need one field, consider streaming parsers or
lightweight extraction logic, though for most shell scripts `jq` is sufficient.

## Debugging

[Section titled “Debugging”](https://geminicli.com/docs/hooks/best-practices/#debugging)

### The “Strict JSON” rule

[Section titled “The “Strict JSON” rule”](https://geminicli.com/docs/hooks/best-practices/#the-strict-json-rule)

The most common cause of hook failure is “polluting” the standard output.

- **stdout** is for **JSON only**.
- **stderr** is for **logs and text**.

**Good:**

```
#!/bin/bash

echo "Starting check..." >&2  # <--- Redirect to stderr

echo '{"decision": "allow"}'
```

### Log to files

[Section titled “Log to files”](https://geminicli.com/docs/hooks/best-practices/#log-to-files)

Since hooks run in the background, writing to a dedicated log file is often the
easiest way to debug complex logic.

```
#!/usr/bin/env bash

LOG_FILE=".gemini/hooks/debug.log"

# Log with timestamp

log() {

  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG_FILE"

}

input=$(cat)

log "Received input: ${input:0:100}..."

# Hook logic here

log "Hook completed successfully"

# Always output valid JSON to stdout at the end, even if just empty

echo "{}"
```

### Use stderr for errors

[Section titled “Use stderr for errors”](https://geminicli.com/docs/hooks/best-practices/#use-stderr-for-errors)

Error messages on stderr are surfaced appropriately based on exit codes:

```
try {

  const result = dangerousOperation();

  console.log(JSON.stringify({ result }));

} catch (error) {

  // Write the error description to stderr so the user/agent sees it

  console.error(`Hook error: ${error.message}`);

  process.exit(2); // Blocking error

}
```

### Test hooks independently

[Section titled “Test hooks independently”](https://geminicli.com/docs/hooks/best-practices/#test-hooks-independently)

Run hook scripts manually with sample JSON input to verify they behave as
expected before hooking them up to the CLI.

**macOS/Linux**

```
# Create test input

cat > test-input.json << 'EOF'

{

  "session_id": "test-123",

  "cwd": "/tmp/test",

  "hook_event_name": "BeforeTool",

  "tool_name": "write_file",

  "tool_input": {

    "file_path": "test.txt",

    "content": "Test content"

  }

}

EOF

# Test the hook

cat test-input.json | .gemini/hooks/my-hook.sh

# Check exit code

echo "Exit code: $?"
```

**Windows (PowerShell)**

```
# Create test input

@"

{

  "session_id": "test-123",

  "cwd": "C:\\temp\\test",

  "hook_event_name": "BeforeTool",

  "tool_name": "write_file",

  "tool_input": {

    "file_path": "test.txt",

    "content": "Test content"

  }

}

"@ | Out-File -FilePath test-input.json -Encoding utf8

# Test the hook

Get-Content test-input.json | .\.gemini\hooks\my-hook.ps1

# Check exit code

Write-Host "Exit code: $LASTEXITCODE"
```

### Check exit codes

[Section titled “Check exit codes”](https://geminicli.com/docs/hooks/best-practices/#check-exit-codes)

Gemini CLI uses exit codes for high-level flow control:

- **Exit 0 (Success)**: The hook ran successfully. The CLI parses `stdout` for
JSON decisions.
- **Exit 2 (System Block)**: A critical block occurred. `stderr` is used as the
reason.

  - For **Agent/Model** events, this aborts the turn.
  - For **Tool** events, this blocks the tool but allows the agent to continue.
  - For **AfterAgent**, this triggers an automatic retry turn.

> **TIP**
>
> **Blocking vs. Stopping**: Use `decision: "deny"` (or Exit Code 2) to block a
> **specific action**. Use `{"continue": false}` in your JSON output to **kill**
> **the entire agent loop** immediately.

```
#!/usr/bin/env bash

set -e

# Hook logic

if process_input; then

  echo '{"decision": "allow"}'

  exit 0

else

  echo "Critical validation failure" >&2

  exit 2

fi
```

### Enable telemetry

[Section titled “Enable telemetry”](https://geminicli.com/docs/hooks/best-practices/#enable-telemetry)

Hook execution is logged when `telemetry.logPrompts` is enabled. You can view
these logs to debug execution flow.

```
{

  "telemetry": {

    "logPrompts": true

  }

}
```

### Use hook panel

[Section titled “Use hook panel”](https://geminicli.com/docs/hooks/best-practices/#use-hook-panel)

The `/hooks panel` command inside the CLI shows execution status and recent
output:

```
/hooks panel
```

Check for:

- Hook execution counts
- Recent successes/failures
- Error messages
- Execution timing

## Development

[Section titled “Development”](https://geminicli.com/docs/hooks/best-practices/#development)

### Start simple

[Section titled “Start simple”](https://geminicli.com/docs/hooks/best-practices/#start-simple)

Begin with basic logging hooks before implementing complex logic:

```
#!/usr/bin/env bash

# Simple logging hook to understand input structure

input=$(cat)

echo "$input" >> .gemini/hook-inputs.log

# Always return valid JSON

echo "{}"
```

### Documenting your hooks

[Section titled “Documenting your hooks”](https://geminicli.com/docs/hooks/best-practices/#documenting-your-hooks)

Maintainability is critical for complex hook systems. Use descriptions and
comments to help yourself and others understand why a hook exists.

**Use the `description` field**: This text is displayed in the `/hooks panel` UI
and helps diagnose issues.

```
{

  "hooks": {

    "BeforeTool": [\
\
      {\
\
        "matcher": "write_file|replace",\
\
        "hooks": [\
\
          {\
\
            "name": "secret-scanner",\
\
            "type": "command",\
\
            "command": "$GEMINI_PROJECT_DIR/.gemini/hooks/block-secrets.sh",\
\
            "description": "Scans code changes for API keys and secrets before writing"\
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

**Add comments in hook scripts**: Explain performance expectations and
dependencies.

```
#!/usr/bin/env node

/**

 * RAG Tool Filter Hook

 *

 * Reduces the tool space by extracting keywords from the user's request.

 *

 * Performance: ~500ms average

 * Dependencies: @google/generative-ai

 */
```

### Use JSON libraries

[Section titled “Use JSON libraries”](https://geminicli.com/docs/hooks/best-practices/#use-json-libraries)

Parse JSON with proper libraries instead of text processing.

**Bad:**

```
# Fragile text parsing

tool_name=$(echo "$input" | grep -oP '"tool_name":\s*"\K[^"]+')
```

**Good:**

```
# Robust JSON parsing

tool_name=$(echo "$input" | jq -r '.tool_name')
```

### Make scripts executable

[Section titled “Make scripts executable”](https://geminicli.com/docs/hooks/best-practices/#make-scripts-executable)

Always make hook scripts executable on macOS/Linux:

```
chmod +x .gemini/hooks/*.sh

chmod +x .gemini/hooks/*.js
```

**Windows Note**: On Windows, PowerShell scripts (`.ps1`) don’t use `chmod`, but
you may need to ensure your execution policy allows them to run (for example,
`Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`).

### Version control

[Section titled “Version control”](https://geminicli.com/docs/hooks/best-practices/#version-control)

Commit hooks to share with your team:

```
git add .gemini/hooks/

git add .gemini/settings.json
```

**`.gitignore` considerations:**

```
# Ignore hook cache and logs

.gemini/hook-cache.json

.gemini/hook-debug.log

.gemini/memory/session-*.jsonl

# Keep hook scripts

!.gemini/hooks/*.sh

!.gemini/hooks/*.js
```

## Hook security

[Section titled “Hook security”](https://geminicli.com/docs/hooks/best-practices/#hook-security)

### Threat Model

[Section titled “Threat Model”](https://geminicli.com/docs/hooks/best-practices/#threat-model)

Understanding where hooks come from and what they can do is critical for secure
usage.

| Hook Source | Description |
| :-- | :-- |
| **System** | Configured by system administrators (for example, `/etc/gemini-cli/settings.json`, `/Library/...`). Assumed to be the **safest**. |
| **User** (`~/.gemini/...`) | Configured by you. You are responsible for ensuring they are safe. |
| **Extensions** | You explicitly approve and install these. Security depends on the extension source (integrity). |
| **Project** (`./.gemini/...`) | **Untrusted by default.** Safest in trusted internal repos; higher risk in third-party/public repos. |

#### Project Hook Security

[Section titled “Project Hook Security”](https://geminicli.com/docs/hooks/best-practices/#project-hook-security)

When you open a project with hooks defined in `.gemini/settings.json`:

1. **Detection**: Gemini CLI detects the hooks.
2. **Identification**: A unique identity is generated for each hook based on its
`name` and `command`.
3. **Warning**: If this specific hook identity has not been seen before, a
**warning** is displayed.
4. **Execution**: The hook is executed (unless specific security settings block
it).
5. **Trust**: The hook is marked as “trusted” for this project.

> **Modification detection**: If the `command` string of a project hook is
> changed (for example, by a `git pull`), its identity changes. Gemini CLI will
> treat it as a **new, untrusted hook** and warn you again. This prevents
> malicious actors from silently swapping a verified command for a malicious
> one.

### Risks

[Section titled “Risks”](https://geminicli.com/docs/hooks/best-practices/#risks)

| Risk | Description |
| :-- | :-- |
| **Arbitrary Code Execution** | Hooks run as your user. They can do anything you can do (delete files, install software). |
| **Data Exfiltration** | A hook could read your input (prompts), output (code), or environment variables (`GEMINI_API_KEY`) and send them to a remote server. |
| **Prompt Injection** | Malicious content in a file or web page could trick an LLM into running a tool that triggers a hook in an unexpected way. |

### Mitigation Strategies

[Section titled “Mitigation Strategies”](https://geminicli.com/docs/hooks/best-practices/#mitigation-strategies)

#### Verify the source

[Section titled “Verify the source”](https://geminicli.com/docs/hooks/best-practices/#verify-the-source)

**Verify the source** of any project hooks or extensions before enabling them.

- For open-source projects, a quick review of the hook scripts is recommended.
- For extensions, ensure you trust the author or publisher (for example,
verified publishers, well-known community members).
- Be cautious with obfuscated scripts or compiled binaries from unknown sources.

#### Sanitize environment

[Section titled “Sanitize environment”](https://geminicli.com/docs/hooks/best-practices/#sanitize-environment)

Hooks inherit the environment of Gemini CLI process, which may include sensitive
API keys. Gemini CLI provides a
[redaction system](https://geminicli.com/docs/reference/configuration#environment-variable-redaction)
that automatically filters variables matching sensitive patterns (for example,
`KEY`, `TOKEN`).

> **Disabled by Default**: Environment redaction is currently **OFF by**
> **default**. We strongly recommend enabling it if you are running third-party
> hooks or working in sensitive environments.

**Impact on hooks:**

- **Security**: Prevents your hook scripts from accidentally leaking secrets.
- **Troubleshooting**: If your hook depends on a specific environment variable
that is being blocked, you must explicitly allow it in `settings.json`.

```
{

  "security": {

    "environmentVariableRedaction": {

      "enabled": true,

      "allowed": ["MY_REQUIRED_TOOL_KEY"]

    }

  }

}
```

**System administrators:** You can enforce redaction for all users in the system
configuration.

## Troubleshooting

[Section titled “Troubleshooting”](https://geminicli.com/docs/hooks/best-practices/#troubleshooting)

### Hook not executing

[Section titled “Hook not executing”](https://geminicli.com/docs/hooks/best-practices/#hook-not-executing)

**Check hook name in `/hooks panel`:** Verify the hook appears in the list and
is enabled.

**Verify matcher pattern:**

```
# Test regex pattern

echo "write_file|replace" | grep -E "write_.*|replace"
```

**Check disabled list:** Verify the hook is not listed in your `settings.json`:

```
{

  "hooks": {

    "disabled": ["my-hook-name"]

  }

}
```

**Ensure script is executable**: For macOS and Linux users, verify the script
has execution permissions:

```
ls -la .gemini/hooks/my-hook.sh

chmod +x .gemini/hooks/my-hook.sh
```

**Windows Note**: On Windows, ensure your execution policy allows running
scripts (for example, `Get-ExecutionPolicy`).

**Verify script path:** Ensure the path in `settings.json` resolves correctly.

```
# Check path expansion

echo "$GEMINI_PROJECT_DIR/.gemini/hooks/my-hook.sh"

# Verify file exists

test -f "$GEMINI_PROJECT_DIR/.gemini/hooks/my-hook.sh" && echo "File exists"
```

### Hook timing out

[Section titled “Hook timing out”](https://geminicli.com/docs/hooks/best-practices/#hook-timing-out)

**Check configured timeout:** The default is 60000ms (1 minute). You can
increase this in `settings.json`:

```
{

  "name": "slow-hook",

  "timeout": 120000

}
```

**Optimize slow operations:** Move heavy processing to background tasks or use
caching.

### Invalid JSON output

[Section titled “Invalid JSON output”](https://geminicli.com/docs/hooks/best-practices/#invalid-json-output)

**Validate JSON before outputting:**

```
#!/usr/bin/env bash

output='{"decision": "allow"}'

# Validate JSON

if echo "$output" | jq empty 2>/dev/null; then

  echo "$output"

else

  echo "Invalid JSON generated" >&2

  exit 1

fi
```

### Environment variables not available

[Section titled “Environment variables not available”](https://geminicli.com/docs/hooks/best-practices/#environment-variables-not-available)

**Check if variable is set:**

```
#!/usr/bin/env bash

if [ -z "$GEMINI_PROJECT_DIR" ]; then

  echo "GEMINI_PROJECT_DIR not set" >&2

  exit 1

fi
```

**Debug available variables:**

```
env > .gemini/hook-env.log
```

## Authoring secure hooks

[Section titled “Authoring secure hooks”](https://geminicli.com/docs/hooks/best-practices/#authoring-secure-hooks)

When writing your own hooks, follow these practices to ensure they are robust
and secure.

### Validate all inputs

[Section titled “Validate all inputs”](https://geminicli.com/docs/hooks/best-practices/#validate-all-inputs)

Never trust data from hooks without validation. Hook inputs often come from the
LLM or user prompts, which can be manipulated.

```
#!/usr/bin/env bash

input=$(cat)

# Validate JSON structure

if ! echo "$input" | jq empty 2>/dev/null; then

  echo "Invalid JSON input" >&2

  exit 1

fi

# Validate tool_name explicitly

tool_name=$(echo "$input" | jq -r '.tool_name // empty')

if [[ "$tool_name" != "write_file" && "$tool_name" != "read_file" ]]; then

  echo "Unexpected tool: $tool_name" >&2

  exit 1

fi
```

### Use timeouts

[Section titled “Use timeouts”](https://geminicli.com/docs/hooks/best-practices/#use-timeouts)

Prevent denial-of-service (hanging agents) by enforcing timeouts. Gemini CLI
defaults to 60 seconds, but you should set stricter limits for fast hooks.

```
{

  "hooks": {

    "BeforeTool": [\
\
      {\
\
        "matcher": "*",\
\
        "hooks": [\
\
          {\
\
            "name": "fast-validator",\
\
            "type": "command",\
\
            "command": "./hooks/validate.sh",\
\
            "timeout": 5000 // 5 seconds\
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

### Limit permissions

[Section titled “Limit permissions”](https://geminicli.com/docs/hooks/best-practices/#limit-permissions)

Run hooks with minimal required permissions:

```
#!/usr/bin/env bash

# Don't run as root

if [ "$EUID" -eq 0 ]; then

  echo "Hook should not run as root" >&2

  exit 1

fi

# Check file permissions before writing

if [ -w "$file_path" ]; then

  # Safe to write

else

  echo "Insufficient permissions" >&2

  exit 1

fi
```

### Example: Secret Scanner

[Section titled “Example: Secret Scanner”](https://geminicli.com/docs/hooks/best-practices/#example-secret-scanner)

Use `BeforeTool` hooks to prevent committing sensitive data. This is a powerful
pattern for enhancing security in your workflow.

```
const SECRET_PATTERNS = [\
\
  /api[_-]?key\s*[:=]\s*['"]?[a-zA-Z0-9_-]{20,}['"]?/i,\
\
  /password\s*[:=]\s*['"]?[^\s'"]{8,}['"]?/i,\
\
  /secret\s*[:=]\s*['"]?[a-zA-Z0-9_-]{20,}['"]?/i,\
\
  /AKIA[0-9A-Z]{16}/, // AWS access key\
\
  /ghp_[a-zA-Z0-9]{36}/, // GitHub personal access token\
\
  /sk-[a-zA-Z0-9]{48}/, // OpenAI API key\
\
];

function containsSecret(content) {

  return SECRET_PATTERNS.some((pattern) => pattern.test(content));

}
```

## Privacy considerations

[Section titled “Privacy considerations”](https://geminicli.com/docs/hooks/best-practices/#privacy-considerations)

Hook inputs and outputs may contain sensitive information.

### What data is collected

[Section titled “What data is collected”](https://geminicli.com/docs/hooks/best-practices/#what-data-is-collected)

Hook telemetry may include inputs (prompts, code) and outputs (decisions,
reasons) unless disabled.

### Privacy settings

[Section titled “Privacy settings”](https://geminicli.com/docs/hooks/best-practices/#privacy-settings)

**Disable PII logging:** If you are working with sensitive data, disable prompt
logging in your settings:

```
{

  "telemetry": {

    "logPrompts": false

  }

}
```

**Suppress Output:** Individual hooks can request their metadata be hidden from
logs and telemetry by returning `"suppressOutput": true` in their JSON response.

> **Note**

> `suppressOutput` only affects background logging. Any `systemMessage` or
> `reason` included in the JSON will still be displayed to the user in the
> terminal.

### Sensitive data in hooks

[Section titled “Sensitive data in hooks”](https://geminicli.com/docs/hooks/best-practices/#sensitive-data-in-hooks)

If your hooks process sensitive data:

1. **Minimize logging:** Don’t write sensitive data to log files.
2. **Sanitize outputs:** Remove sensitive data before outputting JSON or writing
to stderr.

Last updated: Apr 10, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.