#IfWinActive, ahk_exe Client.exe
;MButton:: 
;Send, e
;Random, SleepAmount, 96, 193
;Sleep, %SleepAmount%
;Send, s


/* F12::
KeyDown := !KeyDown
If KeyDown
	SendInput {ALT down}
Else
	SendInput {ALT up}
Return
 */
 
/* 
!MButton::
SendInput ^b 
*/
MButton::
	KeyWait, MButton, T0.2
	
	if (ErrorLevel){
		MButton::MButton ;long
    }
	else {
		KeyWait, MButton, D T0.2

		if (ErrorLevel) {
            Send, e ;single
            }
			
		
		else {
			;double

			/* 
			Send, s
			Random, SleepAmount, 80, 123
			Sleep, %SleepAmount%
			Send, s
			 */
        }
	}

	KeyWait, MButton
return

