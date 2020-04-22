printf "bash $BASH_VERSION\n"

# Set prompt
PS1="$ "

export CLICOLOR=1 # enable colorized output for `ls`

# Enable shell options
shopt -s globstar
shopt -s cdspell
set -o vi

# Aliases
alias ll="ls -lah"
alias gits="git status"

mcd() {
    mkdir -p $1 && cd $_
}

# pip settings
export PIP_REQUIRE_VIRTUALENV=true 
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

gpip3() {
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}