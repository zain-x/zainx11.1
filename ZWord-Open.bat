@echo off
title ZWord Open
color f0

:home
cls
echo /1/ New
echo /2/ Exit
set /p n=
if %n% == 1 goto 1
if %n% == 2 Exit

:1
cls
set /p e=Name:
cls
echo 1 Desktop
echo 2 Documents
echo 3 Custom
set /p l=
if %l% == 1 goto 1a
if %l% == 2 goto 1b
if %l% == 3 goto c

:1a
set q=Desktop
cls
goto m

:1b
set q=Documents
cls

:m
set /p t=
echo %t% >> %USERPROFILE%\%q%\%e%.txt
goto m

:c
cls
set /p q=Where? 
cls
goto m
