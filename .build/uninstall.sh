#!/usr/bin/env sh
set -e
scriptdir=$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>&1 > /dev/null && pwd)

for file in $(cat "$scriptdir/dotfiles.txt")
do
    rm -f "$HOME/$file"
done
