#!/usr/bin/env bash

# Install command-line tools for macOS using Homebrew.

brew update

# Install GNU versions of Unix tools (and some missing ones)
brew install coreutils
brew install findutils
brew install gnu-sed
brew install bash
brew install autoconf
brew install automake

coreutils_path="/usr/local/opt/coreutils/libexec/gnubin"
PATH="$coreutils_path:$PATH"
pushd $coreutils_path && ln -s ln -s ../../bin/gsed sed && popd
# TODO How can I route `man sed` to `man gsed`?

# Install scripting languages
brew cask install miniconda
brew install node

# Install other shell programs
brew install jq
brew install tree
npm install -g tldr

brew cleanup

export PATH
