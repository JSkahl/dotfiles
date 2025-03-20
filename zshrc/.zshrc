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
  zsh-nvm-lazy-load 
)

source $ZSH/oh-my-zsh.sh

alias neofetch='neofetch --source ~/.config/neofetch/asciis/tux.txt'
alias shutdown='poweroff'
alias change-wpp='sh ~/.config/hypr/scripts/wallpaper_switcher.sh WALLPAPER='
alias calendar='sh ~/.config/waybar/scripts/calendar.sh'
alias see='timg -p kitty'

eval "$(starship init zsh)"
neofetch


export STARSHIP_CONFIG=~/.config/starship/starship.toml
export HYPRSHOT_DIR=~/Screenshots
