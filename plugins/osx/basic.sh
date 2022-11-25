#! /bin/bash

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

echo "----- Install Homebrew -----"
which -s brew
if [[ $? != 0 ]]
then
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "----- Disable GateKeeper -----"
sudo spctl --master-disable

echo "----- Install neccessary tools -----"
brew install openssl wget iterm2 
brew install --cask spotify rectangle firefox amethyst


echo "----- Install Neccessary Fonts -----"
chmod +x "${DOTFILE_PLUGIN_DIR}/fonts.sh"
"${DOTFILE_PLUGIN_DIR}/fonts.sh"
