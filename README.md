# Pls halp!

Here are the essential binds for navigating in `bspwm` (your window manager) using `sxhkd` (your hotkey daemon).
From now on what you may call "the Windows button" will be called "Super".

## Start programs

- **Super + Enter** = Terminal (`urxvt`)
- **Super + Space** = Program launcher (`rofi`)
- **Super + d** = Show a notification
with the time and battery percentage

## Quit

- **Super + Alt + Esc** = Exit `bspwm`

## Manage windows

- **Super + w** = Close window
- **Super + {h, j, k, l}** = Focus window {left, down, up, right}
- **Super + c** = Cycle windows
- **Super + Shift + {h, j, k, l}** = Move window {direction}
- **Super + mouse drag (left mouse button)** = Move a floating window
- **Super + mouse drag (right mouse button)** = Resize a window
- **Super + Ctrl + {h, j, k, l}** = Determine the location of the next window
- **Super + Ctrl + Space** = Cancel the above
- **Super + Alt + {h, j, k, l}** = Grow window
- **Super + Alt + Shift + {h, j, k, l}** = Shrink window
- **Super + {t, s, f}** = Set the focused window to {tiling, floating, fullscreen} state
- **Super + m** = Monocle layout (display only one window at a time, fullscreen)

## More config

- `.config/sxhkd/sxhkdrc`: keybind config
- `.config/bspwm/bspwmrc`: bspwm config

## Nice programs

GUI means "Graphical User Interface" and TUI means "Text-based User Interface".
I've specified this in some of the cases where this might not be obvious.

Want to learn how to use one of these? Type `man {program name or command}`
in your terminal to read the manual pages (quit by pressing `q` and search for
keywords using `/`). Is the man page stream of conciousness garbage? Google it.

### General

- `xorg`
- `nvim` (text editor)
- `bspwm` (window manager)
- `sxhkd` (hotkey daemon)
- `urxvt` (terminal)
- `dunst` (notification daemon)
- `rofi` (launcher / window switcher)
- `bc` (calculator)
- `make` (make things :^))
- `network-manager` (network manager (duh))
- `nnn` (file manager)
- `thunar` (file manager GUI)
- `feh` (image viewer)
- `mupdf` (pdf viewer)
- `okular` (pdf viewer, updates on file change)
- `moc` (music player)
- `htop` (process viewer)
- `scrot` (screenshots)
- `lightdm` (display manager)
- `git` (version control)
- `thunar` (file manager GUI)
- `lemonbar` (simple bar)
- `tint2` (panel)
- `chromium` (web browser)
- `gimp` (image editor)
- `imagemagick` (smaller image editing tools)
- `texlive` (LaTeX)
- `pandoc` (file conversion)

### Configuration

- `nmtui` (network manager TUI)
- `arandr` (monitor configuration GUI)
- `pavucontrol` (pulseaudio GUI)

### Theming

- `lxappearance` (gtk / icon themes GUI)
- `compton` (compositor)

### For laptops

- `xbacklight` (backlight control)
- `acpi` (battery info)

### Vim plugins (these should be found in fresh Debian repos)

- `vim-youcompleteme` (autocompletion)
- `vim-gtk` (GUI, but needed for X clipboard support)
- `vim-ctrlp` (fuzzy file search)
- `vim-syntastic` (syntax checker)

### Fun stuff

- `cmatrix` (hackery dackery doo matrix thingy)
- `neofetch` (system info)
- `ufetch` (the cooler neofetch)

## Still lost?

- Talk to me if you're within a 6 m radius
- Contact me somehow else idk
