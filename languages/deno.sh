# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html#_3-adding-tools-to-mise

if [[ $SELECTED_GUM_LANGUAGES != *"Deno"* ]]; then
    return;
fi

# check if already installed
if ~/.local/bin/mise ls | grep deno && ! ~/.local/bin/mise ls deno | grep missing > /dev/null; then
    echo "Deno already installed"
    return;
fi

echo "Deno not installed. Installing Deno..."

~/.local/bin/mise use --global deno@2.0

echo "`deno -v`"

echo "Deno installed successfully."
