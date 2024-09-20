# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html#_3-adding-tools-to-mise

# check if already installed
if ~/.local/bin/mise ls | grep go && ! ~/.local/bin/mise ls go | grep missing > /dev/null; then
    echo "Golang already installed"
    return;
fi

echo "Golang not installed. Installing Golang..."

~/.local/bin/mise install go@1.23.1
~/.local/bin/mise use --global go@1.23.1

echo "`go version`"

echo "Golang installed successfully."