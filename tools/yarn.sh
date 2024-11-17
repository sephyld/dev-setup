# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html#_3-adding-tools-to-mise

if [[ $SELECTED_GUM_TOOLS != *"yarn"* ]]; then
    return;
fi

# check if already installed
if ~/.local/bin/mise ls | grep yarn && ! ~/.local/bin/mise ls yarn | grep missing > /dev/null; then
    echo "Yarn already installed"
    return;
fi

echo "Yarn not installed. Installing Yarn..."

~/.local/bin/mise use --global yarn@4.5

echo "`yarn -v`"

echo "Ruby and Ruby on Rails installed successfully."
