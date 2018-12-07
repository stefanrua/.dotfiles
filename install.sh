#! /bin/bash

programs="bspwm sxhkd rofi dunst ranger tint2"

ln -s $PWD/.Xresources $HOME/

for i in $programs; do
    ln -s $PWD/$i $HOME/.config/
done
