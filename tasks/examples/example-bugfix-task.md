# Example Task: Validation Bug Fix

## 1. Task Overview

```text
- Task ID: EX-001
- Owner: AI agent
- Date: 2026-05-27
- Requested by: maintainer
```

## 2. Objective

```text
Fix an input validation bug where empty IDs pass a guard clause.
```

## 3. Requirements

### Functional Requirements

```text
- Reject empty or whitespace-only IDs.
- Return the existing validation error shape.
```

### Acceptance Criteria

```text
- Given an empty ID, when validation runs, then an error is returned.
- Given a non-empty ID, when validation runs, then validation passes.
```

### Domain Rules and Edge Cases

```text
- Trim leading and trailing whitespace before validation.
- Keep public API contract unchanged.
```

## 4. Required Context

```text
- src/validators/id-validator.ts
- tests/id-validator.test.ts
```

## 5. Risk and Scope

```text
- Risk level: medium
- Out of scope: API redesign, auth behavior, schema migrations
- Escalation boundaries: any public API compatibility concern
```

## 6. Required Sensors

### Computational

```text
- unit
- lint
- typecheck
```

### Inferential

```text
- Requirement alignment
- Architecture fit
- Test quality
- Risk assessment
```
