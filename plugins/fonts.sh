#!/bin/sh

brew tap homebrew/cask-fonts
brew install --cask font-fira-code
# Source Code Pro Font
curl -LO https://github.com/adobe-fonts/source-code-pro/archive/release.zip
unzip release.zip
cp -a source-code-pro-release/TTF/* ~/Library/Fonts
rm -r source-code-pro-release
rm release.zip

# Font Fira code Nerd Font
brew install font-fira-code-nerd-font
