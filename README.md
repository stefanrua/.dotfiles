# Pls halp! (sxhkd bindit ja vähän muuta)

Super = Windows button :D (ofc)

## Ohjelmat

- **Super + Enter** = Terminal (urxvt)
- **Super + Space** = App launcheri (rofi)

## Poistuminen

- **Super + Alt + Esc** = Poistu bspwm:stä

## Ikkunat (solmut)

- **Super + w** = Sulje ikkuna
- **Super + {h, j, k, l}** = Siirry ikkunaan {vasen, alas, ylös, oikea}
- **Super + c** = Cycle, siirtyy seuraavaan ikkunaan (toimii hyvin monocle layoutin kanssa)
- **Super + Shift + {h, j, k, l}** = Siirrä ikkuna
- **Super + vedä** = Siirrä floating ikkunaa
- **Super + Ctrl + {h, j, k, l}** = Määritä seuraavan ikkunan sijainti
- **Super + Ctrl + Space** = Peru määrittely
- **Super + Alt + {h, j, k, l}** = Suurenna ikkunaa
- **Super + Alt + Shift + {h, j, k, l}** = Pienennä ikkunaa

### Ikkunatilat (state & layout)

- **Super + {t, s, f}** = Valittu ikkuna -> {tiling, floating, fullscreen}
- **Super + m** = Workspacen inkkunat monocle layouttiin (vain 1
ikkuna näkyy kerrallaan, mutta layout on pysyy vaikka vaihtaisi ikkunaa, toisin kuin fullscreen state)

## Muita juduja

Tässä oli tärkeimmät, lisää bindeja ja muuta löytyy

- `.config/sxhkd/sxhkdrc`: keybind config
- `.config/bspwm/bspwmrc`: bspwm config

Tarvittavat ohjelmat

- xorg
- bspwm
- sxhkd
- urxvt
- rofi
- tint2
- xbacklight
- (feh, taustakuva)
- (pywal, värit taustakuvasta)
- (lxappearance, gtk teemat)
- (arandr, monitorin valinta / config)
