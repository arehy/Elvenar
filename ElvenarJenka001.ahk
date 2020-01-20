;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen


#Include, functionsElvenarJenka.ahk


Loop {
    #Include, iniElvenarJenka.ahk

    ;Kristaly
    manufact(6, kristalyX, kristalyY, -64, -32, 3, 2)

    ;Márvány
    manufact(4, marvanyX, marvanyY, -30, -16, 2, 1)

    ;Drágakő
    manufact(4, dragakoX, dragakoY, -60, -32, 3, 2)

    ;torpVedobastya 407, 371
    MouseClick, left, rNum(404, 410), rNum(368, 374), , rNum(7, 13) ;beszed
    rSleep(800, 1200)
    MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(7, 13) ;félre klikk
    rSleep(800, 1200)
    
    ;Szerszám 3 óra (35) !!!!!!!!!!!!!!!!!!!
    Loop, 35 {
        szerszamBeszed(6, szerszam1X, szerszam1Y, -46, -24, 3, 2)
        szerszamBeszed(3, szerszam2X, szerszam2Y, -77, -42, 4, 3)
        szerszamBeszed(3, szerszam3X, szerszam3Y, -77, -42, 4, 2)

        szerszamIndit(szerszam1X, szerszam1Y, 3, 2)
    }
}


PgDn::
Reload