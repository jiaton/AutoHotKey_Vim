;;====================Feng Ruohang's AHK Script=====================;;
;;===================Modified By Shines77(Guozi)====================;;
;;==================================================================;;
;;=========================CapsLock's Stuff=========================;;
;;==================================================================;;

;;==================================================================;;
;; From: http://www.autohotkey.com/docs/Hotkeys.htm
;;==================================================================;;

UMDelay = 20


SetCapsLockState, AlwaysOff
;;SetCapsLockState, Off

;;====================== CapsLock Switcher ========================||
CapsLock & Space::
    GetKeyState, CapsLockState, CapsLock, T
    if CapsLockState = D
        SetCapsLockState, AlwaysOff
    else
        SetCapsLockState, AlwaysOn
    KeyWait, ``
return

;;=============================Navigator============================||
;===========================;I = Home & Ctrl + Home
CapsLock & u::
    if GetKeyState("control") = 0
    {
        ; Home
        if GetKeyState("alt") = 0
            Send, {Home}
        else
            Send, +{Home}
        return
    }
    else {
        ; Ctrl + Home
        if GetKeyState("alt") = 0
            Send, ^{Home}
        else
            Send, +^{Home}
        return
    }
return
;===========================;O = End & Ctrl + End
CapsLock & o::
    if GetKeyState("control") = 0
    {
        ; End
        if GetKeyState("alt") = 0
            Send, {End}
        else
            Send, +{End}
        return
    }
    else {
        ; Ctrl + End
        if GetKeyState("alt") = 0
            Send, ^{End}
        else
            Send, +^{End}
        return
    }
return
;===========================;U = PageUp & Ctrl + PageUp
CapsLock & p::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
            Send, {PgUp}
        else
            Send, +{PgUp}
        return
    }
    else {
        if GetKeyState("alt") = 0
            Send, ^{PgUp}
        else
            Send, +^{PgUp}
        return
    }
return
;===========================;P = PageDown & Ctrl + PageDown
CapsLock & `;::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
            Send, {PgDn}
        else
            Send, +{PgDn}
        return
    }
    else {
        if GetKeyState("alt") = 0
            Send, ^{PgDn}
        else
            Send, +^{PgDn}
        return
    }
return
;===========================;K = UP & Ctrl + UP
CapsLock & i::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
            Send, {Up}
        else
            Send, +{Up}
        return
    }
    else {
        if GetKeyState("alt") = 0
            Send, ^{Up}
        else
            Send, +^{Up}
        return
    }
return
;===========================;J = Down & Ctrl + Down
CapsLock & k::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
            Send, {Down}
        else
            Send, +{Down}
        return
    }
    else {
        if GetKeyState("alt") = 0
            Send, ^{Down}
        else
            Send, +^{Down}
        return
    }
return
;===========================;J = Left & Win + Left
CapsLock & j::
    if GetKeyState("LWin") = 0 && GetKeyState("RWin") = 0  ; Check if either Windows key is pressed
    {
        if GetKeyState("shift") = 0
            Send, {Left}
        else
            Send, +{Left}
        return
    }
    else {
        if GetKeyState("shift") = 0
            Send, ^{Left}  ; Still sends Ctrl+Left for word navigation
        else
            Send, +^{Left}
        return
    }
return

;===========================;L = Right & Win + Right
CapsLock & l::
    if GetKeyState("LWin") = 0 && GetKeyState("RWin") = 0  ; Check if either Windows key is pressed
    {
        if GetKeyState("shift") = 0
            Send, {Right}
        else
            Send, +{Right}
        return
    }
    else {
        if GetKeyState("shift") = 0
            Send, ^{Right}  ; Still sends Ctrl+Right for word navigation
        else
            Send, +^{Right}
        return
    }
return
;===========================;Block Windows+L to prevent screen locking
#l::return
#+l::return

;===========================;Block Windows Game Bar and Widgets
#g::return              ; Block Win+G (Xbox Game Bar)
#w::return              ; Block Win+W (Widgets)
#r::return              ; Block Win+R (Run dialog)

;;============= Navigate source code in Visual Studio ==============||
;===========================;CapsLock + - == Ctrl + - (Backward Navigite)
CapsLock & -::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
            Send, ^-
        else
            Send, !-
        return
    }
    else {
        if GetKeyState("alt") = 0
            Send, +-
        else
            Send, ^!-
        return
    }
return
;===========================;CapsLock + = == Shift + Ctrl + - (Forward Navigite)
CapsLock & =::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
            Send, +^=
        else
            Send, !=
        return
    }
    else {
        if GetKeyState("alt") = 0
            Send, +=
        else
            Send, ^!=
        return
    }
return

;;=============================Backspace==============================||
;===========================; Backsace = CapsLock + [
CapsLock & [::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
            Send, {BS}
        else
            Send, +{Home}{Del}
        return
    }
    else {
        if GetKeyState("alt") = 0
            Send, ^{BS}
        else
            Send, ^!{BS}
        return
    }
return
;===========================; Backspace = CapsLock + ]
CapsLock & ]::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
            Send, {Del}
        else
            Send, +{End}{Del}
        return
    }
    else {
        if GetKeyState("alt") = 0
            Send, ^{Del}
        else
            Send, ^!{Del}
        return
    }
return

;;============================= Enter ==============================||
CapsLock & h::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
            Send, {Enter}
        else
            Send, +{Enter}
        return
    }
    else {
        if GetKeyState("alt") = 0
            Send, ^{Enter}
        else
            Send, ^+{Enter}
        return
    }
return

;;=============================Deletor==============================||
CapsLock & ,:: Send, {Del}              ; , = Del char after
CapsLock & .:: Send, ^{Del}             ; . = Del word after
CapsLock & /:: Send, +{End}{Del}        ; / = Del all  after

CapsLock & m:: Send, {BS}               ; m = Del char before;
CapsLock & n:: Send, ^{BS}              ; n = Del word before;
CapsLock & b:: Send, +{Home}{Del}       ; b = Del all  before;

;;============================Special Char==========================||
CapsLock & ':: Send, =                  ; ' = =
;;CapsLock & `;:: Send, {Enter}           ; ; = Enter
;;CapsLock & {:: Send, +9                 ; { = (
;;CapsLock & }:: Send, +0;                ; } = )
;;CapsLock & `:: Send, +``                ; Shift
CapsLock & 4:: Send, +4
CapsLock & 5:: Send, +5
CapsLock & 6:: Send, +6
CapsLock & 7:: Send, +7
CapsLock & 8:: Send, +8
CapsLock & 9:: Send, +9
CapsLock & 0:: Send, +0
;;CapsLock & -:: Send, +-
;;CapsLock & =:: Send, +=
CapsLock & \:: Send, +=

;;============================Editor================================||
CapsLock & z:: Send, ^z                 ; Z = Cancel
CapsLock & x:: Send, ^x                 ; X = Cut
CapsLock & c:: Send, ^c                 ; C = Copy
CapsLock & v:: Send, ^v                 ; V = Paste
CapsLock & a:: Send, ^a                 ; A = Select All
CapsLock & y:: Send, ^y                 ; Y = Redo

;;===========================Controller=============================||
CapsLock & s:: Send, ^{Tab}             ; Switch Tag    S = {Ctr + Tab}
CapsLock & w:: Send, ^w                 ; Close Tag     W = {Ctr + W}
CapsLock & q:: Send, !{F4}              ; Close Window  Q = {Alt + F4}

;;======================= Mouse Controller ==========================||
CapsLock & Up::    MouseMove, 0, -10, 0, R     ; CapsLock + UpArrow hotkey => Move cursor upward
CapsLock & Down::  MouseMove, 0, 10, 0, R      ; CapsLock + DownArrow => Move cursor downward
CapsLock & Left::  MouseMove, -10, 0, 0, R     ; CapsLock + LeftArrow => Move cursor to the left
CapsLock & Right:: MouseMove, 10, 0, 0, R      ; CapsLock + RightArrow => Move cursor to the right
CapsLock & Enter::
    SendEvent {Blind}{LButton down}
    KeyWait Enter
    SendEvent {Blind}{LButton up}
return

;;=========================== CapsLock =============================||
CapsLock::                              ; Vimer's love  Capslock = {ESC}
    GetKeyState, MButtonState, MButton, P
    if MButtonState = D
    {
        if ((GetKeyState("control") = 0) and (GetKeyState("alt") = 0))
        {
            Send, {Del}
        }
    }
    else
        Send, {ESC}
return

;;======================= Mouse Controller =========================||

~MButton::             ;; CapsLock + MButtonDown (no Ctrl + no Alt)
    SetMouseDelay -1
    GetKeyState, MButtonState, MButton, P
    if MButtonState = D
    {
        if ((GetKeyState("control") = 0) and (GetKeyState("alt") = 0))
        {
            GetKeyState, CapsLockState, CapsLock, P
            if CapsLockState = D
                Send, {Del}
        }
    }
return

^~MButton::             ;; Ctrl + MButtonDown
    SetMouseDelay -1
    GetKeyState, MButtonState, MButton, P
    if MButtonState = D
    {
        GetKeyState, CapsLockState, CapsLock, P
        if CapsLockState = U
        {
            ;; MsgBox "CapsLockState = " + %CapsLockState%
            GetKeyState, CtrlState, Control, P
            if CtrlState = D
                Send, ^x
        }
    }
return

!~MButton::             ;; Alt + MButtonDown
    SetMouseDelay -1
    GetKeyState, MButtonState, MButton, P
    if MButtonState = D
    {
        GetKeyState, CapsLockState, CapsLock, P
        if CapsLockState = U
        {
            GetKeyState, AltState, Alt, P
            if AltState = D
                Send, ^v
        }
    }
return

^#WheelUp::             ;; Ctrl + Win + Wheel up -> switch virtual desktop
    sendInput ^#{Left}
    sleep ,100
return

^#WheelDown::            ;;Ctrl + Win + Wheel down
    sendInput ^#{Right}
    sleep ,100
return

;;==================== Mouse Wheel Controller ======================||

!~WheelUp::
    Goto ButtonWheelUp
return

!~WheelDown::
    Goto ButtonWheelDown
return

ButtonWheelUp:
ButtonWheelDown:
    SetMouseDelay -1
    GetKeyState, MButtonState, MButton, P
    if not (MButtonState = D)
    {
        if GetKeyState("Control") = 0
        {
            GetKeyState, CapsLockState, CapsLock, P
            if CapsLockState = D
            {
                Send, ^c
                ClipWait
                ;; MsgBox "Copy to Clipboard, Ctrl + C have done."

                ;;
                ;; From: http://stackoverflow.com/questions/13553340/a-way-to-select-text-in-autohotkey
                ;;
                if (Clipboard = "") ; Nothing selected, thus copy whole line
                {
                    Send, {Home}+{End}^c ; Select line and copy to clipbard
                }
            }
        }
    }
return

;;======================================================================
;; From: http://www.autohotkey.com/docs/scripts/TooltipMouseMenu.htm
;;======================================================================
ButtonMButtonTest:
    HowLong = 0
    Loop
    {
        HowLong ++
        Sleep, 10
        GetKeyState, MButtonState, MButton, P
        IfEqual, MButtonState, U, Break
    }
    GetKeyState, CapsLockIsPress, CapsLock, P
    IfLess, HowLong, %UMDelay%, Return
return

;;=========================Application==============================||
CapsLock & d:: Send, !d                 ; Dictionary    D = {Alt + D}
CapsLock & f:: Send, !^f                 ; Everything    F = {Alt + F}
CapsLock & g:: Send, !g                 ; Reversed      G = {Alt + G}
CapsLock & e:: Run http://www.google.com/   ; Run Explore   E = {Explore}
CapsLock & r:: Run wt           ; Run Powersh   R = {Powershell}
CapsLock & t:: Run notepad.exe          ; Run Notepad   T = {Text Editor}

;;Customised;;

SwitchToWindow(exeName, runCommand)
{
    IfWinExist, ahk_exe %exeName%
    {
        IfWinActive, ahk_exe %exeName%
        {
            ; If current window is active, try to switch to another window of the same app
            WinGet, WindowList, List, ahk_exe %exeName%
            If WindowList > 1
            {
                WinActivate, % "ahk_id " WindowList%WindowList%
            }
        }
        else
        {
            WinActivate
        }
    }
    else
        Run, %runCommand%
}

#+a::  ; Windows + Shift + A
    SwitchToWindow("Claude.exe", "C:\Users\tongj\AppData\Local\AnthropicClaude\claude.exe")
return

#+d::  ; Windows + Shift + D
    SwitchToWindow("vivaldi.exe", "vivaldi.exe")
return

#+v::  ; Windows + Shift + V
    SwitchToWindow("code.exe", "code.exe")
return

#+e::  ; Windows + Shift + E
    IfWinExist, ahk_class CabinetWClass
    {
        IfWinActive, ahk_class CabinetWClass
        {
            WinGet, WindowList, List, ahk_class CabinetWClass
            If WindowList > 1
            {
                WinActivate, % "ahk_id " WindowList%WindowList%
            }
        }
        else
        {
            WinActivate
        }
    }
    else
        Run, explorer.exe
return

#+n::  ; Windows + Shift + N
    SwitchToWindow("Notion.exe", "C:\Users\tongj\AppData\Local\Programs\Notion\Notion.exe")
return

#+o::  ; Windows + Shift + O
    SwitchToWindow("obsidian.exe", "C:\Users\tongj\AppData\Local\Programs\obsidian\obsidian.exe")
return

#+c:: ; Windows + Shift + C
    SwitchToWindow("Cursor.exe", "C:\Users\tongj\AppData\Local\Programs\cursor\Cursor.exe")
return

; Dell Display Manager KVM Switch Controller
; Win+Alt+1: Switch to Thunderbolt input
; Win+Alt+2: Switch to DisplayPort input
DDMPath := "C:\Program Files\Dell\Dell Display Manager 2\DDM.exe"

; Function to switch to Thunderbolt
SwitchToThunderbolt() {
    Run, "DDM.exe" /writeactiveinput Thunderbolt, "C:\Program Files\Dell\Dell Display Manager 2"
    TrayTip, Dell KVM Switch, Switched to Thunderbolt, 1, 17
    return
}

; Function to switch to DisplayPort
SwitchToDisplayPort() {
    Run, "DDM.exe" /writeactiveinput DP, "C:\Program Files\Dell\Dell Display Manager 2"
    TrayTip, Dell KVM Switch, Switched to DisplayPort, 1, 17
    return
}

; Win+Alt+1: Switch to Thunderbolt
#!1::
    SwitchToThunderbolt()
return

; Win+Alt+2: Switch to DisplayPort
#!2::
    SwitchToDisplayPort()
return

; !r:: run C:\cmder\cmder.exe
;;==================================================================;;
;;=========================CapsLock's Stuff=========================;;
;;==================================================================;;

;; Mac shortcuts
$!x::Send ^x
$!c::Send ^c
$!v::Send ^v
$!s::Send ^s
$!a::Send ^a
$!g::Send ^g
$!z::Send ^z
$!+z::Send ^y
$!w::Send ^w
$!f::Send ^f
$!n::Send ^n
$!t::Send ^t
$!o::Send ^o                    ; Alt+O = Ctrl+O (open file)
$!p::Send ^p                    ; Alt+P = Ctrl+P (quick open)
$!/::Send ^/
$!q::Send !{f4}
$!r::Send ^{f5}
$!m::Send {LWin Down}{Down}{LWin Up}
$!Backspace::Send {Del}
; $!`::Send {Alt Down}{Shift Down}{Tab}{Shift Up}

; Alt + ` -  Activate NEXT Window of same type (title checking) of the current APP
; Source: https://www.autohotkey.com/boards/viewtopic.php?t=64171
ExtractAppTitle(FullTitle)
{
    AppTitle := SubStr(FullTitle, InStr(FullTitle, " ", false, -1) + 1)
    Return AppTitle
}
!`::
    WinGet, ActiveProcess, ProcessName, A

    ; Special handling for Explorer
    if (ActiveProcess = "explorer.exe")
    {
        ; Only look for actual Explorer windows using their specific class
        WinGet, ExplorerList, List, ahk_class CabinetWClass

        if (ExplorerList < 2)  ; If only one Explorer window exists
            Return

        ; Get the active Explorer window's ID
        WinGet, ActiveID, ID, A

        ; Find the next window in sequence
        Loop, %ExplorerList%
        {
            ThisID := ExplorerList%A_Index%
            if (ActiveID = ThisID && A_Index < ExplorerList)
            {
                NextIndex := A_Index + 1
                WinActivate, % "ahk_id " ExplorerList%NextIndex%
                break
            }
        }
        Return
    }

    ; Original code for other applications
    WinGet, OpenWindowsAmount, Count, ahk_exe %ActiveProcess%

    If OpenWindowsAmount = 1
        Return
    Else
    {
        WinGetTitle, FullTitle, A
        AppTitle := ExtractAppTitle(FullTitle)

        SetTitleMatchMode, 2
        WinGet, WindowsWithSameTitleList, List, %AppTitle%

        If WindowsWithSameTitleList > 1
        {
            WinActivate, % "ahk_id " WindowsWithSameTitleList%WindowsWithSameTitleList%
        }
    }


; 交换左 Win 和 Alt (Swap left Win and Alt for Logitech MX Mechanical keyboard)
LAlt::LWin
LWin::LAlt

; LWin + Backspace = Delete (for Logitech MX Mechanical keyboard without Del key)
; LAlt & Backspace::Send {Del}
