#! /bin/bash

echo "----- Setup VimRC -----"
if [[ ! -L $HOME/.vimrc ]]
then
    ln -sf "${DOTFILE_CONFIG_DIR}/.vimrc" "${HOME}"
fi

echo "----- Disable GateKeeper -----"
sudo spctl --master-disable

echo "----- Install neccessary tools -----"
brew install openssl wget iterm2 
brew install --cask spotify rectangle firefox amethyst


echo "----- Install Neccessary Fonts -----"
chmod +x "${DOTFILE_PLUGIN_DIR}/fonts.sh"
"${DOTFILE_PLUGIN_DIR}/fonts.sh"
