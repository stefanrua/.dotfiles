#! /bin/sh

programs=(
    bspwm
    sxhkd
    rofi
    dunst
    ranger
    tint2
)

ln -s $PWD/.Xresources $HOME/

for i in $programs; do
    touch $HOME/.config/$i
done

for i in $programs; do
    ln -s $PWD/$i $HOME/.dotfiles/
done
