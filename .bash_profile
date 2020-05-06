# macOS: from `brew install coreutils`
homebrew_coreutils_path="/usr/local/opt/coreutils/libexec/gnubin"
if [ -d $homebrew_coreutils_path ]
then
    PATH="$homebrew_coreutils_path:$PATH"
fi

# Put application-specific configuration in .bash_profile.plugins
if [ -f .bash_profile.plugins ]
then
    source .bash_profile.plugins
fi

# Finally, export PATH
export PATH

source .bashrc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

