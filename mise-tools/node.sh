# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html#_3-adding-tools-to-mise

# check if already installed
if ~/.local/bin/mise ls | grep node && ! ~/.local/bin/mise ls node | grep missing > /dev/null; then
    echo "Node already installed"
    return;
fi

echo "Node not installed. Installing Node..."

~/.local/bin/mise install node@22.9.0
~/.local/bin/mise use --global node@22.9.0

echo "`node -v`"

echo "Nodejs installed successfully."