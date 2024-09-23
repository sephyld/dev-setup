#! /bin/bash

# exit on any non 0 exit code
set -e

. ./software/deps.sh
. ./software/git.sh
. ./software/tmux.sh
. ./software/gnu-stow.sh
. ./software/docker.sh
. ./software/docker-post-install.sh
. ./software/kubectl.sh
. ./software/minikube.sh
. ./software/helm.sh
. ./software/mise.sh
. ./software/mise-tools.sh
. ./software/pnpm.sh
. ./software/starshiprs.sh

echo "You might need to cleanup your .bashrc file if you happen to run this tool multiple times"

echo "Have fun :)"