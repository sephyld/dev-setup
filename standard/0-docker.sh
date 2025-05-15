#!/usr/bin/env bash

. /etc/os-release
if [ $ID == "ubuntu" ]; then
  bash ./standard/docker/ubuntu.sh
elif [ $ID == "linuxmint" ]; then
  bash ./standard/docker/mint.sh
elif [ $ID == "debian" ]; then
  bash ./standard/docker/debian.sh
else
  echo "WARNING! DOCKER NEEDS MANUAL INSTALLATION!"
  echo "The script will resume soon"
  sleep 10
  return
fi

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "$(docker -v)"

echo "Docker installed successfully"

# linux post install
# refer to official docs if having issues
# https://docs.docker.com/engine/install/linux-postinstall/

echo "Running docker-engine post install steps"

if ! grep docker /etc/group >/dev/null; then
  echo "Creating group docker"
  sudo groupadd docker
fi

echo "Adding user '$USER' to group docker"
#Add your user to the docker group.
sudo usermod -aG docker $USER
