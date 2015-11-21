@echo off
cd ..
:onCrash
echo [%date% %time%] Restarting Dynamis/Limbus Map Server...
DSGame-DynaLimbus.exe --ip 69.14.81.203 --port 54430 --log .\log\DynaLimbus_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_DynaLimbus_Map_Stop.log
@echo ...
GOTO onCrash