[Skip to content](https://geminicli.com/docs/cli/tutorials/web-tools/#_top)

# Web search and fetch

Copy as MarkdownCopied!

Access the live internet directly from your prompt. In this guide, you’ll learn
how to search for up-to-date documentation, fetch deep context from specific
URLs, and apply that knowledge to your code.

## Prerequisites

[Section titled “Prerequisites”](https://geminicli.com/docs/cli/tutorials/web-tools/#prerequisites)

- Gemini CLI installed and authenticated.
- An internet connection.

## How to research new technologies

[Section titled “How to research new technologies”](https://geminicli.com/docs/cli/tutorials/web-tools/#how-to-research-new-technologies)

Imagine you want to use a library released yesterday. The model doesn’t know
about it yet. You need to teach it.

### Scenario: Find documentation

[Section titled “Scenario: Find documentation”](https://geminicli.com/docs/cli/tutorials/web-tools/#scenario-find-documentation)

**Prompt:**`Search for the 'Bun 1.0' release notes and summarize the key changes.`

Gemini uses the `google_web_search` tool to find relevant pages and synthesizes
an answer. This “grounding” process ensures the agent isn’t hallucinating
features that don’t exist.

**Prompt:**`Find the documentation for the 'React Router v7' loader API.`

## How to fetch deep context

[Section titled “How to fetch deep context”](https://geminicli.com/docs/cli/tutorials/web-tools/#how-to-fetch-deep-context)

Search gives you a summary, but sometimes you need the raw details. The
`web_fetch` tool lets you feed a specific URL directly into the agent’s context.

### Scenario: Reading a blog post

[Section titled “Scenario: Reading a blog post”](https://geminicli.com/docs/cli/tutorials/web-tools/#scenario-reading-a-blog-post)

You found a blog post with the exact solution to your bug.

**Prompt:**`Read https://example.com/fixing-memory-leaks and explain how to apply it to my code.`

Gemini will retrieve the page content (stripping away ads and navigation) and
use it to answer your question.

### Scenario: Comparing sources

[Section titled “Scenario: Comparing sources”](https://geminicli.com/docs/cli/tutorials/web-tools/#scenario-comparing-sources)

You can even fetch multiple pages to compare approaches.

**Prompt:**`Compare the pagination patterns in https://api.example.com/v1/docs and https://api.example.com/v2/docs.`

## How to apply knowledge to code

[Section titled “How to apply knowledge to code”](https://geminicli.com/docs/cli/tutorials/web-tools/#how-to-apply-knowledge-to-code)

The real power comes when you combine web tools with file editing.

**Workflow:**

1. **Search:** “How do I implement auth with Supabase?”
2. **Fetch:** “Read this guide: [https://supabase.com/docs/guides/auth](https://supabase.com/docs/guides/auth).”
3. **Implement:** “Great. Now use that pattern to create an `auth.ts` file in
my project.”

## How to troubleshoot errors

[Section titled “How to troubleshoot errors”](https://geminicli.com/docs/cli/tutorials/web-tools/#how-to-troubleshoot-errors)

When you hit an obscure error message, paste it into the chat.

**Prompt:**`I'm getting 'Error: hydration mismatch' in Next.js. Search for recent solutions.`

The agent will search sources such as GitHub issues, StackOverflow, and forums
to find relevant fixes that might be too new to be in its base training set.

## Next steps

[Section titled “Next steps”](https://geminicli.com/docs/cli/tutorials/web-tools/#next-steps)

- Explore [File management](https://geminicli.com/docs/cli/tutorials/file-management) to see how to apply the code you
generate.
- See the [Web search tool reference](https://geminicli.com/docs/tools/web-search) for citation
details.
- See the [Web fetch tool reference](https://geminicli.com/docs/tools/web-fetch) for technical
limitations.

Last updated: Feb 13, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.