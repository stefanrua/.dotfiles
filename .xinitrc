#PLAN9=/usr/local/plan9 export PLAN9
#PATH=$PATH:$PLAN9/bin export PATH

xrdb ~/.Xresources
wal -R

#exec gnome-session
#exec /home/stefan/src/scripts/status.sh &
#exec dwm
exec i3
