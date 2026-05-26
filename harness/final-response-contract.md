# Final Response Contract

When the agent finishes a task, it must report in this format.

```markdown
## Summary

- <What changed>

## Files Changed

- `<file>` — <why it changed>
- `<file>` — <why it changed>

## Computational Sensors Run

| Sensor | Command / Hook | Result | Notes |
|---|---|---|---|
| Unit tests | `<command>` | Pass/Fail/Not run | <notes> |
| Integration tests | `<command>` | Pass/Fail/Not run | <notes> |
| Lint | `<command>` | Pass/Fail/Not run | <notes> |
| Type check | `<command>` | Pass/Fail/Not run | <notes> |
| Build | `<command>` | Pass/Fail/Not run | <notes> |

## Inferential Checks

| Check | Result | Notes |
|---|---|---|
| Requirement alignment | Pass/Concern | <notes> |
| Architecture fit | Pass/Concern | <notes> |
| Test quality | Pass/Concern | <notes> |
| Risk assessment | Low/Medium/High/Critical | <notes> |

## Assumptions

- <Assumption>

## Risks / Limitations

- <Risk or limitation>

## Escalations

- <Anything requiring human decision>

## Next Recommended Action

- <Review, merge, run CI, deploy, clarify, etc.>
```
