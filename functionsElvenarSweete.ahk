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
        MouseClick, left, rNum(600, 620), rNum(338, 358), , rNum(7, 13) ;bal felső termelés indítás (1, 1.5, 3 órás)
        rSleep(800, 1200)
    }
}

szerszam(n1, n2, elsoSzerszCoordX, elsoSzerszCoordY, mozgasCoordX, mozgasCoordY, maxDifX, maxDifY) { ;maxDifX: Maximum megengedett különbség az X koordinátán.
    ;Szerszám beszedés
    elsoSzerszCoordFixX := elsoSzerszCoordX
    elsoSzerszCoordFixY := elsoSzerszCoordY
    Loop, %n1% {
        elsoSzerszCoordX := elsoSzerszCoordFixX
        elsoSzerszCoordY := elsoSzerszCoordFixY
        MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(7, 13) ;félre klikk
        rSleep(800, 1200)
        Loop, %n2%  {
            ClickX := elsoSzerszCoordX + rNum(-(maxDifX), maxDifX) ; - és +
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
        elsoSzerszCoordFixPluszDifX := elsoSzerszCoordFixX + rNum(-(maxDifX), maxDifX) ; - és +
        elsoSzerszCoordFixPluszDifY := elsoSzerszCoordFixY + rNum(-(maxDifY), maxDifY)
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