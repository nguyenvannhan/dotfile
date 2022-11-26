#! /bin/bash

sudo apt-get update && sudo apt-get upgrade

echo "----- Setup VimRC -----"
if [[ ! -L $HOME/.vimrc ]]
then
    ln -sf "${DOTFILE_CONFIG_DIR}/.vimrc" "${HOME}"
fi

echo "----- Setup Bashrc -----"
if [[ ! -L $HOME/.bashrc ]]
then
    ln -sf "${DOTFILE_CONFIG_DIR}/.bashrc" "${HOME}"
fi

echo "----- Install neccessary tools -----"
sudo apt-get install vim libssl-dev curl wget snapd -y
sudo snap install spotify firefox

echo "----- Install Neccessary Fonts -----"
chmod +x "${DOTFILE_PLUGIN_DIR}/fonts.sh"
"${DOTFILE_PLUGIN_DIR}/fonts.sh"
