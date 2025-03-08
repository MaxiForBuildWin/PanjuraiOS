 @echo off
color 0a
set "file=startup.wav"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
title Purnjay OS ver= 0.5.1
echo Finding Kernel.........
echo Kernel Found! Booting PurnjayOS
pause

cls            
echo what is your name?
set/p name=
echo.
cls
echo HELLO! %name%
echo.
pause

:menu
cls
echo What would you like to do, %name%
echo.
echo 1.System Info 2.Calc 3.Clock 4.Calendar 5.Songs 6.Antivirus

set /p input=
if %input% == 1 goto info
if %input% == 2 goto calc 
if %input% == 3 goto clock
if %input% == 4 goto calendar
if %input% == 5 goto Songs
if %input% == 6 goto antivirus

:info
echo Please wait while calculateing disc space..
SETLOCAL

FOR /F "usebackq tokens=1,2" %%f IN (`PowerShell -NoProfile -EncodedCommand "CgBnAHcAbQBpACAAVwBpAG4AMwAyAF8ATABvAGcAaQBjAGEAbABEAGkAcwBrACAALQBGAGkAbAB0AGUAcgAgACIAQwBhAHAAdABpAG8AbgA9ACcAQwA6ACcAIgB8ACUAewAkAGcAPQAxADAANwAzADcANAAxADgAMgA0ADsAWwBpAG4AdABdACQAZgA9ACgAJABfAC4ARgByAGUAZQBTAHAAYQBjAGUALwAkAGcAKQA7AFsAaQBuAHQAXQAkAHQAPQAoACQAXwAuAFMAaQB6AGUALwAkAGcAKQA7AFcAcgBpAHQAZQAtAEgAbwBzAHQAIAAoACQAdAAtACQAZgApACwAJABmAH0ACgA="`) DO ((SET U=%%f)&(SET F=%%g))

@ECHO Used: %U%
@ECHO Free: %F%

SET Num1Add=%U%
SET Num2Add=%F%
SET /A Ans=%Num1Add%+%Num2Add%

echo.=======================
echo     PURNJAY__OS_+
echo.=======================
echo     DETAILS  
echo.
echo     VERSION = 0.0.2
echo.     
echo     RAM = %NUMBER_OR_PROCESSORS%GB
echo.
echo     CORE = %PROCESSOR_IDENTIFIER%
echo.
echo     HARD_DRIVE = %Ans% GB
echo.   
echo     Kernel ver = 5.6.7
echo.  
echo    Build = %OS%
echo.
echo    Prossesor Architecture: %PROCESSOR_ARCHITECTURE%
echo.
echo.========================
echo     @Copyright P.inc
echo.========================
echo.
echo Wanna check for update?

echo  1. to check for update 
echo  2. Menu

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto menu




     
:update 
cls

echo Checking for new version /Update.............
echo.
pause
cls
echo.
echo no update available,Try Againg after some time.
echo.
pause
goto menu

:clock
cls
echo What Would You Like To Do, %name%
echo.
echo 1.System Info 2.Calc 3.Clock 4.Calendar 5.Songs 6.Antivirus
echo.
echo The current time is %time%
echo The current date is %date%
timeout 1 >nul
goto clock