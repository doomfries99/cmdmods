@echo off
title transform.exe

set /p file=Enter file name (example: test.exe): 
set /p ext=Enter new extension (example: png): 

if exist "%file%" (
    ren "%file%" "%~nfile%.%ext%"
    echo.
    echo File transformed successfully.
) else (
    echo.
    echo File not found.
)

pause