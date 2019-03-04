#! /bin/bash

programs="i3 i3status dunst"

ln -s $PWD/.Xresources $HOME/
ln -s $PWD/.vimrc $HOME/

for i in $programs; do
    ln -s $PWD/$i $HOME/.config/
done

xrdb $HOME/.Xresources
