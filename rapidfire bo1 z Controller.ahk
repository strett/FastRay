;Created by Strett
#MaxThreadsPerHotkey 3

$z::
	Click, down
	Loop, 8 {
		Send q3
		sleep 8
	}
	Click, up
	sleep 60
	return

;To exit the script press win + alt + x
#!x:: 									;win alt x
	ExitApp  							;Exit script

;To suspend the script press alt + c
!c:: 									;alt c
	Suspend  							;Suspend script
