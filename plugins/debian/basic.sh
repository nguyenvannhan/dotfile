#! /bin/bash

sudo apt-get update && sudo apt-get upgrade

echo "----- Setup VimRC -----"
sudo apt-get install vim libssl-dev curl wget snapd

sudo snap install spotify 

if not [[ -L $HOME/.vỉmc ]]
then
    ln -sf $PWD/configs/.vimrc $HOME
fi

echo "----- Install Neccessary Fonts -----"
chmod +x $PWD/plugins/debian/fonts.sh
$PWD/plugins/debian/fonts.sh 
