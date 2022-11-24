#!/bin/sh

if [ ! $DOTFILE_INIT ]; then
	echo "Run script via install.sh file of root document"
	exit 0
fi

echo "----- Install Homebrew -----"
which -s brew
if [[ $? != 0 ]]
then
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

INDEX_ARR=( "basic" )
NAME_ARR=( [basic]="Install Basic Tools" )
SCRIPT_ARR=( [basic]="${DOTFILE_PLUGIN_DIR}/basic.sh" )

while :; do
	echo "================================="
	echo "=========== SETUP MENU =========="
	echo "================================="

	for MENU_KEY in "${!INDEX_ARR[@]}"; 
	do 
		echo "$((MENU_KEY + 1)). ${NAME_ARR[$INDEX_ARR[$MENU_KEY]]}"
	done
	# echo "1. Install Basic Tools"
	# echo "2. Install Basic Dev Tools"
	# echo "3. Install - Config ZSH"
	# echo "4. Install Nginx Server"
	# echo "5. Install PHP (Many Version)"
	# echo "6. Install Composer - PHP CS Fixer"
	# echo "7. Install Mariadb"
	# echo "8. Install Dnsmasq (Setup .test domain is localhost)"
	# echo "9. Install Fast Node Management (fnm)"
	# echo "10. Install NeoVim + Config"
	# echo "11. Install Alacritty"
	# echo "12. Install Tmux"
	# echo "13. Install SDKMan"
	# echo "14. Install RVM"
	echo ""
	echo "========== END SETUP =========="
	read -p "Choose a one option or enter 0 to exit: " inputOption

	MENU_LENGTH=${#INDEX_ARR[@]}

	if [ $((inputOption)) != $inputOption ] || [[ $inputOption -gt $MENU_LENGTH ]];
	then
		echo "Please enter only number and valid with number show on menu"
		printf "\r\n\r\n"
		continue
	fi

	if [ $inputOption == 0 ]; then 
		exit 0
	fi

	SCRIPT_ITEM="${SCRIPT_ARR[$INDEX_ARR[$((inputOption - 1))]]}"
	chmod +x "${SCRIPT_ITEM}"
	"${SCRIPT_ITEM}"
	printf "\r\n"

	# case $inputOption in
	# 0)
	# 	exit 0
	# 	;;

	# 1)
	# 	echo "----- Install basic tools -----"
	# 	chmod +x $BASE_DIR/plugins/osx/basic.sh
	# 	$BASE_DIR/plugins/osx/basic.sh
	# 	echo "----- # End install basic tools -----"
	# 	;;
	# 2)
	# 	echo "----- Install Basic Dev tools ----"
	# 	chmod +x $BASE_DIR/plugins/osx/dev.sh
	# 	$BASE_DIR/plugins/osx/dev.sh
	# 	echo "----- # End Install Basic Dev Tools -----"
	# 	;;
	# 3)
	# 	echo "----- Install - Config ZSH -----"
	# 	chmod +x $BASE_DIR/plugins/osx/zsh.h $BASE_DIR/plugins/osx/zsh.sh echo "----- #  ZSH -----"
	# 	;;
	# 4)
	# 	echo "----- Setup Nginx -----"
	# 	chmod +x $BASE_DIR/plugins/osx/nginx.sh
	# 	$BASE_DIR/plugins/osx/nginx.sh
	# 	echo "----- # Setup Nginx -----"
	# 	;;
	# 5)
	# 	echo "----- Setup PHP -----"
	# 	chmod +x $BASE_DIR/plugins/osx/php.sh
	# 	$BASE_DIR/plugins/osx/php.sh
	# 	echo "----- # Setup PHP -----"
	# 	;;
	# 6)
	# 	echo "----- Install Composer -----"
	# 	brew install composer
	# 	echo "----- # Install Composer -----"
	# 	echo "----- Install PHP-CS-Fixer -----"
	# 	brew install php-cs-fixer
	# 	echo "----- # Install PHP-CS-Fixer -----"
	# 	;;
	# 7)
	# 	echo "----- Setup Mariadb -----"
	# 	chmod +x $BASE_DIR/plugins/osx/mariadb.sh
	# 	$BASE_DIR/plugins/osx/mariadb.sh
	# 	echo "----- # Setup Mariadb -----"
	# 	;;
	# 8)
	# 	echo "----- Setup DnsMasq -----"
	# 	chmod +x $BASE_DIR/plugins/osx/dnsmasq.sh
	# 	$BASE_DIR/plugins/osx/dnsmasq.sh
	# 	echo "----- # Setup DnsMasq -----"
	# 	;;
	# 9)
	# 	echo "----- Install FNM -----"
	# 	curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
	# 	echo "----- # Install FNM -----"
	# 	;;
	# 10)
	# 	echo "---- Install NeoVim ----"
	# 	chmod +x $BASE_DIR/plugins/osx/neovim.sh
	# 	$BASE_DIR/plugins/osx/neovim.sh
	# 	echo "---- # Install NeoVim ---"
	# 	;;
	# 11)
	# 	echo "---- Install Alacritty ----"
	# 	chmod +x $BASE_DIR/plugins/osx/alacritty.sh
	# 	$BASE_DIR/plugins/osx/alacritty.sh
	# 	echo "---- # Install Alacritty ----"
	# 	;;
	# 12)
	# 	echo "---- Install Tmux -----"
	# 	brew install tmux
	# 	ln -sf $PWD/configs/.tmux.conf $HOME/.tmux.conf
	# 	echo "---- # Install Tmux ----"
	# 	;;
	# 13)
	# 	echo "---- Install SDKMan ----"
	# 	curl -s "https://get.sdkman.io?rcupdate=false" | bash
	# 	echo "---- # Install SDKMan ----"
	# 	;;
	# 14)
	# 	echo "------ Install RVM -----"
	# 	chmod +x $BASE_DIR/plugins/osx/rvm.sh
	# 	$BASE_DIR/plugins/osx/rvm.sh
	# 	echo "----- # Install RVM -----"
	# 	;;
	# *)
	# 	echo "Don not understand. Dont have action you choose. Please choose again!"
	# 	;;
	# esac
done
