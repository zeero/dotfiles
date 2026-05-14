[Skip to content](https://geminicli.com/docs/cli/telemetry/#_top)

# Observability with OpenTelemetry

Copy as MarkdownCopied!

Observability is the key to turning experimental AI into reliable software.
Gemini CLI provides built-in support for OpenTelemetry, transforming every agent
interaction into a rich stream of logs, metrics, and traces. This three-pillar
approach gives you the high-fidelity visibility needed to understand agent
behavior, optimize performance, and ensure reliability across your entire
workflow.

Whether you are debugging a complex tool interaction locally or monitoring
enterprise-wide usage in the cloud, Gemini CLI’s observability system provides
the actionable intelligence needed to move from “black box” AI to predictable,
high-performance systems.

## OpenTelemetry integration

[Section titled “OpenTelemetry integration”](https://geminicli.com/docs/cli/telemetry/#opentelemetry-integration)

Gemini CLI integrates with **[OpenTelemetry](https://opentelemetry.io/)**, a vendor-neutral,
industry-standard observability framework.

The observability system provides:

- Universal compatibility: Export to any OpenTelemetry backend (Google Cloud,
Jaeger, Prometheus, Datadog, etc.).
- Standardized data: Use consistent formats and collection methods across your
toolchain.
- Future-proof integration: Connect with existing and future observability
infrastructure.
- No vendor lock-in: Switch between backends without changing your
instrumentation.

## Configuration

[Section titled “Configuration”](https://geminicli.com/docs/cli/telemetry/#configuration)

You control telemetry behavior through the `.gemini/settings.json` file.
Environment variables can override these settings.

| Setting | Environment Variable | Description | Values | Default |
| --- | --- | --- | --- | --- |
| `enabled` | `GEMINI_TELEMETRY_ENABLED` | Enable or disable telemetry | `true`/`false` | `false` |
| `traces` | `GEMINI_TELEMETRY_TRACES_ENABLED` | Enable detailed attribute tracing | `true`/`false` | `false` |
| `target` | `GEMINI_TELEMETRY_TARGET` | Where to send telemetry data | `"gcp"`/`"local"` | `"local"` |
| `otlpEndpoint` | `GEMINI_TELEMETRY_OTLP_ENDPOINT` | OTLP collector endpoint | URL string | `http://localhost:4317` |
| `otlpProtocol` | `GEMINI_TELEMETRY_OTLP_PROTOCOL` | OTLP transport protocol | `"grpc"`/`"http"` | `"grpc"` |
| `outfile` | `GEMINI_TELEMETRY_OUTFILE` | Save telemetry to file (overrides `otlpEndpoint`) | file path | - |
| `logPrompts` | `GEMINI_TELEMETRY_LOG_PROMPTS` | Include prompts in telemetry logs | `true`/`false` | `true` |
| `useCollector` | `GEMINI_TELEMETRY_USE_COLLECTOR` | Use external OTLP collector (advanced) | `true`/`false` | `false` |
| `useCliAuth` | `GEMINI_TELEMETRY_USE_CLI_AUTH` | Use CLI credentials for telemetry (GCP target only) | `true`/`false` | `false` |
| - | `GEMINI_CLI_SURFACE` | Optional custom label for traffic reporting | string | - |

**Note on boolean environment variables:** For boolean settings like `enabled`,
setting the environment variable to `true` or `1` enables the feature.

For detailed configuration information, see the
[Configuration guide](https://geminicli.com/docs/reference/configuration).

## Google Cloud telemetry

[Section titled “Google Cloud telemetry”](https://geminicli.com/docs/cli/telemetry/#google-cloud-telemetry)

You can export telemetry data directly to Google Cloud Trace, Cloud Monitoring,
and Cloud Logging.

### Prerequisites

[Section titled “Prerequisites”](https://geminicli.com/docs/cli/telemetry/#prerequisites)

You must complete several setup steps before enabling Google Cloud telemetry.

1. Set your Google Cloud project ID:
   - To send telemetry to a separate project:

     **macOS/Linux**



     ```
     export OTLP_GOOGLE_CLOUD_PROJECT="your-telemetry-project-id"
     ```









     **Windows (PowerShell)**



     ```
     $env:OTLP_GOOGLE_CLOUD_PROJECT="your-telemetry-project-id"
     ```

   - To send telemetry to the same project as inference:

     **macOS/Linux**



     ```
     export GOOGLE_CLOUD_PROJECT="your-project-id"
     ```









     **Windows (PowerShell)**



     ```
     $env:GOOGLE_CLOUD_PROJECT="your-project-id"
     ```
2. Authenticate with Google Cloud using one of these methods:


   - **Method A: Application Default Credentials (ADC)**: Use this method for
     service accounts or standard `gcloud` authentication.

     - For user accounts:



       ```
       gcloud auth application-default login
       ```

     - For service accounts:

       **macOS/Linux**



       ```
       export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your/service-account.json"
       ```









       **Windows (PowerShell)**



       ```
       $env:GOOGLE_APPLICATION_CREDENTIALS="C:\path\to\your\service-account.json"
       ```

   - **Method B: CLI Auth** (Direct export only): Simplest method for local
     users. Gemini CLI uses the same OAuth credentials you used for login. To
     enable this, set `useCliAuth: true` in your `.gemini/settings.json`:



     ```
     {

       "telemetry": {

         "enabled": true,

         "target": "gcp",

         "useCliAuth": true

       }

     }
     ```

3. Ensure your account or service account has these IAM roles:
   - Cloud Trace Agent
   - Monitoring Metric Writer
   - Logs Writer
4. Enable the required Google Cloud APIs:



```
gcloud services enable \

     cloudtrace.googleapis.com \

     monitoring.googleapis.com \

     logging.googleapis.com \

     --project="$OTLP_GOOGLE_CLOUD_PROJECT"
```


### Direct export

[Section titled “Direct export”](https://geminicli.com/docs/cli/telemetry/#direct-export)

We recommend using direct export to send telemetry directly to Google Cloud
services.

1. Enable telemetry in `.gemini/settings.json`:



```
{

     "telemetry": {

       "enabled": true,

       "target": "gcp"

     }

}
```

2. Run Gemini CLI and send prompts.
3. View logs, metrics, and traces in the Google Cloud Console. See
[View Google Cloud telemetry](https://geminicli.com/docs/cli/telemetry/#view-google-cloud-telemetry) for details.

### View Google Cloud telemetry

[Section titled “View Google Cloud telemetry”](https://geminicli.com/docs/cli/telemetry/#view-google-cloud-telemetry)

After you enable telemetry and run Gemini CLI, you can view your data in the
Google Cloud Console.

- **Logs:** [Logs Explorer](https://console.cloud.google.com/logs/)
- **Metrics:** [Metrics Explorer](https://console.cloud.google.com/monitoring/metrics-explorer)
- **Traces:** [Trace Explorer](https://console.cloud.google.com/traces/list)

For detailed information on how to use these tools, see the following official
Google Cloud documentation:

- [View and analyze logs with Logs Explorer](https://cloud.google.com/logging/docs/view/logs-explorer-interface)
- [Create charts with Metrics Explorer](https://cloud.google.com/monitoring/charts/metrics-explorer)
- [Find and explore traces](https://cloud.google.com/trace/docs/finding-traces)

#### Monitoring dashboards

[Section titled “Monitoring dashboards”](https://geminicli.com/docs/cli/telemetry/#monitoring-dashboards)

Gemini CLI provides a pre-configured
[Google Cloud Monitoring](https://cloud.google.com/monitoring) dashboard to
visualize your telemetry.

Find this dashboard under **Google Cloud Monitoring Dashboard Templates** as
“ **Gemini CLI Monitoring**”.

![Gemini CLI Monitoring Dashboard Overview](https://geminicli.com/docs/assets/monitoring-dashboard-overview.png)

![Gemini CLI Monitoring Dashboard Metrics](https://geminicli.com/docs/assets/monitoring-dashboard-metrics.png)

![Gemini CLI Monitoring Dashboard Logs](https://geminicli.com/docs/assets/monitoring-dashboard-logs.png)

To learn more, see
[Instant insights: Gemini CLI’s pre-configured monitoring dashboards](https://cloud.google.com/blog/topics/developers-practitioners/instant-insights-gemini-clis-new-pre-configured-monitoring-dashboards/).

## Local telemetry

[Section titled “Local telemetry”](https://geminicli.com/docs/cli/telemetry/#local-telemetry)

You can capture telemetry data locally for development and debugging. We
recommend using file-based output for local development.

1. Enable telemetry in `.gemini/settings.json`:



```
{

     "telemetry": {

       "enabled": true,

       "target": "local",

       "outfile": ".gemini/telemetry.log"

     }

}
```

2. Run Gemini CLI and send prompts.
3. View logs and metrics in `.gemini/telemetry.log`.

For advanced local telemetry setups (such as Jaeger or Genkit), see the
[Local development guide](https://geminicli.com/docs/local-development#viewing-traces).

## Client identification

[Section titled “Client identification”](https://geminicli.com/docs/cli/telemetry/#client-identification)

Gemini CLI includes identifiers in its `User-Agent` header to help you
differentiate and report on API traffic from different environments (for
example, identifying calls from Gemini Code Assist versus a standard terminal).

### Automatic identification

[Section titled “Automatic identification”](https://geminicli.com/docs/cli/telemetry/#automatic-identification)

Most integrated environments are identified automatically without additional
configuration. The identifier is included as a prefix to the `User-Agent` and as
a “surface” tag in the parenthetical metadata.

| Environment | User-Agent Prefix | Surface Tag |
| :-- | :-- | :-- |
| **Gemini Code Assist (Agent Mode)** | `GeminiCLI-a2a-server` | `vscode` |
| **Zed (via ACP)** | `GeminiCLI-acp-zed` | `zed` |
| **XCode (via ACP)** | `GeminiCLI-acp-xcode` | `xcode` |
| **IntelliJ IDEA (via ACP)** | `GeminiCLI-acp-intellijidea` | `jetbrains` |
| **Standard Terminal** | `GeminiCLI` | `terminal` |

**Example User-Agent:**`GeminiCLI-a2a-server/0.34.0/gemini-pro (linux; x64; vscode)`

### Custom identification

[Section titled “Custom identification”](https://geminicli.com/docs/cli/telemetry/#custom-identification)

You can provide a custom identifier for your own scripts or automation by
setting the `GEMINI_CLI_SURFACE` environment variable. This is useful for
tracking specific internal tools or distribution channels in your GCP logs.

**macOS/Linux**

```
export GEMINI_CLI_SURFACE="my-custom-tool"
```

**Windows (PowerShell)**

```
$env:GEMINI_CLI_SURFACE="my-custom-tool"
```

When set, the value appears at the end of the `User-Agent` parenthetical:
`GeminiCLI/0.34.0/gemini-pro (linux; x64; my-custom-tool)`

## Logs, metrics, and traces

[Section titled “Logs, metrics, and traces”](https://geminicli.com/docs/cli/telemetry/#logs-metrics-and-traces)

This section describes the structure of logs, metrics, and traces generated by
Gemini CLI.

Gemini CLI includes `session.id`, `installation.id`, `active_approval_mode`, and
`user.email` (when authenticated) as common attributes on all data.

### Logs

[Section titled “Logs”](https://geminicli.com/docs/cli/telemetry/#logs)

Logs provide timestamped records of specific events. Gemini CLI logs events
across several categories.

#### Sessions

[Section titled “Sessions”](https://geminicli.com/docs/cli/telemetry/#sessions)

Session logs capture startup configuration and prompt submissions.

##### `gemini_cli.config`

[Section titled “gemini\_cli.config”](https://geminicli.com/docs/cli/telemetry/#gemini_cliconfig)

Emitted at startup with the CLI configuration.

Attributes

- `model` (string)
- `embedding_model` (string)
- `sandbox_enabled` (boolean)
- `core_tools_enabled` (string)
- `approval_mode` (string)
- `api_key_enabled` (boolean)
- `vertex_ai_enabled` (boolean)
- `log_user_prompts_enabled` (boolean)
- `file_filtering_respect_git_ignore` (boolean)
- `debug_mode` (boolean)
- `mcp_servers` (string)
- `mcp_servers_count` (int)
- `mcp_tools` (string)
- `mcp_tools_count` (int)
- `output_format` (string)
- `extensions` (string)
- `extension_ids` (string)
- `extensions_count` (int)
- `auth_type` (string)
- `worktree_active` (boolean)
- `github_workflow_name` (string, optional)
- `github_repository_hash` (string, optional)
- `github_event_name` (string, optional)
- `github_pr_number` (string, optional)
- `github_issue_number` (string, optional)
- `github_custom_tracking_id` (string, optional)

##### `gemini_cli.user_prompt`

[Section titled “gemini\_cli.user\_prompt”](https://geminicli.com/docs/cli/telemetry/#gemini_cliuser_prompt)

Emitted when you submit a prompt.

Attributes

- `prompt_length` (int)
- `prompt_id` (string)
- `prompt` (string; excluded if `telemetry.logPrompts` is `false`)
- `auth_type` (string)

#### Approval mode

[Section titled “Approval mode”](https://geminicli.com/docs/cli/telemetry/#approval-mode)

These logs track changes to and usage of different approval modes.

##### Lifecycle

[Section titled “Lifecycle”](https://geminicli.com/docs/cli/telemetry/#lifecycle)

##### `approval_mode_switch`

[Section titled “approval\_mode\_switch”](https://geminicli.com/docs/cli/telemetry/#approval_mode_switch)

Logs when you change the approval mode.

Attributes

- `from_mode` (string)
- `to_mode` (string)

##### `approval_mode_duration`

[Section titled “approval\_mode\_duration”](https://geminicli.com/docs/cli/telemetry/#approval_mode_duration)

Records time spent in an approval mode.

Attributes

- `mode` (string)
- `duration_ms` (int)

##### Execution

[Section titled “Execution”](https://geminicli.com/docs/cli/telemetry/#execution)

##### `plan_execution`

[Section titled “plan\_execution”](https://geminicli.com/docs/cli/telemetry/#plan_execution)

Logs when you execute a plan and switch from plan mode to active execution.

Attributes

- `approval_mode` (string)

#### Tools

[Section titled “Tools”](https://geminicli.com/docs/cli/telemetry/#tools)

Tool logs capture executions, truncation, and edit behavior.

##### `gemini_cli.tool_call`

[Section titled “gemini\_cli.tool\_call”](https://geminicli.com/docs/cli/telemetry/#gemini_clitool_call)

Emitted for each tool (function) call.

Attributes

- `function_name` (string)
- `function_args` (string)
- `duration_ms` (int)
- `success` (boolean)
- `decision` (string: “accept”, “reject”, “auto\_accept”, or “modify”)
- `error` (string, optional)
- `error_type` (string, optional)
- `prompt_id` (string)
- `tool_type` (string: “native” or “mcp”)
- `mcp_server_name` (string, optional)
- `extension_name` (string, optional)
- `extension_id` (string, optional)
- `content_length` (int, optional)
- `start_time` (number, optional)
- `end_time` (number, optional)
- `metadata`(object, optional), which may include:

  - `model_added_lines` (number)
  - `model_removed_lines` (number)
  - `user_added_lines` (number)
  - `user_removed_lines` (number)
  - `ask_user` (object)

##### `gemini_cli.tool_output_truncated`

[Section titled “gemini\_cli.tool\_output\_truncated”](https://geminicli.com/docs/cli/telemetry/#gemini_clitool_output_truncated)

Logs when tool output is truncated.

Attributes

- `tool_name` (string)
- `original_content_length` (int)
- `truncated_content_length` (int)
- `threshold` (int)
- `lines` (int)
- `prompt_id` (string)

##### `gemini_cli.edit_strategy`

[Section titled “gemini\_cli.edit\_strategy”](https://geminicli.com/docs/cli/telemetry/#gemini_cliedit_strategy)

Records the chosen edit strategy.

Attributes

- `strategy` (string)

##### `gemini_cli.edit_correction`

[Section titled “gemini\_cli.edit\_correction”](https://geminicli.com/docs/cli/telemetry/#gemini_cliedit_correction)

Records the result of an edit correction.

Attributes

- `correction` (string: “success” or “failure”)

##### `gen_ai.client.inference.operation.details`

[Section titled “gen\_ai.client.inference.operation.details”](https://geminicli.com/docs/cli/telemetry/#gen_aiclientinferenceoperationdetails)

Provides detailed GenAI operation data aligned with OpenTelemetry conventions.

Attributes

- `gen_ai.request.model` (string)
- `gen_ai.provider.name` (string)
- `gen_ai.operation.name` (string)
- `gen_ai.input.messages` (json string)
- `gen_ai.output.messages` (json string)
- `gen_ai.response.finish_reasons` (array of strings)
- `gen_ai.usage.input_tokens` (int)
- `gen_ai.usage.output_tokens` (int)
- `gen_ai.request.temperature` (float)
- `gen_ai.request.top_p` (float)
- `gen_ai.request.top_k` (int)
- `gen_ai.request.max_tokens` (int)
- `gen_ai.system_instructions` (json string)
- `server.address` (string)
- `server.port` (int)

#### Files

[Section titled “Files”](https://geminicli.com/docs/cli/telemetry/#files)

File logs track operations performed by tools.

##### `gemini_cli.file_operation`

[Section titled “gemini\_cli.file\_operation”](https://geminicli.com/docs/cli/telemetry/#gemini_clifile_operation)

Emitted for each file creation, read, or update.

Attributes

- `tool_name` (string)
- `operation` (string: “create”, “read”, or “update”)
- `lines` (int, optional)
- `mimetype` (string, optional)
- `extension` (string, optional)
- `programming_language` (string, optional)

#### API

[Section titled “API”](https://geminicli.com/docs/cli/telemetry/#api)

API logs capture requests, responses, and errors from Gemini API.

##### `gemini_cli.api_request`

[Section titled “gemini\_cli.api\_request”](https://geminicli.com/docs/cli/telemetry/#gemini_cliapi_request)

Request sent to Gemini API.

Attributes

- `model` (string)
- `prompt_id` (string)
- `role` (string: “user”, “model”, or “system”)
- `request_text` (string, optional)

##### `gemini_cli.api_response`

[Section titled “gemini\_cli.api\_response”](https://geminicli.com/docs/cli/telemetry/#gemini_cliapi_response)

Response received from Gemini API.

Attributes

- `model` (string)
- `status_code` (int or string)
- `duration_ms` (int)
- `input_token_count` (int)
- `output_token_count` (int)
- `cached_content_token_count` (int)
- `thoughts_token_count` (int)
- `tool_token_count` (int)
- `total_token_count` (int)
- `prompt_id` (string)
- `auth_type` (string)
- `finish_reasons` (array of strings)
- `response_text` (string, optional)

##### `gemini_cli.api_error`

[Section titled “gemini\_cli.api\_error”](https://geminicli.com/docs/cli/telemetry/#gemini_cliapi_error)

Logs when an API request fails.

Attributes

- `error.message` (string)
- `model_name` (string)
- `duration` (int)
- `prompt_id` (string)
- `auth_type` (string)
- `error_type` (string, optional)
- `status_code` (int or string, optional)
- `role` (string, optional)

##### `gemini_cli.malformed_json_response`

[Section titled “gemini\_cli.malformed\_json\_response”](https://geminicli.com/docs/cli/telemetry/#gemini_climalformed_json_response)

Logs when a JSON response cannot be parsed.

Attributes

- `model` (string)

#### Model routing

[Section titled “Model routing”](https://geminicli.com/docs/cli/telemetry/#model-routing)

These logs track how Gemini CLI selects and routes requests to models.

##### `gemini_cli.slash_command`

[Section titled “gemini\_cli.slash\_command”](https://geminicli.com/docs/cli/telemetry/#gemini_clislash_command)

Logs slash command execution.

Attributes

- `command` (string)
- `subcommand` (string, optional)
- `status` (string: “success” or “error”)

##### `gemini_cli.slash_command.model`

[Section titled “gemini\_cli.slash\_command.model”](https://geminicli.com/docs/cli/telemetry/#gemini_clislash_commandmodel)

Logs model selection via slash command.

Attributes

- `model_name` (string)

##### `gemini_cli.model_routing`

[Section titled “gemini\_cli.model\_routing”](https://geminicli.com/docs/cli/telemetry/#gemini_climodel_routing)

Records model router decisions and reasoning.

Attributes

- `decision_model` (string)
- `decision_source` (string)
- `routing_latency_ms` (int)
- `reasoning` (string, optional)
- `failed` (boolean)
- `error_message` (string, optional)
- `approval_mode` (string)

#### Chat and streaming

[Section titled “Chat and streaming”](https://geminicli.com/docs/cli/telemetry/#chat-and-streaming)

These logs track chat context compression and streaming chunk errors.

##### `gemini_cli.chat_compression`

[Section titled “gemini\_cli.chat\_compression”](https://geminicli.com/docs/cli/telemetry/#gemini_clichat_compression)

Logs chat context compression events.

Attributes

- `tokens_before` (int)
- `tokens_after` (int)

##### `gemini_cli.chat.invalid_chunk`

[Section titled “gemini\_cli.chat.invalid\_chunk”](https://geminicli.com/docs/cli/telemetry/#gemini_clichatinvalid_chunk)

Logs invalid chunks received in a stream.

Attributes

- `error_message` (string, optional)

##### `gemini_cli.chat.content_retry`

[Section titled “gemini\_cli.chat.content\_retry”](https://geminicli.com/docs/cli/telemetry/#gemini_clichatcontent_retry)

Logs retries due to content errors.

Attributes

- `attempt_number` (int)
- `error_type` (string)
- `retry_delay_ms` (int)
- `model` (string)

##### `gemini_cli.chat.content_retry_failure`

[Section titled “gemini\_cli.chat.content\_retry\_failure”](https://geminicli.com/docs/cli/telemetry/#gemini_clichatcontent_retry_failure)

Logs when all content retries fail.

Attributes

- `total_attempts` (int)
- `final_error_type` (string)
- `total_duration_ms` (int, optional)
- `model` (string)

##### `gemini_cli.conversation_finished`

[Section titled “gemini\_cli.conversation\_finished”](https://geminicli.com/docs/cli/telemetry/#gemini_cliconversation_finished)

Logs when a conversation session ends.

Attributes

- `approvalMode` (string)
- `turnCount` (int)

#### Resilience

[Section titled “Resilience”](https://geminicli.com/docs/cli/telemetry/#resilience)

Resilience logs record fallback mechanisms and recovery attempts.

##### `gemini_cli.flash_fallback`

[Section titled “gemini\_cli.flash\_fallback”](https://geminicli.com/docs/cli/telemetry/#gemini_cliflash_fallback)

Logs switch to a flash model fallback.

Attributes

- `auth_type` (string)

##### `gemini_cli.ripgrep_fallback`

[Section titled “gemini\_cli.ripgrep\_fallback”](https://geminicli.com/docs/cli/telemetry/#gemini_cliripgrep_fallback)

Logs fallback to standard grep.

Attributes

- `error` (string, optional)

##### `gemini_cli.web_fetch_fallback_attempt`

[Section titled “gemini\_cli.web\_fetch\_fallback\_attempt”](https://geminicli.com/docs/cli/telemetry/#gemini_cliweb_fetch_fallback_attempt)

Logs web-fetch fallback attempts.

Attributes

- `reason` (string: “private\_ip” or “primary\_failed”)

##### `gemini_cli.agent.recovery_attempt`

[Section titled “gemini\_cli.agent.recovery\_attempt”](https://geminicli.com/docs/cli/telemetry/#gemini_cliagentrecovery_attempt)

Logs attempts to recover from agent errors.

Attributes

- `agent_name` (string)
- `attempt_number` (int)
- `success` (boolean)
- `error_type` (string, optional)

#### Extensions

[Section titled “Extensions”](https://geminicli.com/docs/cli/telemetry/#extensions)

Extension logs track lifecycle events and settings changes.

##### `gemini_cli.extension_install`

[Section titled “gemini\_cli.extension\_install”](https://geminicli.com/docs/cli/telemetry/#gemini_cliextension_install)

Logs when you install an extension.

Attributes

- `extension_name` (string)
- `extension_version` (string)
- `extension_source` (string)
- `status` (string)

##### `gemini_cli.extension_uninstall`

[Section titled “gemini\_cli.extension\_uninstall”](https://geminicli.com/docs/cli/telemetry/#gemini_cliextension_uninstall)

Logs when you uninstall an extension.

Attributes

- `extension_name` (string)
- `status` (string)

##### `gemini_cli.extension_enable`

[Section titled “gemini\_cli.extension\_enable”](https://geminicli.com/docs/cli/telemetry/#gemini_cliextension_enable)

Logs when you enable an extension.

Attributes

- `extension_name` (string)
- `setting_scope` (string)

##### `gemini_cli.extension_disable`

[Section titled “gemini\_cli.extension\_disable”](https://geminicli.com/docs/cli/telemetry/#gemini_cliextension_disable)

Logs when you disable an extension.

Attributes

- `extension_name` (string)
- `setting_scope` (string)

#### Agent runs

[Section titled “Agent runs”](https://geminicli.com/docs/cli/telemetry/#agent-runs)

Agent logs track the lifecycle of agent executions.

##### `gemini_cli.agent.start`

[Section titled “gemini\_cli.agent.start”](https://geminicli.com/docs/cli/telemetry/#gemini_cliagentstart)

Logs when an agent run begins.

Attributes

- `agent_id` (string)
- `agent_name` (string)

##### `gemini_cli.agent.finish`

[Section titled “gemini\_cli.agent.finish”](https://geminicli.com/docs/cli/telemetry/#gemini_cliagentfinish)

Logs when an agent run completes.

Attributes

- `agent_id` (string)
- `agent_name` (string)
- `duration_ms` (int)
- `turn_count` (int)
- `terminate_reason` (string)

#### IDE

[Section titled “IDE”](https://geminicli.com/docs/cli/telemetry/#ide)

IDE logs capture connectivity events for the IDE companion.

##### `gemini_cli.ide_connection`

[Section titled “gemini\_cli.ide\_connection”](https://geminicli.com/docs/cli/telemetry/#gemini_cliide_connection)

Logs IDE companion connections.

Attributes

- `connection_type` (string)

#### UI

[Section titled “UI”](https://geminicli.com/docs/cli/telemetry/#ui)

UI logs track terminal rendering issues.

##### `kitty_sequence_overflow`

[Section titled “kitty\_sequence\_overflow”](https://geminicli.com/docs/cli/telemetry/#kitty_sequence_overflow)

Logs terminal control sequence overflows.

Attributes

- `sequence_length` (int)
- `truncated_sequence` (string)

#### Miscellaneous

[Section titled “Miscellaneous”](https://geminicli.com/docs/cli/telemetry/#miscellaneous)

##### `gemini_cli.rewind`

[Section titled “gemini\_cli.rewind”](https://geminicli.com/docs/cli/telemetry/#gemini_clirewind)

Logs when the conversation state is rewound.

Attributes

- `outcome` (string)

##### `gemini_cli.conseca.verdict`

[Section titled “gemini\_cli.conseca.verdict”](https://geminicli.com/docs/cli/telemetry/#gemini_cliconsecaverdict)

Logs security verdicts from ConSeca.

Attributes

- `verdict` (string)
- `decision` (string: “accept”, “reject”, or “modify”)
- `reason` (string, optional)
- `tool_name` (string, optional)

##### `gemini_cli.hook_call`

[Section titled “gemini\_cli.hook\_call”](https://geminicli.com/docs/cli/telemetry/#gemini_clihook_call)

Logs execution of lifecycle hooks.

Attributes

- `hook_name` (string)
- `hook_type` (string)
- `duration_ms` (int)
- `success` (boolean)

##### `gemini_cli.tool_output_masking`

[Section titled “gemini\_cli.tool\_output\_masking”](https://geminicli.com/docs/cli/telemetry/#gemini_clitool_output_masking)

Logs when tool output is masked for privacy.

Attributes

- `tokens_before` (int)
- `tokens_after` (int)
- `masked_count` (int)
- `total_prunable_tokens` (int)

##### `gemini_cli.keychain.availability`

[Section titled “gemini\_cli.keychain.availability”](https://geminicli.com/docs/cli/telemetry/#gemini_clikeychainavailability)

Logs keychain availability checks.

Attributes

- `available` (boolean)

##### `gemini_cli.startup_stats`

[Section titled “gemini\_cli.startup\_stats”](https://geminicli.com/docs/cli/telemetry/#gemini_clistartup_stats)

Logs detailed startup performance statistics.

Attributes

- `phases` (json array of startup phases)
- `os_platform` (string)
- `os_release` (string)
- `is_docker` (boolean)

### Metrics

[Section titled “Metrics”](https://geminicli.com/docs/cli/telemetry/#metrics)

Metrics provide numerical measurements of behavior over time.

#### Custom metrics

[Section titled “Custom metrics”](https://geminicli.com/docs/cli/telemetry/#custom-metrics)

Gemini CLI exports several custom metrics.

##### Sessions

[Section titled “Sessions”](https://geminicli.com/docs/cli/telemetry/#sessions-1)

##### `gemini_cli.session.count`

[Section titled “gemini\_cli.session.count”](https://geminicli.com/docs/cli/telemetry/#gemini_clisessioncount)

Incremented once per CLI startup.

##### Onboarding

[Section titled “Onboarding”](https://geminicli.com/docs/cli/telemetry/#onboarding)

Tracks onboarding flow from authentication to the user

- `gemini_cli.onboarding.start` (Counter, Int): Incremented when the
authentication flow begins.

- `gemini_cli.onboarding.success` (Counter, Int): Incremented when the user
onboarding flow completes successfully.


Attributes (Success)

- `user_tier` (string)

##### Tools

[Section titled “Tools”](https://geminicli.com/docs/cli/telemetry/#tools-1)

##### `gemini_cli.tool.call.count`

[Section titled “gemini\_cli.tool.call.count”](https://geminicli.com/docs/cli/telemetry/#gemini_clitoolcallcount)

Counts tool calls.

Attributes

- `function_name` (string)
- `success` (boolean)
- `decision` (string: “accept”, “reject”, “modify”, or “auto\_accept”)
- `tool_type` (string: “mcp” or “native”)

##### `gemini_cli.tool.call.latency`

[Section titled “gemini\_cli.tool.call.latency”](https://geminicli.com/docs/cli/telemetry/#gemini_clitoolcalllatency)

Measures tool call latency (in ms).

Attributes

- `function_name` (string)

##### API

[Section titled “API”](https://geminicli.com/docs/cli/telemetry/#api-1)

##### `gemini_cli.api.request.count`

[Section titled “gemini\_cli.api.request.count”](https://geminicli.com/docs/cli/telemetry/#gemini_cliapirequestcount)

Counts all API requests.

Attributes

- `model` (string)
- `status_code` (int or string)
- `error_type` (string, optional)

##### `gemini_cli.api.request.latency`

[Section titled “gemini\_cli.api.request.latency”](https://geminicli.com/docs/cli/telemetry/#gemini_cliapirequestlatency)

Measures API request latency (in ms).

Attributes

- `model` (string)

##### Token usage

[Section titled “Token usage”](https://geminicli.com/docs/cli/telemetry/#token-usage)

##### `gemini_cli.token.usage`

[Section titled “gemini\_cli.token.usage”](https://geminicli.com/docs/cli/telemetry/#gemini_clitokenusage)

Counts input, output, thought, cache, and tool tokens.

Attributes

- `model` (string)
- `type` (string: “input”, “output”, “thought”, “cache”, or “tool”)

##### Files

[Section titled “Files”](https://geminicli.com/docs/cli/telemetry/#files-1)

##### `gemini_cli.file.operation.count`

[Section titled “gemini\_cli.file.operation.count”](https://geminicli.com/docs/cli/telemetry/#gemini_clifileoperationcount)

Counts file operations.

Attributes

- `operation` (string: “create”, “read”, or “update”)
- `lines` (int, optional)
- `mimetype` (string, optional)
- `extension` (string, optional)
- `programming_language` (string, optional)

##### `gemini_cli.lines.changed`

[Section titled “gemini\_cli.lines.changed”](https://geminicli.com/docs/cli/telemetry/#gemini_clilineschanged)

Counts added or removed lines.

Attributes

- `function_name` (string, optional)
- `type` (string: “added” or “removed”)

##### Chat and streaming

[Section titled “Chat and streaming”](https://geminicli.com/docs/cli/telemetry/#chat-and-streaming-1)

##### `gemini_cli.chat_compression`

[Section titled “gemini\_cli.chat\_compression”](https://geminicli.com/docs/cli/telemetry/#gemini_clichat_compression-1)

Counts compression operations.

Attributes

- `tokens_before` (int)
- `tokens_after` (int)

##### `gemini_cli.chat.invalid_chunk.count`

[Section titled “gemini\_cli.chat.invalid\_chunk.count”](https://geminicli.com/docs/cli/telemetry/#gemini_clichatinvalid_chunkcount)

Counts invalid stream chunks.

##### `gemini_cli.chat.content_retry.count`

[Section titled “gemini\_cli.chat.content\_retry.count”](https://geminicli.com/docs/cli/telemetry/#gemini_clichatcontent_retrycount)

Counts content error retries.

##### `gemini_cli.chat.content_retry_failure.count`

[Section titled “gemini\_cli.chat.content\_retry\_failure.count”](https://geminicli.com/docs/cli/telemetry/#gemini_clichatcontent_retry_failurecount)

Counts requests where all retries failed.

##### Model routing

[Section titled “Model routing”](https://geminicli.com/docs/cli/telemetry/#model-routing-1)

##### `gemini_cli.slash_command.model.call_count`

[Section titled “gemini\_cli.slash\_command.model.call\_count”](https://geminicli.com/docs/cli/telemetry/#gemini_clislash_commandmodelcall_count)

Counts model selections.

Attributes

- `slash_command.model.model_name` (string)

##### `gemini_cli.model_routing.latency`

[Section titled “gemini\_cli.model\_routing.latency”](https://geminicli.com/docs/cli/telemetry/#gemini_climodel_routinglatency)

Measures routing decision latency.

Attributes

- `routing.decision_model` (string)
- `routing.decision_source` (string)
- `routing.approval_mode` (string)

##### `gemini_cli.model_routing.failure.count`

[Section titled “gemini\_cli.model\_routing.failure.count”](https://geminicli.com/docs/cli/telemetry/#gemini_climodel_routingfailurecount)

Counts routing failures.

Attributes

- `routing.decision_source` (string)
- `routing.error_message` (string)
- `routing.approval_mode` (string)

##### Agent runs

[Section titled “Agent runs”](https://geminicli.com/docs/cli/telemetry/#agent-runs-1)

##### `gemini_cli.agent.run.count`

[Section titled “gemini\_cli.agent.run.count”](https://geminicli.com/docs/cli/telemetry/#gemini_cliagentruncount)

Counts agent runs.

Attributes

- `agent_name` (string)
- `terminate_reason` (string)

##### `gemini_cli.agent.duration`

[Section titled “gemini\_cli.agent.duration”](https://geminicli.com/docs/cli/telemetry/#gemini_cliagentduration)

Measures agent run duration.

Attributes

- `agent_name` (string)

##### `gemini_cli.agent.turns`

[Section titled “gemini\_cli.agent.turns”](https://geminicli.com/docs/cli/telemetry/#gemini_cliagentturns)

Counts turns per agent run.

Attributes

- `agent_name` (string)

##### Approval mode

[Section titled “Approval mode”](https://geminicli.com/docs/cli/telemetry/#approval-mode-1)

##### `gemini_cli.plan.execution.count`

[Section titled “gemini\_cli.plan.execution.count”](https://geminicli.com/docs/cli/telemetry/#gemini_cliplanexecutioncount)

Counts plan executions.

Attributes

- `approval_mode` (string)

##### UI

[Section titled “UI”](https://geminicli.com/docs/cli/telemetry/#ui-1)

##### `gemini_cli.ui.flicker.count`

[Section titled “gemini\_cli.ui.flicker.count”](https://geminicli.com/docs/cli/telemetry/#gemini_cliuiflickercount)

Counts terminal flicker events.

##### Performance

[Section titled “Performance”](https://geminicli.com/docs/cli/telemetry/#performance)

Gemini CLI provides detailed performance metrics for advanced monitoring.

##### `gemini_cli.startup.duration`

[Section titled “gemini\_cli.startup.duration”](https://geminicli.com/docs/cli/telemetry/#gemini_clistartupduration)

Measures startup time by phase.

Attributes

- `phase` (string)
- `details` (map, optional)

##### `gemini_cli.memory.usage`

[Section titled “gemini\_cli.memory.usage”](https://geminicli.com/docs/cli/telemetry/#gemini_climemoryusage)

Measures heap and RSS memory.

Attributes

- `memory_type` (string: “heap\_used”, “heap\_total”, “external”, “rss”)
- `component` (string, optional)

##### `gemini_cli.cpu.usage`

[Section titled “gemini\_cli.cpu.usage”](https://geminicli.com/docs/cli/telemetry/#gemini_clicpuusage)

Measures CPU usage percentage.

Attributes

- `component` (string, optional)

##### `gemini_cli.tool.queue.depth`

[Section titled “gemini\_cli.tool.queue.depth”](https://geminicli.com/docs/cli/telemetry/#gemini_clitoolqueuedepth)

Measures tool execution queue depth.

##### `gemini_cli.tool.execution.breakdown`

[Section titled “gemini\_cli.tool.execution.breakdown”](https://geminicli.com/docs/cli/telemetry/#gemini_clitoolexecutionbreakdown)

Breaks down tool time by phase.

Attributes

- `function_name` (string)
- `phase` (string: “validation”, “preparation”, “execution”,
“result\_processing”)

#### GenAI semantic convention

[Section titled “GenAI semantic convention”](https://geminicli.com/docs/cli/telemetry/#genai-semantic-convention)

These metrics follow standard [OpenTelemetry GenAI semantic conventions](https://github.com/open-telemetry/semantic-conventions/blob/main/docs/gen-ai/gen-ai-metrics.md).

- `gen_ai.client.token.usage`: Counts tokens used per operation.
- `gen_ai.client.operation.duration`: Measures operation duration in seconds.

### Traces

[Section titled “Traces”](https://geminicli.com/docs/cli/telemetry/#traces)

Traces provide an “under-the-hood” view of agent and backend operations. Use
traces to debug tool interactions and optimize performance.

Every trace captures rich metadata via standard span attributes.

Standard span attributes

- `gen_ai.operation.name`: High-level operation (for example, `tool_call`,
`llm_call`, `user_prompt`, `system_prompt`, `agent_call`, or
`schedule_tool_calls`).
- `gen_ai.agent.name`: Set to `gemini-cli`.
- `gen_ai.agent.description`: The service agent description.
- `gen_ai.input.messages`: Input data or metadata.
- `gen_ai.output.messages`: Output data or results.
- `gen_ai.request.model`: Request model name.
- `gen_ai.response.model`: Response model name.
- `gen_ai.prompt.name`: The prompt name.
- `gen_ai.tool.name`: Executed tool name.
- `gen_ai.tool.call_id`: Unique ID for the tool call.
- `gen_ai.tool.description`: Tool description.
- `gen_ai.tool.definitions`: Tool definitions in JSON format.
- `gen_ai.usage.input_tokens`: Number of input tokens.
- `gen_ai.usage.output_tokens`: Number of output tokens.
- `gen_ai.system_instructions`: System instructions in JSON format.
- `gen_ai.conversation.id`: The CLI session ID.

For more details on semantic conventions for events, see the
[OpenTelemetry documentation](https://github.com/open-telemetry/semantic-conventions/blob/8b4f210f43136e57c1f6f47292eb6d38e3bf30bb/docs/gen-ai/gen-ai-events.md).

Last updated: Apr 21, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.