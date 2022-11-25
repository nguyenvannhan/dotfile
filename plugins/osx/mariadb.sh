#!/bin/bash

brew install mariadb

brew services restart mariadb

sudo mysql_secure_installation
