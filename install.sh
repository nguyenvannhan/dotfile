#!/bin/sh


while :
do
    echo "========== START SETUP =========="
    echo "0. Install Basic Setup (After Refresh MacOs)"
    echo "1. Instal Iterm2"
    echo "2. Install Iterm - Zsh - Oh My ZSH"
    echo "3. Install Neccessary Fonts"
    echo "4. Install Postman"
    echo "5. Install Sublime Text"
    echo "6. Install Nginx Server"
    echo "7. Install PHP (Many Version)"
    echo "8. Install Mariadb"
    echo "9. Install Dnsmasq (Setup .test domain is localhost)"
    echo "10. Install Jetbrain Toolbox"
    echo "11. Install Fast Node Management (fnm)"
    echo "12. Install Composer"
    echo "13. Install Spectacle"
    echo "14. Install Spotify"
    echo "15. Install NeoVim + Config"
    echo "16. Install Alacritty"
    echo "17. Install Tmux"
    echo "18. Install SDKMan"
    echo "19. Install Docker"
    echo "20. Install RVM"
    echo "Ctrl + c ToExit"
    echo "========== END SETUP =========="
    echo "Please choose one options"
    
    read inputOption

    case $inputOption in
        0) 
            echo "========== Setup VimRC =========="
            ln -sf $PWD/configs/.vimrc $HOME
            echo "----- Install Homebrew -----"
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            echo "----- # Install Homebrew -----"
            brew update && brew upgrade
            # Disable GateKeeper
            sudo spctl --master-disable
            brew install openssl            
            ;;
        1) 
            echo "----- Install Iterm2 -----"
            brew install --cask iterm2
            echo "----- #  Install Iterm2 -----"
            ;;
        2)
            echo "----- Setup ZSH -----"
            chmod +x ./plugins/zsh.sh
            ./plugins/zsh.sh
            echo "----- # Setup ZSH -----"
            ;;
        3)
            echo "----- Install Neccessary Fonts -----"
            chmod +x ./plugins/fonts.sh
            ./plugins/fonts.sh 
            echo "----- # Install Neccessary Fonts -----"
            ;;
        4)
            echo "----- Install Postman -----"
            brew install --cask postman
            echo "----- # Install Postman -----"
            ;;
        5) 
            echo "----- Install Sublime Text -----"
            brew install --cask sublime-text
            echo "----- # Install Sublime Text ------"
            ;;
        6)
            echo "----- Setup Nginx -----"
            chmod +x plugins/nginx.sh
            ./plugins/nginx.sh
            echo "----- # Setup Nginx -----"
            ;;
        7)
            echo "----- Setup PHP -----"
            chmod +x plugins/php.sh
            ./plugins/php.sh
            echo "----- # Setup PHP -----"
            ;;
        8) 
            echo "----- Setup Mariadb -----"
            chmod +x plugins/mariadb.sh
            ./plugins/mariadb.sh
            echo "----- # Setup Mariadb -----"
            ;;
        9)
            echo "----- Setup DnsMasq -----"
            chmod +x plugins/dnsmasq.sh
            ./plugins/dnsmasq.sh
            echo "----- # Setup DnsMasq -----"
            ;;
        10) 
            echo "----- Install Jetbrain Toolbox -----"
            brew install --cask jetbrains-toolbox
            echo "----- # Install Jetbrain Toolbox -----"
            ;;
        11) 
            echo "----- Install FNM -----"
            curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
            echo "----- # Install FNM -----"
            ;;
        12)
            echo "----- Install Composer -----"
            brew install composer
            echo "----- # Install Composer -----"
            ;;
        13)
            echo "----- Install Spectacle -----"
            brew install --cask spectacle
            echo "----- # Install Spectacle -----"
            ;;
        14)
            echo "---- Install Spotify ----"
            brew install --cask spotify
            echo "---- # Install Spotify ----"
            ;;
        15)
           echo "---- Install NeoVim ----"
           chmod +x plugins/neovim.sh
           ./plugins/neovim.sh
           echo "---- # Install NeoVim ---"
           ;;
        16)
           echo "---- Install Alacritty ----"
           brew install --cask alacritty
           ln -sf $PWD/configs/alacritty $HOME/.config/alacritty
           echo "---- # Install Alacritty ----"
           ;;
        17)
          echo "---- Install Tmux -----"
          brew install tmux
          ln -sf $PWD/configs/.tmux.conf $HOME/.tmux.conf
          echo "---- # Install Tmux ----"
          ;;
        18)
          echo "---- Install SDKMan ----"
          curl -s "https://get.sdkman.io?rcupdate=false" | bash
          echo "---- # Install SDKMan ----"
          ;;
        19)
          echo "------ Install Docker -----"
          brew install --cask docker
          echo "----- # Install Docker ----"
          ;;
        20)
          echo "------ Install RVM -----"
          chmod +x plugins/rvm.sh
          ./plugins/rvm.sh
          echo "----- # Install RVM -----"
          ;;
        *) 
          echo "Don not understand. Dont have action you choose. Please choose again!"
          ;;
    esac
done


