@ECHO off
:top
CLS
ECHO Choose a shell:
ECHO [1] bash
ECHO [2] cmd
ECHO [3] PowerShell
ECHO.
ECHO [8] restart elevated
ECHO [9] exit
ECHO.

CHOICE /N /C:123456789 /M "> "
CLS
IF ERRORLEVEL ==9 GOTO end
IF ERRORLEVEL ==8 powershell -Command "Start-Process hyper -Verb RunAs"
IF ERRORLEVEL ==3 powershell
IF ERRORLEVEL ==2 cmd
IF ERRORLEVEL ==1 bash

CLS
ECHO Switch or exit?
ECHO [1] Switch
ECHO [2] Exit

CHOICE /N /C:12 /D 2 /T 5 /M "> "
IF ERRORLEVEL ==2 GOTO end
IF ERRORLEVEL ==1 GOTO top

:end
