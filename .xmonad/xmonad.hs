import XMonad
import XMonad.Layout.Spacing
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig(additionalKeys, additionalKeysP)
import Graphics.X11.ExtraTypes.XF86

main = do
    xmonad $ docks def
        { terminal    = "urxvt"
        , borderWidth = 4
        , layoutHook  = myLayout
        , startupHook = myStartup
        , normalBorderColor  = medium
        , focusedBorderColor = light
        } `additionalKeysP` myKeys

-- colors
light   = "#ffffff"
medium  = "#888888"
dark    = "#000000"
bgcommand   = "xsetroot -solid darkslategray"
runcommand  = "dmenu_run" ++
    " -nb '" ++ dark ++
    "' -nf '" ++ light ++
    "' -sb '" ++ light ++
    "' -sf '" ++ dark ++ "'"

-- startup
myStartup = do
    spawn bgcommand
    spawn "xmobar"

-- window gaps
gap = 4
myLayout = spacingRaw False
                (Border gap gap gap gap) True
                (Border gap gap gap gap) True
                $ layoutHook def
	
-- custom keybinds
myKeys = [ ("<XF86AudioRaiseVolume>", spawn "pactl set-sink-volume @DEFAULT_SINK@ +5%")
	, ("<XF86AudioLowerVolume>", spawn "pactl set-sink-volume @DEFAULT_SINK@  -5%")
	, ("<XF86AudioMute>", spawn "pactl set-sink-mute @DEFAULT_SINK@ toggle")    

	, ("<XF86AudioPlay>", spawn "playerctl play-pause")    
	, ("<XF86AudioPrev>", spawn "playerctl previous")    
	, ("<XF86AudioNext>", spawn "playerctl next")    

	, ("<XF86MonBrightnessUp>", spawn "brightnessctl set +10%")    
	, ("<XF86MonBrightnessDown>", spawn "brightnessctl set 10%-")    

	, ("<M-p>", spawn runcommand)    
	]
