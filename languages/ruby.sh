# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html#_3-adding-tools-to-mise

if [[ $SELECTED_GUM_LANGUAGES != *"Ruby"* ]]; then
    return;
fi

# check if already installed
if ~/.local/bin/mise ls | grep ruby && ! ~/.local/bin/mise ls ruby | grep missing > /dev/null; then
    echo "Ruby already installed"
    return;
fi

echo "Ruby not installed. Installing Ruby with its dependencies..."

~/.local/bin/mise use --global ruby@3.3

echo "`ruby -v`"

echo "Ruby and Ruby on Rails installed successfully."
