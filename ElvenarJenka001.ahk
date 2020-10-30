;Böngésző méret: 50%
PgUp::

Gui, Add, Edit, vhour x10 y10 w40 h20 Number
Gui, Add, UpDown, vMyUpDown Range0-48, 0
Gui, Add, Text, x54 y12 w130 h20 , óra

Gui, Add, Edit, vmin x10 y50 w40 h20 Number
Gui, Add, UpDown, vMyUpDown2 Range0-48, 0
Gui, Add, Text, x54 y52 w130 h20 , perc

Gui, Add, CheckBox, vcsakManu x10 y90 w130 h24, Csak Manufaktúra

Gui, Add, Button, x10 y130 w60 h24 Default, Ok
Gui, Add, Button, x124 y130 w60 h24 , Cancel

Gui, Show,, Multiple Input Box.


Return
ButtonCancel:
GuiClose:
ExitApp

buttonok:
gui, submit ;ha nem akarjuk. hogy eltünjön az ablak az ok gomb lenyomása után, akkor ,NoHide -ot írjunk a submit után
;msgbox, %hour%`n%min%`n%csakManu%



CoordMode, Mouse, Screen
#Include, globalVar.ahk
#Include, iniElvenarJenka.ahk
#Include, functionsElvenarJenka.ahk   
Gui, New 
Gui, GuiName:New 
Gui, +AlwaysOnTop
Gui, Add, Text, vSzerszam x54 y12 w130 h20
Gui, Show, x0 y200
if (csakManu = 0) {
    n := 1
    kezdjunkSzerszammal := kezdjunkSzerszammal(hour, min, 5)
    ;msgbox, %kezdjunkSzerszammal%
    Loop, %kezdjunkSzerszammal% {
        GuiControl, ,Szerszam ,%n% / %kezdjunkSzerszammal%
        ;MsgBox, , , %n% / %kezdjunkSzerszammal%, 1
        szerszamBeszed(szerszam1Num, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
        szerszamBeszed(szerszam2Num, szerszam2X, szerszam2Y, szerszam2DefX, szerszam2DefY)
        szerszamBeszed(szerszam3Num, szerszam3X, szerszam3Y, szerszam3DefX, szerszam3DefY)

        szerszamIndit(szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY) ;itt azért kell a szerszam1DefX és Y mert ebből számolja ki hogy mennyi lehet a koordináta eltérés
        n += 1
    }
}
else {
    min := percSzamolo(hour, min)
    ;msgbox, %min%
    sec := min * 60
    milisec := sec * 1000
    milisec := milisec - 300000
    Sleep, %milisec%
    if (min > 4) {
        Send, {F5} ;frissítés Chrome
        rSleep(300000, 304000)
    }
    
}

Loop {

    
    ;Kristaly
    manufact(kristalyNum, kristalyX, kristalyY, kristalyDefX, kristalyDefY)

    ;Márvány
    manufact(marvanyNum, marvanyX, marvanyY, marvanyDefX, marvanyDefY)
    manufact(marvany2Num, marvany2X, marvany2Y, marvanyDefX, marvanyDefY)
    manufact(marvany3Num, marvany3X, marvany3Y, marvanyDefX, marvanyDefY)
    manufact(marvany4Num, marvany4X, marvany4Y, marvanyDefX, marvanyDefY)

    ;Drágakő
    manufact(dragakoNum, dragakoX, dragakoY, dragakoDefX, dragakoDefY)

    ;Erdei kor
    manufact(erdeiGyartoSorNum, erdeiGyartoSorX, erdeiGyartoSorY, erdeiGyartoSorDefX, erdeiGyartoSorDefY)
    ;manufact(erdeiGyartoSor2Num, erdeiGyartoSor2X, erdeiGyartoSor2Y, erdeiGyartoSorDefX, erdeiGyartoSorDefY)

    manufact(erdeiMarvanyNum, erdeiMarvanyX, erdeiMarvanyY, erdeiMarvanyDefX, erdeiMarvanyDefY)
    manufact(erdeiAcelNum, erdeiAcelX, erdeiAcelY, erdeiAcelDefX, erdeiAcelDefY)
    manufact(erdeiFaNum, erdeiFaX, erdeiFaY, erdeiFaDefX, erdeiFaDefY)

    ;torp vedobastya 407, 371
    szerszamBeszed(1, torpVedoBastyaX, torpVedoBastyaY, torpVedoBastyaDefX, torpVedoBastyaDefY)

    ;gombakSzentelye 800, 508
    szerszamBeszed(1, gombakSzentelyeX, gombakSzentelyeY, gombakSzentelyeDefX, gombakSzentelyeDefY)

    ;arany szakadék 1351, 547
    szerszamBeszed(1, aranySzakadekX, aranySzakadekY, aranySzakadekDefX, aranySzakadekDefY)

    ;küldi beszed
    ;MouseClick, left, 15, 193, , rnum(mouseSpeedMin, mouseSpeedMax)
    ;rSleep(sleepMin, sleepMax)
    ;MouseClick, left, 692, 487, , rnum(mouseSpeedMin, mouseSpeedMax)
    ;rSleep(sleepMin, sleepMax)
    ;moveClickOutside()
    ;rSleep(sleepMin, sleepMax)


    
    if (csakManu = 0) {
        n := 1
        ;Szerszám 3 óra (34) !!!!!!!!!!!!!!!!!!!
        Loop, 33 {
            GuiControl, ,Szerszam ,%n% / 33
            ;MsgBox, , , %n%, 1
            szerszamBeszed(szerszam1Num, szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY)
            szerszamBeszed(szerszam2Num, szerszam2X, szerszam2Y, szerszam2DefX, szerszam2DefY)
            szerszamBeszed(szerszam3Num, szerszam3X, szerszam3Y, szerszam3DefX, szerszam3DefY)

            szerszamIndit(szerszam1X, szerszam1Y, szerszam1DefX, szerszam1DefY) ;itt azért kell a szerszam1DefX és Y mert ebből számolja ki hogy mennyi lehet a koordináta eltérés
            n += 1
        }
    }
    else {
        rSleep(10500000, 10504000)
        Send, {F5} ;frissítés Chrome
        rSleep(300000, 304000)
    }
}


PgDn::
Reload