#!/usr/bin/env bash
# Do a full installation, from scratch
set -e
scriptdir=$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>&1 > /dev/null && pwd)

# Disable shellcheck warning for reading words instead of lines
# shellcheck disable=SC2013
for file in $(cat "$scriptdir/dotfiles.txt")
do
    ln -s "$(realpath "$file")" "$HOME"
done

if [[ $(uname) == 'Darwin' ]]
then
    make brew-cli
    make brew
    make npm
    make conda
fi
