#!/usr/bin/env sh
# Do a full installation, from scratch
set -e
scriptdir=$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>&1 > /dev/null && pwd)

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
