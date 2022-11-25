#! /bin/bash

brew install --cask alacritty

if [[ ! -d $HOME/.config ]]; then
	mkdir $HOME/.config
fi

if [[ -L $HOME/.config/alacritty ]]; then
	echo "Exists alacritty config already"
else
	ln -s $DOTFILE_CONFIG_DIR/alacritty $HOME/.config/alacritty
fi
