#Persistent
Gui +LastFound
hWnd := WinExist()
DllCall( "RegisterShellHookWindow", UInt,hWnd )
MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
OnMessage( MsgNum, "ShellMessage")
Return
ShellMessage( wParam,lParam ) {
  If ( wParam = 1 )
  {
    WinGetclass, WinClass, ahk_id %lParam%
    If Winclass in Maxthon2_Frame,Notepad,OpusApp,XLMAIN        ;需要开启中文输入的窗口类名
    {
      winget,WinID,id,ahk_class %WinClass%
      SetLayout("E0200804",WinID)         ;E0200804是QQ拼音代码，系统内安装的输入法代码可以在注册表HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Control/Keyboard Layouts查到
    }
}
}
SetLayout(Layout,WinID){
DllCall("SendMessage", "UInt", WinID, "UInt", "80", "UInt", "1", "UInt", (DllCall("LoadKeyboardLayout", "Str", Layout, "UInt", "257")))
}  
