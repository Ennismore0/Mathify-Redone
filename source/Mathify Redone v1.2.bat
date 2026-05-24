@echo off
setlocal enabledelayedexpansion
title Mathify Redone v1.2
echo  Mathify Redone Log > MathifyRedonelog.txt
echo -------------------- >> MathifyRedonelog.txt

cls
echo Initializing Mathify Core...
echo Initializing Mathify Core... >> MathifyRedonelog.txt
timeout /t 2 >nul

cls
echo Loading calculator modules...
echo Loading calculator modules >> MathifyRedonelog.txt
timeout /t 2 >nul

cls
echo Preparing interface...
echo Preparing interface >> MathifyRedonelog.txt
timeout /t 2 >nul

cls
echo Loading complex animations...
echo Loading complex animations... >> MathifyRedonelog.txt
timeout /t 3 >nul
echo Setup success^^! >> MathifyRedonelog.txt

: home
cls
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
echo             Version 1.2
timeout /t 1 >nul
echo.
timeout /t 1 >nul
echo        Press any key to start^^!
timeout /t 1 >nul
pause >nul

cls
echo Welcome to Mathify Redone v1.2^^!
timeout /t 1 >nul
echo -------------------------------------
timeout /t 1 >nul
echo This is a remake of my old project, "Mathify"!
timeout /t 2 >nul
echo Just so you know, Mathify Redone v1.2 is meant for simple equations, so no large-scale operations^^!
timeout /t 2 >nul
echo Please enjoy^^! -Ennismore0
echo.
pause >nul
cls
:opselect
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
if /i "%choice%"=="debug" goto debug
if /i "%choice%"=="home" goto home
if /i "%choice%"=="commands" goto commands
if /i "%choice%"=="exit" goto exit
if /i "%choice%"=="changelog" goto changelog

echo Hey there, That's an invalid choice^^! Please pick a number from 1-4, or type ^"commands^" for more info.
pause >nul
cls
goto opselect

:addition
set /p a="Addition: Enter the first number: "
set /p b="Addition: Enter the second number: "
set /a result=%a% + %b%
echo Answer: %a% + %b% = %result%
echo Addition: %a% + %b% = %result% >> MathifyRedonelog.txt
goto end

:subtraction
set /p a="Subtraction: Enter the first number: "
set /p b="Subtraction: Enter the second number: "
set /a result=%a% - %b%
echo Answer: %a% - %b% = %result%
echo Subtraction: %a% - %b% = %result% >> MathifyRedonelog.txt
goto end

:multiplication
set /p a="Multiplication: Enter the first number: "
set /p b="Multiplication: Enter the second number: "
set /a result=%a% * %b%
echo Answer: %a% * %b% = %result%
echo Multiplication: %a% * %b% = %result% >> MathifyRedonelog.txt
goto end

:division
set /p a="Division: Enter the first number: "
set /p b="Division: Enter the second number: "
if %b%==0 (
    echo Error: Division by zero is not allowed. Your answer is 0.
	echo Division error! Cannot divide by zero. >> MRlog.txt
) else (
timeout /t 1 >nul
    set /a result=%a% / %b%
	timeout /t 1 >nul
    echo Answer: %a% / %b% = %result%
	echo Division: %a% / %b% = %result% >> MathifyRedonelog.txt
)
goto end

:invalid-end
pause >nul
cls
goto home

:end
timeout /t 2 >nul
echo Thank you so much for trying out Mathify Redone v1.2^^!^^! -Ennismore0
pause >nul
cls
goto home

:exit
exit /b

:debug
cls
echo  Mathify Redone Debug Info
echo ---------------------------
echo MR Version: 1.2
echo Mode: Release
echo RAM: Unlimited
pause >nul
cls
goto home

:commands
cls
echo           Commands
echo ------------------------------
echo commands - Opens this menu
echo debug - Opens debug menu
echo home - Goes to the home menu
echo exit - Closes Mathify Redone
echo changelog - Opens changelog

set /p choice="Enter command: "
if /i "%choice%"=="debug" goto debug
if /i "%choice%"=="home" goto home
if /i "%choice%"=="exit" goto exit
if /i "%choice%"=="changelog" goto changelog

echo Invalid command!

:changelog
cls
echo   MR Changelog - v1.2
echo -------------------------
echo Added Commands
echo Added Command Menu, accessible by typing `commands`
echo Added Changelog

set /p choice=""
if /i "%choice%"=="debug" goto debug
if /i "%choice%"=="home" goto home
if /i "%choice%"=="commands" goto commands
if /i "%choice%"=="exit" goto exit
if /i "%choice%"=="changelog" goto changelog
