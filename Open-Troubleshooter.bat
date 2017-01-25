@echo off
title Open Troubleshooter
color f0

:home
cls
set /p tc=Troubleshooting Code:
if %tc% == 6527 goto tc1
if %tc% == 0412 goto tc2
goto home

:tc1
cls
del %USERPROFILE%\Desktop\ZWord-Open.bat
bitsadmin.exe /transfer "Open Troubleshooter Download" https://raw.githubusercontent.com/zain-x/zainxopensource/master/ZWord-Open.bat %USERPROFILE%\Desktop\ZWord-Open.bat
goto home

:tc2
cls
del %USERPROFILE%\Desktop\ZWord-Open.bat
goto home
