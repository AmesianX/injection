@echo off
cl -DCONSOLE -c -nologo -Os -O2 -Gm- -GR- -EHa -Oi -GS- payload.c
link /order:@conhost.txt /entry:GetWindowHandle /base:0 payload.obj -subsystem:console -nodefaultlib -stack:0x100000,0x100000
xbin payload.exe .text
move payload.exe64.bin ..\conhost\payload.bin
