#! /bin/bash

brew install nginx

ln -sf $DOTFILE_CONFIG_OS_DIR/nginx.conf /usr/local/etc/nginx/nginx.conf

if [[ -d /usr/local/etc/nginx/conf.d ]]
then
    rm -rf /usr/local/etc/nginx/conf.d 
fi

brew services restart nginx
