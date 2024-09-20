#! /bin/bash

# refer to official docs if having issues
# https://docs.docker.com/engine/install/linux-postinstall/

# linux post install

echo "Running docker-engine post install steps"

if ! grep docker /etc/group > /dev/null; then 
  echo "Creating group docker"
  sudo groupadd docker
fi

echo "Adding user '$USER' to group docker"
#Add your user to the docker group.
sudo usermod -aG docker $USER