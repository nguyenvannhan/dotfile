#!/bin/sh

brew install nginx

mkdir /usr/local/etc/nginx/conf.d

ln -sf $PWD/configs/nginx.conf /usr/local/etc/nginx/nginx.conf

brew services restart  nginx

brew services enable nginx
