# 4D Copilot Skills

This directory contains focused GitHub Copilot skills for 4D development. Each skill is discovered from its `SKILL.md` file and loaded when relevant.

| Skill | Use for |
|---|---|
| [`4d-development`](./4d-development/SKILL.md) | 4D syntax, methods, classes, variables, types, and coding conventions |
| [`4d-forms`](./4d-forms/SKILL.md) | Forms, form classes, events, UI state, and the bundled form schema |
| [`4d-error-handling`](./4d-error-handling/SKILL.md) | 4D syntax-checker and dependency-recognition issues |
| [`4d-catalog-editing`](./4d-catalog-editing/SKILL.md) | Editing `catalog.4DCatalog` XML |
| [`4d-testing`](./4d-testing/SKILL.md) | Running tests with `tool4d` |

## Installation

Copy the `.agents/skills` directory into the root of your 4D project. The resulting layout should be:

```text
YourProject/
└── .agents/
    └── skills/
        ├── 4d-development/
        │   ├── SKILL.md
        │   └── references/
        │       └── guidelines.md
        ├── 4d-forms/
        │   ├── SKILL.md
        │   ├── formsSchema.json
        │   └── references/
        │       └── guidelines.md
        ├── 4d-error-handling/
        │   └── SKILL.md
        ├── 4d-catalog-editing/
        │   └── SKILL.md
        └── 4d-testing/
            └── SKILL.md
```

These are on-demand skills, not always-on file instructions: Copilot loads a skill when its description matches the task. You can also invoke one explicitly by name.

The core 4D development guidelines were initialized and inspired by [e-marchand/instructions](https://github.com/e-marchand/instructions).

See [LICENSE](./LICENSE) for licensing information.
