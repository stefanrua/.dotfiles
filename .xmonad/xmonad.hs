import XMonad
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders
import XMonad.Layout.Fullscreen
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig(additionalKeys, additionalKeysP)
import Graphics.X11.ExtraTypes.XF86

-- colors
light  = "#C0C0C0"
medium = "#444444"
dark   = "#101010"
bgcommand = "xsetroot -solid '" ++ dark ++ "'"

-- startup
myStartup = do
    spawn bgcommand
    spawn "xmobar"

-- window gaps
myLayout = avoidStruts $
    --smartBorders $
    mySpacing 4 $
    layoutHook def
    
-- custom keybinds
myKeys = [ ("<XF86AudioRaiseVolume>", spawn "pactl set-sink-volume @DEFAULT_SINK@ +5%")
    , ("<XF86AudioLowerVolume>", spawn "pactl set-sink-volume @DEFAULT_SINK@  -5%")
    , ("<XF86AudioMute>", spawn "pactl set-sink-mute @DEFAULT_SINK@ toggle")    

    , ("<XF86AudioPlay>", spawn "playerctl play-pause")    
    , ("<XF86AudioPrev>", spawn "playerctl previous")    
    , ("<XF86AudioNext>", spawn "playerctl next")    

    , ("<XF86MonBrightnessUp>", spawn "brightnessctl set +10%")    
    , ("<XF86MonBrightnessDown>", spawn "brightnessctl set 10%-")    

    , ("M-p", spawn runcommand)    
    ]

-- custom thingies
mySpacing i = spacingRaw True (Border i i i i) True (Border i i i i) True
runcommand  = "dmenu_run" ++
    " -nb '" ++ dark ++
    "' -nf '" ++ light ++
    "' -sb '" ++ light ++
    "' -sf '" ++ dark ++ "'"

-- mainerino
main = xmonad $ docks def
    { terminal    = "urxvt"
    , borderWidth = 2
    , layoutHook  = myLayout
    , startupHook = myStartup
    , normalBorderColor  = medium
    , focusedBorderColor = light
    } `additionalKeysP` myKeys
