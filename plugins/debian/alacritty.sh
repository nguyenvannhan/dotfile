#! /bin/bash 

sudo apt install wget apt-transport-https gnupg2 software-properties-common -y
sudo add-apt-repository ppa:aslatter/ppa

sudo apt-get update
sudo apt-get install alacritty -y

if [[ -L $HOME/.config/alacritty ]] 
then 
    echo "Exists alacritty config already"
else 
    ln -s $DOTFILE_CONFIG_DIR/alacritty $HOME/.config/alacritty
fi
