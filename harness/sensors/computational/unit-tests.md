# Unit Test Sensor

## Purpose

Verify local behavior of functions, classes, modules, or components.

## When Required

Use this sensor when:

```text
- Business logic changes
- Validation logic changes
- Error handling changes
- Existing unit-tested behavior changes
```

## Command

```bash
./scripts/run-computational-sensors.sh unit
```

## Pass Condition

```text
All task-relevant unit tests pass.
```

## Failure Response

```text
- Read the failure output.
- Determine whether the failure is caused by the current task.
- Fix local implementation or test setup.
- Re-run the relevant tests.
- Stop after two failed correction attempts on the same failure.
```
