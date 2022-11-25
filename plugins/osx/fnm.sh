#! /bin/bash 

curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell


fnm install --lts

source ~/.bashrc

npm i -g yarn


