;Böngésző méret: 50%
PgUp::

Gui, Add, Edit, vhour x10 y10 w40 h20 Number
Gui, Add, UpDown, vMyUpDown Range0-48, 0
Gui, Add, Text, x54 y12 w130 h20 , óra

Gui, Add, Edit, vmin x10 y50 w40 h20 Number
Gui, Add, UpDown, vMyUpDown2 Range0-48, 0
Gui, Add, Text, x54 y52 w130 h20 , perc

Gui, Add, CheckBox, vcsakManu x10 y90 w130 h24, Csak Manufaktúra

Gui, Add, Button, x10 y130 w60 h24 , Ok
Gui, Add, Button, x124 y130 w60 h24 , Cancel

Gui, Show,, Multiple Input Box.


Return
ButtonCancel:
GuiClose:
ExitApp

buttonok:
gui, submit
;msgbox, %hour%`n%min%`n%csakManu%

CoordMode, Mouse, Screen
#Include, iniElvenarJenka.ahk
#Include, functionsElvenarJenka.ahk   


    kezdjunkSzerszammal := kezdjunkSzerszammal(hour, min, 5)
    Loop, %kezdjunkSzerszammal% {
        if (csakManu = 0) {
            szerszamBeszed(szerszam1Num, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
            szerszamBeszed(szerszam2Num, szerszam2X, szerszam2Y, szerszam2DefX, szerszam2DefY)
            szerszamBeszed(szerszam3Num, szerszam3X, szerszam3Y, szerszam3DefX, szerszam3DefY)

            szerszamIndit(szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY) ;itt azért kell a szerszam1DefX és Y mert ebből számolja ki hogy mennyi lehet a koordináta eltérés
        }
        else {
            rSleep(3000, 4000)
            Send, {F5} ;frissítés Chrome
            rSleep(300000, 304000)
        }
    }


Loop {

    ;Kristaly
    manufact(kristalyNum, kristalyX, kristalyY, kristalyDefX, kristalyDefY)

    ;Márvány
    manufact(marvanyNum, marvanyX, marvanyY, marvanyDefX, marvanyDefY)

    ;Drágakő
    manufact(dragakoNum, dragakoX, dragakoY, dragakoDefX, dragakoDefY)

    ;torp vedobastya 407, 371
    szerszamBeszed(1, torpVedoBastyaX, torpVedoBastyaY, torpVedoBastyaDefX, torpVedoBastyaDefY)

    ;arany szakadék 1351, 547
    szerszamBeszed(1, aranySzakadekX, aranySzakadekY, aranySzakadekDefX, aranySzakadekDefY)


    
        ;Szerszám 3 óra !!!!!!!!!!!!!!!!!!!
        if (csakManu = 0) {
            loopNum := 33
        }
        else {
            loopNum := 35
        }
        Loop, %loopNum% {
            if (csakManu = 0) {
                szerszamBeszed(szerszam1Num, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
                szerszamBeszed(szerszam2Num, szerszam2X, szerszam2Y, szerszam2DefX, szerszam2DefY)
                szerszamBeszed(szerszam3Num, szerszam3X, szerszam3Y, szerszam3DefX, szerszam3DefY)

                szerszamIndit(szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY) ;itt azért kell a szerszam1DefX és Y mert ebből számolja ki hogy mennyi lehet a koordináta eltérés
            }
            else {
                rSleep(3000, 4000)
                Send, {F5} ;frissítés Chrome
                rSleep(300000, 304000)
            }       
        }
    
}


PgDn::
Reload