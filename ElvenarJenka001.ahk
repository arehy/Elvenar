;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen

#Include, iniElvenarJenka.ahk
#Include, functionsElvenarJenka.ahk

kezdjunkSzerszammal := idobekero(5) ; az érték, hogy hány perces termelésről van szó

Loop, %kezdjunkSzerszammal% {
    szerszamBeszed(6, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY, 3, 2)
    szerszamBeszed(3, szerszam2X, szerszam2Y, szerszam2DefX, szerszam2DefY, 3, 2)
    szerszamBeszed(3, szerszam3X, szerszam3Y, szerszam3DefX, szerszam3DefY, 3, 2)

    szerszamIndit(szerszam1X, szerszam1Y, 3, 2)
}

Loop {

    ;Kristaly
    manufact(6, kristalyX, kristalyY, kristalyDefX, kristalyDefY, 3, 2)

    ;Márvány
    manufact(4, marvanyX, marvanyY, marvanyDefX, marvanyDefY, 2, 1)

    ;Drágakő
    manufact(4, dragakoX, dragakoY, dragakoDefX, dragakoDefY, 3, 2)

    ;torp vedobastya 407, 371
    MouseClick, left, rNum(404, 410), rNum(368, 374), , rNum(mouseSpeedMin, mouseSpeedMax) ;beszed
    rSleep(sleepMin, sleepMax)
    MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(mouseSpeedMin, mouseSpeedMax) ;félre klikk
    rSleep(sleepMin, sleepMax)
    ;arany szakadék 1351, 547
    MouseClick, left, rNum(1347, 1354), rNum(544, 550), , rNum(mouseSpeedMin, mouseSpeedMax) ;beszed
    rSleep(sleepMin, sleepMax)
    MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(mouseSpeedMin, mouseSpeedMax) ;félre klikk
    rSleep(sleepMin, sleepMax)

    

    ;Szerszám 3 óra (34) !!!!!!!!!!!!!!!!!!!
    Loop, 34 {
        szerszamBeszed(6, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY, 3, 2)
        szerszamBeszed(3, szerszam2X, szerszam2Y, szerszam2DefX, szerszam2DefY, 3, 2)
        szerszamBeszed(3, szerszam3X, szerszam3Y, szerszam3DefX, szerszam3DefY, 3, 2)

        szerszamIndit(szerszam1X, szerszam1Y, 3, 2)
    }
}


PgDn::
Reload