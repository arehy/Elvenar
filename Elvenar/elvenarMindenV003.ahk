;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen
Loop {
    KristalyX := 1096
    KristalyY := 423
    MarvanyX := 1026
    MarvanyY := 708
    DragakoX := 876
    DragakoY := 642
    
     Loop, 6 {
        ;64, 32
        ;Kristály 1
        ;1096, 423
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
        ;1026, 708
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
        ;876, 642
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
    


    Loop, 36 {
        ;Szerszám beszedés
        Szerszam1X := 1141
        Szerszam1Y := 675
        Szerszam2X := 744
        Szerszam2Y := 492
        Szerszam3X := 793
        Szerszam3Y := 466
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Loop, 6 {
            ;Szerszam 1
            ;46, 24
            ;1141, 675
            MouseClick, left, %Szerszam1X%, %Szerszam1Y%
            Szerszam1X := Szerszam1X - 46
            Szerszam1Y := Szerszam1Y - 24
            Sleep, 1000
            MouseClick, left, 1120, 220, , 10 ;félre klikk
            Sleep, 1000
        }
        Loop, 3 {
            ;Szerszam 2
            ;77, 42
            ;744, 492
            MouseClick, left, %Szerszam2X%, %Szerszam2Y%
            Szerszam2X := Szerszam2X - 77
            Szerszam2Y := Szerszam2Y - 42
            Sleep, 1000
            MouseClick, left, 1120, 220, , 10 ;félre klikk
            Sleep, 1000
        }
        Loop, 3 {
            ;Szerszam 3
            ;77, 42
            ;793, 466
            MouseClick, left, %Szerszam3X%, %Szerszam3Y%
            Szerszam3X := Szerszam3X - 77
            Szerszam3Y := Szerszam3Y - 42
            Sleep, 1000
            MouseClick, left, 1120, 220, , 10 ;félre klikk
            Sleep, 1000
        }



        ;Szerszám indítás
        ;Műhely: 1141, 675
        ;Mind kijelöl: 689, 330
        ;Italok: 584, 386
        MouseClick, left, 1141, 675, , 10
        Sleep, 1000
        MouseClick, left, 689, 330, , 10
        Sleep, 1000
        MouseClick, left, 584, 386, , 10
        Sleep, 1000
        ;MouseClick, left, 837, 305, , 10

        MouseClick, left, 87, 52, , 10
        Sleep, 305000 ;5 perc + 5 mperc
    }
}
PgDn::
Reload
