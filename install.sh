#!/bin/bash

# Use the -a flag if you want all the configs I use

dotfiles=("")
programs=("xfce4")

if [ "$1" = "-a" ]; then
    dotfiles+=(".vimrc" ".bashrc" ".tmux.conf")
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
