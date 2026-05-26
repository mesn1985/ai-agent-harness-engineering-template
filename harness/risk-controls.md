# Risk Controls

Risk controls define what level of autonomy the agent has.

---

## Risk Levels

### Low Risk

Examples:

```text
- Local documentation update
- Small UI copy change
- Simple unit test addition
- Local refactor with no behavior change
```

Controls:

```text
- Agent may implement and self-correct.
- Human review before merge is recommended.
```

---

### Medium Risk

Examples:

```text
- Standard feature implementation
- Bug fix with contained behavior change
- Internal API change
- Moderate refactor
```

Controls:

```text
- Agent may implement and self-correct.
- Human review required before merge.
- Escalate architectural ambiguity.
```

---

### High Risk

Examples:

```text
- Authentication or authorization change
- Database migration
- Public API change
- Payment or billing change
- Security-sensitive behavior
```

Controls:

```text
- Agent may investigate, draft, or propose changes.
- Human approval required before sensitive modification.
- Strong computational and inferential review required.
```

---

### Critical Risk

Examples:

```text
- Production deployment
- Data deletion
- Incident response action
- Rollback
- Access control modification
- Financial transaction behavior
```

Controls:

```text
- Agent should investigate, summarize, and propose.
- No autonomous change without explicit approval.
- Human decision required.
```
