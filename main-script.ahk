; --------------------------------------------------------------------------------------------
;
;       General Stuff
;       Scripts I developed to manage standard windows functionality
;
; --------------------------------------------------------------------------------------------

; -----------------------------------------------------
; Always on top - Ctrl+Space on any window to put it on top
; -----------------------------------------------------
^SPACE::  
Winset, Alwaysontop, , A
return

; -----------------------------------------------------
; Reload script
; -----------------------------------------------------
^!r::Reload
return





; --------------------------------------------------------------------------------------------
;
;       SAP Stuff
;       Scripts I developed to increase productivity in the SAP system
;
; --------------------------------------------------------------------------------------------

; -----------------------------------------------------
; Close all SAP windows and log off
; -----------------------------------------------------
#IfWinActive ahk_class SAP_FRONTEND_SESSION
^Q::
Send {CtrlDown}/{CtrlUp}
SendInput, /nend
Send {Enter}
return

; -----------------------------------------------------
; Close current SAP session
; -----------------------------------------------------
#IfWinActive ahk_class SAP_FRONTEND_SESSION
^W::
Send {CtrlDown}/{CtrlUp}
SendInput, /i
Send {Enter}
return

; -----------------------------------------------------
; Open new SAP session
; -----------------------------------------------------
#IfWinActive ahk_class SAP_FRONTEND_SESSION
^Enter::
Send {CtrlDown}{+}{CtrlUp}
return