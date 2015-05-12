@echo off
cd ..
:onCrash
echo [%date% %time%] Restarting Abyssea Map Server...
DSGame-Abyssea.exe --ip 74.199.66.47 --port 54330 --log .\log\Abyssea_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_Abyssea_Map_Stop.log
@echo ...
GOTO onCrash