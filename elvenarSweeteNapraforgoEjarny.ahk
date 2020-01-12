;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen

rSleep(min, max) {
    Random, randsleep, min, max
    Sleep, %randsleep%
}
rNum(min, max){
    Random, rNum, min, max
    Return rNum
}

manufact(n, elsoManuCoordX, elsoManuCoordY, mozgasCoordX, mozgasCoordY, maxDifX, maxDifY) {
    Loop %n% {
        ClickX := elsoManuCoordX + rNum(-(maxDifX), maxDifX)
        ClickY := elsoManuCoordY + rNum(-(maxDifY), maxDifY)
        MouseClick, left, %ClickX%, %ClickY%, , rNum(7, 13) ;beszed
        rSleep(800, 1200)
        MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(7, 13) ;félre klikk
        rSleep(800, 1200)
        ClickX := elsoManuCoordX + rNum(-(maxDifX), maxDifX)
        ClickY := elsoManuCoordY + rNum(-(maxDifY), maxDifY)
        MouseClick, left, %ClickX%, %ClickY%, , rNum(7, 13) ;zzzzzz
        elsoManuCoordX := elsoManuCoordX + mozgasCoordX
        elsoManuCoordY := elsoManuCoordY + mozgasCoordY
        rSleep(800, 1200)
        MouseClick, left, rNum(600, 620), rNum(338, 358), , rNum(7, 13) ;bal felső termelés indítás (1, 1.5, 3 órás)
        rSleep(800, 1200)
    }
}

szerszam(n1, n2, elsoSzerszCoordX, elsoSzerszCoordY, mozgasCoordX, mozgasCoordY, maxDifX, maxDifY) {
        ;Szerszám beszedés
        elsoSzerszCoordFixX := elsoSzerszCoordX
        elsoSzerszCoordFixY := elsoSzerszCoordY
        Loop, %n1% {
            elsoSzerszCoordX := elsoSzerszCoordFixX
            elsoSzerszCoordY := elsoSzerszCoordFixY
            MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(7, 13) ;félre klikk
            rSleep(800, 1200)
            Loop, %n2%  {
                ClickX := elsoSzerszCoordX + rNum(-(maxDifX), maxDifX)
                ClickY := elsoSzerszCoordY + rNum(-(maxDifY), maxDifY)
                MouseClick, left, %ClickX%, %ClickY%, , rNum(7, 13) ;felszed
                elsoSzerszCoordX := elsoSzerszCoordX + mozgasCoordX
                elsoSzerszCoordY := elsoSzerszCoordY + mozgasCoordY
                rSleep(800, 1200)
                MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(7, 13) ;félre klikk
                rSleep(800, 1200)
            }
        



            ;Szerszám indítás
            ;Mind kijelöl: 689, 299
            ;Italok: 584, 347
            elsoSzerszCoordFixPluszDifX := elsoSzerszCoordFixX + rNum(-(maxDifX), maxDifX)
            elsoSzerszCoordFixPluszDifY := elsoSzerszCoordFixY + rNum(-(maxDifX), maxDifX)
            MouseClick, left, %elsoSzerszCoordFixPluszDifX%, %elsoSzerszCoordFixPluszDifY%, , rNum(7, 13) ;klikk az első műhelyre
            rSleep(800, 1200)
            MouseClick, left, 689, 299, , rNum(7, 13) ;mind kijelöl
            rSleep(800, 1200)
            MouseClick, left, rNum(574, 594), rNum(337, 357), , rNum(7, 13) ;bal felső termelés indítás (5 perces)
            rSleep(4000, 8000)
            Send, {F5} ;frissítés Chrome
            rSleep(300000, 308000)
            ;rSleep(3000, 5000) ;CSAK TESZT
            
        }
}


Loop {
    kristalyX := 868
    kristalyY := 463
    marvanyX := 561
    marvanyY := 448
    dragakoX := 667
    dragakoY := 502
    napfarmX := 767
    napfarmY := 650
    ejfarmX := 879
    ejfarmY := 572
    szerszamX := 588
    szerszamY := 265
    ;Kristaly
    manufact(5, kristalyX, kristalyY, -64, -32, 3, 2)

    ;Márvány
    manufact(4, marvanyX, marvanyY, -30, -16, 2, 1)

    ;Drágakő
    manufact(2, dragakoX, dragakoY, -60, -32, 3, 2)

    ;Napfarm
    manufact(3, napfarmX, napfarmY, -75, -50, 4, 3)

    ;Éjfarm
    manufact(2, ejfarmX, ejfarmY, -24, -24, 2, 2)

    ;Szerszám 1 óra (11) !!!!!!!!!!!!!!!!!!!
    szerszam(11, 9, szerszamX, szerszamY, -46, 24, 3, 2)

    ;Napfarm
    manufact(3, napfarmX, napfarmY, -75, -50, 4, 3)

    ;Szerszám 30 perc (5) !!!!!!!!!!!!!!!!!!!
    szerszam(5, 9, szerszamX, szerszamY, -46, 24, 3, 2)


    ;Éjfarm
    manufact(2, ejfarmX, ejfarmY, -24, -24, 2, 2)

    ;Szerszám 30 perc (5) !!!!!!!!!!!!!!!!!!!
    szerszam(5, 9, szerszamX, szerszamY, -46, 24, 3, 2)

    ;Napfarm
    manufact(3, napfarmX, napfarmY, -75, -50, 4, 3)

    ;Szerszám 1 órás (11) !!!!!!!!!!!!!!!!!!!
    szerszam(11,9, szerszamX, szerszamY, -46, 24, 3, 2)
}


PgDn::
Reload
