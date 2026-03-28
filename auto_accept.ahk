#NoEnv
#SingleInstance Force
SetBatchLines, -1
SetTitleMatchMode, 2
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

running := 1
btnImage := A_ScriptDir "\accept.png"
tolerance := 50
offsetX := 50
offsetY := 15

SetTimer, Watch, 300
return

F8::
running := !running
TrayTip, CS2 Auto-Accept, % "CS2 Auto-Accept " (running ? "ON" : "OFF"), 1
return

Esc::ExitApp

Watch:
if (!running)
    return

if !WinActive("ahk_exe cs2.exe")
    return

if !FileExist(btnImage)
{
    TrayTip, CS2 Auto-Accept, accept.png not found, 1
    return
}

ImageSearch, fx, fy, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *%tolerance% %btnImage%
if (ErrorLevel = 0)
{
    mx := fx + offsetX
    my := fy + offsetY
    MouseMove, %mx%, %my%, 0
    Click
    SoundBeep, 1000, 100
    Sleep, 700
}
else if (ErrorLevel = 2)
{
    TrayTip, CS2 Auto-Accept, ImageSearch failed, 1
}
return
