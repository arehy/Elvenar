;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen

/* Loop, 19 {
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
*/


Loop {
    kristalyX := 868
    kristalyY := 463
    marvanyX := 561
    marvanyY := 448
    dragakoX := 667
    dragakoY := 502
    
     Loop, 5 {
        ;Kristály
        ;64, 32
        MouseClick, left, %kristalyX%, %kristalyY%, , 10
        Sleep, 1000
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
        MouseClick, left, %kristalyX%, %kristalyY%, , 10
        kristalyX := kristalyX - 64
        kristalyY := kristalyY - 32
        Sleep, 1000
        MouseClick, left, 610, 348, , 10 ;3 órás termelés indítás
        Sleep, 1000
        
    } 
    
    
    Loop, 4 {
        ;Márvány
        ;30, 16
        MouseClick, left, %marvanyX%, %marvanyY%, , 10
        Sleep, 1000
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
        MouseClick, left, %marvanyX%, %marvanyY%, , 10
        marvanyX := marvanyX - 30
        marvanyY := marvanyY - 16
        Sleep, 1000
        MouseClick, left, 610, 348, , 10 ;3 órás termelés indítás
        Sleep, 1000
    }
    Loop, 2 {
        ;Drágakő
        ;60, 32
        MouseClick, left, %dragakoX%, %dragakoY%, , 10
        Sleep, 1000
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
        MouseClick, left, %dragakoX%, %dragakoY%, , 10
        dragakoX := dragakoX - 60
        dragakoY := dragakoY - 32
        Sleep, 1000
        MouseClick, left, 610, 348, , 10 ;3 órás termelés indítás
        Sleep, 1000
        MouseClick, left, 1120, 220, , 10 ;félre klikk
        Sleep, 1000
    } 
    
    


    napfarmX := 767
    napfarmY := 650
    Loop, 3 { ;Napfarm 
        
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
        MouseClick, left, 610, 348, , 10 ; 1 órás termelés indítás
        Sleep, 1000
    }

    ejfarmX := 879
    ejfarmY := 572
    Loop, 3 { ;Éjfarm 
        
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
        MouseClick, left, 610, 348, , 10 ; 1,5 órás termelés indítás
        Sleep, 1000
    }

    Loop, 12 { ;60 perc Szerszám
        ;Szerszám beszedés
        Szerszam1X := 588
        Szerszam1Y := 265
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
        ;Mind kijelöl: 689, 299
        ;Italok: 584, 347
        MouseClick, left, 588, 265, , 10
        Sleep, 1000
        MouseClick, left, 689, 299, , 10
        Sleep, 1000
        MouseClick, left, 584, 347, , 10
        Send, {F5} ;frissítés Chrome
        Sleep, 305000 ;5 perc + 5 mperc
    }

    napfarmX := 767
    napfarmY := 650
    Loop, 3 { ;Napfarm
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
        MouseClick, left, 610, 348, , 10 ; 1 órás termelés indítás
        Sleep, 1000
    }

    Loop, 6 { ;30 perc szerszám
        ;Szerszám beszedés
        Szerszam1X := 588
        Szerszam1Y := 265
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
        ;Mind kijelöl: 689, 330
        ;Italok: 584, 386
        MouseClick, left, 588, 265, , 10
        Sleep, 1000
        MouseClick, left, 689, 299, , 10
        Sleep, 1000
        MouseClick, left, 584, 347, , 10
        Send, {F5} ;frissítés Chrome
        Sleep, 305000 ;5 perc + 5 mperc
    }

    ejfarmX := 879
    ejfarmY := 572
    Loop, 3 { ;Éjfarm
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
        MouseClick, left, 610, 348, , 10 ; 1,5 órás termelés indítás
        Sleep, 1000
    }

    Loop, 6 { ;30 perc szerszám
        ;Szerszám beszedés
        Szerszam1X := 588
        Szerszam1Y := 265
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
        ;Mind kijelöl: 689, 299
        ;Italok: 584, 347
        MouseClick, left, 588, 265, , 10
        Sleep, 1000
        MouseClick, left, 689, 299, , 10
        Sleep, 1000
        MouseClick, left, 584, 347, , 10
        Send, {F5} ;frissítés Chrome
        Sleep, 305000 ;5 perc + 5 mperc
    }

    napfarmX := 767
    napfarmY := 650
    Loop, 3 { ;Napfarm
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
        MouseClick, left, 610, 348, , 10 ; 1 órás termelés indítás
        Sleep, 1000
    }

    Loop, 12 { ;60 perc Szerszám
        ;Szerszám beszedés
        Szerszam1X := 588
        Szerszam1Y := 265
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
        ;Mind kijelöl: 689, 330
        ;Italok: 584, 386
        MouseClick, left, 588, 265, , 10
        Sleep, 1000
        MouseClick, left, 689, 299, , 10
        Sleep, 1000
        MouseClick, left, 584, 347, , 10
        Send, {F5} ;frissítés Chrome
        Sleep, 305000 ;5 perc + 5 mperc
    }
}
PgDn::
Reload
