#! /bin/bash

# exit on any non 0 exit code
set -e

source ./software/deps.sh

bash ./tui/gum.sh
source ./tui/choices.sh

echo '
--------------------------------------------------
|  Installing standard software...               |
--------------------------------------------------
'
for script in ./standard/*.sh; do source $script; done

echo '
--------------------------------------------------
|  Installing selected languages...              |
--------------------------------------------------
'
for script in ./languages/*.sh; do source $script; done

echo '
--------------------------------------------------
|  Installing selected tools...                  |
--------------------------------------------------
'
for script in ./tools/*.sh; do source $script; done

# as last software
source ./software/starshiprs.sh

echo "You might need to cleanup your .bashrc file if you happen to run this tool multiple times"

echo "Have fun :)"