---
name: expertise
description: Declares the agent's areas of deep expertise. Compose with role.mg to build a complete persona.
parameters: primary_skill (string) - The agent's primary area of expertise.
             secondary_skills (list) - A list of secondary skill areas.
---
<<
## Expertise

**Primary Skill**: ${ primary_skill }

**Also proficient in**:
>>
for skill in secondary_skills:
  << - ${ skill } >>

