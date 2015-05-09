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
if exist DSGame-z49.exe del DSGame-z49.exe
if not exist DSGame-z49.exe copy DSGame-server.exe /b DSGame-z49.exe /b
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
if exist DSGame-z49.pdb del DSGame-z49.pdb
if not exist DSGame-z49.pdb copy DSGame-server.pdb /b DSGame-z49.pdb /b
echo ------------------------
echo Done.
PAUSE
PAUSE