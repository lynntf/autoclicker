#include <Constants.au3>

global $x = 1
HotKeySet("{F8}", "pause")
HotKeySet("{F9}", "click")
HotKeySet("{F10}", "stop")

MsgBox($MB_SYSTEMMODAL, "AutoClicker", "F9 to click" & @CRLF & "F8 to pause" & @CRLF & "F10 to quit")


While 1
	Sleep(60000)
WEnd

MsgBox($MB_SYSTEMMODAL, "AutoClicker", "F9 to click" & @CRLF & "F8 to pause" & @CRLF & "F10 to quit")

Func click()
	$x = 1
	While $x == 1
		MouseClick("primary", MouseGetPos()[0], MouseGetPos()[1], 10, 0)
		If $x < 0 Then
			Break
		EndIf
	WEnd
EndFunc

Func pause()
	$x = 0
	While 1
		Sleep(60000)
	WEnd
EndFunc

Func stop()
	Exit
EndFunc

Exit