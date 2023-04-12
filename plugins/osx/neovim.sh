#! /bin/bash

brew install --cask julia

brew install neovim tree-sitter luajit ninja luarocks

ln -sf /usr/local/bin/nvim /usr/local/bin/vim

echo "--- Install The Siver Searcher ---"
brew install the_silver_searcher

echo "--- Intall Universal CTags ----"
brew install --HEAD universal-ctags

echo "---- Install RipGrep ----"
brew install ripgrep

if [ ! -d "${HOME}/.config" ]; then
    mkdir $HOME/.config
fi

if [[ -d $HOME/.config/nvim ]]; then
    echo "Link nvim config folder already"
else
    ln -sf $DOTFILE_CONFIG_DIR/nvim $HOME/.config/nvim
fi

git config --global core.editor "nvim"
