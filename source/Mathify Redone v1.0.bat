@echo off
setlocal enabledelayedexpansion
title Mathify Redone v1.0

cls
echo Initializing Mathify Core...
timeout /t 2 >nul

cls
echo Loading calculator modules...
timeout /t 2 >nul

cls
echo Preparing interface...
timeout /t 2 >nul

cls
echo Loading complex animations...
timeout /t 3 >nul

cls
: home
echo -----------------------------------
timeout /t 1 >nul
echo ===================================
timeout /t 1 >nul
echo          MATHIFY REDONE
echo ===================================
timeout /t 1 >nul
echo -----------------------------------
timeout /t 1 >nul
echo.
timeout /t 1 >nul
echo             Version 1.0
timeout /t 1 >nul
echo.
timeout /t 1 >nul
echo        Press any key to start^^!
timeout /t 1 >nul
pause >nul

cls
echo Welcome to Mathify Redone v1^^!
timeout /t 1 >nul
echo -------------------------------------
timeout /t 1 >nul
echo This is a remake of my old project, "Mathify"!
timeout /t 2 >nul
echo Just so you know, Mathify Redone v1 is meant for simple equations, so no large-scale operations^^!
timeout /t 2 >nul
echo Please enjoy^^! -Ennismore0
timeout /t 4 >nul
echo.
cls
echo Choose an operation:
timeout /t 2 >nul
echo 1. Addition (+)
timeout /t 1 >nul
echo 2. Subtraction (-)
timeout /t 1 >nul
echo 3. Multiplication (x)
timeout /t 1 >nul
echo 4. Division (/)
timeout /t 1 >nul
echo.
timeout /t 1 >nul
set /p choice="Enter the number corresponding to the operation: "

if "%choice%"=="1" goto addition
if "%choice%"=="+" goto addition
if "%choice%"=="2" goto subtraction
if "%choice%"=="-" goto subtraction
if "%choice%"=="3" goto multiplication
if "%choice%"=="x" goto multiplication
if "%choice%"=="4" goto division
if "%choice%"=="/" goto division

echo Hey there, That's an invalid choice^^! Please pick a number from 1-4.
goto invalid-end

:addition
set /p a="Addition: Enter the first number: "
set /p b="Addition: Enter the second number: "
set /a result=%a% + %b%
echo Answer: %a% + %b% = %result%
goto end

:subtraction
set /p a="Subtraction: Enter the first number: "
set /p b="Subtraction: Enter the second number: "
set /a result=%a% - %b%
echo Answer: %a% - %b% = %result%
goto end

:multiplication
set /p a="Multiplication: Enter the first number: "
set /p b="Multiplication: Enter the second number: "
set /a result=%a% * %b%
echo Answer: %a% * %b% = %result%
goto end

:division
set /p a="Division: Enter the first number: "
set /p b="Division: Enter the second number: "
if %b%==0 (
    echo Error: Division by zero is not allowed. Your answer is 0.
) else (
timeout /t 1 >nul
    set /a result=%a% / %b%
	timeout /t 1 >nul
    echo Answer: %a% / %b% = %result%
)
goto end

:invalid-end
pause >nul
cls
goto home

:end
timeout /t 2 >nul
echo Thank you so much for trying out Mathify Redone v1^^!^^! -Ennismore0
pause >nul
cls
goto home
