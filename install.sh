#! /bin/bash

programs="vim bspwm sxhkd rofi dunst"

ln -s $PWD/.Xresources $HOME/

for i in $programs; do
    ln -s $PWD/$i $HOME/.config/
done
