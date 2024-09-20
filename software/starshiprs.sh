#! /bin/bash

# refer to official docs if having issues
# https://starship.rs/guide/

# check if already installed
if which starship > /dev/null; then
    echo "Starship.rs already installed. Showing version"
    echo "`starship --version`"
    return;
fi

echo "Starship.rs not installed. Installing Starship.rs..."

curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
starship preset no-nerd-font -o ~/.config/starship.toml

echo "`starship --version`"


echo "Starship.rs installed successfully."