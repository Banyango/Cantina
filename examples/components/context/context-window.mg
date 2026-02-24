---
name: context-window
description: Injects the live task context — the user's request and any supporting background. Always include this immediately before @effect run.
parameters: user_request (string) - The raw user request or task description.
             background (string) - Optional background information, e.g. previous conversation summary, system state, or relevant docs.
---
<<
## Task Context

**User request**:
${ user_request }
>>
if background != "":
  <<
  **Background / supporting context**:
  ${ background }
  >>

