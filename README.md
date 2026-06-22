# Harness Engineering Project Template

A lightweight project skeleton for using **Harness Engineering** with AI coding agents.

Harness Engineering means surrounding an AI coding agent with:

- **Feedforward**: specifications, conventions, constraints, and required context.
- **Feedback sensors**: tests, linters, logs, metrics, review agents, and human review.
- **Hooks**: the scripts, CI jobs, log access, and workflows that connect the agent to feedback.
- **Correction loops**: rules for fixing, retrying, escalating, or stopping.

The goal is to make AI-agent work more reliable, reviewable, and governable.

Inspired by Birgitta Böckeler’s article:  
<https://martinfowler.com/articles/harness-engineering.html>

---

## Core Idea

```text
Feedforward → Agent Work → Feedback Sensors → Correction Loop
```

The agent should not work from a prompt alone. It should work inside a harness that defines:

1. what to build,
2. how to build it,
3. which checks to run,
4. how to interpret feedback,
5. when to self-correct,
6. when to escalate to a human.

---

## Project Structure

Current repository contents:

```text
.
├── AGENTS.md
├── README.md
├── docs/
│   └── README.md
├── evaluation/
│   └── rubric.md
├── harness/
│   ├── ai-agent-feedforward-template.md
│   ├── feedforward.md
│   ├── harness.yaml
│   ├── correction-policy.md
│   ├── risk-controls.md
│   ├── final-response-contract.md
│   ├── sensors/
│   └── hooks/
├── scripts/
│   ├── agent-preflight.sh
│   ├── run-computational-sensors.sh
│   └── agent-final-check.sh
├── src/
│   └── README.md
├── tasks/
│   ├── task-template.md
│   └── examples/
│       └── example-bugfix-task.md
└── tests/
	└── README.md
```

---

## Main Files

| File | Purpose |
|---|---|
| `AGENTS.md` | Main entrypoint for AI agents |
| `harness/feedforward.md` | Defines what to build, how to build it, and how to verify it |
| `harness/ai-agent-feedforward-template.md` | Optional AI-agent feedforward prompt template |
| `harness/harness.yaml` | Machine-readable harness configuration |
| `harness/correction-policy.md` | Defines fix, retry, escalation, and stop rules |
| `harness/risk-controls.md` | Defines autonomy limits by risk level |
| `harness/final-response-contract.md` | Defines what the agent must report when done |
| `tasks/task-template.md` | Template for task-specific feedforward |
| `scripts/run-computational-sensors.sh` | Placeholder command entrypoint for tests, lint, typecheck, and build |
| `evaluation/rubric.md` | Rubric for evaluating agent output and harness quality |

---

## How to Use

1. Copy this template into a new repository.
2. Fill out `harness/feedforward.md` with project-specific product and engineering guidance.
3. Configure `harness/harness.yaml` with real commands for your stack.
4. Create a task file from `tasks/task-template.md`.
5. Customize `scripts/run-computational-sensors.sh` with your stack commands.
6. Point the AI agent to `AGENTS.md`.
7. Require the agent to run the relevant sensors and follow the final response contract.

---

## Agent Workflow

```text
Read AGENTS.md
→ Read harness feedforward
→ Read task feedforward
→ Inspect required context
→ Make the smallest safe change
→ Run computational sensors
→ Perform inferential checks
→ Apply correction policy
→ Report results
```

---

## Computational and Inferential Sensors

**Computational sensors** are executable or measurable checks:

- unit tests,
- integration tests,
- type checks,
- linters,
- build checks,
- static analysis,
- logs,
- metrics.

**Inferential sensors** require judgment:

- requirement alignment review,
- architecture fit review,
- test quality review,
- risk assessment,
- human review,
- AI code review.

Both are needed. Computational sensors catch objective failures. Inferential sensors judge whether the work makes sense in context.

---

## Status

This is a starter template. Adapt it to your language, framework, CI system, observability tools, and team conventions. And LLM Resources such as context window
