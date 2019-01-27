#! /bin/bash

programs="bspwm sxhkd rofi dunst"

ln -s $PWD/.Xresources $HOME/
ln -s $PWD/.vimrc $HOME/

for i in $programs; do
    ln -s $PWD/$i $HOME/.config/
done

xrdb $HOME/.Xresources
