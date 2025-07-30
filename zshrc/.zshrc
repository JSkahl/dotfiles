# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

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
alias neofetch='neofetch --source ~/.config/neofetch/asciis/gandalf.txt'
alias shutdown='poweroff'
alias financial="sc-im ~/financial/2025/julho.sc"



# PowerLevel10k stuff
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
