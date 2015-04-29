@echo off
echo This will create/recreate map individual map servers from DSGame-server.exe
PAUSE
cd ..
echo ------------------------
if exist DSGame-Abyssea.exe del DSGame-Abyssea.exe
if not exist DSGame-Abyssea.exe copy DSGame-server.exe /b DSGame-Abyssea.exe /b
echo ------------------------
if exist DSGame-DynaLimbus.exe.exe del DSGame-DynaLimbus.exe
if not exist DSGame-DynaLimbus.exe.exe copy DSGame-server.exe /b DSGame-DynaLimbus.exe.exe /b
echo ------------------------
if exist DSGame-BCNM.exe del DSGame-BCNM.exe
if not exist DSGame-BCNM.exe copy DSGame-server.exe /b DSGame-BCNM.exe /b
echo ------------------------
if exist DSGame-z49.exe del DSGame-z49.exe
if not exist DSGame-z49.exe copy DSGame-server.exe /b DSGame-z49.exe /b
echo ------------------------
echo Done.
PAUSE
PAUSE