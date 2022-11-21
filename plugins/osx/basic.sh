#! /bin/bash

echo "----- Setup VimRC -----"
if [[ ! -L $HOME/.vimrc ]]
then
    ln -sf $PWD/configs/.vimrc $HOME
fi

echo "----- Install Homebrew -----"
which -s brew
if [[ $? != 0 ]]
then
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update && brew upgrade

echo "----- Disable GateKeeper -----"
sudo spctl --master-disable

echo "----- Install neccessary tools -----"
brew install openssl wget iterm2 
brew install --cask spotify rectangle chromium firefox


echo "----- Install Neccessary Fonts -----"
chmod +x $PWD/plugins/osx/fonts.sh
$PWD/plugins/osx/fonts.sh 


