rSleep(min, max) {
    Random, randsleep, min, max
    Sleep, %randsleep%
}
rNum(min, max){
    Random, rNum, min, max
    Return rNum
}
moveClickOutside(){ ;félre klikk
    MouseClick, left, rNum(felreXmin, felreXmax), rNum(felreYmin, felreYmax), , rnum(mouseSpeedMin, mouseSpeedMax)
}
manufact(n, elsoManuCoordX, elsoManuCoordY, mozgasCoordX, mozgasCoordY, maxDifX, maxDifY) { ;maxDifX: Maximum megengedett különbség az X koordinátán.
    Loop %n% {
        ClickX := elsoManuCoordX + rNum(-(maxDifX), maxDifX) ; - és +
        ClickY := elsoManuCoordY + rNum(-(maxDifY), maxDifY)
        MouseClick, left, %ClickX%, %ClickY%, , rNum(mouseSpeedMin, mouseSpeedMax) ;beszed
        rSleep(sleepMin, sleepMax)
        moveClickOutside() ;félre klikk
        rSleep(sleepMin, sleepMax)
        ClickX := elsoManuCoordX + rNum(-(maxDifX), maxDifX) ; - és +
        ClickY := elsoManuCoordY + rNum(-(maxDifY), maxDifY)
        MouseClick, left, %ClickX%, %ClickY%, , rNum(mouseSpeedMin, mouseSpeedMax) ;zzzzzz
        elsoManuCoordX := elsoManuCoordX + mozgasCoordX
        elsoManuCoordY := elsoManuCoordY + mozgasCoordY
        rSleep(sleepMin, sleepMax)
        MouseClick, left, rNum(startManuXmin, startManuXmax), rNum(startManuYmin, startManuYmax), , rNum(mouseSpeedMin, mouseSpeedMax) ;bal felső termelés indítás (1, 1.5, 3 órás)
        rSleep(sleepMin, sleepMax)
    }
}

szerszamBeszed(n, elsoSzerszCoordX, elsoSzerszCoordY, mozgasCoordX, mozgasCoordY, maxDifX, maxDifY) { ;maxDifX: Maximum megengedett különbség az X koordinátán.
    ;Szerszám beszedés
    moveClickOutside() ;félre klikk
    rSleep(sleepMin, sleepMax)
    Loop, %n%  {
        ClickX := elsoSzerszCoordX + rNum(-(maxDifX), maxDifX) ; - és +
        ClickY := elsoSzerszCoordY + rNum(-(maxDifY), maxDifY)
        MouseClick, left, %ClickX%, %ClickY%, , rNum(mouseSpeedMin, mouseSpeedMax) ;felszed
        elsoSzerszCoordX := elsoSzerszCoordX + mozgasCoordX
        elsoSzerszCoordY := elsoSzerszCoordY + mozgasCoordY
        rSleep(sleepMin, sleepMax)
        moveClickOutside() ;félre klikk
        rSleep(sleepMin, sleepMax)
    }

}

szerszamIndit(elsoSzerszCoordFixX, elsoSzerszCoordFixY, maxDifX, maxDifY) { ;maxDifX: Maximum megengedett különbség az X koordinátán.
    ;Szerszám indítás
    elsoSzerszCoordFixPluszDifX := elsoSzerszCoordFixX + rNum(-(maxDifX), maxDifX)
    elsoSzerszCoordFixPluszDifY := elsoSzerszCoordFixY + rNum(-(maxDifY), maxDifY)
    MouseClick, left, %elsoSzerszCoordFixPluszDifX%, %elsoSzerszCoordFixPluszDifY%, , rNum(mouseSpeedMin, mouseSpeedMax) ;klikk az első műhelyre
    rSleep(sleepMin, sleepMax)
    MouseClick, left, 689, 330, , rNum(mouseSpeedMin, mouseSpeedMax) ;mind kijelöl
    rSleep(sleepMin, sleepMax)
    MouseClick, left, rNum(startSzerszXmin, startSzerszXmax), rNum(startSzerszYmin, startSzerszYmax), , rNum(mouseSpeedMin, mouseSpeedMax) ;bal felső termelés indítás (5 perces)
    rSleep(3000, 4000)
    Send, {F5} ;frissítés Chrome
    rSleep(300000, 304000)
}