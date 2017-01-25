@echo off
title ZWord Open
color f0

:home
cls
echo 1 New
echo 2 More
echo 3 Exit
set /p n=
if %n% == 1 goto 1
if %n% == 2 goto 2
if %n% == 3 Exit

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
set l=Desktop
goto m

:1b
set l=Documents

:m
cls
set /p t=
echo %t% >> %USERPROFILE%\%l%
goto m

:c
cls
set /p l=Where? 
if exist %USERPROFILE%\%l% goto m
goto c
