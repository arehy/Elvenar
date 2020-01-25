PgUp::
a := idobekero(5)
MsgBox %a%
idobekero(oszto){
    InputBox, perc, Kiskacsauraloooom!, Percben add meg az időt mennyi van még a manufaktúra termelésből
    if ErrorLevel
        Exit App
    n := 60
    masodperc := perc * n

    if (perc = 0){
        return 0
    }
    else if (masodperc = ""){
        MsgBox, Ez nem szám volt, próbáld újra
        idobekero(oszto)
    }
    else {
        result := perc / oszto
        result := Ceil(result)
        return result
        ;Run Shutdown /S /T %masodperc%
    }
    return
}

PgDn::
Reload