ple---
name: tech-stack
description: Injects the project's technology stack so the agent produces stack-appropriate code and advice. Include when working on engineering tasks.
parameters: language (string) - Primary programming language (e.g. "Python", "TypeScript").
             framework (string) - Primary framework (e.g. "FastAPI", "Next.js", "Django").
             database (string) - Database technology (e.g. "PostgreSQL", "MongoDB", "SQLite").
             other_tools (list) - Other tools or libraries relevant to the project.
---
<<
## Technology Stack

You are working within the following technology stack. All code you write, review, or advise on **must** be consistent with these choices.

| Layer | Technology |
|---|---|
| Language | ${ language } |
| Framework | ${ framework } |
| Database | ${ database } |
>>
if other_tools != []:
  << **Additional tools in use**: >>
  for tool in other_tools:
    << - ${ tool } >>
<<
Do not suggest alternatives to the above stack unless explicitly asked to evaluate options.
>>

