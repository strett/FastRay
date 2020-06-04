#MaxThreadsPerHotkey 3

$z::
	Click, down
	If GetKeyState("RButton","p"){
		While GetKeyState("z","p"){
			Send {WheelDown}
			Send {r}
			Send {3}
			sleep 60
		}
	} else {
		While GetKeyState("z","p"){
			Send {WheelDown}
			sleep 1
			Send {3}
			sleep 1
		}
	}
	Click, up
	sleep 50
	return
	
#!x:: ;win alt x
	ExitApp  ; Exit script

!c:: ;alt c
	Suspend  ; Suspend script