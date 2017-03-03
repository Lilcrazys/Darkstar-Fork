@echo off
set dumpExe="C:\Program Files\MySQL\MySQL Server 5.6\bin\mysqldump.exe"
set mysqlhost=localhost
set mysqluser=root
set mysqlpass=Ir0nd00r
set LogPath=G:\MySQLBackups\logs
for /f "tokens=1" %%i in ('date /t') do set DATE_DOW=%%i
for /f "tokens=2" %%i in ('date /t') do set DATE_DAY=%%i
for /f %%i in ('echo %date_day:/=-%') do set DATE_DAY=%%i
for /f %%i in ('time /t') do set DATE_TIME=%%i
for /f %%i in ('echo %date_time::=-%') do set DATE_TIME=%%i
for /f %%i in ('time /t') do set START_TIME=%%i
for /f %%i in ('echo %start_time::=:%') do set START_TIME=%%i
CLS
ECHO Chat Audit Started Date: %DATE_DAY% Time: %START_TIME%
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --no-create-info --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb audit_chat > "G:\MySQLBackups\gamer_server\audit_chat_%DATE_DAY%_%DATE_TIME%.sql"
ECHO ..Done dumping table. Now Clearing it out..
mysql -u %mysqluser% -p%mysqlpass% -e "TRUNCATE TABLE audit_chat" dspdb
ECHO ..DONE
for /f %%i in ('time /t') do set END_TIME=%%i
for /f %%i in ('echo %end_time::=:%') do set END_TIME=%%i
REM ------------------------------------------------------
echo Last Backup Run on %date% >> %LogPath%\Chat_Audit.txt
echo StartTime: %START_TIME% - EndTime: %END_TIME% >> %LogPath%\Chat_Audit.txt
ECHO Nuking vars
set dumpExe=
set mysqlhost=
set mysqluser=
set mysqlpass=
set LogPath=
ECHO All done! %DATE_DAY% StartTime: %START_TIME% - EndTime: %END_TIME%