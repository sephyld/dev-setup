#! /bin/bash

# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html

# check if already installed
if which ~/.local/bin/mise > /dev/null; then
    echo "Mise already installed. Showing version"
    echo "`~/.local/bin/mise -v`"
    return;
fi

echo "Mise not installed. Installing Mise..."

curl https://mise.run | sh
~/.local/bin/mise --version

echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc

echo "`~/.local/bin/mise -v`"

echo "~/.local/bin/mise installed successfully."

