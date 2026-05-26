# Static Check Sensors

## Purpose

Verify type safety, style, formatting, dependency health, and known static issues.

## Commands

```bash
./scripts/run-computational-sensors.sh lint
./scripts/run-computational-sensors.sh typecheck
./scripts/run-computational-sensors.sh build
```

## Failure Response

```text
- Fix errors introduced by the current change.
- Do not refactor unrelated files unless required.
- Explain pre-existing failures if they block verification.
```
