#! /bin/bash

sudo apt-get update && sudo apt-get upgrade

# Install Font fira code
sudo apt install fonts-firacode -y

# install Source Code Pro Font
set  -euo pipefail
I1FS=$'\n\t'
mkdir -p /tmp/adodefont
cd /tmp/adodefont
wget -q --show-progress -O source-code-pro.zip https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
unzip -q source-code-pro.zip -d source-code-pro
fontpath="${XDG_DATA_HOME:-$HOME/.local/share}"/fonts
mkdir -p $fontpath
cp -v source-code-pro/*/OTF/*.otf $fontpath
cd ~ && sudo rm -rf /tmp/adobefont

#Install nerd font 
set  -euo pipefail
I1FS=$'\n\t'
mkdir -p /tmp/nerd-fonts
cd /tmp/nerd-fonts 
wget -q --show-progress -O firacode-nerd-font.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/FiraCode.zip
unzip -q firacode-nerd-font.zip -d firacode-nerd-font
cp -v firacode-nerd-font/* $fontpath
cd ~ && sudo rm -rf /tmp/nerd-fonts

fc-cache -fv


