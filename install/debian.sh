#!/bin/sh


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
    echo "6. Install Composer"
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
            chmod +x ./plugins/debian/basic.sh 
            ./plugins/debian/basic.sh 
            echo "----- # End install basic tools -----"
            ;;
        2)
            echo "----- Install Basic Dev tools ----"
            chmod +x ./plugins/debian/dev.sh 
            ./plugins/debian/dev.sh
            echo "----- # End Install Basic Dev Tools -----"
            ;;
        3)
            echo "----- Install - Config ZSH -----"
            chmod +x ./plugins/debian/zsh.sh
            ./plugins/debian/zsh.sh
            echo "----- #  ZSH -----"
            ;;
        4)
            echo "----- Setup Nginx -----"
            chmod +x plugins/debian/nginx.sh
            ./plugins/debian/nginx.sh
            echo "----- # Setup Nginx -----"
            ;;
        5)
            echo "----- Setup PHP -----"
            chmod +x plugins/debian/php.sh
            ./plugins/debian/php.sh
            echo "----- # Setup PHP -----"
            ;;
        6)
            echo "----- Install Composer -----"
            chmod +x plugins/debian/composer.sh 
            ./plugins/debian/composer.sh
            echo "----- # Install Composer -----"
            ;;
        7) 
            echo "----- Setup Mariadb -----"
            chmod +x plugins/debian/mariadb.sh
            ./plugins/debian/mariadb.sh
            echo "----- # Setup Mariadb -----"
            ;;
        8) 
            echo "----- Install FNM -----"
            curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
            echo "----- # Install FNM -----"
            ;;
        9)
           echo "---- Install NeoVim ----"
           chmod +x plugins/debian/neovim.sh
           ./plugins/debian/neovim.sh
           echo "---- # Install NeoVim ---"
           ;;
        10)
           echo "---- Install Alacritty ----"
           chmod +x plugins/debian/alacritty.sh 
           ./plugins/debian/alacritty.sh
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
          chmod +x plugins/debian/rvm.sh
          ./plugins/debian/rvm.sh
          echo "----- # Install RVM -----"
          ;;
        *) 
          echo "Don not understand. Dont have action you choose. Please choose again!"
          ;;
    esac
done


