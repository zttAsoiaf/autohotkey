﻿; 示例: 使用透明窗口进行屏幕显示 (OSD):

CustomColor = EEAA99  ; 可以为任意 RGB 颜色 (在下面会被设置为透明).
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow 避免显示任务栏按钮和 alt-tab 菜单项.
Gui, Color, %CustomColor%
Gui, Font, s32  ; 设置大字体 (32 磅).
Gui, Add, Text, vMyText cLime, XXXXX YYYYY  ; XX & YY 用来自动调整窗口大小.
; 让此颜色的所有像素透明且让文本显示为半透明 (150):
WinSet, TransColor, %CustomColor% 150
SetTimer, UpdateOSD, 200
Gosub, UpdateOSD  ; 立即进行第一次更新而不等待计时器.
Gui, Show, x0 y400 NoActivate  ; NoActivate 让当前活动窗口继续保持活动状态.
return

UpdateOSD:
MouseGetPos, MouseX, MouseY
GuiControl,, MyText, X%MouseX%, Y%MouseY%
return