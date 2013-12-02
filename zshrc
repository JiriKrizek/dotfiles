#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

PT6HOME=/usr/local/PacketTracer6
source ~/.dotfiles/config
if [[ -f ~/.dotfiles/local/$(hostname)/config ]] ; then source ~/.dotfiles/local/$(hostname)/config ; fi

source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/alias
if [[ -f ~/.dotfiles/local/$(hostname)/alias ]] ; then source ~/.dotfiles/local/$(hostname)/alias ; fi

