@echo off
color f0
title ZWord 11 Open Source

:home
cls
echo ³1³ New
echo ³2³ Exit
set /p num=

if %num% == 1 goto 1
if %num% == 2 goto Exit

:1
cls
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
goto new

:sdo
set loc=documents
goto new

:sdow
set loc=downloads
goto new

:sm
set loc=music
goto new

:sp
set loc=pictures
goto new

:sv
set loc=videos
goto new

:so
cls
set /p loc=Location:
goto new

:new
cls
set /p na=Name:
goto mnew

:mnew
cls
set /p t=
echo %t% >> %USERPROFILE%\%loc%\%na%.txt
goto mnew2

:mnew2
set /p t=
echo %t% >> %USERPROFILE%\%loc%\%na%.txt
goto mnew2
