@echo off
cd ..
del DSGame-Battle.exe
copy DSGame-server.exe /b DSGame-Battle.exe /b
:onCrash
echo [%date% %time%] Restarting Battle Map Server...
DSGame-Battle.exe --ip 24.192.160.140 --port 54530 --log .\log\Battle_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_Battle_Map_Stop.log
@echo ...
GOTO onCrash