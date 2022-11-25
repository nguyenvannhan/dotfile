#! /bin/bash

echo "----- Install Cargo -----"
curl https://sh.rustup.rs -sSf | sh

curl -sLk https://git.io/gobrew | sh
source ~/.bashrc
gobrew install latest

brew install --cask julia

brew install neovim tree-sitter luajit ninja luarocks

brew install tmux

ln -sf /usr/local/bin/nvim /usr/local/bin/vim

echo "--- Install The Siver Searcher ---"
brew install the_silver_searcher

echo "--- Intall Universal CTags ----"
brew install --HEAD universal-ctags

echo "---- Install RipGrep ----"
brew install ripgrep

if [ ! -d "${HOME}/.config" ]
then
    mkdir $HOME/.config
fi

if [[ -L $HOME/.config/nvim ]]
then
    echo "Link nvim config folder already"
else
    ln -s $DOTFILE_CONFIG_DIR/nvim $HOME/.config/nvim
fi

git config --global core.editor "nvim"
