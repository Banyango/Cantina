---
name: coding-standards
description: Injects the team's coding standards and conventions. Include in all code generation, review, and refactoring workflows.
parameters: naming_convention (string) - Variable/function naming style: "snake_case", "camelCase", "PascalCase".
             test_framework (string) - The testing framework in use (e.g. "pytest", "jest", "RSpec").
             require_docstrings (string) - "yes" or "no" — whether public functions must have docstrings/JSDoc.
             max_function_lines (string) - Maximum recommended lines per function.
---
<<
## Coding Standards

All code you produce or review must conform to the following standards:

- **Naming convention**: `${ naming_convention }` for all variables, functions, and methods
- **Maximum function length**: ${ max_function_lines } lines — extract helpers if exceeded
- **Test framework**: `${ test_framework }` — all new functions must have corresponding tests
>>
if require_docstrings == "yes":
  <<
  - **Docstrings**: Required on all public functions, classes, and modules. Use the standard format for the language in use.
  >>
if require_docstrings == "no":
  <<
  - **Docstrings**: Optional — add them for complex or public-facing logic only.
  >>
<<
- **No dead code**: Do not leave commented-out code blocks in the output.
- **Error handling**: All I/O operations and external calls must have explicit error handling.
- **No magic numbers**: Use named constants instead of inline numeric or string literals.
>>

