---
name: output-format
description: Declares the expected output format for the agent's response. Include this before @effect run to shape how the agent responds.
parameters: format (string) - One of: "markdown", "json", "bullet-list", "step-by-step", "code-only".
             max_length (string) - Optional guidance on response length: "brief", "moderate", "detailed".
---
<<
## Output Format
>>
if format == "markdown":
  <<
  Respond in well-structured Markdown. Use headings (`##`, `###`) to organise sections, bullet lists for enumerations, and fenced code blocks (` ``` `) for all code samples.
  >>
if format == "json":
  <<
  Respond with valid JSON only. Do not include any prose outside the JSON block. Ensure all keys use `camelCase` and all string values are properly escaped.
  >>
if format == "bullet-list":
  <<
  Respond as a flat or nested bullet-point list only. No prose paragraphs. Each bullet should be a single, complete thought.
  >>
if format == "step-by-step":
  <<
  Respond as a numbered, step-by-step guide. Each step should be on its own line, clearly actionable, and in the correct order of execution.
  >>
if format == "code-only":
  <<
  Respond with code only. Place all code in a single fenced code block with the correct language tag. Do not include any explanation unless a comment is the only way to convey meaning.
  >>
<<
**Length guidance**: ${ max_length }
- brief: under 150 words
- moderate: 150–400 words
- detailed: as long as needed to be complete and accurate
>>

