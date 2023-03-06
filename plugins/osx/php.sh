#!/bin/bash

brew tap shivammathur/php
brew install icu4c

while :; do
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
        PHP_CONFIG_DIR="/usr/local/etc/php/8.1/"
        ;;
    2)
        brew install shivammathur/php/php@8.0
        PHP_CONFIG_DIR="/usr/local/etc/php/8.0/"
        ;;
    3)
        brew install shivammathur/php/php@7.4
        PHP_CONFIG_DIR="/usr/local/etc/php/7.4/"
        ;;
    4)
        brew install shivammathur/php/php@7.2
        PHP_CONFIG_DIR="/usr/local/etc/php/7.2/"
        ;;
    0)
        break
        ;;
    esac
    echo "=============================="
    echo "====== SETUP INSTRUCTION ====="
    echo "=============================="
    echo "Go to config file at ${PHP_CONFIG_DIR}php-fpm.d/www.conf"
    echo " - Change user value to system user. Ex: user=nguyenavnnhan"
    echo " - Change group value to \`staff\`"
    echo "If missing user and group key. Add them"
    echo " - Change value of listen to 127.0.0.1:port. With port is port number your want to use"
    echo "After all, run this command:"
    echo "    brew services start phpVersion"
    echo "With phpVersion is php you installed. Ex: php@8.1 php@7.4"
    
    echo "-------------------------------------------"
    echo "To link a php verstion to global. Run command: "
    echo "    brew link --force --override phpVersion"
    echo "=============================="
done
