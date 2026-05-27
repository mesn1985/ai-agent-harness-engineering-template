# Task Feedforward Template

Use this file to define task-specific feedforward before implementation.

## 1. Task Overview

```text
- Task ID: <id>
- Owner: <name>
- Date: <YYYY-MM-DD>
- Requested by: <human or system>
```

## 2. Objective

```text
<Describe the behavior to build or change.>
```

## 3. Requirements

### Functional Requirements

```text
- <Requirement 1>
- <Requirement 2>
```

### Acceptance Criteria

```text
- Given <context>, when <action>, then <expected result>.
- Given <context>, when <action>, then <expected result>.
```

### Domain Rules and Edge Cases

```text
- <Rule or constraint>
- <Edge case>
```

## 4. Required Context

```text
- <path/to/file>
- <path/to/file>
```

## 5. Risk and Scope

```text
- Risk level: <low|medium|high|critical>
- Out of scope: <what not to change>
- Escalation boundaries: <what requires approval>
```

## 6. Required Sensors

### Computational

```text
- unit
- integration (if boundaries change)
- lint (if applicable)
- typecheck (if applicable)
- build (if applicable)
```

### Inferential

```text
- Requirement alignment
- Architecture fit
- Test quality
- Risk assessment
```

## 7. Expected Deliverables

```text
- Code changes
- Test changes
- Documentation changes
- Final report using harness/final-response-contract.md
```
