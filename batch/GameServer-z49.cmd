@echo off
cd ..
:onCrash
echo [%date% %time%] Restarting z49 Map Server...
DSGame-z49.exe --ip 107.134.149.145 --port 54130 --log .\log\z49_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_z49_Map_Stop.log
@echo ...
GOTO onCrash