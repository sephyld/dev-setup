#! /bin/bash

# refer to official docs if having issues
# https://helm.sh/docs/intro/install/

# check if already installed
if which helm > /dev/null; then
    echo "Helm already installed. Showing version"
    echo "`helm version`"
    return;
fi

echo "Helm not installed. Installing Helm..."

curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

echo "`helm version`"

echo "Helm installed successfully."