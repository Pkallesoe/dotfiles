#!/bin/bash

#Add the files that needs symlinks
files="Xresources profile tmux.conf vimrc xinitrc zshrc gtkrc-2.0"

for file in $files; do
    ln -s ~/dotfiles/$file ~/.$file
done
echo "...Done!"
