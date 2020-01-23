PgUp::
CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.

Loop {
    loginAblak1hiba := True
    loginAblak2hiba := True
    loginAblak3hiba := True

    ;ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, loginAblak.png
    ImageSearch, FoundX, FoundY, 313, 252, 677, 400, loginAblak.png
    if (ErrorLevel = 2) {
        MsgBox Could not conduct the search.
    }
    else if (ErrorLevel = 1) {
        ;MsgBox Icon could not be found on the screen.
        loginAblak1hiba := False
    }
    else {
        ;MsgBox The icon was found at %FoundX%x%FoundY%.
        MouseClick, left, 1365, 19, , 7
        ;Sleep, 2000
    }

    ImageSearch, FoundX, FoundY, 307, 225, 778, 380, loginAblak2.png
    if (ErrorLevel = 2) {
        MsgBox Could not conduct the search.
    }
    else if (ErrorLevel = 1) {
        ;MsgBox Icon could not be found on the screen.
        loginAblak2hiba := False
    }
    else {
        ;MsgBox The icon was found at %FoundX%x%FoundY%.
        MouseClick, left, 1592, 12, , 7
        ;Sleep, 2000
    }
    ImageSearch, FoundX, FoundY, 228, 307, 493, 546, loginAblak3.png
    if (ErrorLevel = 2) {
        MsgBox Could not conduct the search.
    }
    else if (ErrorLevel = 1) {
        ;MsgBox Icon could not be found on the screen.
        loginAblak3hiba := False
    }
    else {
        ;MsgBox The icon was found at %FoundX%x%FoundY%.
        MouseClick, left, 289, 11, , 7
        ;Sleep, 2000
    }



    ;if (loginAblak1hiba = False and loginAblak2hiba = False and loginAblak3hiba = False)
        ;MsgBox Elindul a lényeg

}

PgDn::
Reload