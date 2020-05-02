#!/usr/bin/env bash
set -e

# Run `shellcheck` on all .sh files in the current filesystem subtree.
find . -name "*.sh" -exec shellcheck {} ";"
