#!/usr/bin/env bash

echo "Installing Ghostty"

. /etc/os-release

if [ $ID == "debian" ]; then
  export GHOSTTY_DOWNLOAD_URL="https://github.com/mkasberg/ghostty-ubuntu/releases/download/1.1.3-0-ppa2/ghostty_1.1.3-0.ppa2_amd64_bookworm.deb"
  export GHOSTTY_DEB_FILE="ghostty_1.1.3-0.ppa2_amd64_bookworm.deb"
# expecting to support this part in the future
# elif [ $ID == "linuxmint" ]; then
#   export GHOSTTY_DOWNLOAD_URL="https://github.com/mkasberg/ghostty-ubuntu/releases/download/1.1.3-0-ppa2/ghostty_1.1.3-0.ppa2_amd64_bookworm.deb"
#   export GHOSTTY_DEB_FILE="ghostty_1.1.3-0.ppa2_amd64_bookworm.deb"
# elif [ $ID == "ubuntu" ]; then
#   echo $MESSAGE
#   sleep 10
else

  echo "
    Ghostty is not supporter for your distribution:
    $PRETTY_NAME
    
    --------------------------------------------------------
    |  Head to https://github.com/mkasberg/ghostty-ubuntu  |
    |  for a manual installation for deb distro            |
    |------------------------------------------------------|
    |  Or better, check the official documentation         |
    |  https://ghostty.org/docs                            |
    |------------------------------------------------------|
    |  The script will resume in 10 seconds                |
    --------------------------------------------------------
  "
  sleep 10
  return
fi

curl -LO $GHOSTTY_DOWNLOAD_URL
sudo apt install ./$GHOSTTY_DEB_FILE
rm $GHOSTTY_DEB_FILE