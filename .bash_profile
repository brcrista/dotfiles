# macOS: from `brew install coreutils`
homebrew_coreutils_path="/usr/local/opt/coreutils/libexec/gnubin"
if [ -d $homebrew_coreutils_path ]
then
    PATH="$homebrew_coreutils_path:$PATH"
fi

# Put application-specific configuration here

# Finally, export PATH
export PATH

source .bashrc
