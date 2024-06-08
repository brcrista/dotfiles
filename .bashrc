#!/usr/bin/env bash
#
# The shebang line isn't necessary since this isn't executable,
# but it makes it convenient for running shellcheck.
# See also `make lint`.

echo "bash $BASH_VERSION"

# Set prompt
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null
then
    # We have color support; assume it's compliant with Ecma-48 (ISO/IEC-6429).
    # Lack of such support is extremely rare, and such a case
    # would tend to support setf rather than setaf.
    color_prompt=yes
else
    color_prompt=
fi

if [ "$color_prompt" = "yes" ]
then
    foreground_green="\\[\\033[01;32m\\]"
    reset="\\[\\033[0m\\]"
    PS1="$foreground_green\$$reset "
else
    PS1="\$ "
fi

# Enable shell options
shopt -s globstar
shopt -s cdspell

# This *should* be the default, but I've seen cases where it isn't.
# This is what made all directories highlighted green in WSL.
umask 0022

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
    mkdir -p "$1"
    cd "$_" || return
    pwd
}

py() {
    python3 -c "from pprint import pprint; pprint($1)"
}

# pip settings
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Put installation-specific configuration in .bashrc.plugins
if [ -f .bashrc.plugins ]
then
    # shellcheck disable=SC1091
    source .bashrc.plugins
fi
