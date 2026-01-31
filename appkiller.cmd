@echo off
title appkiller.exe

:input
set /p app=Enter the app name (example: notepad.exe): 

:: Check if the app is running
tasklist | findstr /i "%app%" >nul
if errorlevel 1 (
    echo App "%app%" not found. Try again.
    goto input
) else (
    echo Stopping "%app%"...
    taskkill /im "%app%" /f
    echo Done.
)
pause