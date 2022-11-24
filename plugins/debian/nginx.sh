#!/bin/sh

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; BASE_DIR -P )/../.."

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install nginx

sudo ln -sf $BASE_DIR/configs/debian/nginx.conf /etc/nginx/nginx.conf

if [[ -d /etc/nginx/conf.d ]]
then
    sudo rm -rf /etc/nginx/conf.d 
fi

if [[ -L /etc/nginx/conf.d ]]
then
    echo "Linked con.d directory"
else
    sudo ln -sf $BASE_DIR/configs/nginx-conf.d /etc/nginx/conf.d
fi

sudo ufw allow 'Nginx Full'

sudo systemctl start nginx
sudo systemctl enable nginx
