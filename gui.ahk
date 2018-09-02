#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


FileSelectFile, SelectedFile, 3, , Open a file, Text Documents (*.txt; *.doc)
if SelectedFile =
    MsgBox, The user didn't select anything.
else
    MsgBox, The user selected the following:`n%SelectedFile%


; CLSID 的例子（XP/2003 或早期系统中）：
FileSelectFile, OutputVar,, ::{645ff040-5081-101b-9f08-00aa002f954e}  ; 回收站。

; 多选的例子：
FileSelectFile, files, M3  ; M3 = 选择多个现有文件。
if files =
{
    MsgBox, The user pressed cancel.
    return
}
Loop, parse, files, `n
{
    if a_index = 1
        MsgBox, The selected files are all contained in %A_LoopField%.
    else
    {
        MsgBox, 4, , The next file is %A_LoopField%.  Continue?
        IfMsgBox, No, break
    }
}
return