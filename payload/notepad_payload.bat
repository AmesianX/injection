@echo off
cl -c -nologo -Os -O2 -Gm- -GR- -EHa -Oi -GS- notepad.c
link /order:@SvcCtrl.txt /entry:Handler /base:0 notepad.obj -subsystem:console -nodefaultlib -stack:0x100000,0x100000
xbin notepad.exe .text
move notepad.exe64.bin ..\notepad64.bin
