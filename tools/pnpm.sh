#! /bin/bash

# refer to official docs if having issues
# https://pnpm.io/installation

if [[ $SELECTED_GUM_TOOLS != *"pnpm"* ]]; then
    return;
fi

# check if already installed
if which pnpm > /dev/null; then
    echo "PNPM already installed. Showing version"
    echo "`pnpm -v`"
    return;
fi

echo "PNPM not installed. Installing PNPM..."

curl -fsSL https://get.pnpm.io/install.sh | sh -


echo "`pnpm -v`"

echo "PNPM installed successfully."