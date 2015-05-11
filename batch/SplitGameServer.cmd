@echo off
echo This will create/recreate map individual map servers from DSGame-server.exe
PAUSE
cd ..
echo ------------------------
if exist DSGame-Abyssea.exe del DSGame-Abyssea.exe
if not exist DSGame-Abyssea.exe copy DSGame-server.exe /b DSGame-Abyssea.exe /b
echo ------------------------
if exist DSGame-DynaLimbus.exe del DSGame-DynaLimbus.exe
if not exist DSGame-DynaLimbus.exe copy DSGame-server.exe /b DSGame-DynaLimbus.exe /b
echo ------------------------
if exist DSGame-BCNM.exe del DSGame-BCNM.exe
if not exist DSGame-BCNM.exe copy DSGame-server.exe /b DSGame-BCNM.exe /b
echo ------------------------
if exist DSGame-GM.exe del DSGame-GM.exe
if not exist DSGame-GM.exe copy DSGame-server.exe /b DSGame-GM.exe /b
echo ------------------------
if exist DSGame-Abyssea.pdb del DSGame-Abyssea.pdb
if not exist DSGame-Abyssea.pdb copy DSGame-server.pdb /b DSGame-Abyssea.pdb /b
echo ------------------------
if exist DSGame-DynaLimbus.pdb del DSGame-DynaLimbus.pdb
if not exist DSGame-DynaLimbus.pdb copy DSGame-server.pdb /b DSGame-DynaLimbus.pdb /b
echo ------------------------
if exist DSGame-BCNM.pdb del DSGame-BCNM.exe
if not exist DSGame-BCNM.pdb copy DSGame-server.exe /b DSGame-BCNM.pdb /b
echo ------------------------
if exist DSGame-GM.pdb del DSGame-GM.pdb
if not exist DSGame-GM.pdb copy DSGame-server.pdb /b DSGame-GM.pdb /b
echo ------------------------
echo Done.
PAUSE
PAUSE