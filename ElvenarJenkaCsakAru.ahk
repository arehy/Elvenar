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

    
    rSleep(10010000, 10020000)
    Send, {F5} ;frissítés Chrome
    rSleep(800000, 810000)
    
    
    
}


PgDn::
Reload