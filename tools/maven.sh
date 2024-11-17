# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html#_3-adding-tools-to-mise

if [[ $SELECTED_GUM_TOOLS != *"maven"* ]]; then
    return;
fi

# check if already installed
if ~/.local/bin/mise ls | grep maven && ! ~/.local/bin/mise ls maven | grep missing > /dev/null; then
    echo "Maven already installed"
    return;
fi

echo "Maven not installed. Installing Maven..."

~/.local/bin/mise install -y maven@3.9.9
~/.local/bin/mise use --global maven@3.9.9

echo "`mvn -v`"

echo "Maven installed successfully."