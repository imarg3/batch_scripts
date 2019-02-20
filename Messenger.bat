@echo off
echo Messenger
echo When typing the computer name, type
echo in /server:computer replacing
echo computer with the IP adress of the computer.
:START
set /p c=Enter computer name here:
:A
set /p m=Enter message here:
msg * %c% %m%
GoTo A