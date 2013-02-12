#!/bin/bash
#

echo "Installing zshrc"
if [[ ! -f ~/.zshrc ]]; then
  ln ~/.dotfiles/zshrc ~/.zshrc && echo "...finished"
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
  ln ~/.dotfiles/gitconfig ~/.gitconfig && echo "...finished"
else
  echo "...Error: ~/.gitconfig already exists"
fi

echo "Installing vimrc"
if [[ ! -f ~/.vimrc ]] ; then
  ln ~/.dotfiles/vimrc ~/.vimrc && echo "...finished"
else
  echo "...Error: ~/.vimrc already exists"
fi

echo "Installing Pathogen"
if [[ ! -f ~/.vim/autoload/pathogen.vim ]]; then
  mkdir -p ~/.vim/autoload ~/.vim/bundle; \
  curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
  echo "...Done"
else
  echo "...Pathogen already exists"
fi

echo "Installing command-T"
if [[ ! -d ~/.vim/command-t ]]; then
  cd ~/.vim
  git clone git://git.wincent.com/command-t.git bundle/command-t
  echo "...Done"
else
  echo "...Command-T already exists"
fi


