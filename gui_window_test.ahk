; 示例: 实现类似 SplashTextOn 的效果:

Gui, +AlwaysOnTop +Disabled -SysMenu +Owner  ; +Owner 避免显示任务栏按钮.
Gui, Add, Text,, Some text to display.
Gui, Show, NoActivate, Title of Window  ; NoActivate 让当前活动窗口继续保持活动状态.