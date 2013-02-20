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

echo "Installing vim theme"
if [[ ! -f ~/.vim/colors/Tomorrow-Night.vim ]] ; then
  if [[ ! -d ~/.vim/colors ]] ; then mkdir ~/.vim/colors; fi
  cp -v ~/.dotfiles/vim/colors/* ~/.vim/colors
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
if [[ ! -d ~/.vim/bundle/command-t ]]; then
  cd ~/.vim
  git clone git://git.wincent.com/command-t.git bundle/command-t
  echo "...git clone done, building c extension"
  cd ~/.vim/bundle/command-t/ruby/command-t
  ruby extconf.rb
  make
  echo "...Done"
  echo "please run   :call pathogen#helptags()  inside of vim"
else
  echo "...Command-T already exists"
fi

echo "Installing syntastic"
if [[ ! -d ~/.vim/bundle/syntastic ]]; then
  cd ~/.vim/bundle
  git clone https://github.com/scrooloose/syntastic.git
  echo "...Done"
else
  echo "...Syntastic already installed"
fi

