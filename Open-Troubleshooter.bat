@echo off
title Open Troubleshooter
color f0

:beforehome
cls
echo 1 Troubleshoot
echo 2 Update
set /p n=
if %n% == 1 goto home
if %n% == 2 goto update

:home
cls
set /p tc=Troubleshooting Code:
if %tc% == 6527 goto tc1
goto home

:update
cls
bitsadmin.exe /transfer "Open Troubleshooter Update" https://raw.githubusercontent.com/zain-x/zainxopensource/master/Open-Troubleshooter.bat %USERPROFILE%\Desktop\Open-Troubleshooter.bat

:tc1
cls
bitsadmin.exe /transfer "Open Troubleshooter Download" https://raw.githubusercontent.com/zain-x/zainxopensource/master/ZWord-Open.bat %USERPROFILE%\Desktop\ZWord-Open.bat
goto beforehome
