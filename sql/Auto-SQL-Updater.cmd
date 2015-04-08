@ECHO OFF
ECHO Before using this you must first edit this file to use the database name,
ECHO MySQL user and MySQL password to match what your server actually uses.
ECHO Please try NOT to accidently commit that information to your repository.
ECHO ---------------------------------
PAUSE
ECHO Renaming custom tables to prevent early execution...
ren *_custom.sql *_custom.txt
ECHO ---------------------------------
ECHO Importing misc non character data tables...
REM FOR %%X IN (augments.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (augments.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (status_effects.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (status_effects.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (synth_recipes.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (synth_recipes.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (zone_settings.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (zone_settings.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (treasure_spawn_points.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (treasure_spawn_points.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (triggers.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (triggers.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Importing ability/trait/ws/merit tables...
REM FOR %%X IN (abilities.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (abilities.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (abilities_charges.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (abilities_charges.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (traits.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (traits.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (weapon_skills.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (weapon_skills.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (merits.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (merits.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Importing spell tables...
REM FOR %%X IN (spell_list.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (spell_list.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (blue_spell_list.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (blue_spell_list.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (blue_spell_mods.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (blue_spell_mods.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (blue_traits.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (blue_traits.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Importing bcnm and instance tables...
REM FOR %%X IN (bcnm_battlefield.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (bcnm_battlefield.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (bcnm_info.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (bcnm_info.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (bcnm_loot.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (bcnm_loot.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (bcnm_treasure_chests.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (bcnm_treasure_chests.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (instance_entities.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (instance_entities.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (instance_list.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (instance_list.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Importing guild tables...
REM FOR %%X IN (guild_item_points.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (guild_item_points.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (guild_shops.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (guild_shops.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
REM FOR %%X IN (guilds.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (guilds.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO ------------------------------------------------------------------
REM Do not add tables unless 100% positive that no character/account data will be harmed
REM ------------------------------------------------------------------
ECHO importing item tables
REM FOR %%X IN (item*.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (item*.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO importing mob tables
REM FOR %%X IN (mob*.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (mob*.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
REM FOR %%X IN (npc*.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (npc*.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO ---------------------------------
ECHO Un-renaming custom tables to allow execution...
ren *_custom.txt *_custom.sql
REM FOR %%X IN (*_custom.sql) DO mysql dspdb -h localhost -u root -pIr0nd00r < %%X
FOR %%X IN (*_custom.sql) DO ECHO Importing %%X & mysql dspdb -h localhost -u root -pIr0nd00r < %%X
ECHO Finished!
PAUSE
PAUSE