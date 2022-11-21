#!/bin/bash

OS=`uname -s`

if [ "${OS}" = "Darwin" ]
then
    echo "Detected OS: MacOS"

    chmod +x ./install_menu/osx.sh
    ./install_menu/osx.sh
elif [ "${OS}" = "Linux" ] && [ -f /etc/debian_version ]
then
    echo "Deteced OS: Linux Distro based on Debian"

    chmod +x ./install_menu/debian.sh
    ./install_menu/debian.sh
else
    echo "Can not detect OS or OS is not supported"

    exit 0;
fi
