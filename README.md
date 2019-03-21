# Pls halp!

## Installation

Start by installing `i3 suckless-tools rxvt-unicode` (the bare minimum) with whatever package manager you have (`apt dnf pacman` etc...).

Then clone my configs and run the installer!

```
cd $HOME
git clone https://github.com/strutsy/.dotfiles.git
cd .dotfiles
./install.sh
```

## Window manager kebinds

Here are the essential keybinds for navigating in `i3` (your window
manager). From now on what you may have in a previous life called "the
Windows button" will be called "Super".

### Start programs

- **Super + Enter** = Terminal (`urxvt`)
- **Super + d** = Program launcher (`dmenu`)

You'll probably want to configure a wireless network connection at some
point. Launching `nm-applet` and clicky-clicking through the menu is
probably the easiest. (The program creates a small applet in your bar
that shows you your connection status).

### Quit

- **Super + Shift + e** = Exit `i3`

### Manage windows

- **Super + q** = Close window
- **Super + {h, j, k, l}** = Focus window {left, down, up, right}
- **Super + Shift + {h, j, k, l}** = Move window {direction}
- **Super + mouse drag (left mouse button)** = Move a floating window
- **Super + mouse drag (right mouse button)** = Resize a window
- **Super + r** = Resize window

### More

These are only the beginning! You can find the rest in
`.config/i3/config` towards the end of the file.

## Configuration

### Fonts

Font size will be affected by `Xft.dpi:` in `.Xresources`, which you
might want to turn off on normal DPI monitors. All used fonts are in the
config files `.Xresources` and `i3/config`. You might want to swithc to
the font called "Monospace" which is pre-installed on most systems in
case you don't have my currently used fonts installed.

## Nice programs

GUI means "Graphical User Interface" and TUI means "Text-based User
Interface". I've specified this in some of the cases where this might
not be obvious.

Want to learn how to use one of these? Type
`man {program name or command}` in your terminal to read the manual
pages (quit by pressing `q` and search for keywords using `/`). Is the
man page stream of conciousness garbage? Google it.

### General

- `vim` (text editor)
- `i3` (window manager)
- `urxvt` (terminal)
- `libnotify` (sends notifications to notification daemon)
- `dunst` (notification daemon)
- `dmenu` (launcher)
- `bc` (calculator | TUI)
- `make` (make things :\^))
- `network-manager` (network manager (duh) - you can use `nm-applet` to select networks with a GUI from a bar applet)
- `nnn` (file manager | TUI)
- `ranger` (file manager | TUI)
- `thunar` (file manager | GUI)
- `sxiv` (image viewer)
- `feh` (image viewer and wallpaper setter)
- `mupdf` (pdf viewer)
- `evince` (pdf viewer, updates on file change)
- `okular` (pdf viewer, updates on file change)
- `cmus` (music player | TUI)
- `htop` (process viewer)
- `scrot` (screenshots)
- `lightdm` (display manager)
- `git` (version control)
- `chromium` (web browser)
- `gimp` (image editor)
- `imagemagick` (smaller image editing tools)
- `texlive` (LaTeX)
- `pandoc` (file conversion)

### Configuration

- `nmtui` (network manager | TUI)
- `arandr` (monitor configuration | GUI)
- `pavucontrol` (pulseaudio | GUI)

### Theming

- `lxappearance` (gtk / icon themes GUI)
- `compton` (compositor)

### For laptops

- `xbacklight` (backlight control)
- `acpi` (battery info)

### Fun stuff

- `cmatrix` (hackery dackery doo matrix thingy)
- `neofetch` (system info)
- `ufetch` (the cooler neofetch)

## Still lost?

Message me or talk to me if I'm near you!
