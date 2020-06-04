#MaxThreadsPerHotkey 3

$LButton::
	Click, down
	If GetKeyState("RButton","p"){
		While GetKeyState("LButton","p"){
			Send {WheelDown}
			Send {r}
			Send {3}
			sleep 60
		}
	} else {
		While GetKeyState("LButton","p"){
			Send q3
		}
	}
	Click, up
	sleep 50
	return
	
#!x:: ;win alt x
	ExitApp  ; Exit script

!c:: ;alt c
	Suspend  ; Suspend script