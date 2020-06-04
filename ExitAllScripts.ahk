#NoTrayIcon ; Hide the tray icon. (Use Win + Alt + X to close.)

#!x::
+#!x::
DetectHiddenWindows, On 
WinGet, List, List, ahk_class AutoHotkey 


Loop %List% 
  { 
    WinGet, PID, PID, % "ahk_id " List%A_Index% 
    If ( PID <> DllCall("GetCurrentProcessId") ) 
         PostMessage,0x111,65405,0,, % "ahk_id " List%A_Index% 
  }