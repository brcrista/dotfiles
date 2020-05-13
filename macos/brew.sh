#!/usr/bin/env bash

# Install command-line tools for macOS using Homebrew.
set -e

brew update

# Install GNU versions of Unix tools (and some missing ones)
brew install coreutils
brew install findutils
brew install gnu-sed
brew install bash
brew install autoconf
brew install automake
brew install shellcheck

PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
# TODO How can I route `man sed` to `man gsed`?

# Install scripting languages
brew install node

# Install other shell programs
brew install jq
brew install tree
npm install -g tldr

brew cleanup

export PATH
