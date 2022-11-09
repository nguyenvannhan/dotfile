#!/bin/sh

brew tap shivammathur/php
brew install icu4c

while : 
do 
    echo "========== Choose PHP Version ======"
    echo "1. PHP 8.1"
    echo "2. PHP 8.0"
    echo "3. PHP 7.4"
    echo "4. PHP 7.2"
    echo "0. Back"
    echo "===================================="

    read phpVersion

    case $phpVersion in 
        1)
            brew install shivammathur/php/php@8.1
            ln -sf $PWD/configs/osx/php81.ini /usr/local/etc/php/8.1/php.ini
            ln -sf $PWD/configs/osx/php81-fpm.conf /usr/local/etc/php/8.1/php-fpm.d/www.conf
           
            brew services restart php@8.1

            brew unlink php
            brew link --overwrite --force php@8.1
            ;;
        2)
            brew install shivammathur/php/php@8.0
            ln -sf $PWD/configs/osx/php80.ini /usr/local/etc/php/8.0/php.ini
            ln -sf $PWD/configs/osx/php80-fpm.conf /usr/local/etc/php/8.0/php-fpm.d/www.conf
           
            brew services restart php@8.0

            brew unlink php
            brew link --overwrite --force php@8.0
            ;;
        3)
            brew install shivammathur/php/php@7.4
            ln -sf $PWD/configs/osx/php74.ini /usr/local/etc/php/7.4/php.ini
            ln -sf $PWD/configs/osx/php74-fpm.conf /usr/local/etc/php/7.4/php-fpm.d/www.conf
           
            brew services restart php@7.4

            brew unlink php
            brew link --overwrite --force php@7.4
            ;;

        4)
            brew install shivammathur/php/php@7.2
            ln -sf $PWD/configs/osx/php72.ini /usr/local/etc/php/7.2/php.ini
            ln -sf $PWD/configs/osx/php72-fpm.conf /usr/local/etc/php/7.2/php-fpm.d/www.conf

            brew services restart php@7.2

            brew unlink php
            brew link --overwrite --force php@7.2
            ;;
        0)
            break
            ;;
    esac
done
