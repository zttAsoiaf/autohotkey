Gui, Font, underline
Gui, Add, Text, cBlue gLaunchGoogle, Click here to launch Google.

; 或者可以使用 Link 控件：
Gui, Add, Link,, Click <a href="www.google.com">here</a> to launch Google.
Gui, Font, norm
Gui, Add, listbox,gControl,wei|hell|wewerwer
Gui, Add, UpDown, vMyUpDown Range1-10, 5

Gui, Add, ComboBox 
Gui, Add, UpDown, vMy1UpDown Range1-10, 5

Gui, Add, DropDownList, , we|hello
Gui, Add, UpDown, vMy2UpDown Range1-10, 5

Gui, Show
return

LaunchGoogle:
Run www.google.com
return

Control:
run www.baidu.com
return