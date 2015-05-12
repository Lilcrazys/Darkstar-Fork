@echo off
cd ..
del DSGame-BCNM.exe
copy DSGame-server.exe /b DSGame-BCNM.exe /b
:onCrash
echo [%date% %time%] Restarting BCNM Map Server...
DSGame-BCNM.exe --ip 74.199.66.47 --port 54530 --log .\log\BCNM_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_BCNM_Map_Stop.log
@echo ...
GOTO onCrash