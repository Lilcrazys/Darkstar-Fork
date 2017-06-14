@echo off
REM ------------------------------------------------------
REM --------       Teo's mysql dump script        --------
REM ------------------------------------------------------
set dumpExe="C:\Program Files\MariaDB 10.1\bin\mysqldump.exe"
set mysqlhost=localhost
set mysqluser=root
set mysqlpass=Ir0nd00r
IF NOT EXIST E:\database-backup\logs\ md E:\database-backup\logs\
set LogPath=E:\database-backup\logs
for /f "tokens=1" %%i in ('date /t') do set DATE_DOW=%%i
for /f "tokens=2" %%i in ('date /t') do set DATE_DAY=%%i
for /f %%i in ('echo %date_day:/=-%') do set DATE_DAY=%%i
for /f %%i in ('time /t') do set DATE_TIME=%%i
for /f %%i in ('echo %date_time::=-%') do set DATE_TIME=%%i
for /f %%i in ('time /t') do set START_TIME=%%i
for /f %%i in ('echo %start_time::=:%') do set START_TIME=%%i
CLS
ECHO Backup Started Date: %DATE_DAY% Time: %START_TIME%
IF NOT EXIST E:\database-backup\legiondb\ md E:\database-backup\legiondb\
IF NOT EXIST E:\database-backup\legiondb\7z\ md E:\database-backup\legiondb\7z\
IF NOT EXIST E:\database-backup\legiondb\temp\ md E:\database-backup\legiondb\temp\
IF NOT EXIST E:\database-backup\legiondb\7z\%DATE_DAY%_%DATE_TIME%\ md E:\database-backup\legiondb\7z\%DATE_DAY%_%DATE_TIME%\
IF NOT EXIST E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\ md E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\
ECHO Dumping game server DB tables's..
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb accounts > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\accounts.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb account_ip_record > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\account_ip_record.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_effects > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_effects.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_equip > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_equip.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_exp > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_exp.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_inventory > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_inventory.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_jobs > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_jobs.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_look > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_look.sql"
REM Stupid ass DSP misnamed the file below
REM %dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_merit > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_merit.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_merit > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_merits.sql"
REM Stupid ass DSP misnamed the file above
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_pet_name > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_pet_name.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_points > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_points.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_profile > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_profile.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_skills > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_skills.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_stats > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_stats.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_storage > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_storage.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_spells > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_spells.sql"
REM (doesn't exist anymore/yet?) %dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_titles > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_titles.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_vars > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\char_vars.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb chars > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\chars.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb delivery_box > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\delivery_box.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb linkshells > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\linkshells.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb server_variables > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\server_variables.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb zone_settings > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\zone_settings.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb auction_house > "E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\auction_house.sql"
ECHO ..Done dumping tables. Now compressing SQL Files..
IF NOT EXIST E:\database-backup\legiondb\7z\%DATE_DAY%_%DATE_TIME%\ md E:\database-backup\legiondb\7z\%DATE_DAY%_%DATE_TIME%\
CALL "C:\Program Files\7-Zip\7z.exe" a -t7z -aoa -mx9 E:\database-backup\legiondb\7z\%DATE_DAY%_%DATE_TIME%\DB.7z E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\*.*
ECHO ..DONE. Now deleting Temp SQL Files..
@rmdir E:\database-backup\legiondb\temp\%DATE_DAY%_%DATE_TIME%\ /S /q
ECHO All done! %DATE_DAY% StartTime: %START_TIME% - EndTime: %END_TIME%