#!/bin/bash

brew tap shivammathur/php
brew install icu4c

while : 
do 
    echo "========== Choose PHP Version ======"
    echo "1. Install PHP 8.1"
    echo "2. Install PHP 8.0"
    echo "3. Install PHP 7.4"
    echo "4. Install PHP 7.2"
    echo "0. Back"
    echo "===================================="

    read phpVersion

    case $phpVersion in 
        1)
            brew install shivammathur/php/php@8.1
            ln -sf $BASE_CONFIG_OS_DIR/php81.ini /usr/local/etc/php/8.1/php.ini
            ln -sf $BASE_CONFIG_OS_DIR/php81-fpm.conf /usr/local/etc/php/8.1/php-fpm.d/www.conf
           
            brew services restart php@8.1
            ;;
        2)
            brew install shivammathur/php/php@8.0
            ln -sf $BASE_CONFIG_OS_DIR/php80.ini /usr/local/etc/php/8.0/php.ini
            ln -sf $BASE_CONFIG_OS_DIR/php80-fpm.conf /usr/local/etc/php/8.0/php-fpm.d/www.conf
           
            brew services restart php@8.0
            ;;
        3)
            brew install shivammathur/php/php@7.4
            ln -sf $BASE_CONFIG_OS_DIR/php74.ini /usr/local/etc/php/7.4/php.ini
            ln -sf $BASE_CONFIG_OS_DIR/php74-fpm.conf /usr/local/etc/php/7.4/php-fpm.d/www.conf
           
            brew services restart php@7.4
            ;;
        4)
            brew install shivammathur/php/php@7.2
            ln -sf $BASE_CONFIG_OS_DIR/php72.ini /usr/local/etc/php/7.2/php.ini
            ln -sf $BASE_CONFIG_OS_DIR/php72-fpm.conf /usr/local/etc/php/7.2/php-fpm.d/www.conf

            brew services restart php@7.2
            ;;
        0)
            break
            ;;
    esac
done
