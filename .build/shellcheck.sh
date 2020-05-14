#!/usr/bin/env sh

# Find all files with an `sh` or `bash` shebang line
grep -rl "^#\!/usr/bin/env [bash|sh]" . | xargs shellcheck
