;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen

#Include, functionsElvenarJenka.ahk
#Include iniElvenarSweete.ahk

Loop {
    
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
