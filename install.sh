#! /bin/sh

ln -s $PWD/.Xresources $HOME/

for i in bspwm sxhkd rofi dunst ranger tint2
do
touch $HOME/.config/$i
done

for i in bspwm sxhkd rofi dunst ranger tint2
do
ln -s $PWD/$i $HOME/.dotfiles/
done
