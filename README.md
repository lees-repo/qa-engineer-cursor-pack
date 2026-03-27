# QA Engineer Cursor pack

A **Cursor**-oriented pack for **QA engineers**: **one context doc first**, **no endless rescans**, **safe defaults** (test layer over production core).

| Principle | How this pack works |
|-----------|---------------------|
| Context persistence | `QA-TEST-CONTEXT.md` as the single source of truth |
| Safe extension | Tests, fixtures, mocks, page objects |
| Avoid risky edits | Don’t patch `src/` for convenience |

## What you get

| Type | Name | Purpose |
|------|------|---------|
| **Rule** | `qa-engineer` | Always-on workflow (`alwaysApply: true`): scope first → read `QA-TEST-CONTEXT.md` → targeted code only → test-layer first. |
| **Skill** | `qa-test-agent` | Same workflow as a skill (optional if the rule is already installed). |
| **Template** | `templates/QA-TEST-CONTEXT.md` | Starter for your repo’s context doc. |

## Quick install (one-liner)

From your **project root** (replace `YOUR_ORG` / repo name after you fork or publish):

```bash
mkdir -p .cursor/rules && curl -sSL -o .cursor/rules/qa-engineer.mdc https://raw.githubusercontent.com/YOUR_ORG/qa-engineer-cursor-pack/main/rules/qa-engineer.mdc
```

Optional — add the skill:

```bash
mkdir -p .cursor/skills/qa-test-agent && curl -sSL -o .cursor/skills/qa-test-agent/SKILL.md https://raw.githubusercontent.com/YOUR_ORG/qa-engineer-cursor-pack/main/skills/qa-test-agent/SKILL.md
```

Copy the context template into your project (once):

```bash
curl -sSL -o QA-TEST-CONTEXT.md https://raw.githubusercontent.com/YOUR_ORG/qa-engineer-cursor-pack/main/templates/QA-TEST-CONTEXT.md
```

### Install scripts (if you cloned this repo)

From your **project root**, with the pack at `./qa-engineer-cursor-pack`:

```bash
QA_ENGINEER_REPO=https://github.com/YOUR_ORG/qa-engineer-cursor-pack ./qa-engineer-cursor-pack/scripts/install-rules.sh
QA_ENGINEER_REPO=https://github.com/YOUR_ORG/qa-engineer-cursor-pack ./qa-engineer-cursor-pack/scripts/install-skills.sh
```

## Using it

1. Add or fill **`QA-TEST-CONTEXT.md`** at the repo root (use the template above).
2. Ask Cursor for test plans, cases, automation help, or regression checks.
3. The agent should **use the doc first** and **avoid broad rescans**, and **prefer test code** over changing production unless you explicitly need a small seam.

## Share with your team

1. Push this repo to **your** GitHub (fork or copy the folder).
2. Replace `YOUR_ORG/qa-engineer-cursor-pack` in the commands above with your URL.
3. Optionally add the repo as a **Remote Rule** in Cursor (Settings → Rules → Add rule → GitHub) if you use Cursor’s remote rules feature.

## License

Use and adapt for your QA workflows.
