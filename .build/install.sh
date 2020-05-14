#!/usr/bin/env sh
# Do a full installation, from scratch
set -e

cp .bash_profile ~
cp .bashrc ~
cp .vimrc ~
cp .gitconfig ~

if [[ $(uname) == 'Darwin' ]]
then
    make brew-cli
    make brew
    make npm
    make conda
fi
