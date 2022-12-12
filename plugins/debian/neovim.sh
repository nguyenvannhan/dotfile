#! /bin/bash

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install software-properties-common -y

sudo apt-get update
sudo apt-get install julia -y

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x ./nvim.appimage
./nvim.appimage --appimage-extract
sudo mv ./squashfs-root $HOME
if [[ ! -L /usr/bin/nvim ]]
then
    sudo ln -s "$HOME"/squashfs-root/AppRun /usr/bin/nvim
fi
sudo rm -r ./nvim.appimage

sudo apt-get install libtree-sitter0 luajit ninja-build luarocks tmux silversearcher-ag python2.7 python3 -y

sudo snap install universal-ctags

sudo snap install ripgrep --classic

npm install -g yarn

echo "----- Install Cargo -----"
curl https://sh.rustup.rs -sSf | sh

curl -sLk https://git.io/gobrew | sh

source ~/.bashrc

gobrew install latest

yarn global add tree-sitter-cli

if [ ! -d "${HOME}/.config" ]
then
    mkdir $HOME/.config
fi

if [[ -L $HOME/.config/nvim ]]
then
    echo "Link nvim config folder already"
else
    ln -s $DOTFILE_CONFIG_DIR/nvim $HOME/.config/nvim
fi

git config --global core.editor "nvim"
