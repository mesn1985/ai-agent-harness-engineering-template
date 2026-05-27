# Agent Output Evaluation Rubric

Use this rubric to evaluate harness compliance and engineering quality.

This file is a template.
Create a new evaluation document for each agent-generated pull request or task review instead of editing this base rubric.

## Intended Use

Use this rubric for pull requests or task reports produced with this harness.

For each review, copy this rubric into a new file (for example, in `evaluation/reviews/`) and complete that copy with task-specific notes and scores.

Apply it when you need a consistent way to answer:

- Did the solution actually satisfy the task?
- Did the agent follow harness rules and escalation boundaries?
- Is risk clearly understood and documented?

Recommended reviewers:

- Engineering reviewer for implementation and architecture fit
- Task owner or product reviewer for requirement alignment
- Security or platform reviewer for higher-risk changes

When to use it:

- Medium, high, and critical risk tasks
- Any change touching public APIs, data behavior, or security-sensitive logic
- Any task where harness compliance is required evidence for merge

When not to use it alone:

- As a replacement for automated checks
- As a replacement for domain-specific approval gates
- As a replacement for incident, security, or release checklists

## Scoring

| Category | 0 - Missing | 1 - Partial | 2 - Strong |
|---|---|---|---|
| Requirement alignment | Does not match task | Partially addresses task | Fully addresses task and criteria |
| Architecture fit | Violates boundaries | Minor boundary concerns | Fits existing boundaries and patterns |
| Test quality | No meaningful tests | Limited or shallow tests | Behavioral and edge-case coverage |
| Risk reporting | Risks omitted | Some risks reported | Risks, assumptions, mitigations explicit |
| Harness compliance | Sensors/report missing | Partial harness use | Required sensors and final contract followed |

## Score Interpretation

- 8-10: Ready for merge with normal review flow.
- 5-7: Needs targeted fixes before merge.
- 0-4: Not ready; requires major rework or escalation.

Do not merge high-risk or critical-risk changes based on score alone. Required approvals still apply.

## Review Workflow

1. Confirm the task context and intended behavior.
2. Review computational sensor evidence (tests, logs, reports, command output).
3. Apply rubric scores by category.
4. Document assumptions, risks, and required follow-ups.
5. Decide merge readiness and any escalation path.

## Review Notes

```text
- Overall score:
- Key strengths:
- Required follow-ups:
```
