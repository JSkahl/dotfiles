############################
#           zsh            #
#          config          #
############################

export ZSH="$HOME/.oh-my-zsh"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
    zsh-nvm-lazy-load 
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias neofetch='neofetch --source ~/.config/neofetch/asciis/knight.txt'
alias shutdown='poweroff'
alias financial="sc-im ~/financial/2025/agosto.sc"
alias theme="~/scripts/theme.sh"
#alias glance="glance --config ~/.config/glance/glance.yml"

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
