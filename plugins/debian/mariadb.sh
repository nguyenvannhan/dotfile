#! /bin/bash 

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install mariadb-server mariadb-client 

sudo systemctl restart mariadb 

sudo systemctl enable mariadb

sudo mysql_secure_installation
