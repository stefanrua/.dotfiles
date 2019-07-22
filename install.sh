#!/bin/bash

# Use the -a flag if you want all the configs I use

dotfiles=(".Xresources")
programs=("i3" "i3status")

echo ""
echo "This script assumes that you have none of the wanted config files, and will not overwrite existing ones."
echo ""

if [ "$1" = "-a" ]; then
    dotfiles+=(".bashrc" ".tmux.conf")
    programs+=("nvim")
fi

for i in ${dotfiles[@]}; do
    echo "Symlinking $i..."
    ln -s $PWD/$i $HOME/
done

for i in ${programs[@]}; do
    echo "Symlinking $i..."
    ln -s $PWD/$i $HOME/.config/
done

echo "Done!"
