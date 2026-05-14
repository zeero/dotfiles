[Skip to content](https://geminicli.com/docs/get-started/gemini-3/#_top)

# Gemini 3 Pro and Gemini 3 Flash on Gemini CLI

Copy as MarkdownCopied!

Learn about how you can use Gemini 3 Pro and Gemini 3 Flash on Gemini CLI.

## How to get started with Gemini 3 on Gemini CLI

[Section titled “How to get started with Gemini 3 on Gemini CLI”](https://geminicli.com/docs/get-started/gemini-3/#how-to-get-started-with-gemini-3-on-gemini-cli)

Get started by upgrading Gemini CLI to the latest version:

```
npm install -g @google/gemini-cli@latest
```

If your version is 0.21.1 or later:

1. Run `/model`.
2. Select **Auto (Gemini 3)**.

For more information, see [Gemini CLI model selection](https://geminicli.com/docs/cli/model).

### Usage limits and fallback

[Section titled “Usage limits and fallback”](https://geminicli.com/docs/get-started/gemini-3/#usage-limits-and-fallback)

Gemini CLI will tell you when you reach your Gemini 3 Pro daily usage limit.
When you encounter that limit, you’ll be given the option to switch to Gemini
2.5 Pro, upgrade for higher limits, or stop. You’ll also be told when your usage
limit resets and Gemini 3 Pro can be used again.

Similarly, when you reach your daily usage limit for Gemini 2.5 Pro, you’ll see
a message prompting fallback to Gemini 2.5 Flash.

### Capacity errors

[Section titled “Capacity errors”](https://geminicli.com/docs/get-started/gemini-3/#capacity-errors)

There may be times when the Gemini 3 Pro model is overloaded. When that happens,
Gemini CLI will ask you to decide whether you want to keep trying Gemini 3 Pro
or fallback to Gemini 2.5 Pro.

### Model selection and routing types

[Section titled “Model selection and routing types”](https://geminicli.com/docs/get-started/gemini-3/#model-selection-and-routing-types)

When using Gemini CLI, you may want to control how your requests are routed
between models. By default, Gemini CLI uses **Auto** routing.

When using Gemini 3 Pro, you may want to use Auto routing or Pro routing to
manage your usage limits:

- **Auto routing:** Auto routing first determines whether a prompt involves a
complex or simple operation. For simple prompts, it will automatically use
Gemini 2.5 Flash. For complex prompts, if Gemini 3 Pro is enabled, it will use
Gemini 3 Pro; otherwise, it will use Gemini 2.5 Pro.
- **Pro routing:** If you want to ensure your task is processed by the most
capable model, use `/model` and select **Pro**. Gemini CLI will prioritize the
most capable model available, including Gemini 3 Pro if it has been enabled.

To learn more about selecting a model and routing, refer to
[Gemini CLI Model Selection](https://geminicli.com/docs/cli/model).

## How to enable Gemini 3 with Gemini CLI on Gemini Code Assist

[Section titled “How to enable Gemini 3 with Gemini CLI on Gemini Code Assist”](https://geminicli.com/docs/get-started/gemini-3/#how-to-enable-gemini-3-with-gemini-cli-on-gemini-code-assist)

If you’re using Gemini Code Assist Standard or Gemini Code Assist Enterprise,
enabling Gemini 3 Pro on Gemini CLI requires configuring your release channels.
Using Gemini 3 Pro will require two steps: administrative enablement and user
enablement.

To learn more about these settings, refer to
[Configure Gemini Code Assist release channels](https://developers.google.com/gemini-code-assist/docs/configure-release-channels).

### Administrator instructions

[Section titled “Administrator instructions”](https://geminicli.com/docs/get-started/gemini-3/#administrator-instructions)

An administrator with **Google Cloud Settings Admin** permissions must follow
these directions:

- Navigate to the Google Cloud Project you’re using with Gemini CLI for Code
Assist.
- Go to **Admin for Gemini** \> **Settings**.
- Under **Release channels for Gemini Code Assist in local IDEs** select
**Preview**.
- Click **Save changes**.

### User instructions

[Section titled “User instructions”](https://geminicli.com/docs/get-started/gemini-3/#user-instructions)

Wait for two to three minutes after your administrator has enabled **Preview**,
then:

- Open Gemini CLI.
- Use the `/settings` command.
- Set **Preview Features** to `true`.

Restart Gemini CLI and you should have access to Gemini 3.

## Next steps

[Section titled “Next steps”](https://geminicli.com/docs/get-started/gemini-3/#next-steps)

If you need help, we recommend searching for an existing
[GitHub issue](https://github.com/google-gemini/gemini-cli/issues). If you
cannot find a GitHub issue that matches your concern, you can
[create a new issue](https://github.com/google-gemini/gemini-cli/issues/new/choose).
For comments and feedback, consider opening a
[GitHub discussion](https://github.com/google-gemini/gemini-cli/discussions).

Last updated: Apr 10, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.