#!/usr/bin/env bash
set -e
scriptdir=$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>&1 > /dev/null && pwd)

repo_root=$(dirname "$scriptdir")

# Disable shellcheck warning for reading words instead of lines
# shellcheck disable=SC2013
for file in $(cat "$scriptdir/dotfiles.txt")
do
    # Some systems will have, say, a `.bash_profile` by default,
    # so pass -f to overwrite
    ln -sf "$repo_root/$file" "$HOME"
done
