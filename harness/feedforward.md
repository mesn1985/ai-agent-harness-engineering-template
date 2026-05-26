# Harness Feedforward

Feedforward defines what the agent should build, how it should build it, and how the result should be verified.

---

## 1. Project Objective

```text
<Describe the product, service, or system this project exists to build.>
```

---

## 2. Product Specification

### Functional Requirements

```text
- <Requirement 1>
- <Requirement 2>
- <Requirement 3>
```

### Acceptance Criteria

```text
- Given <context>, when <action>, then <expected result>.
- Given <context>, when <action>, then <expected result>.
```

### Domain Rules

```text
- <Domain rule 1>
- <Domain rule 2>
- <Edge case or exception>
```

### API / Interface Contracts

```text
- Input:
- Output:
- Error behavior:
- Compatibility requirements:
```

---

## 3. Engineering Specification

### Architecture

```text
- <Architecture rule>
- <Layering rule>
- <Dependency boundary>
```

### Coding Conventions

```text
- <Naming convention>
- <Error handling convention>
- <Logging convention>
- <Testing convention>
```

### Existing Patterns to Follow

```text
- <path/to/example>
- <path/to/example-test>
```

### Forbidden Actions

```text
- <Action the agent must not take>
- <Action requiring approval>
```

---

## 4. Verification Specification

The agent must use the feedback sensors defined in:

- `harness/sensors/computational/`
- `harness/sensors/inferential/`

Default required computational sensors:

```text
- Unit tests
- Integration tests when behavior crosses component boundaries
- Type check, if applicable
- Lint, if applicable
- Build check, if applicable
```

Default required inferential sensors:

```text
- Requirement alignment review
- Architecture fit review
- Risk assessment
- Test quality review
```

---

## 5. Hook Specification

Hooks are defined in `harness/hooks/`.

Default hooks:

```text
- Preflight hook
- Test runner hook
- CI hook
- Log hook, if runtime behavior is involved
- Review hook
```

---

## 6. Completion Criteria

The task is complete only when:

```text
- The required output has been produced.
- Required computational checks have passed or failures are explained.
- Required inferential checks have been performed.
- Risks and assumptions are reported.
- Escalation rules have been followed.
```
