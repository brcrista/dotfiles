#!/usr/bin/env bash
#
# The shebang line isn't necessary since this isn't executable,
# but it makes it convenient for running shellcheck.
# See also `make lint`.

echo "bash $BASH_VERSION"

# Set prompt
PS1="$ "

# Enable shell options
shopt -s globstar
shopt -s cdspell

# Aliases
alias e="echo"
alias ll="ls -lAh --color"
alias ls="ls --color"

alias up="cd .."
alias up1="up"
alias up2="cd ../.."
alias up3="cd ../../.."
alias up4="cd ../../../.."
alias up5="cd ../../../../.."
alias up6="cd ../../../../../.."
alias up7="cd ../../../../../../.."

alias gita="git add --all"
alias gitb="git branch --all"
alias gitd="git diff"
alias gitdc="git diff --cached"
alias gitl="git log --graph"
alias gits="git status"

mcd() {
    mkdir -p "$1" && (cd "$_" || return)
    pwd
}

# pip settings
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Put installation-specific configuration in .bashrc.plugins
if [ -f .bashrc.plugins ]
then
    # shellcheck disable=SC1091
    source .bashrc.plugins
fi
