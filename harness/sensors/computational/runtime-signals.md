# Runtime Signal Sensors

## Purpose

Use logs, metrics, and traces to evaluate runtime behavior.

## When Required

Use this sensor when:

```text
- Investigating incidents
- Debugging production-like failures
- Changing performance-sensitive behavior
- Changing service-to-service interactions
```

## Signals

```text
Logs:
- Known error patterns
- Unexpected exceptions
- Authentication or validation failures

Metrics:
- Error rate
- Latency
- Throughput
- Memory or CPU
- Queue depth

Traces:
- Request path
- Downstream failures
- Slow spans
- Retries and timeouts
```

## Failure Response

```text
- Distinguish symptoms from likely root cause.
- Correlate with recent changes.
- Do not deploy or roll back without approval unless explicitly permitted.
```
