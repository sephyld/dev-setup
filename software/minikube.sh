#! /bin/bash

# refer to official docs if having issues
# https://minikube.sigs.k8s.io/docs/start/?arch=%2Flinux%2Fx86-64%2Fstable%2Fbinary+download

# check if already installed
if which minikube > /dev/null; then
    echo "Minikube already installed. Showing version"
    echo "`minikube version`"
    return;
fi

echo "Minikube not installed. Installing Minikube..."

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

echo "`minikube version`"

echo "Minikube installed successfully."