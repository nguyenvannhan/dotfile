#!/bin/bash

if [ ! "$(mariadb --version)" ]; then
	brew install mariadb

	brew services restart mariadb

	sudo mysql_secure_installation
fi

brew install --cask beekeeper-studio
