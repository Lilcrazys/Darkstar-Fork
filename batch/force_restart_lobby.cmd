@echo off
echo [%date% %time%] Force restarting Lobby/Connection Server!
echo ------------------------------------
echo Terminating old process..
TASKKILL /F /IM DSConnect-server.exe
echo New process should start automaticlly..
echo ------------------------------------
