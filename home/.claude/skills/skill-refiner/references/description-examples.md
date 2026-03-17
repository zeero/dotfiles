# Description Examples and Triggering Guide

## Structure formula

```
[What it does] + [When to use it] + [Key capabilities]
```

## Good descriptions

```yaml
# Specific + trigger phrases + file type
description: Analyzes Figma design files and generates developer handoff documentation.
  Use when user uploads .fig files, asks for "design specs", "component documentation",
  or "design-to-code handoff".

# Clear scope + trigger phrases + competing skill callout
description: Advanced CSV data analysis for statistical modeling, regression, and clustering.
  Use for complex data science tasks. Do NOT use for simple data viewing or basic
  spreadsheet work (use the xlsx skill instead).

# Value-focused + specific triggers
description: End-to-end customer onboarding workflow for PayFlow. Handles account
  creation, payment setup, and subscription management. Use when user says
  "onboard new customer", "set up subscription", or "create PayFlow account".
```

## Bad descriptions

```yaml
# Too vague — no triggers
description: Helps with projects.

# Missing triggers — describes capability but not when
description: Creates sophisticated multi-page documentation systems.

# Too technical — no user-facing triggers
description: Implements the Project entity model with hierarchical relationships.
```

## Diagnosing trigger issues

**Test undertriggering**: Ask Claude "When would you use the [skill name] skill?"
Claude will quote the description back. If the trigger phrases you expect are missing
from the response, they're missing from the description.

**Test overtriggering**: Ask Claude about something unrelated. If the skill loads,
the description is too broad — add negative conditions or narrow the scope.

**Calibrating "pushiness"**: Skills tend to undertrigger more than overtrigger.
When in doubt, make the description slightly more inclusive. Add phrases like:
"Also use when..." or "Use even if the user doesn't explicitly mention [skill name]."

## Negative trigger examples

Useful when skill competes with similar skills or has a narrow scope:

```yaml
description: ... Do NOT use for simple data exploration (use data-viz skill instead).
description: ... Use specifically for online payment workflows, not general financial queries.
description: ... Activates for PDF files only, not for .docx or .txt files.
```
