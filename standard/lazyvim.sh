#! /bin/bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

echo '#nvim' >>~/.bashrc
echo 'export PATH="$PATH:/opt/nvim-linux64/bin' >>~/.bashrc

TIME_STAMP=$(date '+%Y%m%d%H%M%S')

# required
mv ~/.config/nvim{,.bak.$TIME_STAMP}

# optional but recommended
mv ~/.local/share/nvim{,.bak.$TIME_STAMP}
mv ~/.local/state/nvim{,.bak.$TIME_STAMP}
mv ~/.cache/nvim{,.bak.$TIME_STAMP}

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
