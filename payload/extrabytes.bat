@echo off
cl -DWINDOW -c -nologo -Os -O2 -Gm- -GR- -EHa -Oi -GS- payload.c
link /order:@extrabytes.txt /entry:WndProc /base:0 payload.obj -subsystem:console -nodefaultlib -stack:0x100000,0x100000
xbin payload.exe .text
move payload.exe64.bin ..\extrabytes\payload.bin
