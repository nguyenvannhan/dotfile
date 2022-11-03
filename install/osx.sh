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
    echo "8. Install Dnsmasq (Setup .test domain is localhost)"
    echo "9. Install Fast Node Management (fnm)"
    echo "10. Install NeoVim + Config"
    echo "11. Install Alacritty"
    echo "12. Install Tmux"
    echo "13. Install SDKMan"
    echo "14. Install RVM"
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
            chmod +x ./plugins/osx/basic.sh 
            ./plugins/osx/basic.sh 
            echo "----- # End install basic tools -----"
            ;;
        2)
            echo "----- Install Basic Dev tools ----"
            chmod +x ./plugins/osx/dev.sh 
            ./plugins/osx/dev.sh
            echo "----- # End Install Basic Dev Tools -----"
            ;;
        3)
            echo "----- Install - Config ZSH -----"
            chmod +x ./plugins/zsh.sh
            ./plugins/zsh.sh
            echo "----- #  ZSH -----"
            ;;
        4)
            echo "----- Setup Nginx -----"
            chmod +x plugins/osx/nginx.sh
            ./plugins/osx/nginx.sh
            echo "----- # Setup Nginx -----"
            ;;
        5)
            echo "----- Setup PHP -----"
            chmod +x plugins/osx/php.sh
            ./plugins/osx/php.sh
            echo "----- # Setup PHP -----"
            ;;
        6)
            echo "----- Install Composer -----"
            brew install composer
            echo "----- # Install Composer -----"
            ;;
        7) 
            echo "----- Setup Mariadb -----"
            chmod +x plugins/osx/mariadb.sh
            ./plugins/osx/mariadb.sh
            echo "----- # Setup Mariadb -----"
            ;;
        8)
            echo "----- Setup DnsMasq -----"
            chmod +x plugins/osx/dnsmasq.sh
            ./plugins/osx/dnsmasq.sh
            echo "----- # Setup DnsMasq -----"
            ;;
        9) 
            echo "----- Install FNM -----"
            curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
            echo "----- # Install FNM -----"
            ;;
        10)
           echo "---- Install NeoVim ----"
           chmod +x plugins/osx/neovim.sh
           ./plugins/osx/neovim.sh
           echo "---- # Install NeoVim ---"
           ;;
        11)
           echo "---- Install Alacritty ----"
           chmod +x plugins/osx/alacritty.sh 
           ./plugins/osx/alacritty.sh
           echo "---- # Install Alacritty ----"
           ;;
        12)
          echo "---- Install Tmux -----"
          brew install tmux
          ln -sf $PWD/configs/.tmux.conf $HOME/.tmux.conf
          echo "---- # Install Tmux ----"
          ;;
        13)
          echo "---- Install SDKMan ----"
          curl -s "https://get.sdkman.io?rcupdate=false" | bash
          echo "---- # Install SDKMan ----"
          ;;
        14)
          echo "------ Install RVM -----"
          chmod +x plugins/osx/rvm.sh
          ./plugins/osx/rvm.sh
          echo "----- # Install RVM -----"
          ;;
        *) 
          echo "Don not understand. Dont have action you choose. Please choose again!"
          ;;
    esac
done


