---
name: qa-test-agent
description: Plans and executes QA work from QA-TEST-CONTEXT.md first; avoids broad codebase rescans; prefers tests and fixtures over production edits. Use when writing test cases, debugging failures, doing regression or release checks, or when the user asks for QA-style validation.
---

# QA test agent

Same workflow as the **qa-engineer** project rule, in skill form: use `QA-TEST-CONTEXT.md`, then targeted code only if needed; test-layer first; minimal production changes.

## Workflow

1. Clarify goal, environment, and acceptance criteria.
2. Read `QA-TEST-CONTEXT.md` at project root (create or update if missing).
3. Answer or plan tests from the doc; scan code narrowly only when the doc is insufficient.
4. Prefer tests, fixtures, and seams over editing application core.
