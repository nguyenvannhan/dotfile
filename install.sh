#! /bin/bash

function export_variables() {
	DOTFILE_OS=$(uname -s)
	IS_MACOS=false
	IS_DEBIAN=false

	if [ "${DOTFILE_OS}" == "Darwin" ]; then
		echo "Detected OS: MacOS"
		IS_MACOS=true
	elif [ "${DOTFILE_OS}" = "Linux" ] && [ -f /etc/debian_version ]; then
		echo "Deteced OS: Linux Distro based on Debian"
		IS_DEBIAN=true
	else
		echo "Can not detect OS or OS is not supported"
		exit 0;
	fi

	BASE_DIR="$(
		cd -- "$(dirname "$0")" >/dev/null 2>&1
		pwd -P
	)" || "./"

	export DOTFILE_INIT=true
	export DOTFILE_BASE_DIR=$BASE_DIR
	export DOTFILE_IS_MACOS=$IS_MACOS
	export DOTFILE_IS_DEBIAN=$IS_DEBIAN
	export DOTFILE_CONFIG_DIR=$BASE_DIR/configs

	if [ $IS_MACOS ]; then
		export DOTFILE_PLUGIN_DIR=$BASE_DIR/plugins/osx
		export DOTFILE_CONFIG_OS_DIR=$BASE_DIR/configs/osx
	else
		export DOTFILE_PLUGIN_DIR=$BASE_DIR/plugins/debian
		export DOTFILE_CONFIG_OS_DIR=$BASE_DIR/configs/debian
	fi
}

function unset_variables() {
	unset DOTFILE_INIT
	unset DOTFILE_BASE_DIR
	unset DOTFILE_IS_MACOS
	unset DOTFILE_IS_DEBIAN
	unset DOTFILE_CONFIG_DIR
	unset DOTFILE_PLUGIN_DIR
	unset DOTFILE_CONFIG_OS_DIR
}

#####################################
###########   MAIN SCRIPT   #########
#####################################
export_variables

if [ ${IS_MACOS} ]; then

	chmod +x "${DOTFILE_BASE_DIR}/menu/osx.sh"
	"${DOTFILE_BASE_DIR}/menu/osx.sh"
else
	chmod +x "${DOTFILE_BASE_DIR}/menu/debian.sh"
	"${DOTFILE_BASE_DIR}/menu/debian.sh"
fi

unset_variables
exit 0
