;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen

Loop, 19 {
    MouseClick, left, 1200, 366, , 10 , D
    MouseClick, left, 1200, 246, , 10 , U
    ;30 perc
    ;Szerszám beszedés
    Szerszam1X := 588
    Szerszam1Y := 250
    MouseClick, left, 1120, 220, , 10 ;félre klikk
    Loop, 9 {
        ;Szerszam 1
        ;46, +24
        MouseClick, left, %Szerszam1X%, %Szerszam1Y%
        Szerszam1X := Szerszam1X - 46
        Szerszam1Y := Szerszam1Y + 24
        Sleep, 1000
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
    }

    ;Szerszám indítás
    ;Műhely: 1141, 675
    ;Mind kijelöl: 689, 330
    ;Italok: 584, 386
    MouseClick, left, 588, 250, , 10
    Sleep, 1000
    MouseClick, left, 689, 330, , 10
    Sleep, 1000
    MouseClick, left, 584, 386, , 10
    MouseClick, left, 87, 52, , 10 ;frissítés
    Sleep, 305000 ;5 perc + 5 mperc
}




Loop {
     KristalyX := 868
    KristalyY := 566
    MarvanyX := 561
    MarvanyY := 560
    DragakoX := 667
    DragakoY := 615
    
     Loop, 5 {
        ;64, 32
        ;Kristály
        MouseClick, left, %KristalyX%, %KristalyY%, , 10
        Sleep, 1000
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
        MouseClick, left, %KristalyX%, %KristalyY%, , 10
        KristalyX := KristalyX - 64
        KristalyY := KristalyY - 32
        Sleep, 1000
        MouseClick, left, 610, 390, , 10 ;3 órás termelés indítás
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
    Loop, 2 {
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
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
    } 
    
    
    

    Loop, 2 {
        MouseClick, left, 1200, 366, , 10 , D
        MouseClick, left, 1200, 246, , 10 , U
        Loop, 12 {
            ;60 perc
            ;Szerszám beszedés
            Szerszam1X := 588
            Szerszam1Y := 250
            MouseClick, left, 1120, 220, , 10 ;félre klikk
            Loop, 9 {
                ;Szerszam 1
                ;46, +24
                MouseClick, left, %Szerszam1X%, %Szerszam1Y%
                Szerszam1X := Szerszam1X - 46
                Szerszam1Y := Szerszam1Y + 24
                Sleep, 1000
                MouseClick, left, 1120, 220, , 10 ;félre klikk
                Sleep, 1000
            }

            ;Szerszám indítás
            ;Műhely: 1141, 675
            ;Mind kijelöl: 689, 330
            ;Italok: 584, 386
            MouseClick, left, 588, 250, , 10
            Sleep, 1000
            MouseClick, left, 689, 330, , 10
            Sleep, 1000
            MouseClick, left, 584, 386, , 10
            Sleep, 305000 ;5 perc + 5 mperc
        }
        napfarmX := 761
        napfarmY := 637
        Loop, 3 {
            ;Napfarm 
            MouseClick, left, 1120, 220, , 10 ;félre klikk
            Sleep, 1000
            MouseClick, left, %napfarmX%, %napfarmY%, , 10 ;beszed
            Sleep, 1000
            MouseClick, left, 1120, 220, , 10 ;félre klikk
            Sleep, 1000
            MouseClick, left, %napfarmX%, %napfarmY%, , 10 ;zzzzzz
            napfarmX := napfarmX - 75
            napfarmY := napfarmY - 50
            Sleep, 1000
            MouseClick, left, 610, 390, , 10 ; 1 órás termelés indítás
            Sleep, 1000
        }
        Loop, 6 {
            ;30 perc
            ;Szerszám beszedés
            Szerszam1X := 588
            Szerszam1Y := 250
            MouseClick, left, 1120, 220, , 10 ;félre klikk
            Loop, 9 {
                ;Szerszam 1
                ;46, +24
                MouseClick, left, %Szerszam1X%, %Szerszam1Y%
                Szerszam1X := Szerszam1X - 46
                Szerszam1Y := Szerszam1Y + 24
                Sleep, 1000
                MouseClick, left, 1120, 220, , 10 ;félre klikk
                Sleep, 1000
            }

            ;Szerszám indítás
            ;Műhely: 1141, 675
            ;Mind kijelöl: 689, 330
            ;Italok: 584, 386
            MouseClick, left, 588, 250, , 10
            Sleep, 1000
            MouseClick, left, 689, 330, , 10
            Sleep, 1000
            MouseClick, left, 584, 386, , 10
            Sleep, 305000 ;5 perc + 5 mperc
        }

        ejfarmX := 879
        ejfarmY := 558
        Loop, 3 {
            ;Éjfarm 
            MouseClick, left, 1120, 220, , 10 ;félre klikk
            Sleep, 1000
            MouseClick, left, %ejfarmX%, %ejfarmY%, , 10 ;beszed
            Sleep, 1000
            MouseClick, left, 1120, 220, , 10 ;félre klikk
            Sleep, 1000
            MouseClick, left, %ejfarmX%, %ejfarmY%, , 10 ;zzzzzz
            ejfarmX := ejfarmX - 24
            ejfarmY := ejfarmY - 24
            Sleep, 1000
            MouseClick, left, 610, 390, , 10 ; 1,5 órás termelés indítás
            Sleep, 1000
        }

        MouseClick, left, 87, 52, , 10 ;frissítés
        Sleep, 60000
    }
}
PgDn::
Reload
