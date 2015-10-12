; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;LControl ::LWin
;LWin::LAlt
;LAlt::LControl 
;RAlt::RControl 
;RWin::LAlt
;AppsKey::RWin
;RControl::AppsKey
;RAlt::RControl


;; Japanese keyboard
; Description for additional keys (compared to an US keyboard)
; NCONV: Non-convert (left to the Space Bar, 07B)
; CONV: Convert (right to the Space Bar, 079)
; KANA: Kana (right to the Convert key, 070)
; YEN: Yen symbol (left to the Backspace key, 07D)
; BSLS: Backslash (left to the Right Shift key, 073)

; Use YEN as additional Backspace
*sc07D::Send {Blind}{Backspace}

; Use NCONV as Left Control
;sc07B::LControl
*sc07B::Send {LControl Down}
*sc07B Up::Send {LControl Up}

; Use CONV as Right Control
*sc079::Send {RControl Down}
*sc079 Up::Send {RControl Up}

; Use KANA as Right Shift
;*sc070::Send {RShift Down}
;*sc070 Up::Send {RShift Up}
; Use KANA as Lef Alt
*sc070::Send {LAlt Down}
*sc070 Up::Send {LAlt Up}

; Use Right Alt (Alt Gr) as Left Alt
;RAlt::LAlt
; Use Right Alt (Alt Gr) as Right Super
RAlt::RWin

; Use BSLS as Underscore
;sc073::_
; Use BSLS as Right Shift
*sc073::Send {RShift Down}
*sc073 Up::Send {RShift Up}

;; Cursor mode with CapsLock
;CapsLock & i::Send {Up}
;CapsLock & k::Send {Down}
;CapsLock & j::Send {Left}
;CapsLock & l::Send {Right}
;CapsLock & u::Send {Home}
;CapsLock & o::Send {End}
