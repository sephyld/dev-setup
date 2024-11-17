#! /bin/bash

# refer to official docs if having issues

# check if already installed
if which stow > /dev/null; then
    echo "GNU Stow already installed. Showing version"
    echo "`stow --version`"
    return;
fi

echo "GNU Stow not installed. Installing GNU Stow..."

sudo apt-get update
sudo apt-get -y install stow


echo "`stow version`"

echo "GNU Stow installed successfully."