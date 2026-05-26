# Correction Policy

This file defines how the agent should respond to feedback.

---

## Automatic Correction Allowed

The agent may automatically correct:

```text
- Failing unit tests caused by its own implementation
- Type errors introduced by its own changes
- Lint errors introduced by its own changes
- Missing test cases for clearly specified behavior
- Documentation omissions related to its changes
```

---

## Correction Requires Escalation

The agent must escalate before correcting:

```text
- Ambiguous requirements
- Architecture boundary changes
- Database schema changes
- Authentication or authorization behavior
- Payment, billing, or financial behavior
- Data deletion, retention, or migration behavior
- Security-sensitive behavior
- Production deployment behavior
- Public API compatibility
```

---

## Stop Conditions

The agent must stop and ask for help if:

```text
- The same check fails after two correction attempts.
- Requirements conflict with existing behavior.
- Required context is missing.
- A security, privacy, or data integrity risk is detected.
- The task appears larger than approved scope.
- The agent needs permissions it does not have.
```

---

## Correction Loop

```text
Feedback received
→ Determine whether issue is local or systemic
→ If local and allowed, fix
→ Re-run relevant sensor
→ If fixed, continue
→ If repeated failure or high risk, escalate
```
