# JiriKrizek/dotfiles
Tracking my personal dotfiles for easy versioning and syncing between computers.

## Install
   * run script install.sh

It will try to create hard links to non-existant dotfiles on your system. It will not replace your own dotfiles, so if you want to use my dotfiles, delete your old dotfiles first.

## Hostname specific zshrc
Directory `local` contains hostname specific folders. These files will
be included for zshrc on a specific hostname. Just create new directory with
your hostname (use command `hostname` to find out your hostname) and create new
files `config` and `alias` in it.
