# Component Library

This directory contains a shared library of reusable Margarita prompt components. Each component is a single-responsibility `.mg` file that can be mixed and matched via `[[ include ]]` syntax to assemble team-specific agent prompts.

---

## Directory Structure

```
components/
├── persona/                   # Who the agent is
│   ├── role.mg                # Job title, team, and mission statement
│   └── expertise.mg           # Primary skill + secondary skills list
│
├── style/                     # How the agent communicates
│   ├── tone.mg                # professional / friendly / technical / concise / educational
│   └── output-format.mg       # markdown / json / bullet-list / step-by-step / code-only
│
├── rules/                     # What the agent must and must not do
│   ├── safety-rules.mg        # Guardrails at low / medium / high sensitivity
│   └── escalation-policy.mg   # When and how to escalate to a human
│
├── context/                   # What the agent is working on
│   ├── context-window.mg      # User request + background information
│   └── examples-block.mg      # Few-shot input/output examples
│
├── domain/                    # Domain-specific knowledge
│   ├── tech-stack.mg          # Language, framework, database, other tools
│   ├── coding-standards.mg    # Naming, tests, docstrings, function length
│   └── support-kb.mg          # Product policies, SLA, and known issues
│
└── teams/                     # Team-assembled agents (mix-and-match examples)
    ├── platform-eng-code-review.mgx    # Platform Engineering: PR reviewer
    ├── customer-success-triage.mgx     # Customer Success: support triage
    ├── data-team-sql-generator.mgx     # Data & Analytics: SQL query generator
    └── content-team-blog-draft.mgx     # Content & Marketing: blog post drafter
```

---

## How It Works

Each component file contains one focused piece of a prompt. Team agents in the `teams/` folder compose them using `[[ ]]` include syntax:

```margaritascript
// Assemble a persona
[[ ../components/persona/role.mg role_title="Data Analyst" team="Data" mission="..." ]]
[[ ../components/persona/expertise.mg primary_skill="SQL" secondary_skills=["dbt", "Looker"] ]]

// Add domain knowledge
[[ ../components/domain/tech-stack.mg language="SQL" framework="dbt" database="postgresql" other_tools=[] ]]

// Set the communication style
[[ ../components/style/tone.mg style="educational" ]]
[[ ../components/style/output-format.mg format="markdown" max_length="detailed" ]]

// Inject task context and run
[[ ../components/context/context-window.mg user_request="${question}" background="${ schema }" ]]

@effect run
```

---

## Mix-and-Match Guide

Different teams pull different combinations of components:

| Team | Persona | Domain | Style | Rules | Context |
|---|---|---|---|---|---|
| Platform Engineering | `role` + `expertise` | `tech-stack` + `coding-standards` | `technical` tone + `markdown` | `safety-rules` (medium) | `context-window` |
| Customer Success | `role` + `expertise` | `support-kb` | `friendly` tone + `markdown` | `safety-rules` (high) + `escalation-policy` | `context-window` |
| Data & Analytics | `role` + `expertise` | `tech-stack` | `educational` tone + `markdown` | — | `examples-block` + `context-window` |
| Content & Marketing | `role` + `expertise` | — | `educational` tone + `markdown` | — | `examples-block` + `context-window` |

---

## Adding a New Component

1. Choose the right category directory (`persona/`, `style/`, `rules/`, `context/`, `domain/`).
2. Create a new `.mg` file with a clear `description` and `parameters` frontmatter.
3. Keep the component **single-responsibility** — one concern per file.
4. Use `if` / `for` blocks to handle variation within the component rather than creating many similar files.
5. Document the new component in the table above.

## Adding a New Team Agent

1. Create a new `.mgx` file in `teams/`.
2. Start with the `[[ ]]` includes in this order: persona → domain → style → rules → context.
3. Add any team-specific prompt logic after the includes.
4. End with `@effect run`.
5. List the assembled components in the file's `description` frontmatter so it's easy to audit at a glance.

