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

manufact(n, elsoManuCoordX, elsoManuCoordY, mozgasCoordX, mozgasCoordY, maxDifX, maxDifY) { ;maxDifX: Maximum megengedett különbség az X koordinátán.
    Loop %n% {
        ClickX := elsoManuCoordX + rNum(-(maxDifX), maxDifX) ; - és +
        ClickY := elsoManuCoordY + rNum(-(maxDifY), maxDifY)
        MouseClick, left, %ClickX%, %ClickY%, , rNum(7, 13) ;beszed
        rSleep(800, 1200)
        MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(7, 13) ;félre klikk
        rSleep(800, 1200)
        ClickX := elsoManuCoordX + rNum(-(maxDifX), maxDifX) ; - és +
        ClickY := elsoManuCoordY + rNum(-(maxDifY), maxDifY)
        MouseClick, left, %ClickX%, %ClickY%, , rNum(7, 13) ;zzzzzz
        elsoManuCoordX := elsoManuCoordX + mozgasCoordX
        elsoManuCoordY := elsoManuCoordY + mozgasCoordY
        rSleep(800, 1200)
        MouseClick, left, rNum(600, 620), rNum(380, 400), , rNum(7, 13) ;bal felső termelés indítás (1, 1.5, 3 órás)
        rSleep(800, 1200)
    }
}

szerszamBeszed(n, elsoSzerszCoordX, elsoSzerszCoordY, mozgasCoordX, mozgasCoordY, maxDifX, maxDifY) { ;maxDifX: Maximum megengedett különbség az X koordinátán.
    ;Szerszám beszedés
    MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(7, 13) ;félre klikk
    rSleep(800, 1200)
    Loop, %n%  {
        ClickX := elsoSzerszCoordX + rNum(-(maxDifX), maxDifX) ; - és +
        ClickY := elsoSzerszCoordY + rNum(-(maxDifY), maxDifY)
        MouseClick, left, %ClickX%, %ClickY%, , rNum(7, 13) ;felszed
        elsoSzerszCoordX := elsoSzerszCoordX + mozgasCoordX
        elsoSzerszCoordY := elsoSzerszCoordY + mozgasCoordY
        rSleep(800, 1200)
        MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(7, 13) ;félre klikk
        rSleep(800, 1200)
    }

}

szerszamIndit(elsoSzerszCoordFixX, elsoSzerszCoordFixY, maxDifX, maxDifY) { ;maxDifX: Maximum megengedett különbség az X koordinátán.
    ;Szerszám indítás
    elsoSzerszCoordFixPluszDifX := elsoSzerszCoordFixX + rNum(-(maxDifX), maxDifX)
    elsoSzerszCoordFixPluszDifY := elsoSzerszCoordFixY + rNum(-(maxDifY), maxDifY)
    MouseClick, left, %elsoSzerszCoordFixPluszDifX%, %elsoSzerszCoordFixPluszDifY%, , rNum(7, 13) ;klikk az első műhelyre
    rSleep(800, 1200)
    MouseClick, left, 689, 330, , rNum(7, 13) ;mind kijelöl
    rSleep(800, 1200)
    MouseClick, left, rNum(574, 594), rNum(376, 396), , rNum(7, 13) ;bal felső termelés indítás (5 perces)
    rSleep(4000, 8000)
    Send, {F5} ;frissítés Chrome
    rSleep(300000, 308000)
}

kalandTargyBegyujt(Coord1X, Coord1Y, maxDifX, maxDifY){

}


Loop {
    kristalyX := 1096
    kristalyY := 423
    marvanyX := 1026
    marvanyY := 708
    dragakoX := 876
    dragakoY := 642
    szerszam1X := 1141
    szerszam1Y := 675
    szerszam2X := 744
    szerszam2Y := 492
    szerszam3X := 793
    szerszam3Y := 466

    ;Kristaly
    manufact(6, kristalyX, kristalyY, -64, -32, 3, 2)

    ;Márvány
    ;manufact(4, marvanyX, marvanyY, -30, -16, 2, 1)

    ;Drágakő
    manufact(4, dragakoX, dragakoY, -60, -32, 3, 2)

    
    rSleep(10010000, 10020000)
    Send, {F5} ;frissítés Chrome
    rSleep(800000, 810000)
    
    
    
}


PgDn::
Reload