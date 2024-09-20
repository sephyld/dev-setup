#! /bin/bash

# refer to official docs if having issues
# https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-using-other-package-management

# check if already installed
if which kubectl > /dev/null; then
    echo "Kubectl client already installed. Showing version"
    echo "`kubectl version --client`"
    return;
fi

echo "Kubectl not installed. Installing Kubectl..."

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Download checksum file
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

# Validate
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

# install
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo "`kubectl version --client`"

echo "Kubectl client installed successfully. Removing installation files"

# remove installer and checksum
rm kubectl kubectl.sha256

