---
name: skill-refiner
description: Reviews and improves existing Claude skill files (SKILL.md) against Anthropic's best practices. Use this skill whenever a user shares a SKILL.md or skill folder, asks to "review", "refine", "improve", "audit", or "check" a skill, reports that a skill isn't triggering correctly, wants to fix skill descriptions or instructions, or asks why a skill isn't working. Also use when the user wants to make a skill trigger more reliably or reduce unwanted triggering. Proactively activate when any SKILL.md content appears in the conversation.
---

# Skill Refiner

Reviews and improves Claude skill files against Anthropic's official best practices.
The goal is actionable, specific feedback — not a checklist recitation.

## Process

### Step 1: Read the skill thoroughly

Read the full `SKILL.md` and any linked `references/` files. Understand:
- What the skill is trying to accomplish
- Who would use it and when
- What tools or MCPs it relies on
- What outputs it produces

### Step 2: Check structural requirements

These are hard requirements — if violated, the skill won't load at all:

- Folder name must be `kebab-case` (no spaces, no capitals, no underscores)
- Main file must be exactly `SKILL.md` (case-sensitive)
- No `README.md` inside the skill folder
- YAML frontmatter must have `---` delimiters on both ends
- `name` field: kebab-case only, matches folder name
- `description` field: under 1024 characters, no XML angle brackets (`< >`)
- Skills must not be named with "claude" or "anthropic" prefix (reserved)

### Step 3: Evaluate the description (most critical)

The description is the **only** triggering mechanism — Claude decides whether to use a skill based entirely on this field. A good description:

- States **what** the skill does (clear capability)
- States **when** to use it (specific trigger phrases users would actually say)
- Is specific enough to avoid irrelevant triggers
- Leans toward inclusion — undertriggering is usually worse than overtriggering
- Mentions file types or tool names if relevant

Use the framework: `[What it does] + [When to use it] + [Key capabilities]`

Read `references/description-examples.md` for good/bad examples and the triggering diagnosis guide.

### Step 4: Evaluate instruction quality

Good instructions:
- Are specific and actionable, not vague ("Before calling `create_project`, verify X, Y, Z" not "validate data")
- Explain *why* each important step matters — Claude follows reasoning better than commands
- Put critical requirements at the top
- Include error handling for predictable failures
- Use concrete examples for complex patterns
- Reference bundled files clearly (`references/api-patterns.md`) with guidance on when to read them

### Step 5: Check for context efficiency

- `SKILL.md` should stay under ~5,000 words; move detailed docs to `references/`
- Keep the frontmatter body (before `---`) minimal — it's always loaded
- Use progressive disclosure: SKILL.md for core workflow, `references/` for depth

### Step 6: Produce output

Provide:
1. **Quick assessment** (2-3 sentences on overall state)
2. **Issues** organized by severity:
   - 🔴 Critical (skill won't work)
   - 🟡 Important (skill works poorly)
   - 🟢 Nice-to-have (quality improvements)
3. **Improved SKILL.md** — a full rewrite incorporating all fixes

When rewriting:
- Preserve domain knowledge and intent
- Rewrite descriptions with real, specific trigger phrases
- Make instructions actionable with the *why* explained
- Don't add fluff or unnecessary structure

## Common Issues

### Undertriggering

Skill doesn't load when it should. Users manually invoke it; support questions arise about "when to use this."

**Diagnosis**: Ask Claude "When would you use the [skill name] skill?" — it will quote the description back. Missing keywords reveal the gap.

**Fixes**:
- Add more specific trigger phrases users would actually type
- Include synonyms, alternative phrasings, and colloquial forms
- Mention file extensions (`.fig`, `.csv`, `.docx`) if relevant
- Be "pushy" — err toward triggering on edge cases

### Overtriggering

Skill loads for irrelevant queries. Users disable it; outputs seem off-topic.

**Fixes**:
- Add negative conditions ("Do NOT use for simple X — use Y instead")
- Narrow the scope description
- Name competing skills explicitly to help Claude choose

### Instructions not followed

Skill loads but Claude doesn't execute properly. Inconsistent outputs, user corrections needed.

**Common causes**:
1. Instructions are buried — move critical steps to the top
2. Language is too vague — replace "validate properly" with specific checks
3. Too many `MUST`/`NEVER` directives without explanation — reframe with *why*
4. Skill is too long — move detail to `references/` and link clearly

**Advanced**: For critical validations, bundle a script in `scripts/` and tell the skill to run it. Code is deterministic; language instructions are not.
