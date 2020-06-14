#!/usr/bin/env bash
#
# The shebang line isn't necessary since this isn't executable,
# but it makes it convenient for running shellcheck.
# See also `make lint`.

if [ "$(which brew)" ]
then
    # macOS: from `brew install coreutils`
    homebrew_coreutils_path="$(brew --prefix)/opt/coreutils/libexec/gnubin"
    if [ -d "$homebrew_coreutils_path" ]
    then
        PATH="$homebrew_coreutils_path:$PATH"
    fi

    # macOS: from `brew install gnu-sed`
    homebrew_gsed_path="$(brew --prefix)/opt/gnu-sed/libexec/gnubin"
    if [ -d "$homebrew_gsed_path" ]
    then
        PATH="$homebrew_gsed_path:$PATH"
    fi
fi

# Put installation-specific configuration in .bash_profile.plugins
if [ -f .bash_profile.plugins ]
then
    # shellcheck disable=SC1091
    source .bash_profile.plugins
fi

# Miniconda, for example, will put things in its `bin` directory that shadow things in `/usr/local/bin`
if [ -d "$HOME/.bin-override" ]
then
    PATH="$HOME/.bin-override:$PATH"
fi

# Finally, export PATH
export PATH

source .bashrc
