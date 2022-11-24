#!/bin/sh

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; BASE_DIR -P )/../.."

brew install nginx

ln -sf $BASE_DIR/configs/osx/nginx.conf /usr/local/etc/nginx/nginx.conf

if [[ -d /usr/local/etc/nginx/conf.d ]]
then
    rm -rf /usr/local/etc/nginx/conf.d 
fi

if [[ -L /usr/local/etc/nginx/conf.d ]]
then
    echo "Linked con.d directory"
else
    sudo ln -sf $BASE_DIR/configs/nginx-conf.d /usr/local/etc/nginx/conf.d
fi

brew services restart nginx
