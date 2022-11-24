#! /bin/bash

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; BASE_DIR -P )/../.."

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install software-properties-common

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim


sudo apt-get install libtree-sitter0 luajit ninja-build luarocks tmux neovim silversearcher-ag python2.7 python3 -y

sudo snap install universal-ctags

sudo snap install ripgrep --classic

npm install -g yarn

if grep -Exq "yarn/bin|yarn global bin" $HOME/.bashrc 
then
    echo "Config Yarn Global Path already"
else
    echo 'export PATH="$PATH:$(yarn global bin)"' >> ~/.bashrc
fi

yarn global add tree-sitter-cli neovim

if [ ! -d "${HOME}/.config" ]
then
    mkdir $HOME/.config
fi

if [[ -L $HOME/.config/nvim ]]
then
    echo "Link nvim config folder already"
else
    ln -s $BASE_DIR/configs/nvim $HOME/.config/nvim
fi

git config --global core.editor "nvim"
