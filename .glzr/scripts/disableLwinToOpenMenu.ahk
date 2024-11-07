
#SingleInstance Force

; disable win key to open menu,~表示完全匹配单个按键，不然会连组合按键也匹配
~LWin::  
    LWinDown := true  
    Send {Blind}{vkE8} 
return

