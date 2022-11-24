#! /bin/bash

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; BASE_DIR -P )/../.."

sudo apt-get update && sudo apt-get upgrade 

sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update

while : 
do 
    echo "========== Choose PHP Version ======"
    echo "1. PHP 8.1"
    echo "0. Back"
    echo "===================================="

    read phpVersion

    case $phpVersion in 
        1)
            sudo apt-get install php8.1 php8.1-fpm php8.1-mysql php8.1-mbstring php8.1-xml php8.1-gd php8.1-curl -y

            sudo ln -sf $BASE_DIR/configs/debian/php81.ini /etc/php/8.1/cli/php.ini
            sudo ln -sf $BASE_DIR/configs/debian/php81-fpm.ini /etc/php/8.1/fpm/php.ini
            sudo ln -sf $BASE_DIR/configs/debian/php81-fpm.conf /etc/php/8.1/fpm/pool.d/www.conf

            sudo systemctl start php8.1-fpm
            sudo systemctl enable php8.1-fpm
            ;;
        2)
            brew install shivammathur/php/php@7.4
            ln -sf $BASE_DIR/configs/php74.ini /usr/local/etc/php/7.4/php.ini
            ln -sf $BASE_DIR/configs/php74-fpm.conf /usr/local/etc/php/7.4/php-fpm.d/www.conf
           
            brew services restart php@7.4

            brew unlink php
            brew link --overwrite --force php@7.4
            ;;

        3)
            brew install shivammathur/php/php@7.2
            ln -sf $BASE_DIR/configs/php72.ini /usr/local/etc/php/7.2/php.ini
            ln -sf $BASE_DIR/configs/php72-fpm.conf /usr/local/etc/php/7.2/php-fpm.d/www.conf

            brew services restart php@7.2

            brew unlink php
            brew link --overwrite --force php@7.2
            ;;
        0)
            break
            ;;
    esac
done

sudo update-alternatives --config php
