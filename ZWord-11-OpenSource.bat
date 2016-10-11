@echo off
color f0
title ZWord 11 Open Source

:home
cls
echo ³1³ New
echo ³2³ Exit
set /p num=
cls

if %num% == 1 goto 1
if %num% == 2 goto Exit

:1
set /p n=Name:
cls
echo Location:
echo -----------
echo ³1³ Desktop
echo ³2³ Documents
echo ³3³ Downloads
echo ³4³ Music
echo ³5³ Pictures
echo ³6³ Videos
echo ³7³ Other
set /p num=
if %num% == 1 goto sde
if %num% == 2 goto sdo
if %num% == 3 goto sdow
if %num% == 4 goto sm
if %num% == 5 goto sp
if %num% == 6 goto sv
if %num% == 7 goto so

:sde
set loc=desktop
goto newa

:sdo
set loc=documents
goto newa

:sdow
set loc=downloads
goto newa

:sm
set loc=music
goto newa

:sp
set loc=pictures
goto newa

:sv
set loc=videos
goto newa

:so
cls
set /p loc=Location:
goto newa

:newa
cls

:new
title When Done, Exit
set /p t=
echo %t% >> %USERPROFILE%\%loc%\%n%.txt
goto new
