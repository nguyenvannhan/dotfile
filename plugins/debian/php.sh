#! /bin/bash

sudo apt-get update && sudo apt-get upgrade 

sudo apt install software-properties-common -y
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

            sudo ln -sf $BASE_CONFIG_OS_DIR/php81.ini /etc/php/8.1/cli/php.ini
            sudo ln -sf $BASE_CONFIG_OS_DIR/php81-fpm.ini /etc/php/8.1/fpm/php.ini
            sudo ln -sf $BASE_CONFIG_OS_DIR/php81-fpm.conf /etc/php/8.1/fpm/pool.d/www.conf

            sudo systemctl start php8.1-fpm
            sudo systemctl enable php8.1-fpm
            ;;
        0)
            break
            ;;
    esac
done

sudo update-alternatives --config php
