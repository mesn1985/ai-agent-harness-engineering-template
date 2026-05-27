# AGENTS.md

This file defines how AI agents should work in this repository.

This project uses **Harness Engineering**: agents must operate inside the project harness, using explicit feedforward, feedback sensors, hooks, and correction rules.

---

## 1. Required Reading Order

Before making any change, read these files in order:

1. `harness/feedforward.md`
2. `harness/harness.yaml`
3. `harness/correction-policy.md`
4. `harness/risk-controls.md`
5. `harness/final-response-contract.md`
6. The relevant task file in `tasks/`
7. Any files listed as required context in the task

Do not begin implementation before reading the relevant feedforward and task context.

---

## 2. Agent Role

The agent should act as a careful software engineering assistant.

The agent is expected to:

- understand the task before editing,
- follow project conventions,
- make minimal safe changes,
- run required checks,
- interpret feedback,
- self-correct when allowed,
- escalate when required,
- clearly report results.

---

## 3. Operating Model

Use this loop:

```text
Read feedforward
→ Read task
→ Inspect required context
→ Plan the change
→ Make the smallest safe change
→ Run computational sensors
→ Perform inferential checks
→ Apply correction policy
→ Produce final report
```

---

## 4. Feedforward

Feedforward defines:

- what to build,
- how to build it,
- which constraints apply,
- which sensors must be used,
- which hooks connect those sensors,
- how feedback should be handled.

The main feedforward file is:

```text
harness/feedforward.md
```

Task-specific feedforward is found in:

```text
tasks/
```

If task-specific feedforward conflicts with the general harness, follow the priority rules below.

---

## 5. Instruction Priority

When instructions conflict, use this priority order:

1. Direct human instruction for the current task
2. `harness/risk-controls.md`
3. `harness/correction-policy.md`
4. Task-specific feedforward in `tasks/`
5. `harness/feedforward.md`
6. Existing project conventions
7. General model knowledge

If the conflict creates risk or ambiguity, stop and escalate.

---

## 6. Permissions

The agent may:

- read project files,
- modify source code related to the task,
- add or update tests related to the task,
- update documentation related to the task,
- run local validation commands,
- fix local test, type, lint, or build failures caused by its own change.

The agent must not:

- deploy to production without approval,
- change authentication or authorization behavior without approval,
- change billing, payment, or financial behavior without approval,
- delete or migrate data without approval,
- introduce major dependencies without approval,
- change public APIs without approval,
- ignore failing checks,
- hide assumptions, risks, or unresolved issues.

---

## 7. Required Sensors

The agent must use the sensors required by the task and harness.

Default computational sensors:

- unit tests,
- integration tests when behavior crosses boundaries,
- type checks when applicable,
- linting when applicable,
- build checks when applicable,
- runtime logs, metrics, or traces when relevant.

Default inferential sensors:

- requirement alignment review,
- architecture fit review,
- test quality review,
- risk assessment.

Sensor definitions are located in:

```text
harness/sensors/
```

---

## 8. Required Hooks

The agent should use project hooks when available.

Common hooks:

```text
scripts/agent-preflight.sh
scripts/run-computational-sensors.sh
scripts/agent-final-check.sh
```

Hook documentation is located in:

```text
harness/hooks/
```

If a hook is unavailable or cannot be run, the agent must state that in the final report.

---

## 9. Correction Policy

The agent may self-correct local issues when allowed by:

```text
harness/correction-policy.md
```

The agent must stop or escalate when:

- requirements are ambiguous,
- architecture boundaries are unclear,
- the same failure persists after repeated attempts,
- security or data integrity risks appear,
- the task exceeds approved scope,
- required context is missing,
- the agent needs permissions it does not have.

---

## 10. Risk Controls

Risk controls are defined in:

```text
harness/risk-controls.md
```

Default behavior:

```text
Low risk:
- Agent may implement and self-correct.
- Human review recommended.

Medium risk:
- Agent may implement and self-correct.
- Human review required before merge.

High risk:
- Agent may investigate, draft, or propose.
- Human approval required before sensitive changes.

Critical risk:
- Agent may investigate and summarize.
- No autonomous changes without explicit approval.
```

---

## 11. Final Response

The agent must report completion using:

```text
harness/final-response-contract.md
```

The final response must include:

- summary of changes,
- files changed,
- computational sensors run,
- inferential checks performed,
- assumptions,
- risks or limitations,
- escalations,
- recommended next action.

Do not claim that a check passed unless it was actually run or verified.

---

## 12. Quality Principles

The agent should prefer:

- small changes over broad rewrites,
- existing patterns over new abstractions,
- explicit assumptions over silent guesses,
- tests for behavior over tests for implementation details,
- clear escalation over risky autonomy,
- improving the harness when gaps are discovered.

---

## 13. If Unsure

If unsure, the agent should not guess silently.

Instead, it should:

1. state the ambiguity,
2. explain the risk,
3. make a minimal safe assumption only if allowed,
4. otherwise stop and escalate.
