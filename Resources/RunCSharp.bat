@ECHO OFF
cd %~dp1
ECHO Compiling %~nx1.......
IF EXIST %~n1.exe (
DEL %~n1.exe
)
csc %~nx1
IF EXIST %~n1.exe (
ECHO -----------OUTPUT-----------
%~n1
)