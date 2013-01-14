# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

. ~/.dotfiles/config
if [[ -f ~/.dotfiles/local/$(hostname)/config ]] ; then . ~/.dotfiles/local/$(hostname)/config ; fi

source $ZSH/oh-my-zsh.sh

. ~/.dotfiles/alias
if [[ -f ~/.dotfiles/local/$(hostname)/alias ]] ; then . ~/.dotfiles/local/$(hostname)/alias ; fi

