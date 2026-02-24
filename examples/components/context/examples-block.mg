---
name: examples-block
description: Injects few-shot examples into the prompt to guide the agent's response style and structure. Include before @effect run.
parameters: task_description (string) - Brief description of the task so the examples make sense in context.
             examples (list) - A list of objects, each with an "input" and "output" key.
---
<<
## Examples

To guide your response, here are some examples of the expected input/output pattern for: **${ task_description }**
>>
for example in examples:
  <<
  ---
  **Input**: ${ example.input }
  **Output**: ${ example.output }
  >>
<<
---
Follow the pattern above in your response.
>>

