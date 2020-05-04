printf "bash $BASH_VERSION\n"

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
    mkdir -p $1 && cd $_
    pwd
}

# pip settings
export PIP_REQUIRE_VIRTUALENV=true 
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

gpip3() {
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}
