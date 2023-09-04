#! /bin/bash

brew install koekeishiya/formulae/yabai

# start yabai
yabai --start-service



brew install koekeishiya/formulae/skhd

skhd --start-service

if [ ! -d "${HOME}/.config" ]; then
    mkdir $HOME/.config
fi

if [[ -d $HOME/.config/yabai ]]; then
    echo "Link yabai config folder already"
else
    ln -sf $DOTFILE_CONFIG_OS_DIR/yabai $HOME/.config/yabai
fi

if [[ -d $HOME/.config/skhd ]]; then
    echo "Link skhd config folder already"
else
    ln -sf $DOTFILE_CONFIG_OS_DIR/skhd $HOME/.config/skhd
fi

