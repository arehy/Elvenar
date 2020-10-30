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

maxDif(mozgasCoord) {
    maxDif := mozgasCoord / 20 ;így az 5%-a
    maxDif := Ceil(maxDif)
    return maxDif
}

manufact(n, elsoManuCoordX, elsoManuCoordY, mozgasCoordX, mozgasCoordY, indit) {

    maxDifX := maxDif(mozgasCoordX)
    maxDifY := maxDif(mozgasCoordY)
    ;maxDifX: Maximum megengedett különbség az X koordinátán.

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
        ;MouseClick, left, rNum(startManuXmin, startManuXmax), rNum(startManuYmin, startManuYmax), , rNum(mouseSpeedMin, mouseSpeedMax) ;bal felső termelés indítás (1, 1.5, 3 órás)
        Send, %indit%
        rSleep(sleepMin, sleepMax)
    }
}

szerszamBeszed(n, elsoSzerszCoordX, elsoSzerszCoordY, mozgasCoordX, mozgasCoordY) { 
    maxDifX := maxDif(mozgasCoordX)
    maxDifY := maxDif(mozgasCoordY)
    ;maxDifX: Maximum megengedett különbség az X koordinátán.

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

szerszamIndit(elsoSzerszCoordFixX, elsoSzerszCoordFixY, mozgasCoordX, mozgasCoordY) {
    maxDifX := maxDif(mozgasCoordX)
    maxDifY := maxDif(mozgasCoordY)
    ;maxDifX: Maximum megengedett különbség az X koordinátán.

    ;Szerszám indítás
    elsoSzerszCoordFixPluszDifX := elsoSzerszCoordFixX + rNum(-(maxDifX), maxDifX)
    elsoSzerszCoordFixPluszDifY := elsoSzerszCoordFixY + rNum(-(maxDifY), maxDifY)
    MouseClick, left, %elsoSzerszCoordFixPluszDifX%, %elsoSzerszCoordFixPluszDifY%, , rNum(mouseSpeedMin, mouseSpeedMax) ;klikk az első műhelyre
    rSleep(sleepMin, sleepMax)
    MouseClick, left, %mindKijelolX%, %mindKijelolY%, , rNum(mouseSpeedMin, mouseSpeedMax) ;mind kijelöl
    rSleep(sleepMin, sleepMax)
    MouseClick, left, rNum(startSzerszXmin, startSzerszXmax), rNum(startSzerszYmin, startSzerszYmax), , rNum(mouseSpeedMin, mouseSpeedMax) ;bal felső termelés indítás (5 perces)
    rSleep(3000, 4000)
    Send, {F5} ;frissítés Chrome
    rSleep(300000, 304000)
}

;IDŐBEKÉRŐ
;erre kell állítani a szövegszerkesztőt: UTF-8 with BOM
idobekero(oszto){
    InputBox, perc, Kiskacsauraloooom!, Percben add meg az időt mennyi van még a manufaktúra termelésből, , , , , , , , 0
    if ErrorLevel
        Exit App
    n := 1
    testperc := perc * n, ; azért szorozzuk be, mert így üres karaktert ad vissza, ha az input nem szam

    if (perc = 0){
        return 0
    }
    else if (testperc = ""){
        MsgBox, Ez nem szám volt, próbáld újra
        idobekero(oszto)
    }
    else {
        result := perc / oszto
        result := Ceil(result)
        return result
    }
    return
}

percSzamolo(hour, min){
    minResult := hour * 60
    minResult += min
    return minResult
}

kezdjunkSzerszammal(hour, min, oszto) {
    minResult := hour * 60
    minResult := minResult + min

    result := minResult / oszto
    result := Ceil(result)
    return result
}