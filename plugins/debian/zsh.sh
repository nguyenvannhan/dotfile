#! /bin/bash

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; BASE_DIR -P )/../.."

sudo apt-get update && sudo apt-get upgrade

echo "----- Install ZSH -----"
sudo apt-get install zsh

echo "----- Install Oh-My-Zsh -----"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "---- ZSH Auto Sugention ---"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "---- ZSH Highlight ---"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "--- Copy Iterm Color ---"
mkdir -p ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/colors
cp $BASE_DIR/configs/zsh/onedark.itermcolors ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/colors


echo "--- Symlink zshrc -----"
ln -sf $BASE_DIR/configs/.zshrc $HOME

chsh -s $(which zsh)
