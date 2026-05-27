# AI Agent Feedforward Template

> Use this file to define what the AI agent should build, how it should build it, which feedback sensors it must use, and how it should respond to feedback.

---

## 1. Task Metadata

```yaml
task_id: "<unique-task-id>"
title: "<short task title>"
owner: "<human owner or team>"
date: "<YYYY-MM-DD>"
system_or_repo: "<system, service, repository, or project name>"
agent_role: "<builder | reviewer | investigator | refactorer | tester | incident-assistant>"
risk_level: "<low | medium | high | critical>"
```

---

## 2. Objective

Describe the desired outcome in plain language.

```text
The agent should:
- <primary outcome>
- <secondary outcome>
- <what success looks like>
```

Example:

```text
The agent should implement password reset using a time-limited email link, including API support, validation, tests, and documentation.
```

---

## 3. Product Specification

Define **what should be built**.

### 3.1 Functional Requirements

```text
- <requirement 1>
- <requirement 2>
- <requirement 3>
```

### 3.2 Acceptance Criteria

```text
- Given <context>, when <action>, then <expected result>.
- Given <context>, when <action>, then <expected result>.
```

### 3.3 Domain Rules

```text
- <business/domain rule 1>
- <business/domain rule 2>
- <edge case or exception>
```

### 3.4 API / Interface Contracts

```text
Endpoint / function / interface:
- Input: <expected input>
- Output: <expected output>
- Errors: <expected error behavior>
- Compatibility requirements: <backward compatibility, versioning, etc.>
```

### 3.5 Non-Functional Requirements

```text
Performance:
- <latency, throughput, scaling expectations>

Security:
- <authentication, authorization, data protection expectations>

Reliability:
- <retry, timeout, idempotency, failure handling expectations>

Usability:
- <UX, clarity, accessibility, user-facing behavior>
```

---

## 4. Engineering Specification

Define **how the system should be built**.

### 4.1 Architecture Constraints

```text
- <architecture rule 1>
- <architecture rule 2>
- <dependency boundary>
- <forbidden shortcut or anti-pattern>
```

Example:

```text
- Keep business logic out of controllers.
- Use the existing service and repository layers.
- Do not introduce a new framework unless explicitly approved.
```

### 4.2 Coding Conventions

```text
- <naming convention>
- <file organization convention>
- <error handling convention>
- <logging convention>
- <testing convention>
```

### 4.3 Existing Patterns to Follow

```text
Reference files or modules:
- <path/to/example1>
- <path/to/example2>
- <path/to/test-example>
```

### 4.4 Constraints and Boundaries

```text
The agent may:
- <allowed action>
- <allowed action>

The agent must not:
- <forbidden action>
- <forbidden action>

The agent must ask for approval before:
- <approval-gated action>
- <approval-gated action>
```

---

## 5. Context the Agent Must Read First

List the files, docs, tickets, or system areas the agent should inspect before acting.

```text
Required context:
- <file, document, ticket, issue, ADR, README, or code area>
- <file, document, ticket, issue, ADR, README, or code area>

Optional context:
- <additional useful reference>
```

---

## 6. Required Outputs

Define what the agent must produce.

```text
The final output must include:
- <code change>
- <tests>
- <documentation>
- <migration>
- <configuration>
- <summary of changes>
- <known risks or limitations>
```

Example:

```text
The final output must include:
- Implementation code
- Unit tests
- Integration tests
- Updated API documentation
- A summary of changed files
- A note about any unresolved risks
```

---

## 7. Verification Feedforward

Define **which feedback sensors must be used, when they must be used, and how results should be interpreted**.

### 7.1 Computational Sensors

These are executable, measurable, or rule-based checks.

| Sensor | Required? | When to run | Command / Hook | Pass condition | Failure response |
|---|---:|---|---|---|---|
| Unit tests | Yes | After implementation | `<command>` | All relevant tests pass | Inspect failure, fix, rerun |
| Integration tests | Yes/No | Before final output | `<command>` | No regressions | Fix or escalate |
| Type check | Yes/No | Before final output | `<command>` | No type errors | Fix or escalate |
| Linter | Yes/No | Before final output | `<command>` | No lint errors | Fix or explain |
| Build check | Yes/No | Before final output | `<command>` | Build succeeds | Fix or escalate |
| Security scan | Yes/No | Before merge/deploy | `<command>` | No new high-risk findings | Escalate |
| Contract tests | Yes/No | For API changes | `<command>` | Contract preserved | Fix or escalate |
| Log query | Yes/No | Runtime/investigation | `<query or tool>` | No relevant error pattern | Investigate |
| Metrics check | Yes/No | Runtime/performance | `<dashboard/query>` | Within threshold | Investigate |
| Trace review | Yes/No | Runtime/debugging | `<tool/query>` | Expected flow observed | Investigate |

### 7.2 Inferential Sensors

These require judgment, reasoning, or interpretation.

| Sensor | Required? | Who/what performs it | Evaluation question | Escalation rule |
|---|---:|---|---|---|
| Requirement alignment review | Yes | Agent / human | Does the solution satisfy the intent? | Escalate if ambiguous |
| Architecture review | Yes/No | Agent / reviewer | Does this fit the system design? | Escalate if boundary is unclear |
| Code maintainability review | Yes | Agent / reviewer | Is the code simple, idiomatic, and maintainable? | Refactor or escalate |
| Test quality review | Yes | Agent / reviewer | Do tests cover meaningful behavior? | Add tests |
| Risk assessment | Yes/No | Agent / human | Could this break downstream behavior? | Escalate medium/high risk |
| Security judgment | Yes/No | Specialist / human | Are there security implications beyond scans? | Escalate |
| UX/domain judgment | Yes/No | Human / product | Does this make sense for users/domain? | Escalate |

---

## 8. Hooks

Define how the agent accesses tools, checks, logs, workflows, and approval gates.

| Hook | Purpose | How to trigger/access | Agent permission | Notes |
|---|---|---|---|---|
| Pre-commit hook | Local validation | `<command>` | Allowed | Run before final output |
| Test runner hook | Execute tests | `<command>` | Allowed | Use relevant test subset first |
| Log hook | Inspect runtime logs | `<tool/query>` | Read-only | Do not expose secrets |
| Metrics hook | Inspect service health | `<dashboard/query>` | Read-only | Use for performance/runtime tasks |
| Trace hook | Inspect request flow | `<tool/query>` | Read-only | Use for distributed failures |
| Security hook | Scan for vulnerabilities/secrets | `<command/tool>` | Allowed | Escalate high-risk findings |
| Deployment hook | Release control | `<workflow/tool>` | Approval required | Agent must not deploy unless allowed |
| Review hook | Human/specialist review | `<PR/review workflow>` | Required/optional | Use before merge |

---

## 9. Correction Policy

Define what the agent should do when feedback indicates a problem.

### 9.1 Automatic Correction Allowed

The agent may automatically correct:

```text
- Failing unit tests caused by its own implementation
- Type errors introduced by its own changes
- Lint errors introduced by its own changes
- Missing test cases for clearly specified behavior
- Documentation omissions related to its changes
```

### 9.2 Correction Requires Escalation

The agent must escalate before correcting:

```text
- Ambiguous requirements
- Architecture boundary changes
- Database schema changes
- Security-sensitive behavior
- Authentication or authorization logic
- Payment, billing, or financial logic
- Data deletion or migration logic
- Production deployment behavior
- Changes that affect public APIs or backward compatibility
```

### 9.3 Stop Conditions

The agent must stop and ask for help if:

```text
- The same check fails after <N> correction attempts
- Requirements conflict with existing system behavior
- Required context is missing
- A security or privacy risk is detected
- The task appears larger than the approved scope
- The agent would need permissions it does not have
```

---

## 10. Feedback Interpretation Rules

Define how the agent should interpret common outcomes.

```text
If unit tests fail:
- Read the failure output.
- Identify whether the failure is caused by the new change or pre-existing behavior.
- Fix only failures related to the task.
- Re-run the relevant tests.

If integration tests fail:
- Inspect service boundaries, test data, configuration, and contract assumptions.
- Do not rewrite broad integration behavior without approval.

If logs show runtime errors:
- Identify the error pattern.
- Correlate with recent changes.
- Distinguish root cause from symptoms.
- Propose a fix or escalation.

If requirements are ambiguous:
- Do not guess silently.
- State the ambiguity.
- Make a minimal safe assumption only if allowed by the risk level.
- Otherwise escalate.

If inferential review finds design concerns:
- Refactor if the concern is local and low-risk.
- Escalate if the concern affects architecture, data model, security, or public contracts.
```

---

## 11. Risk Controls

```text
Risk level: <low | medium | high | critical>

Special controls:
- <control 1>
- <control 2>
- <control 3>

Approval required for:
- <action 1>
- <action 2>
- <action 3>
```

Suggested default controls:

```text
Low risk:
- Agent may implement and self-correct.
- Human review before merge.

Medium risk:
- Agent may implement and self-correct.
- Human review required before merge.
- Escalate architectural uncertainty.

High risk:
- Agent may propose or draft changes.
- Human approval required before sensitive modifications.
- Strong computational and inferential review required.

Critical risk:
- Agent should investigate, summarize, and propose.
- No autonomous changes without explicit approval.
```

---

## 12. Final Response Requirements

When the agent finishes, it must report:

```text
Summary:
- <what changed>

Files changed:
- <file 1>
- <file 2>

Computational checks run:
- <check>: <pass/fail/not run>
- <check>: <pass/fail/not run>

Inferential checks performed:
- <review>: <result>

Risks:
- <known risk or limitation>

Escalations:
- <anything that requires human decision>

Next recommended action:
- <review, merge, run CI, deploy, clarify, etc.>
```

---

## 13. Minimal Version

Use this when the task is small.

```markdown
# Feedforward

## Objective
<what should be built or changed>

## Requirements
- <requirement>
- <requirement>

## Constraints
- <engineering constraint>
- <forbidden action>

## Required Context
- <file/doc/code area>

## Required Sensors
- Unit tests: <command>
- Type check: <command>
- Linter: <command>
- Other: <command or hook>

## Hooks
- Test runner: <command>
- Logs: <query/tool if relevant>

## Correction Rules
- Fix local test/type/lint failures.
- Escalate ambiguity, architecture changes, security-sensitive behavior, or repeated failures.

## Final Output
- Summary of changes
- Checks run and results
- Risks or unresolved questions
```

---

## 14. Example Filled-In Feedforward

```markdown
# Feedforward

## Objective
Implement password reset using a time-limited email link.

## Requirements
- Users can request a password reset email.
- Reset links expire after 30 minutes.
- Used reset links cannot be reused.
- The API returns standard error responses.

## Constraints
- Use the existing authentication service.
- Do not introduce a new auth library.
- Do not place business logic in controllers.
- Do not modify production email configuration.

## Required Context
- `src/auth/auth.service.*`
- `src/auth/auth.controller.*`
- `src/auth/token.service.*`
- `tests/auth/*`
- Existing password reset or email examples, if present

## Required Sensors
- Unit tests: `npm run test -- auth`
- Integration tests: `npm run test:integration -- auth`
- Type check: `npm run typecheck`
- Linter: `npm run lint`

## Hooks
- Test runner: local test command
- Logs: inspect authentication errors if integration tests fail
- Review: human review required before merge

## Correction Rules
- Fix failing auth tests caused by the change.
- Add missing tests for expiry and reuse prevention.
- Escalate if token storage or authentication architecture must change.
- Stop after two failed correction attempts on the same integration failure.

## Final Output
- Summary of implementation
- Files changed
- Tests added
- Checks run and results
- Risks, assumptions, and required human review points
```
