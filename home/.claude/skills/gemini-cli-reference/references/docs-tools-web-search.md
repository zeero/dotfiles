[Skip to content](https://geminicli.com/docs/tools/web-search/#_top)

# Web search tool (\`google\_web\_search\`)

Copy as MarkdownCopied!

The `google_web_search` tool allows the Gemini agent to retrieve up-to-date
information, news, and facts from the internet via Google Search.

## Technical reference

[Section titled “Technical reference”](https://geminicli.com/docs/tools/web-search/#technical-reference)

The agent uses this tool when your request requires knowledge of current events
or specific online documentation not available in its internal training data.

### Arguments

[Section titled “Arguments”](https://geminicli.com/docs/tools/web-search/#arguments)

- `query` (string, required): The search query to be executed.

## Technical behavior

[Section titled “Technical behavior”](https://geminicli.com/docs/tools/web-search/#technical-behavior)

- **Grounding:** Returns a generated summary based on search results.
- **Citations:** Includes source URIs and titles for factual grounding.
- **Processing:** The Gemini API processes the search results before returning a
synthesized response to the agent.

## Use cases

[Section titled “Use cases”](https://geminicli.com/docs/tools/web-search/#use-cases)

- Researching the latest version of a software library or API.
- Finding solutions to recent software bugs or security vulnerabilities.
- Retrieving news or documentation updated after the model’s knowledge cutoff.

## Next steps

[Section titled “Next steps”](https://geminicli.com/docs/tools/web-search/#next-steps)

- Follow the [Web tools guide](https://geminicli.com/docs/cli/tutorials/web-tools) for practical
usage examples.
- Explore the [Web fetch tool reference](https://geminicli.com/docs/tools/web-fetch) for direct URL access.

Last updated: Feb 13, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.