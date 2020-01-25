PgUp::
a := idobekero(5)
MsgBox %a%
idobekero(oszto){
    InputBox, perc, Kiskacsauraloooom!, Percben add meg az időt mennyi van még a manufaktúra termelésből
    if ErrorLevel
        Exit App

    percArray := StrSplit(perc, ",")
    n := 1
    manu := percArray[1]
    manu *= n ; azért szorozzuk be, mert így üres karaktert ad vissza, ha az input nem szam
    szerszam := percArray[2]
    szerszam *= n
    MsgBox manu: %manu% - szerszam: %szerszam%
    if (perc = 0){
        return 0
    }
    else if (manu = ""){
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