#! /bin/sh

ln -s $PWD/.Xresources $HOME/

for i in bspwm sxhkd rofi dunst ranger
do
touch $HOME/.config/$i
done

for i in bspwm sxhkd rofi dunst ranger
do
ln -s $PWD/$i $HOME/.dotfiles/
done
