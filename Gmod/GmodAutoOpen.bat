@echo off
title Garry's Mod 1000x achievement

set /p directory=" Put the Gmod's directory here: "
set /p looplimit=" How many times does the game have to be opened? "

color c
echo Running program...

set loop = 0
:loop
set /a loop = %loop% + 1

start %directory%\hl2.exe
TIMEOUT 10 > nul
taskkill /IM "hl2.exe" /F > nul

if "%loop%" == "%looplimit%" (goto next) else (goto loop)

:next
cls
color a
echo Finished!
echo Thx for using this script!

pause