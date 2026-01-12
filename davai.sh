#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
name="${0##*/}"
exec -a "$name" "$SCRIPT_DIR/ralph" "$@"
