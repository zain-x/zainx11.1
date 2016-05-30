@echo off
color f0
title ZWord 11 Open Source

:home
cls
echo ³1³ New
echo ³2³ More
echo ³3³ Exit
set /p number=

if %number% == 1 goto 1
if %number% == 2 goto 2
if %number% == 3 goto Exit

:1
cls
set /p n=Name:
cls
echo Location:
echo -----------
echo ³1³ Desktop
echo ³2³ Documents
echo ³2³ Downloads
echo ³3³ Music
echo ³4³ Pictures
echo ³5³ Videos
echo ³6³ Other

