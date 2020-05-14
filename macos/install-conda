#!/usr/bin/env sh
set -e

# Download conda
install_script="$HOME/Downloads/install_miniconda.sh"
curl -L https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -o "$install_script"
chmod +x "$install_script"

# Install conda
conda_prefix="$HOME/miniconda"
"$install_script" -b -p "$conda_prefix"
rm "$install_script"

# Install Anaconda packages
PATH="$conda_prefix/condabin:$PATH"
conda install python --yes
conda install --file anaconda-packages.txt --yes

# Add conda and packages to PATH
conda init
conda config --set auto_activate_base false

# I don't want the base environment activated by default,
# so add the `bin` directory to PATH.
# Note that activating a conda environment does more than just set PATH.
# Packages can run scripts on environment activation as well.
# But for the things I install globally, it shouldn't really matter.
echo "PATH=\"$conda_prefix/bin:\$PATH\"" >> ~/.bash_profile.plugins
