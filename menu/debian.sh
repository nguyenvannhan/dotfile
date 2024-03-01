#! /bin/bash

if [ ! $DOTFILE_INIT ]; then
	echo "Run script via install.sh file of root document"
	exit 0
fi

SCRIPT_ARR=("basic" "dev" "zsh" "fnm" "nginx" "mariadb" "php" "composer" "php-cs-fixer" "sdkman" "rvm")
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
		"sdkman")
			MENU_NAME="Install SDKMan and Java Latest"
			;;
		"rvm")
			MENU_NAME="Install RVM And Ruby Latest"
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
		chmod +x "${DOTFILE_PLUGIN_DIR}/composer.sh"
		"${DOTFILE_PLUGIN_DIR}/composer.sh"
		;;
	"php-cs-fixer")
		chmod +x "${DOTFILE_PLUGIN_DIR}/phpcsfixer.sh"
		"${DOTFILE_PLUGIN_DIR}/phpcsfixer.sh"
		;;
	"sdkman")
		chmod +x "${DOTFILE_PLUGIN_DIR}/sdkman.sh"
		"${DOTFILE_PLUGIN_DIR}/sdkman.sh"
		;;
	"rvm")
		chmod +x "${DOTFILE_PLUGIN_DIR}/rvm.sh"
		"${DOTFILE_PLUGIN_DIR}/rvm.sh"
		;;
    *)
		echo "Missing Execute Command For Selected Options"
		;;
	esac

    printf "\r\n"
done
exit 0;


while :
do
    echo "================================="
    echo "=========== SETUP MENU =========="
    echo "================================="
    echo "Choose a one option or enter 0 to exit"
    echo "1. Install Basic Tools"
    echo "2. Install Basic Dev Tools"
    echo "3. Install - Config ZSH"
    echo "4. Install Nginx Server"
    echo "5. Install PHP (Many Version)"
    echo "6. Install Composer - PHP CS Fixer"
    echo "7. Install Mariadb"
    echo "8. Install Fast Node Management (fnm)"
    echo "9. Install NeoVim + Config"
    echo "10. Install Alacritty"
    echo "11. Install Tmux"
    echo "12. Install SDKMan"
    echo "13. Install RVM"
    echo ""
    echo "0. Exit"
    echo "========== END SETUP =========="
    echo "" 
    read inputOption

    case $inputOption in
        0) 
            exit 0
            ;;

        1) 
            echo "----- Install basic tools -----"
            chmod +x $BASE_DIR/plugins/debian/basic.sh 
            $BASE_DIR/plugins/debian/basic.sh 
            echo "----- # End install basic tools -----"
            ;;
        2)
            echo "----- Install Basic Dev tools ----"
            chmod +x $BASE_DIR/plugins/debian/dev.sh 
            $BASE_DIR/plugins/debian/dev.sh
            echo "----- # End Install Basic Dev Tools -----"
            ;;
        3)
            echo "----- Install - Config ZSH -----"
            chmod +x $BASE_DIR/plugins/debian/zsh.sh
            $BASE_DIR/plugins/debian/zsh.sh
            echo "----- #  ZSH -----"
            ;;
        4)
            echo "----- Setup Nginx -----"
            chmod +x $BASE_DIR/plugins/debian/nginx.sh
            $BASE_DIR/plugins/debian/nginx.sh
            echo "----- # Setup Nginx -----"
            ;;
        5)
            echo "----- Setup PHP -----"
            chmod +x $BASE_DIR/plugins/debian/php.sh
            $BASE_DIR/plugins/debian/php.sh
            echo "----- # Setup PHP -----"
            ;;
        6)
            echo "----- Install Composer -----"
            chmod +x $BASE_DIR/plugins/debian/composer.sh 
            $BASE_DIR/plugins/debian/composer.sh
            echo "----- # Install Composer -----"
            ;;
        7) 
            echo "----- Setup Mariadb -----"
            chmod +x $BASE_DIR/plugins/debian/mariadb.sh
            $BASE_DIR/plugins/debian/mariadb.sh
            echo "----- # Setup Mariadb -----"
            ;;
        8) 
            echo "----- Install FNM -----"
            curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
            echo "----- # Install FNM -----"
            ;;
        12)
          echo "---- Install SDKMan ----"
          curl -s "https://get.sdkman.io?rcupdate=false" | bash
          echo "---- # Install SDKMan ----"
          ;;
        13)
          echo "------ Install RVM -----"
          chmod +x $BASE_DIR/plugins/debian/rvm.sh
          $BASE_DIR/plugins/debian/rvm.sh
          echo "----- # Install RVM -----"
          ;;
        *) 
          echo "Don not understand. Dont have action you choose. Please choose again!"
          ;;
    esac
done


