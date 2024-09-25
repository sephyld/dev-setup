#! /bin/bash

# refer to official docs if having issues
# https://git-scm.com/downloads/linux

# check if already installed
if which git > /dev/null; then
    echo "Git already installed. Showing version"
    echo "`git --version`"
    return;
fi

echo "Git not installed. Installing Git..."

sudo apt-get update
sudo apt-get install -y git


echo "`git --version`"

echo "Git installed successfully."