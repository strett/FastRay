;Created by Strett
#MaxThreadsPerHotkey 3

$z:: 		;Change the z to any key you would like to be the macro button
	Click, down 						;Left click down
	If GetKeyState("RButton","p"){ 		;if right click is held
		While GetKeyState("z","p"){ 	;If you change z, you need to change z here aswell
			Send {WheelDown} 			;Mouse wheel down = weapnext, +reload
			Send {r} 					;r = +reload
			Send {3} 					;3 = weapprev
			sleep 60					;wait 60ms
		}
	} else {
		While GetKeyState("z","p"){ 	;Change z here as well
			Send q3 					;q = weapnext, +reload. 3 = weapprev
		}
	}
	Click, up							;Left click down
	sleep 50 							;wait 50ms
	return
	
;To exit the script press win + alt + x
#!x:: 									;win alt x
	ExitApp  							;Exit script

;To suspend the script press alt + c
!c:: 									;alt c
	Suspend  							;Suspend script