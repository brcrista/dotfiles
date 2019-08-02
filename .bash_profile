# Add the current directory to PATH
PATH=${PATH}:.
export PATH

# pip settings
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

gpip3() {
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

# Set prompt
PS1="$ "

alias ls="ls -G" # enable colorized output
alias clip=pbcopy # can never remember this one
