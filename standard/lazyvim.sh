#! /bin/bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

echo '#nvim' >>~/.bashrc
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >>~/.bashrc

TIME_STAMP=$(date '+%Y%m%d%H%M%S')

# required
if ls ~/.config/nvim >/dev/null; then
  mv ~/config/nvim{,.bak.$TIME_STAMP}
fi

# optional but recommended
if ls ~/.local/share/nvim >/dev/null; then
  mv ~/.local/share/nvim{,.bak.$TIME_STAMP}
fi

if ls ~/.local/state/nvim >/dev/null; then
  mv ~/.local/state/nvim{,.bak.$TIME_STAMP}
fi

if ls ~/.cache/nvim >/dev/null; then
  mv ~/.cache/nvim{,.bak.$TIME_STAMP}
fi

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
