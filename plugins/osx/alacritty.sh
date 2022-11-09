#! /bin/bash 

brew install --cask alacritty

if [[ -L $HOME/.config/alacritty ]]
then 
    echo "Exists alacritty config already"
else 
    ln -s $PWD/configs/alacritty $HOME/.config/alacritty
fi
