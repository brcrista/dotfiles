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

# Put installation-specific configuration in .bash_profile.plugins
if [ -f .bash_profile.plugins ]
then
    source .bash_profile.plugins
fi

# Finally, export PATH
export PATH

source .bashrc
