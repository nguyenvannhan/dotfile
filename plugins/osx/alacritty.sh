#! /bin/bash 

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; BASE_DIR -P )/../.."

brew install --cask alacritty

if [[ -L $HOME/.config/alacritty ]]
then 
    echo "Exists alacritty config already"
else 
    ln -s $BASE_DIR/configs/alacritty $HOME/.config/alacritty
fi
