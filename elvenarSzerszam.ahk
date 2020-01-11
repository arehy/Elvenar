PgUp::
CoordMode, Mouse, Screen
MouseClick, left, 639, 354, , 10 , D
MouseClick, left, 978, 303, , 10 , U
Sleep, 1000
Loop {
    MouseClick, left, 932, 375, , 10
    Sleep, 1000
    MouseClick, left, 838, 303, , 10
    Sleep, 1000
    Loop, 36 {
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        MouseClick, left, 837, 305, , 10


        Sleep, 300000 ;5 perc
    }
}
PgDn::
Reload
