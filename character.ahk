
;我的自定义符号
::::;::   ;中文输入法下相当于要按四个键::;;变成::
SendbyClip("::")
return

;定义一个函数
sendbyclip(var_string)
{
    ClipboardOld = %ClipboardAll%
    Clipboard =%var_string%
    sleep 100
    send ^v
    sleep 100
    Clipboard = %ClipboardOld%  ; Restore previous contents of clipboard.
}

:*:yx::
sendbyclip("@qq.com")
return

:*:163::
sendbyclip("@163.com")
return


:*:333::
sendbyclip("")
return

:*:15::
sendbyclip("")
return

:*:410::
sendbyclip("")
return

:*:dh::
sendbyclip("")
return

:*:sfz::
sendbyclip("")
return

;标点符号 中文->英文
::!!::
sendbyclip("!")
return

::$$::
sendbyclip("$")
return

::^^::
sendbyclip("^")
return

::,,::
sendbyclip(",")
return

::,,::
sendbyclip(",")
return

::[[::
sendbyclip("[]")
send {Left 1}
return

::]]::
sendbyclip("]")
return

::90::
sendbyclip("()")
send {Left 1}
return

::((::
sendbyclip("()")
send {Left 1}
return

::\\::
sendbyclip("\")
return

::11::
sendbyclip("!")
return

::22::
sendbyclip("@")
return

::33::
sendbyclip("#")
return

::44::
sendbyclip("$")
return

::55::
sendbyclip("%")
return

::66::
sendbyclip("^")
return

::77::
sendbyclip("&")
return

::88::
sendbyclip("*")
return

::99::
sendbyclip("()")
send {Left 1}
return

::kh::
sendbyclip("()")
send {Left 1}
return

::()::
sendbyclip("()")
send {Left 1}
return

::th::
sendbyclip("!")
return

::xh::
sendbyclip("*")
return

::yu::
sendbyclip("&")
return

::huo::
sendbyclip("|")
return

::bfh::
sendbyclip("%")
return

::fy::
sendbyclip("$")
return

::jh::
sendbyclip("#")
return

:*:at::
sendbyclip("@")
return


:*:,,::
sendbyclip(",")
return

#Hotstring EndChars  `t
:*:..::
sendbyclip("..")
return

:*:.a::
sendbyclip(".")
return


:*:''::
sendbyclip("''")
send {Left 1}
return

:c*:j@::john@somedomain.com

::""::
sendbyclip("""""")
send {Left 1}
return


:://::
sendbyclip("/")
return

::;;::
sendbyclip(";")
return

::<<::
sendbyclip("<")
return

::>>::
sendbyclip(">")
return

:*:\\::
sendbyclip("\")
return

::|::
sendbyclip("|")
return

:*:````::
sendbyclip("````")
return
