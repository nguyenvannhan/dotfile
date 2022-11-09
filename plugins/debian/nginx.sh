#!/bin/sh

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install nginx

sudo ln -sf $PWD/configs/debian/nginx.conf /etc/nginx/nginx.conf

sudo ufw allow 'Nginx Full'

sudo systemctl start nginx
sudo systemctl enable nginx
