#! /bin/bash

dotfiles=".Xresources .vimrc .bashrc .tmux.conf"
programs="i3 i3status"

for i in $dotfiles; do
    echo "Symlinking $i..."
    ln -s $PWD/$i $HOME/
done

for i in $programs; do
    echo "Symlinking $i..."
    ln -s $PWD/$i $HOME/.config/
done

echo "Done!"

xrdb $HOME/.Xresources
