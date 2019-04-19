;我的自定义符号
::mh::
sendbyclip("| alt + .	| start unordered list			| * first point		| <ul><li>first point</li></ul>		|`n
| alt + ,	| start ordered list			| 1. first point	| <ol><li>first point</li></ol>		|")
return
;我的自定义符号

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


; :*:key:: 输入key就执行
:*:yx::
sendbyclip("811972833@qq.com")
return

:*:163::
sendbyclip("m13128812409@163.com")
return

:*:410::
sendbyclip("410422199209309154")
return

:*:dh::
sendbyclip("13128812409")
return

:*:sfz::
sendbyclip("410422199209309154")
return

;标点符号 中文->英文


:*:!!::
sendbyclip("!")
return

:*:??::
sendbyclip("?")
return


:*:$$::
sendbyclip("$")
return

;发送删除键 左移
:*:^^::
Send {Backspace 1}
sendbyclip("^")
return

:*:90::
sendbyclip("()")
send {Left 1}
return

:*:99::
sendbyclip("()")
send {Left 1}
return

:*:((::
sendbyclip("()")
send {Left 1}
return

::()::
sendbyclip("()")
send {Left 1}
return


:*:,,::
sendbyclip(",")
return

:*:..::
sendbyclip(".")
return

:*:;;::
sendbyclip(";")
return

:*:::::   ;中文输入法状态下输入两个::变成:
SendbyClip(":")
return

:*:[[::
sendbyclip("[]")
send {Left 1}
return

:*:]]::
sendbyclip("]")
return


:*:\\::
sendbyclip("\")
return

:*:""::
sendbyclip("""""")
send {Left 1}
return


:*://::
sendbyclip("//")
return

:*:<<::
sendbyclip("<")
return

:*:>>::
sendbyclip(">")
return

:*:````::
sendbyclip("````")
return

:*:11::
sendbyclip("!")
return

:*:22::
sendbyclip("@")
return

:*:33::
sendbyclip("#")
return

:*:44::
sendbyclip("$")
return

:*:55::
sendbyclip("%")
return

:*:66::
sendbyclip("^")
return

:*:77::
sendbyclip("&")
return

:*:88::
sendbyclip("*")
return

::kh::
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

:*:,,::
sendbyclip(",")
return

#Hotstring EndChars  `t



:*:cd::
sendbyclip("cd ")
return

:*:ls::
sendbyclip("ls")
return

:*:vim::
sendbyclip("vim")
return

:*:''::
sendbyclip("''")
send {Left 1}
return

:c*:j@::john@somedomain.com



;;;;;;;;;;;;;LICENSE;;;;;;;;;;;;;;;;;;;;;
;
;see LICENSE file
;
;;;;;;;;;;;DOCUMENTATION;;;;;;;;;;;;;;;;;
;
;This is an Autohotkey script which add hotkey's for easy
;writing markdown text.
;
;|----------+-------------------------------+-------------------+-----------------------------------+
;| shortcut	| description					| markdown syntax	| HTML Syntax						|
;|----------+-------------------------------+-------------------+-----------------------------------+
;| alt + i	| emphatic text					| *text*			| <em>text</em>						|
;| alt + b	| strong text 					| **text**			| <strong>text</strong>				|
;| alt + c	| source code					| `int main()`		| <code>int main ()</code>			|
;| alt + q	| quote 						| > cite			| <blockquote>cite</blockquote>		|
;| alt + n	| new line						| __ Enter			| <br />							|
;| alt + .	| start unordered list			| * first point		| <ul><li>first point</li></ul>		|
;| alt + ,	| start ordered list			| 1. first point	| <ol><li>first point</li></ol>		|
;| alt + t	| insert 4 tabs (as list indent)| ____(_ mean blank)| ____(_ mean blank)				|
;| alt + l	| start "link wizard"			| [text](url)		| <a href="url">text</a>			|
;| alt + p	| start "image wizard"			| ![alt_text](url)	| <img src="url" alt="alt_text" />	|
;| alt + -	| horizontal line				| - - - -			| <hr />							|
;|----------+-------------------------------+-------------------+-----------------------------------+
;
; Special Feature:
; # code beautifier
; Script will let you browse for HTML file (e.g. generated HTML from
; markdown) and copy the content to a second file, same name like
; selected file but "_converted" will be added.
; If there are <code></code> sections within the HTML, some
; transformation (see list below) will be happen. This lead to
; easier to read source code within HTML.
;
;|----------+-------------------------------+-------------------+-----------------------------------+
;| alt + #	| blank replacement				| _ (_ mean blank)	| &nbsp;							|
;|			| tabulator replacement			| Tab-Key			| &nbsp;&nbsp;&nbsp;&nbsp;			|
;|			| new line replacement			| Enter-Key			| <br />							|
;|----------+-------------------------------+-------------------+-----------------------------------+
;
;;;;;;;;;;GENERAL SETTINGS;;;;;;;;;;;;;;;
;;reload script automatic
#SingleInstance force




;;;;;;;;;;SCRIPTS;;;;;;;;;;;;;;;;;;;;;;;;
;Markdown *text* will show text italic <em></em>
!i::
Send {* 2}
Send {Left} ;send the cursor position inside
Return

::mi::
Send {* 2}
Send {Left} ;send the cursor position inside
return

;Markdown **text** will show text bold <strong></strong>
!b::
Send {* 4}
Send {Left 2}
return

::mb::
Send {* 4}
Send {Left 2}
return

;Markdown `int main ()` will shown as code <code></code>
!c::
sendbyclip("````")
Send {Left}
return

::mc::
sendbyclip("````")
Send {Left}
return

!+c::
sendbyclip("````````````")
Send {Left 3}
Send {Enter 2}
Send {Left}
return

::mcc::
sendbyclip("````````````")
Send {Left 3}
Send {Enter 2}
Send {Left}
return

;Markdown > text will shown as quote <blockquote></blockquote>
!q::
Send {Enter}
sendbyclip(">")
Send {space}
return

::mq::
Send {Enter}
sendbyclip(">")
Send {space}
return

;Markdown line break are equal to two blanks
!n::
Send {space 2}{Enter}
return

;Markdown * text will shown as bullet list <ul><li></li></ul>
!.::
;start new line, some markdown scripts need it explicit
sendbyclip("* ")
return

::mu::
;start new line, some markdown scripts need it explicit
sendbyclip("* ")
return

::mo::
;start new line, some markdown scripts need it explicit
sendbyclip("1.  ")
return

;Markdown 1. text will shown as bullet list <ol><li></li></ol>
!,::
;start new line, some markdown scripts need it explicit
sendbyclip("1. ")
send {space}
return

;Markdown uses 4 spaces to indent the level
!t::
sendbyclip("    ")
return

:*:m1::{#}
:*:m2::{# 2}
:*:m3::{# 3}
:*:m4::{# 4}
:*:m5::{# 5}
:*:m6::{# 6}



;Markdown [text](http://example.com) will translate into <a href="http://example.com>text</a>
!l::
Gui Add, Text,, Please enter the URL:
Gui Add, Edit, vUrl				;variable name should start with small v
GuiControl,, Edit1, http://		;set default text to http://
Gui Add, Text,, Please enter the Text to show:
Gui Add, Edit, vText
Gui Add, Button, default ys, &OK
Gui Add, Button, default, &Cancel
Gui Show
return

ButtonOK:
Gui, Submit		;Save control content into variables
Send {[}
Send %Text%
Send {]}{(}
Send %Url%
Send {)}
Gui, Destroy 	;close all handles
return

ButtonCancel:
GuiClose:		;other label which closes the GUI
GuiEscape:		;other label which closes the GUI
Gui, Destroy 	;close all handles
return

;Markdown ![text](http://example.com/pic.jpg) will translate into <img src="http://example.com/pic.jpg" alt="text" />
;offer preview dialog, to see the picture which should included
!p::
pictureLabel:
Gui 2:Add, Text,, Please enter URL to the Picture:
Gui 2:Add, Edit, vPicUrl
Gui 2:Add, Text,, Please enter alternative text for the Picture:
Gui 2:Add, Edit, vPicAlt
Gui 2:Add, Button, default ys, &Preview
Gui 2:Add, Button,, &OK
Gui 2:Add, Button,, &Cancel
Gui 2:Show
return

::mp::
sendbyclip("![]()")
send {left 1}
return


2ButtonOK:
Gui, 2:Submit
Send {!}{[}
Send %PicAlt%
Send {]}{(}
Send %PicUrl%
Send {)}
Gui, 2:Destroy
return

2ButtonCancel:
2GuiClose:
2GuiEscape:
Gui, 2:Destroy
return

2ButtonPreview:
Gui, 2:Submit, NoHide							;NoHide prevent GUI 1 for being closed
UrlDownloadToFile, %PicUrl%, %temp%\foobar		;download file local, to show preview
Gui, 3:Add, Picture, w300 h300, %temp%\foobar	;2:Foo access the second window, up to 99 windows are possible
Gui, 3:Add, Button,, Close
Gui, 3:Show
return

3ButtonClose:
3GuiClose:
3GuiEscape:
Gui, 3:Destroy
return

;Markdown - - - - on a single line insert a horizontal line
!-::
Send {space 2}{Enter}{-}{space}{-}{space}{-}{space}{-}{space 2}{Enter}
return

::m-::
Send {space 2}{Enter}{-}{space}{-}{space}{-}{space}{-}{space 2}{Enter}
return

;;;;;;;;;;;;;; SPECIALS ;;;;;;;;;;;
; code beautifier
;; select HTML file
;; looking for <code></code> areas
;; within code areas replace
;;; tab with 4 spaces
;;; space with &nbsp;
;;; newline with <br>
!#::
FileSelectFile, SourceFile, 3,, Pick a HTML file to convert.
if SourceFile =
    return  ; This will exit in this case.

SplitPath, SourceFile,, SourceFilePath,, SourceFileNoExt
DestFile = %SourceFilePath%\%SourceFileNoExt%_converted.html

; ask to override existing file
IfExist, %DestFile%
{
    MsgBox, 4,, Overwrite the existing links file? Press No to append to it.`n`nFILE: %DestFile%
    IfMsgBox, Yes
        FileDelete, %DestFile%
}
; variable stores if there is actual a open code section
inCodeSection := 0
; for each line within source and destination
Loop, read, %SourceFile%, %DestFile%
{
	line := A_LoopReadLine
	; look for start of code section
	IfInString, line, <code>
	{
		inCodeSection := 1
	}
	; replace tabs with spaces
	; and spaces with &nbsp;
	; add <br /> at the end
	; and write to destination
	if inCodeSection = 1
	{
		StringReplace, line, line, %A_Tab%, %A_Space%%A_Space%%A_Space%%A_Space%, All
		StringReplace, line, line, %A_Space%, &nbsp`;, All
		FileAppend, %line% <br /> `n
	}
	; write to destination without modifications
	else
	{
		FileAppend, %line% `n
	}
	; look for end of code section
	IfInString, line, </code>
	{
		inCodeSection := 0
	}
}
return
