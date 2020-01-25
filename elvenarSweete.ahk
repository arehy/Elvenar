;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen

#Include iniElvenarSweete.ahk
#Include, functionsElvenarJenka.ahk

kezdjunkSzerszammal := idobekero(5) ; az érték, hogy hány perces termelésről van szó

Loop {
    

    ;Kristaly
    manufact(5, kristalyX, kristalyY, -48, 25, 3, 2)

    ;Márvány
    manufact(4, marvanyX, marvanyY, -30, -17, 2, 1)

    ;Drágakő
    manufact(2, dragakoX, dragakoY, -60, -30, 3, 2)

    ;arany szakadék 468, 451
    MouseClick, left, rNum(465, 471), rNum(448, 454), , rNum(mouseSpeedMin, mouseSpeedMax) ;beszed
    rSleep(800, 1200)
    MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(mouseSpeedMin, mouseSpeedMax) ;félre klikk
    rSleep(800, 1200)

    ;Szerszám 3 óra (34) !!!!!!!!!!!!!!!!!!!
    Loop, 34 {
        szerszamBeszed(8, szerszam1X, szerszam1Y, -46, -24, 3, 2)
        szerszamIndit(szerszam1X, szerszam1Y, 3, 2)
        ;szerszamIndit(833, 458, 3, 2) ; ideiglenes

    }
}


PgDn::
Reload
