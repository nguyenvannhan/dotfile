brew install neovim tree-sitter luajit ninja luarocks

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; BASE_DIR -P )/../.."

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
    ln -s $BASE_DIR/configs/nvim $HOME/.config/nvim
fi

git config --global core.editor "nvim"
