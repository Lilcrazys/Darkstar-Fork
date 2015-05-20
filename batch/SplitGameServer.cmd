@echo off
echo This will create/recreate map individual map servers from DSGame-server.exe
PAUSE
cd ..
echo ------------------------
echo Deleteing old EXE's...
if exist DSGame-GM.exe del DSGame-GM.exe
if exist DSGame-BCNM.exe del DSGame-BCNM.exe
if exist DSGame-DynaLimbus.exe del DSGame-DynaLimbus.exe
if exist DSGame-Abyssea.exe del DSGame-Abyssea.exe
echo ------------------------
echo Creating new EXE's...
if not exist DSGame-GM.exe copy DSGame-server.exe /b DSGame-GM.exe /bexe /b
if not exist DSGame-BCNM.exe copy DSGame-server.exe /b DSGame-BCNM.exe /b
if not exist DSGame-DynaLimbus.exe copy DSGame-server.exe /b DSGame-DynaLimbus.
if not exist DSGame-Abyssea.exe copy DSGame-server.exe /b DSGame-Abyssea.exe /b
echo ------------------------
echo Done.
PAUSE
PAUSE