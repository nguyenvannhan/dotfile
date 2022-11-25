# fnm
export PATH=${HOME}/.fnm:$PATH
eval "`fnm env`"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH=${HOME}/fvm/default/bin:$PATH

alias luamake=${HOME}/.config/nvim/language-servers/lua-language-server/3rd/luamake/luamake

source ${HOME}/.rvm/scripts/rvm

# Yarn global bin
PATH="$(yarn global bin):$PATH"

# RUST
. "$HOME/.cargo/env"

# Go 
export PATH="$HOME/.gobrew/current/bin:$HOME/.gobrew/bin:$PATH"
export GOROOT="$HOME/.gobrew/current/go"
