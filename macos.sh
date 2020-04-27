#!/usr/bin/env bash
set -e

# Install Homebrew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install packages from Homebrew
bash brew.sh
