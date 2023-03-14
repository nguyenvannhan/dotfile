#! /bin/bash

if [ ! $DOTFILE_INIT ]; then
	echo "Run script via install.sh file of root document"
	exit 0
fi

SCRIPT_ARR=("basic" "dev" "zsh" "fnm" "nginx" "mariadb" "php" "composer" "php-cs-fixer" "dnsmasq" "tmux" "sdkman" "rvm" "fvm" "alacritty" "neovim")
################################
########## Print MENU ##########
################################
while :; do
	for MENU_KEY in "${!SCRIPT_ARR[@]}"; do
		case "${SCRIPT_ARR[$MENU_KEY]}" in
		"basic")
			echo "==================================="
			echo "=========== INSTALL MENU =========="
			echo "==================================="
			MENU_NAME="Install Basic Tool"
			;;
		"dev")
			MENU_NAME="Install Basic Dev Tools"
			;;
		"zsh")
			MENU_NAME="Install - Config ZSH"
			;;
		"fnm")
			MENU_NAME="Install FNM and LTS Node"
			;;
		"nginx")
			MENU_NAME="Install - Config NGINX Server"
			;;
		"php")
			MENU_NAME="Install PHP (Multi Version)"
			;;
		"mariadb")
			MENU_NAME="Install Mariadb"
			;;
		"composer")
			MENU_NAME="Install Composer"
			;;
		"php-cs-fixer")
			MENU_NAME="Install PHP-CS-Fixer"
			;;
		"dnsmasq")
			MENU_NAME="Install - Config DnsMasq"
			;;
		"tmux")
			MENU_NAME="Install - Config Tmux"
			;;
		"sdkman")
			MENU_NAME="Install SDKMan"
			;;
		"rvm")
			MENU_NAME="Install RVM And Ruby Latest"
			;;
		"fvm")
			MENU_NAME="Install FVM (Flutter Version Manager)"
			;;
		"alacritty")
			MENU_NAME="Install - Config Alacritty"
			;;
		"neovim")
			MENU_NAME="Install - Config Neovim"
			;;

		"config")
			echo ""
			echo "==================================="
			echo "=========== SUPPORT MENU =========="
			echo "==================================="
			continue
			;;
		*)
			echo "Missing config menu for item index ${MENU_KEY}"
			exit 0
			;;
		esac
		echo "$((MENU_KEY + 1)). ${MENU_NAME}"
	done
	echo ""
	echo "========== END MENU =========="
	read -p "Choose a one option or enter 0 to exit: " inputOption

	######################################
	########## Execute Commands ##########
	######################################
	MENU_LENGTH=${#SCRIPT_ARR[@]}

	if [ $((inputOption)) != $inputOption ] || [[ $inputOption -gt $MENU_LENGTH ]]; then
		echo "Please enter only number and valid with number show on menu"
		printf "\r\n\r\n"
		continue
	fi

	if [ $inputOption == 0 ]; then
		exit 0
	fi

	SCRIPT_ITEM="${SCRIPT_ARR[$((inputOption - 1))]}"

	case "${SCRIPT_ITEM}" in
	"basic")
		chmod +x "${DOTFILE_PLUGIN_DIR}/basic.sh"
		"${DOTFILE_PLUGIN_DIR}/basic.sh"
		;;
	"dev")
		chmod +x "${DOTFILE_PLUGIN_DIR}/dev.sh"
		"${DOTFILE_PLUGIN_DIR}/dev.sh"
		;;
	"zsh")
		chmod +x "${DOTFILE_PLUGIN_DIR}/zsh.sh"
		"${DOTFILE_PLUGIN_DIR}/zsh.sh"
		;;
	"fnm")
		chmod +x "${DOTFILE_PLUGIN_DIR}/fnm.sh"
		"${DOTFILE_PLUGIN_DIR}/fnm.sh"
		;;
	"nginx")
		chmod +x "${DOTFILE_PLUGIN_DIR}/nginx.sh"
		"${DOTFILE_PLUGIN_DIR}/nginx.sh"
		;;
	"php")
		chmod +x "${DOTFILE_PLUGIN_DIR}/php.sh"
		"${DOTFILE_PLUGIN_DIR}/php.sh"
		;;
	"mariadb")
		chmod +x "${DOTFILE_PLUGIN_DIR}/mariadb.sh"
		"${DOTFILE_PLUGIN_DIR}/mariadb.sh"
		;;
	"composer")
		brew install composer
		;;
	"php-cs-fixer")
		brew install php-cs-fixer
		;;
	"dnsmasq")
		chmod +x "${DOTFILE_PLUGIN_DIR}/dnsmasq.sh"
		"${DOTFILE_PLUGIN_DIR}/dnsmasq.sh"
		;;
	"tmux")
		brew install tmux
		if [[ ! -f $HOME/.tmux.conf ]]; then
			ln -sf "${DOTFILE_CONFIG_DIR}/.tmux.conf" "${HOME}/.tmux.conf"
		fi
		;;
	"sdkman")
		curl -s "https://get.sdkman.io" | bash
		;;
	"rvm")
		chmod +x "${DOTFILE_PLUGIN_DIR}/rvm.sh"
		"${DOTFILE_PLUGIN_DIR}/rvm.sh"
		;;
	"fvm")
		chmod +x "${DOTFILE_PLUGIN_DIR}/fvm.sh"
		"${DOTFILE_PLUGIN_DIR}/fvm.sh"
		;;
	"alacritty")
		chmod +x "${DOTFILE_PLUGIN_DIR}/alacritty.sh"
		"${DOTFILE_PLUGIN_DIR}/alacritty.sh"
		;;
	"neovim")
		chmod +x "${DOTFILE_PLUGIN_DIR}/neovim.sh"
		"${DOTFILE_PLUGIN_DIR}/neovim.sh"
		;;
	*)
		echo "Missing Execute Command For Selected Options"
		;;
	esac

	printf "\r\n"
done
