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
    ln -s $PWD/configs/nvim $HOME/.config/nvim
fi

