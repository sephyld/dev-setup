set -e
export DEFAULT_BRANCH="main"
export BRANCH="${BRANCH:-$DEFAULT_BRANCH}"

echo "Begin installation (or abort with ctrl+c)..."

sudo apt-get install -y git >/dev/null

echo "Cloning Repo..."
rm -rf ~/.local/share/dev-setup
git clone https://github.com/sephyld/dev-setup.git ~/.local/share/dev-setup >/dev/null

echo "Starting setup..."
echo "Selected branch: $BRANCH"
(cd ~/.local/share/dev-setup && git checkout $BRANCH && bash setup.sh && cd -)
rm -rf ~/.local/share/dev-setup