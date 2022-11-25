#! /bin/bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install software-properties-common

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install julia


sudo apt-get install libtree-sitter0 luajit ninja-build luarocks tmux neovim silversearcher-ag python2.7 python3 -y

sudo snap install universal-ctags

sudo snap install ripgrep --classic

npm install -g yarn

echo "----- Install Cargo -----"
curl https://sh.rustup.rs -sSf | sh

curl -sLk https://git.io/gobrew | sh

source ~/.bashrc

gobrew install latest

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
