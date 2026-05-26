# Integration Test Sensor

## Purpose

Verify that components, services, APIs, databases, or external boundaries work together.

## When Required

Use this sensor when:

```text
- API behavior changes
- Database behavior changes
- Multiple components interact
- External service boundaries are involved
```

## Command

```bash
./scripts/run-computational-sensors.sh integration
```

## Pass Condition

```text
All task-relevant integration tests pass.
```

## Failure Response

```text
- Inspect the failing boundary.
- Check configuration, fixtures, contracts, and data assumptions.
- Fix only task-related failures.
- Escalate if the failure implies architecture or contract uncertainty.
```
