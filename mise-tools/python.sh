# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html#_3-adding-tools-to-mise

# check if already installed
if ~/.local/bin/mise ls | grep python && ! ~/.local/bin/mise ls python | grep missing > /dev/null; then
    echo "Python already installed"
    return;
fi

echo "Python not installed. Installing Python..."

~/.local/bin/mise install python@3.11
~/.local/bin/mise use --global python@3.11

echo "`python --version`"

echo "Python installed successfully."