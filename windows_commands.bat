@ECHO OFF
CLS

:: ANCHOR
:COMMANDS

ECHO *******************************************************************************
ECHO AUTHOR - ARPIT GUPTA
ECHO EMAIL ID - imarg3@github.com
ECHO Logged-in-Username is %USERNAME% on %DATE% at %TIME%
ECHO *******************************************************************************
ECHO.
color 0A
REM Using this Batch Script, we can access Windows Commands
ECHO BATCH SCRIPT FOR ACCESSING WINDOWS COMMANDS
ECHO.
ECHO.
ECHO A. Windows Version and Architecture Type
ECHO.
ECHO B. Check IP Addresses Configuration
ECHO.
ECHO C. Check Windows Processes
ECHO.
ECHO D. Check Windows Port Status
ECHO.
ECHO E. DNS Lookup
ECHO.
ECHO F. PING MACHINE
ECHO.
ECHO G. Exit from Command Prompt
ECHO.


CHOICE /C ABCDEFG /N /M "Dear User, Please Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 7 GOTO Exit
IF ERRORLEVEL 6 GOTO PING
IF ERRORLEVEL 5 GOTO NSLookup
IF ERRORLEVEL 4 GOTO PortStatus
IF ERRORLEVEL 3 GOTO QProcess
IF ERRORLEVEL 2 GOTO IPAddress
IF ERRORLEVEL 1 GOTO OS

:OS
CLS
wmic os get caption && wmic os get osarchitecture
ECHO.
ECHO.
GOTO COMMANDS

:IPAddress
CLS
ipconfig /all
ECHO.
ECHO.
GOTO COMMANDS

:QProcess
CLS
qprocess
ECHO.
ECHO.
GOTO COMMANDS

:PortStatus
CLS
set /p PORT="Enter Port Number: "
if %PORT% LEQ 0 (echo PORT Number is Invalid) else (netstat -nao | findstr %PORT%)
ECHO.
ECHO.
GOTO COMMANDS

:NSLookup
CLS
set /p IP="Enter IP ADDRESS / HOSTNAME TO LOOKUP: "
nslookup %IP%
ECHO.
ECHO.
GOTO COMMANDS

:PING
CLS
set /p IP="Enter IP ADDRESS / HOSTNAME TO PING: "
ECHO Press Ctrl + C to stop ping
ping %IP% -t
ECHO.
ECHO.
GOTO COMMANDS

:Exit
exit
