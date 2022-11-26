#! /bin/bash

brew install nginx

ln -sf $DOTFILE_CONFIG_OS_DIR/nginx.conf /usr/local/etc/nginx/nginx.conf

brew services restart nginx
