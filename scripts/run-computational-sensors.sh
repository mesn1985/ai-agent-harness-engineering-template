#!/usr/bin/env sh
set -eu

sensor="${1:-all}"

print_not_configured() {
  name="$1"
  printf '%s\n' "[placeholder] ${name} not configured yet."
  printf '%s\n' "[placeholder] Run your ${name} command from this script (for example: test, lint, typecheck, build, or contract checks)."
  printf '%s\n' "[placeholder] A computational sensor can also read logs, metrics, traces, or generated reports."
  printf '%s\n' "[placeholder] Record evidence from command output, log files, and report artifacts."
  printf '%s\n' "[placeholder] Update scripts/run-computational-sensors.sh with project-specific commands."
}

run_sensor() {
  case "$1" in
    unit|integration|lint|typecheck|build)
      print_not_configured "$1"
      ;;
    *)
      printf '%s\n' "Unknown sensor: $1" >&2
      printf '%s\n' "Supported sensors: unit integration lint typecheck build all" >&2
      return 1
      ;;
  esac
}

if [ "$sensor" = "all" ]; then
  run_sensor unit
  run_sensor integration
  run_sensor lint
  run_sensor typecheck
  run_sensor build
else
  run_sensor "$sensor"
fi
