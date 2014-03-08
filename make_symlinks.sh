#!/bin/bash

#Add the files that needs symlinks
files="Xresources profile tmux_conf vimrc xinitrc zshrc"

for file in $files; do
    ln -s ~/dotfiles/$file ~/.$file
done
