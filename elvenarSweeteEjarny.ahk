;Böngésző méret: 50%
PgUp::
CoordMode, Mouse, Screen

#Include, globalVar.ahk
#Include, iniElvenarSweete.ahk
#Include, functionsElvenarJenka.ahk


Loop {
    

    ;Kristaly
    manufact(kristalyNum, kristalyX, kristalyY, kristalyDefX, kristalyDefY)

    ;Márvány
    manufact(marvanyNum, marvanyX, marvanyY, marvanyDefX, marvanyDefY)

    ;Drágakő
    manufact(dragakoNum, dragakoX, dragakoY, dragakoDefX, dragakoDefY)

    ;arany szakadék 468, 451
    szerszamBeszed(1, aranySzakadekX, aranySzakadekY, aranySzakadekDefX, aranySzakadekDefY)

    ;Éjfarm
    manufact(2, ejfarmX, ejfarmY, ejfarmDefX, ejfarmDefY)

    ;Szerszám 1.5 óra (17) !!!!!!!!!!!!!!!!!!!
    Loop, 17 {
        szerszamBeszed(szerszam1Num, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
        szerszamIndit(szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
        ;szerszamIndit(833, 458, 3, 2) ; ideiglenes

    }
    ;Éjfarm
    manufact(2, ejfarmX, ejfarmY, ejfarmDefX, ejfarmDefY)

    ;Szerszám 1.5 óra (17) !!!!!!!!!!!!!!!!!!!
    Loop, 17 {
        szerszamBeszed(szerszam1Num, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
        szerszamIndit(szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
        ;szerszamIndit(833, 458, 3, 2) ; ideiglenes

    }
}


PgDn::
Reload
