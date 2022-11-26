#! /bin/bash 

curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

source ~/.bashrc

fnm install --lts

npm i -g yarn


