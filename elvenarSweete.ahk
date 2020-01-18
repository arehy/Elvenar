;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen

#Include, functionsElvenarSweete.ahk


Loop {
    #Include iniElvenarSweete.ahk

    ;Kristaly
    manufact(5, kristalyX, kristalyY, -64, -32, 3, 2)

    ;Márvány
    manufact(4, marvanyX, marvanyY, -30, -16, 2, 1)

    ;Drágakő
    manufact(2, dragakoX, dragakoY, -60, -32, 3, 2)


    ;Szerszám 3 óra (35) !!!!!!!!!!!!!!!!!!!
    szerszam(35, 9, szerszamX, szerszamY, -46, 24, 3, 2)

}


PgDn::
Reload
