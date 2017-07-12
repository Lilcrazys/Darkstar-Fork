-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_mods.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

REPLACE INTO `status_effects` VALUES (285,'visitant',256,0,0,0,0,0,0,0);
REPLACE INTO `status_effects` VALUES (287,'atma',256,0,0,0,0,0,0,0);
REPLACE INTO `status_effects` VALUES (293,'negate_petrify',288,0,0,0,7,0,0,0);
REPLACE INTO `status_effects` VALUES (294,'negate_terror',288,0,0,0,28,0,0,0);
REPLACE INTO `status_effects` VALUES (295,'negate_amnesia',288,0,0,0,16,0,0,0);
REPLACE INTO `status_effects` VALUES (296,'negate_doom',288,0,0,0,15,0,0,0);
REPLACE INTO `status_effects` VALUES (297,'negate_poison',288,0,0,0,3,0,0,0);
REPLACE INTO `status_effects` VALUES (608,'negate_virus',288,0,0,0,0,0,0,0);
REPLACE INTO `status_effects` VALUES (609,'negate_curse',288,0,0,0,0,0,0,0);
REPLACE INTO `status_effects` VALUES (610,'negate_charm',288,0,0,0,0,0,0,0);
REPLACE INTO `status_effects` VALUES (802,'atma',256,0,0,0,0,0,0,0); -- 2nd ATMA effect
REPLACE INTO `status_effects` VALUES (803,'atma',256,0,0,0,0,0,0,0); -- 3rd ATMA effect
-- REPLACE INTO `status_effects` VALUES (id,'name',flags,type,negative_id,overwrite,block_id,remove_id,element,min_duration);
-- Effects above this line are bugfixed or otherwise modified from darkstar.
-- Effects below this line created specifically for custom content
-- INSERT INTO `status_effects` VALUES (id,'name',flags,type,negative_id,overwrite,block_id,remove_id,element,min_duration);
INSERT INTO `status_effects` VALUES (1014,'commute',32,0,0,0,0,0,0,1);
INSERT INTO `status_effects` VALUES (1015,'curse_spikes',33,34,0,0,0,0,8,0);
INSERT INTO `status_effects` VALUES (1016,'custom_enspell',33,94,51,0,0,0,0,0);
-- INSERT INTO `status_effects` VALUES (1017,
-- INSERT INTO `status_effects` VALUES (1018,
INSERT INTO `status_effects` VALUES (1019,'dark_spikes',33,34,0,0,0,0,8,0);
INSERT INTO `status_effects` VALUES (1020,'sjcap_boost',768,0,0,0,0,0,0,0);
INSERT INTO `status_effects` VALUES (1021,'rage',544,0,0,0,0,0,0,0);
INSERT INTO `status_effects` VALUES (1022,'legion',1049376,0,0,0,0,0,0,0);
