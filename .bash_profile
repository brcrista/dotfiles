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
