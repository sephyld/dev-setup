#! /bin/bash

# refer to official docs if having issues
# https://docs.docker.com/engine/install/ubuntu/

# check if already installed
if which docker > /dev/null; then
    echo "Docker already installed. Showing version"
    echo "`docker -v`"
    return;
fi

echo "Docker not installed. Installing docker..."

for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove -y $pkg; done

# Add Docker's official GPG key:
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && V_NAME=$VERSION_CODENAME && OS_ID=`lsb_release -is` && if [ $OS_ID != "Ubuntu" ]; then V_NAME=$UBUNTU_CODENAME; fi && echo "$V_NAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# If you use an Ubuntu derivative distro, such as Linux Mint, you may need to use UBUNTU_CODENAME instead of VERSION_CODENAME

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "`docker -v`"

echo "Docker installed successfully"

# linux post install
# refer to official docs if having issues
# https://docs.docker.com/engine/install/linux-postinstall/

echo "Running docker-engine post install steps"

if ! grep docker /etc/group > /dev/null; then 
  echo "Creating group docker"
  sudo groupadd docker
fi

echo "Adding user '$USER' to group docker"
#Add your user to the docker group.
sudo usermod -aG docker $USER