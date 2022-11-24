#!/bin/sh

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; BASE_DIR -P )/../.."

brew tap shivammathur/php
brew install icu4c

while : 
do 
    echo "========== Choose PHP Version ======"
    echo "1. Install PHP 8.1"
    echo "2. Enable PHP 8.1"
    echo "3. Install PHP 8.0"
    echo "4. Enable PHP 8.0"
    echo "5. Install PHP 7.4"
    echo "6. Enable PHP 7.4"
    echo "7. Install PHP 7.2"
    echo "8. Enable PHP 7.2"
    echo "0. Back"
    echo "===================================="

    read phpVersion

    case $phpVersion in 
        1)
            brew install shivammathur/php/php@8.1
            ln -sf $BASE_DIR/configs/osx/php81.ini /usr/local/etc/php/8.1/php.ini
            ln -sf $BASE_DIR/configs/osx/php81-fpm.conf /usr/local/etc/php/8.1/php-fpm.d/www.conf
           
            brew services restart php@8.1
            ;;

        2)
            brew unlink php
            brew link --overwrite --force php@8.1
            ;;
        3)
            brew install shivammathur/php/php@8.0
            ln -sf $BASE_DIR/configs/osx/php80.ini /usr/local/etc/php/8.0/php.ini
            ln -sf $BASE_DIR/configs/osx/php80-fpm.conf /usr/local/etc/php/8.0/php-fpm.d/www.conf
           
            brew services restart php@8.0
            ;;

        4)
            brew unlink php
            brew link --overwrite --force php@8.0
            ;;
        5)
            brew install shivammathur/php/php@7.4
            ln -sf $BASE_DIR/configs/osx/php74.ini /usr/local/etc/php/7.4/php.ini
            ln -sf $BASE_DIR/configs/osx/php74-fpm.conf /usr/local/etc/php/7.4/php-fpm.d/www.conf
           
            brew services restart php@7.4
            ;;

        6)
            brew unlink php
            brew link --overwrite --force php@7.4
            ;;

        7)
            brew install shivammathur/php/php@7.2
            ln -sf $BASE_DIR/configs/osx/php72.ini /usr/local/etc/php/7.2/php.ini
            ln -sf $BASE_DIR/configs/osx/php72-fpm.conf /usr/local/etc/php/7.2/php-fpm.d/www.conf

            brew services restart php@7.2
            ;;

        8)
            brew unlink php
            brew link --overwrite --force php@7.2
            ;;
        0)
            break
            ;;
    esac
done
