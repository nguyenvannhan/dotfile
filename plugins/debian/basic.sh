#! /bin/bash

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; BASE_DIR -P )/../.."

sudo apt-get update && sudo apt-get upgrade

echo "----- Setup VimRC -----"
sudo apt-get install vim libssl-dev curl wget snapd

sudo snap install spotify firefox

if [[ ! -L $HOME/.vỉmc ]]
then
    ln -sf $BASE_DIR/configs/.vimrc $HOME
fi

echo "----- Install Neccessary Fonts -----"
chmod +x $BASE_DIR/plugins/debian/fonts.sh
$BASE_DIR/plugins/debian/fonts.sh 
