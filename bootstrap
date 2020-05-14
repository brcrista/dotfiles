#!/usr/bin/env bash
# Do a full installation, from scratch
set -e

make install

if [[ $(uname) == 'Darwin' ]]
then
    make brew-cli
    make brew
    make npm
    make conda
fi
