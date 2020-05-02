#!/usr/bin/env bash
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
echo "PATH=$conda_prefix/bin:$conda_prefix/condabin:\$PATH" >> ~/.bash_profile.plugins
