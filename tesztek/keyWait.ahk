/* MButton::
	KeyWait, MButton, T0.2
	
	if (ErrorLevel)
		Send long
	else {
		KeyWait, MButton, D T0.2
		if (ErrorLevel)
			Send single
		else
			Send double
	}
	KeyWait, MButton
return

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
			Send, s
			Random, SleepAmount, 80, 123
			Sleep, %SleepAmount%
			Send, s
        }
	}

	KeyWait, MButton
return

