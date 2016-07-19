import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import XMonad.Util.EZConfig

main = do
    xmproc <- spawnPipe "xmobar"

    xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , handleEventHook = mconcat
            [ docksEventHook
            , handleEventHook defaultConfig ]
        , modMask = mod4Mask
        , terminal = "urxvt"
        } `additionalKeys`
            [((0, 0x1008ff11), spawn "amixer set Master 2-"),
             ((0, 0x1008ff13), spawn "amixer set Master 2+"),
             ((0, xK_Print), spawn "/home/zachary/scripts/record.sh"),
             ((mod4Mask, xK_x), spawn "/home/zachary/scripts/lock/lock.sh")
            ]
