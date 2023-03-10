#! /bin/bash

brew install --cask alacritty

if [[ ! -d $HOME/.config ]]; then
	mkdir $HOME/.config
fi

if [[ -d $HOME/.config/alacritty ]]; then
	echo "Exists alacritty config already"
else
	cp -r $DOTFILE_CONFIG_DIR/alacritty $HOME/.config/alacritty
fi
