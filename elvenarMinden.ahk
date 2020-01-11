PgUp::
CoordMode, Mouse, Screen
MouseClick, left, 639, 354, , 10 , D
MouseClick, left, 978, 303, , 10 , U
Sleep, 1000
Loop {
    KristalyX := 932
    KristalyY := 365
    MarvanyX := 854
    MarvanyY := 654
    DragakoX := 710
    DragakoY := 590
    /* Loop, 6 {
        ;64, 32
        ;Kristály 1
        ;932, 365
        MouseClick, left, %KristalyX%, %KristalyY%, , 10
        Sleep, 3000
        MouseClick, left, %KristalyX%, %KristalyY%, , 10
        KristalyX := KristalyX - 64
        KristalyY := KristalyY - 32
        Sleep, 1000
        MouseClick, left, 610, 390, , 10
        Sleep, 1000
    } 
    

    Loop, 4 {
        ;Márvány
        ;30, 16
        ;854, 654
        MouseClick, left, %MarvanyX%, %MarvanyY%, , 10
        Sleep, 3000
        MouseClick, left, %MarvanyX%, %MarvanyY%, , 10
        MarvanyX := MarvanyX - 30
        MarvanyY := MarvanyY - 16
        Sleep, 1000
        MouseClick, left, 610, 390, , 10
        Sleep, 1000
    }
    */
    Loop, 4 {
        ;Drágakő
        ;60, 32
        ;710, 590
        MouseClick, left, %DragakoX%, %DragakoY%, , 10
        Sleep, 3000
        MouseClick, left, %DragakoX%, %DragakoY%, , 10
        DragakoX := DragakoX - 60
        DragakoY := DragakoY - 32
        Sleep, 1000
        MouseClick, left, 610, 390, , 10
        Sleep, 1000
    }
    Sleep, 1000000


    Loop, 36 {
        ;Szerszám 1
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 2
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 3
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 4
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 5
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 6
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 7
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 8
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 9
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 10
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 11
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        ;Szerszám 12
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10


        Sleep, 300000 ;5 perc
    }
}
PgDn::
Reload
