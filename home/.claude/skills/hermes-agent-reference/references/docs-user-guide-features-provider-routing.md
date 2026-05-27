[Skip to main content](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#__docusaurus_skipToContent_fallback)

On this page

When using [OpenRouter](https://openrouter.ai/) as your LLM provider, Hermes Agent supports **provider routing** — fine-grained control over which underlying AI providers handle your requests and how they're prioritized.

OpenRouter routes requests to many providers (e.g., Anthropic, Google, AWS Bedrock, Together AI). Provider routing lets you optimize for cost, speed, quality, or enforce specific provider requirements.

## Configuration [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#configuration "Direct link to Configuration")

Add a `provider_routing` section to your `~/.hermes/config.yaml`:

```yaml
provider_routing:
  sort: "price"           # How to rank providers
  only: []                # Whitelist: only use these providers
  ignore: []              # Blacklist: never use these providers
  order: []               # Explicit provider priority order
  require_parameters: false  # Only use providers that support all parameters
  data_collection: null   # Control data collection ("allow" or "deny")
```

info

Provider routing only applies when using OpenRouter. It has no effect with direct provider connections (e.g., connecting directly to the Anthropic API).

## Options [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#options "Direct link to Options")

### `sort` [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#sort "Direct link to sort")

Controls how OpenRouter ranks available providers for your request.

| Value | Description |
| --- | --- |
| `"price"` | Cheapest provider first |
| `"throughput"` | Fastest tokens-per-second first |
| `"latency"` | Lowest time-to-first-token first |

```yaml
provider_routing:
  sort: "price"
```

### `only` [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#only "Direct link to only")

Whitelist of provider names. When set, **only** these providers will be used. All others are excluded.

```yaml
provider_routing:
  only:
    - "Anthropic"
    - "Google"
```

### `ignore` [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#ignore "Direct link to ignore")

Blacklist of provider names. These providers will **never** be used, even if they offer the cheapest or fastest option.

```yaml
provider_routing:
  ignore:
    - "Together"
    - "DeepInfra"
```

### `order` [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#order "Direct link to order")

Explicit priority order. Providers listed first are preferred. Unlisted providers are used as fallbacks.

```yaml
provider_routing:
  order:
    - "Anthropic"
    - "Google"
    - "AWS Bedrock"
```

### `require_parameters` [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#require_parameters "Direct link to require_parameters")

When `true`, OpenRouter will only route to providers that support **all** parameters in your request (like `temperature`, `top_p`, `tools`, etc.). This avoids silent parameter drops.

```yaml
provider_routing:
  require_parameters: true
```

### `data_collection` [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#data_collection "Direct link to data_collection")

Controls whether providers can use your prompts for training. Options are `"allow"` or `"deny"`.

```yaml
provider_routing:
  data_collection: "deny"
```

## Practical Examples [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#practical-examples "Direct link to Practical Examples")

### Optimize for Cost [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#optimize-for-cost "Direct link to Optimize for Cost")

Route to the cheapest available provider. Good for high-volume usage and development:

```yaml
provider_routing:
  sort: "price"
```

### Optimize for Speed [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#optimize-for-speed "Direct link to Optimize for Speed")

Prioritize low-latency providers for interactive use:

```yaml
provider_routing:
  sort: "latency"
```

### Optimize for Throughput [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#optimize-for-throughput "Direct link to Optimize for Throughput")

Best for long-form generation where tokens-per-second matters:

```yaml
provider_routing:
  sort: "throughput"
```

### Lock to Specific Providers [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#lock-to-specific-providers "Direct link to Lock to Specific Providers")

Ensure all requests go through a specific provider for consistency:

```yaml
provider_routing:
  only:
    - "Anthropic"
```

### Avoid Specific Providers [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#avoid-specific-providers "Direct link to Avoid Specific Providers")

Exclude providers you don't want to use (e.g., for data privacy):

```yaml
provider_routing:
  ignore:
    - "Together"
    - "Lepton"
  data_collection: "deny"
```

### Preferred Order with Fallbacks [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#preferred-order-with-fallbacks "Direct link to Preferred Order with Fallbacks")

Try your preferred providers first, fall back to others if unavailable:

```yaml
provider_routing:
  order:
    - "Anthropic"
    - "Google"
  require_parameters: true
```

## How It Works [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#how-it-works "Direct link to How It Works")

Provider routing preferences are passed to the OpenRouter API via the `extra_body.provider` field on every API call. This applies to both:

- **CLI mode** — configured in `~/.hermes/config.yaml`, loaded at startup
- **Gateway mode** — same config file, loaded when the gateway starts

The routing config is read from `config.yaml` and passed as parameters when creating the `AIAgent`:

```text
providers_allowed  ← from provider_routing.only
providers_ignored  ← from provider_routing.ignore
providers_order    ← from provider_routing.order
provider_sort      ← from provider_routing.sort
provider_require_parameters ← from provider_routing.require_parameters
provider_data_collection    ← from provider_routing.data_collection
```

tip

You can combine multiple options. For example, sort by price but exclude certain providers and require parameter support:

```yaml
provider_routing:
  sort: "price"
  ignore: ["Together"]
  require_parameters: true
  data_collection: "deny"
```

## Default Behavior [​](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing\#default-behavior "Direct link to Default Behavior")

When no `provider_routing` section is configured (the default), OpenRouter uses its own default routing logic, which generally balances cost and availability automatically.

Provider Routing vs. Fallback Models

Provider routing controls which **sub-providers within OpenRouter** handle your requests. For automatic failover to an entirely different provider when your primary model fails, see [Fallback Providers](https://hermes-agent.nousresearch.com/docs/user-guide/features/fallback-providers).

- [Configuration](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#configuration)
- [Options](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#options)
  - [`sort`](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#sort)
  - [`only`](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#only)
  - [`ignore`](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#ignore)
  - [`order`](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#order)
  - [`require_parameters`](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#require_parameters)
  - [`data_collection`](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#data_collection)
- [Practical Examples](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#practical-examples)
  - [Optimize for Cost](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#optimize-for-cost)
  - [Optimize for Speed](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#optimize-for-speed)
  - [Optimize for Throughput](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#optimize-for-throughput)
  - [Lock to Specific Providers](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#lock-to-specific-providers)
  - [Avoid Specific Providers](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#avoid-specific-providers)
  - [Preferred Order with Fallbacks](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#preferred-order-with-fallbacks)
- [How It Works](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#how-it-works)
- [Default Behavior](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing#default-behavior)