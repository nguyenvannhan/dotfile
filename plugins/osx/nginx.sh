#!/bin/sh

brew install nginx

ln -sf $PWD/configs/osx/nginx.conf /usr/local/etc/nginx/nginx.conf

if [[ -d /usr/local/etc/nginx/conf.d ]]
then
    rm -rf /usr/local/etc/nginx/conf.d 
fi

if [[ -L /usr/local/etc/nginx/conf.d ]]
then
    echo "Linked con.d directory"
else
    sudo ln -sf $PWD/configs/nginx-conf.d /usr/local/etc/nginx/conf.d
fi

brew services restart nginx
