@echo off
cd ..
:onCrash
echo [%date% %time%] Restarting Main Map Server...
DSGame-server.exe --ip 74.199.66.47 --port 54230 --log .\log\Main_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_Main_Map_Stop.log
@echo ...
GOTO onCrash