Step 1:
	Download the zip
	Unzip
	Save the files anywhere you like

Step 2:
	2.1:
		Copy the following binds into your config

		//###############
		bind MWHEELDOWN "weapnext"
		bind2 MWHEELDOWN "+reload"
		bind Q "weapnext"
		bind2 Q "+reload"
		bind R "+reload"
		bind 1 "weapnext"
		bind 3 "weapprev"
		//###############


		For Bo1:
			config.cfg within the folder:
			C:\Program Files (x86)\Steam\steamapps\common\Call of Duty Black Ops\players

		For Bo2:
			bindings_zm.bdg within the folder
			C:\Program Files (x86)\Steam\steamapps\common\Call of Duty Black Ops II\players


		To edit your config, open config.cfg for bo1, or bindings_zm.bdg for bo2. Edit with Notepad++ or any text editor and add the binds as shown above. 
		Make sure your binds don't confict if the key is already bound.

	2.2:
		Save the file
		Right click -> properties -> Change file to "Read-only" -> click ok

Step 3:
	Download AutoHotKey from here
	https://www.autohotkey.com/
	Download and install. Once downloading, just exit if it automatically opens

Step 4:
	Run the game

Step 5:
	Run 
		ExitAllScripts.ahk
	This script will close ALL scripts by typing win + alt + x
	Run this one first. This is a script as a fail safe. If you get stuck with a script running then the ExitAllScripts.ahk with close all scripts by pressing win + alt + x

	Select which script you'd like to use:
		rapidfire bo1 left click.ahk
		rapidfire bo1 z.ahk
		rapidfire bo2 left click.ahk
		rapidfire bo2 z.ahk

	bo1, or bo2.
	Hold "Left click" to activate or hold "z" to activate. Only use 1 rapidfire script at any given time

Step 6:	
	Run the ahk script with AutoHotkey
	In order to run the script. Just double click the file within Windows file manager

Step 7:	
	To end the script press Win + Alt + x
		OR
	Press alt + c to suspend the script. This will pause the script. And pressing alt + c again will unpause the script

	To see which scripts are running, look at you windows taskbar system tray. A 'H' icon will display. The 'H' shows which scripts are running. You can right click the icon to exit or suspend the script.
	NB: the ExitAllScripts.ahk will NOT show in the tray, but the rapidfire script will.

	Do not run the script more that once. Just double click it run and you're good to go.

	IMPORTANT: Remember to exit the script type Win + Alt + x !!!!!!!
	This is important if you find yourself stuck being unable to close it

Step 8:
	You should now have RapidFire/Fastray up and running

####################################################

HOW TO CUSTOMISE THE BINDS AND MACROS

Step 1:
	Open the scripts with Notepad++ or any text editor

	This is what one of the scripts looks like

########################################
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
		While GetKeyState("z","p"){ 	;while z is held do the following
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
########################################	

Step 2:
	Edit this how you would like to customise it for yourself

	Scipt explained, so you'll know how to customise it:
	

	$z::
	This means when 'z' is held the script will be executed
	Change z to another key of your choice.
	If you change the key then you'll have to change z in the lines below as well
	While GetKeyState("z","p"){
	While GetKeyState("z","p"){ 



	If you wish to use other binds you'll need to change lines like these
	Send {WheelDown} 			;Mouse wheel down = weapnext, +reload
	Send {r} 					;r = +reload
	Send {3} 					;3 = weapprev
	Send {1}					;1 = weapnext
	Send q3 					;q = weapnext, +reload. 3 = weapprev

	As an example lets say you already use Q as betty 
	bind Q "+actionslot 4"
	and you want to continue using that key
	You'll need to edit the ahk scripts instances of 
	"Send q3" to 
	"Send KEY3"
	And in your config change 
	bind Q "weapnext"
	bind2 Q "+reload"

	to

	bind KEY "weapnext"
	bind2 KEY "+reload"


With this knowledge you should be able to make your own versions, with your own bindings.
If you would like to learn more GOOGLE is your friend.
https://www.autohotkey.com/docs/Tutorial.htm
