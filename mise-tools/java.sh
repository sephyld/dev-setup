# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html#_3-adding-tools-to-mise

# check if already installed
if ~/.local/bin/mise ls | grep java && ! ~/.local/bin/mise ls java | grep missing > /dev/null; then
    echo "Java already installed"
    return;
fi

echo "Java not installed. Installing Java..."

~/.local/bin/mise install java@openjdk-23
~/.local/bin/mise use --global java@openjdk-23

echo "`java --version`"

echo "Java installed successfully."