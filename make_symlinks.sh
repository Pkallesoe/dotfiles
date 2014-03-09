#!/bin/bash

#Add the files that needs symlinks
files="Xresources profile tmux.conf vimrc xinitrc zshrc gtkrc-2.0 offlineimaprc"

for file in $files; do
    ln -s ~/dotfiles/$file ~/.$file
    echo "$file symlinked."
done
echo "All Done!"
echo "Remember to add username and password to .offlineimaprc"
