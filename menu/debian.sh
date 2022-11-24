#!/bin/sh

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )/.."

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
        9)
           echo "---- Install NeoVim ----"
           chmod +x $BASE_DIR/plugins/debian/neovim.sh
           $BASE_DIR/plugins/debian/neovim.sh
           echo "---- # Install NeoVim ---"
           ;;
        10)
           echo "---- Install Alacritty ----"
           chmod +x $BASE_DIR/plugins/debian/alacritty.sh 
           $BASE_DIR/plugins/debian/alacritty.sh
           echo "---- # Install Alacritty ----"
           ;;
        11)
          echo "---- Install Tmux -----"
          sudo apt-get install tmux
          ln -sf $PWD/configs/.tmux.conf $HOME/.tmux.conf
          echo "---- # Install Tmux ----"
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


