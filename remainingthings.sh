#!/bin/bash

## Move dotfiles
cp ~/setitup/dotfiles/.vimrc ~/.vimrc
cp ~/setitup/dotfiles/.muttrc ~/.muttrc
cp ~/setitup/dotfiles/.msmptrc ~/.msmptrc
cp ~/setitup/dotfiles/.gitconfig ~/.gitconfig
cp ~/setitup/dotfiles/.gdbinit ~/.gdbinit
cp ~/setitup/dotfiles/.esmptrc ~/.esmptrc

## Install anything remaining depending
sudo gnome-font-viewer font/Consolas.ttf 
dconf load '/org/gnome/terminal/' < ~/setitup/dotfiles/gnome-terminal-settings
vim +PluginInstall +qall
cp ~/setitup/man-pages/.* /usr/local/man/man1/.*
gzip /usr/local/man/man1/.*

