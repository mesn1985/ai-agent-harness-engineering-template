#!/usr/bin/env sh
set -eu

printf '%s\n' "[preflight] Starting harness preflight checks"

required_files="AGENTS.md harness/feedforward.md harness/harness.yaml harness/correction-policy.md harness/risk-controls.md harness/final-response-contract.md"

for file in $required_files; do
  if [ -f "$file" ]; then
    printf '%s\n' "[preflight] OK: $file"
  else
    printf '%s\n' "[preflight] MISSING: $file" >&2
    exit 1
  fi
done

printf '%s\n' "[preflight] Complete"
