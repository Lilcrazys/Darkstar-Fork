@ECHO OFF
cd ..\sql
ECHO This file must NOT be used while the server is live with players logged in!
ECHO ONLY use this when server is completely down! Lobby AND all Map Server!
ECHO ------------------------------------------------------------------
PAUSE
ECHO NOT RESPONSIBLE FOR ANY DAMAGE CAUSED BY IGNORING THAT!
PAUSE
ECHO Resetting party and session tables.
FOR %%X IN (.\custom\SessionNuke.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (accounts_sessions.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (accounts_parties.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO Finished!
PAUSE
PAUSE