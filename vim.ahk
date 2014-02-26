#SingleInstance force
RAlt & j:: Send {Left}
RAlt & l:: Send {Right}
RAlt & i:: Send {Up}
RAlt & k:: Send {Down}
RAlt & o:: Send {Home}
RAlt & p:: Send {End}
RAlt & BS::Send {BS}
RAlt & q::Send {BS}
RAlt & w::Send {Delete}
RAlt & z::Send ^{z}
RAlt & c::Send ^{c}
RAlt & x::Send ^{x}
RAlt & f::Send ^{f}
RAlt & Enter::Send {Enter}
#If GetKeyState("LAlt","P")
	RAlt & j:: Send {Home}
	RAlt & l:: Send {End}
	RAlt & i:: Send ^{Home}
	RAlt & k:: Send ^{End}
return
#If GetKeyState("Shift","P")
   	RAlt & j:: Send +{Left}
	RAlt & l:: Send +{Right}
	RAlt & i:: Send +{Up}
	RAlt & k:: Send +{Down}
	RAlt & o:: Send +{Home}
	RAlt & p:: Send +{End}
return
#If GetKeyState("Ctrl","P")
   	RAlt & j:: Send ^{Left}
	RAlt & l:: Send ^{Right}
	RAlt & i:: Send !{Up}
	RAlt & k:: Send !{Down}
return

; ^!r::
; SetTitleMatchMode, 2 
; IfWinExist, Google Chrome               ; find Chrome
; {
;     WinActivate                         ; use the window found above
;     Send ^r                             ; send browser refresh
; }
; WinActivate, WebStorm
; return

^F1::
SetTitleMatchMode, 2
; WinActivate, WebStorm
; WinActivate, XYplorer
return

^F2::
SetTitleMatchMode, 2
WinActivate, Google Chrome
return


^F3::
SetTitleMatchMode,2
IfWinNotExist, XYplorer
	Run "C:\xyplorer\XYplorer.exe"
else
	IfWinActive, XYplorer
	{
		WinMinimize, XYplorer
	}
else
	WinActivate, XYplorer
return

