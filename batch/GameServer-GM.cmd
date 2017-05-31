@echo off
cd ..
:onCrash
echo [%date% %time%] Restarting GM Map Server...
DSGame-GM.exe --ip 69.14.82.66 --port 54130 --log .\log\GM_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_GM_Map_Stop.log
@echo ...
GOTO onCrash