############################
#           zsh            #
#          config          #
############################

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias neofetch='neofetch --source ~/.config/neofetch/asciis/tux.txt'
alias shutdown='poweroff'
alias change-wpp='sh ~/.config/hypr/scripts/wallpaper_switcher.sh WALLPAPER='
alias calendar='sh ~/.config/waybar/scripts/calendar.sh'
alias see='timg -p kitty'

eval "$(starship init zsh)"
neofetch

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
PATH="~/.nvm/versions/node/v12.22.1/bin:$PATH"

export STARSHIP_CONFIG=~/.config/starship/starship.toml
export HYPRSHOT_DIR=~/Screenshots
