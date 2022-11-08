/*
IME check
*/


IME_CHECK(WinTitle) {
  WinGet,hWnd,ID,%WinTitle%
  Return Send_ImeControl(ImmGetDefaultIMEWnd(hWnd),0x005,"")
}
Send_ImeControl(DefaultIMEWnd, wParam, lParam) {
  DetectSave := A_DetectHiddenWindows
  DetectHiddenWindows,ON
   SendMessage 0x283, wParam,lParam,,ahk_id %DefaultIMEWnd%
  if (DetectSave <> A_DetectHiddenWindows)
      DetectHiddenWindows,%DetectSave%
  return ErrorLevel
}
ImmGetDefaultIMEWnd(hWnd) {
  return DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
}
 
$CapsLock::
    if(IME_CHECK("A"))
        Send, {VK15}
        Send {Esc}
    return
 
^[::
    if(IME_CHECK("A"))
        Send, {VK15}
        Send {Esc}
return



^Space::
    if(IME_CHECK("A"))
        Send, {VK15}
		Send, {Backspace}
return

 
+Space::
    if(!IME_CHECK("A"))
        Send, {VK15}
return



LAlt & h::Send {Left}
LAlt & j::Send {Down}
LAlt & k::Send {Up}
LAlt & l::Send {Right}
