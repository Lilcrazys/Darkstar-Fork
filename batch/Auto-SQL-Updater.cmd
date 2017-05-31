@ECHO OFF
cd ..\sql
ECHO Before using this you must first edit this file to use the database name,
ECHO MySQL user and MySQL password to match what your server actually uses.
ECHO Please try NOT to accidently commit that information to your repository.
ECHO ---------------------------------
ECHO Do not add tables to batch unless certain no character/account data will be harmed!
ECHO ------------------------------------------------------------------
PAUSE
set mysqlExec="C:\Program Files\MariaDB 10.1\bin\mysql.exe"
ECHO ---------------------------------
ECHO Importing misc non character data tables...
FOR %%X IN (augments.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (status_effects.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (synth_recipes.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (zone_settings.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (treasure_spawn_points.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (transport.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Importing ability/trait/ws/merit tables...
FOR %%X IN (abilities.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (abilities_charges.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (traits.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (weapon_skills.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (merits.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Importing spell tables...
FOR %%X IN (spell_list.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (blue_spell_list.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (blue_spell_mods.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (blue_traits.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Importing bcnm and instance tables...
FOR %%X IN (bcnm*.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (instance*.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Importing guild tables...
FOR %%X IN (guild*.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
ECHO ------------------------------------------------------------------
ECHO Importing item tables...
FOR %%X IN (item*.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO importing mob and npc tables...
FOR %%X IN (mob*.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (npc*.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Importing custom tables...
cd custom
FOR %%X IN (*_custom.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
cd ..
ECHO ---------------------------------
ECHO Resetting triggers.
FOR %%X IN (triggers.sql) DO ECHO Importing %%X & mysqlExec legiondb -h localhost -u root -pIr0nd00r < %%X
ECHO Finished!
PAUSE
PAUSE