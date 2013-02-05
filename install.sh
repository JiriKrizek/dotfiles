#!/bin/bash
#

echo "Installing zshrc"
if [[ ! -f ~/.zshrc ]]; then
  ln ~/.dotfiles/.zshrc ~/.zshrc && echo "...finished"
else
  echo "...Error: ~/.zshrc already exists"
fi

echo "Installing tmux"
if [[ ! -f ~/.tmux.conf ]]; then
  ln ~/.dotfiles/tmux.conf ~/.tmux.conf && echo "...finished"
else
  echo "...Error: ~/.tmux.conf already exists"
fi

echo "Installing git config"
if [[ ! -f ~/.gitconfig ]] ; then
  ln ~/.dotfiles/.gitconfig ~/.gitconfig && echo "...finished"
else
  echo "...Error: ~/.gitconfig already exists"
fi

