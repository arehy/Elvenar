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

if (csakManu = 0) {
    kezdjunkSzerszammal := kezdjunkSzerszammal(hour, min, 5)
    ;msgbox, %kezdjunkSzerszammal%
    Loop, %kezdjunkSzerszammal% {
        szerszamBeszed(6, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
        szerszamBeszed(3, szerszam2X, szerszam2Y, szerszam2DefX, szerszam2DefY)
        szerszamBeszed(3, szerszam3X, szerszam3Y, szerszam3DefX, szerszam3DefY)

        szerszamIndit(szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY) ;itt azért kell a szerszam1DefX és Y mert ebből számolja ki hogy mennyi lehet a koordináta eltérés
    }
}
else {
    min := percSzamolo(hour, min)
    sec := min * 60
    milisec := sec * 1000
    Sleep, %milisec%
}

Loop {

    ;Kristaly
    manufact(6, kristalyX, kristalyY, kristalyDefX, kristalyDefY)

    ;Márvány
    manufact(4, marvanyX, marvanyY, marvanyDefX, marvanyDefY)

    ;Drágakő
    manufact(4, dragakoX, dragakoY, dragakoDefX, dragakoDefY)

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

    
    if (csakManu = 0) {
        ;Szerszám 3 óra (34) !!!!!!!!!!!!!!!!!!!
        Loop, 34 {
            szerszamBeszed(6, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
            szerszamBeszed(3, szerszam2X, szerszam2Y, szerszam2DefX, szerszam2DefY)
            szerszamBeszed(3, szerszam3X, szerszam3Y, szerszam3DefX, szerszam3DefY)

            szerszamIndit(szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY) ;itt azért kell a szerszam1DefX és Y mert ebből számolja ki hogy mennyi lehet a koordináta eltérés
        }
    }
    else {
        rSleep(10010000, 10020000)
        Send, {F5} ;frissítés Chrome
        rSleep(800000, 810000)
    }
}


PgDn::
Reload