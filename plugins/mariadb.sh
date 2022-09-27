#!/bin/sh

brew install mariadb

brew services restart mariadb

brew services enable mariadb

sudo mysql_secure_installation
