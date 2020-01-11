;Böngésző méret: 50%
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
    /*
     Loop, 6 {
        ;64, 32
        ;Kristály 1
        ;932, 365
        MouseClick, left, %KristalyX%, %KristalyY%, , 10
        Sleep, 1000
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
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
        Sleep, 1000
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
        MouseClick, left, %MarvanyX%, %MarvanyY%, , 10
        MarvanyX := MarvanyX - 30
        MarvanyY := MarvanyY - 16
        Sleep, 1000
        MouseClick, left, 610, 390, , 10
        Sleep, 1000
    }
    
    Loop, 4 {
        ;Drágakő
        ;60, 32
        ;710, 590
        MouseClick, left, %DragakoX%, %DragakoY%, , 10
        Sleep, 1000
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
        MouseClick, left, %DragakoX%, %DragakoY%, , 10
        DragakoX := DragakoX - 60
        DragakoY := DragakoY - 32
        Sleep, 1000
        MouseClick, left, 610, 390, , 10
        Sleep, 1000
    }
    */
    


    Loop, 36 {
        ;Szerszám beszedés
        Szerszam1X := 974
        Szerszam1Y := 621
        Loop, 6 {
            ;46, 24
            ;974, 621
            MouseClick, left, %Szerszam1X%, %Szerszam1Y%
            Szerszam1X := Szerszam1X - 46
            Szerszam1Y := Szerszam1Y - 24
            Sleep, 500
            MouseClick, left, 1120, 220 ;félre klikk
            Sleep, 500
        }

        Sleep, 1000000



        ;Szerszám indítás
        ;Műhely: 977, 604
        ;Mind kijelöl: 689, 329
        ;Italok: 584, 386
        MouseClick, left, 977, 604, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10


        Sleep, 300000 ;5 perc
    }
}
PgDn::
Reload
