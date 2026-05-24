@echo off
setlocal enabledelayedexpansion
title Mathify Home Edition

:home
echo Welcome to Mathify Home Edition!
echo.
echo Choose an operation:
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo.

set /p choice="Enter the number corresponding to the operation: "

if "%choice%"=="1" goto addition
if "%choice%"=="2" goto subtraction
if "%choice%"=="3" goto multiplication
if "%choice%"=="4" goto division

echo Invalid choice. Please select a number between 1 and 4.
goto end

:addition
set /p a="Enter the first number: "
set /p b="Enter the second number: "
set /a result=%a% + %b%
echo %a% + %b% = %result%
goto end

:subtraction
set /p a="Enter the first number: "
set /p b="Enter the second number: "
set /a result=%a% - %b%
echo %a% - %b% = %result%
goto end

:multiplication
set /p a="Enter the first number: "
set /p b="Enter the second number: "
set /a result=%a% * %b%
echo %a% * %b% = %result%
goto end

:division
set /p a="Enter the first number: "
set /p b="Enter the second number: "
if %b%==0 (
    echo Error: Division by zero is not allowed.
) else (
    set /a result=%a% / %b%
    echo %a% / %b% = %result%
)
goto end

:end
pause >nul
cls
goto home
