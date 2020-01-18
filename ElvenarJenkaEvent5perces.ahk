;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen

#Include, functionsElvenarJenka.ahk


Loop {
    #Include iniElvenarJenka.ahk

    ;Kristaly
    manufact(6, kristalyX, kristalyY, -64, -32, 3, 2)

    ;Márvány
    ;manufact(4, marvanyX, marvanyY, -30, -16, 2, 1)

    ;Drágakő
    manufact(4, dragakoX, dragakoY, -60, -32, 3, 2)

    
    ;Szerszám 7x5(3 óra)!!!!!!!!!!!!!!!!!!!
    Loop, 7{
        Loop, 5 {
            szerszamBeszed(6, szerszam1X, szerszam1Y, -46, -24, 3, 2)
            szerszamBeszed(3, szerszam2X, szerszam2Y, -77, -42, 4, 3)
            szerszamBeszed(1, szerszam3X, szerszam3Y, -77, -42, 4, 2)
            szerszamIndit(szerszam1X, szerszam1Y, 3, 2)
        }
    MouseClick, left, rNum(5, 23), rNum(285, 305), , rNum(7, 13)
    rSleep(1500, 2200)
    MouseClick, left, rNum(744, 755), rNum(393, 406), , rNum(7, 13) ;törpe sörfőzde kiválasztás
    rSleep(800, 1200)
    MouseClick, left, rNum(754, 821), rNum(499, 505), , rNum(7, 13) ;begyűjtés gomb
    rSleep(800, 1200)
    MouseClick, left, rNum(1038, 1266), rNum(158, 266), , rNum(7, 13) ;félre klikk
    rSleep(800, 1200)
    }
    
}


PgDn::
Reload