#! /bin/bash

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install nginx -y

sudo ln -sf $DOTFILE_CONFIG_OS_DIR/nginx.conf /etc/nginx/nginx.conf

sudo ufw allow 'Nginx Full'

sudo systemctl start nginx
sudo systemctl enable nginx
