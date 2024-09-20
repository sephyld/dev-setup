#! /bin/bash

# refer to official docs if having issues
# https://github.com/tmux/tmux/wiki/Installing

# check if already installed
if which tmux > /dev/null; then
    echo "Tmux already installed. Showing version"
    echo "`tmux -V`"
    return;
fi

echo "Tmux not installed. Installing Tmux..."

sudo apt-get update
sudo apt-get install -y tmux


echo "`tmux -V`"

echo "Tmux installed successfully."