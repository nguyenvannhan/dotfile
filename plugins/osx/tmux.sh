#! /bin/bash

brew install tmux

git clone https://github.com/tmux-plugins/tpm $DOTFILE_CONFIG_DIR/tmux/plugins/tpm


if [ ! -d "${HOME}/.config" ]; then
    mkdir $HOME/.config
fi

if [[ -d $HOME/.config/tmux ]]; then
    echo "Link tmux config folder already"
else
    ln -sf $DOTFILE_CONFIG_DIR/tmux $HOME/.config/tmux
fi

