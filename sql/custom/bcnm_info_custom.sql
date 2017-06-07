-- ---------------------------------------------------------------------------
-- This file adds onto, or modifies portions of the table "bcnm_info" created
-- by the file bcnm_info.sql and must be imported/executed AFTER that file.
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------
-- REPLACE INTO `bcnm_info` VALUES (bcnmId,zoneId,'name','fastestName',fastestTime,timeLimit,levelCap,partySize,lootDropId,rules);

INSERT INTO `bcnm_info` VALUES (421,201,'htb_trial_by_wind',NULL,NULL,1800,0,6,0,5);      -- HTB Avatars: Garuda
INSERT INTO `bcnm_info` VALUES (453,202,'htb_trial_by_lightning',NULL,NULL,1800,0,6,0,5); -- HTB Avatars: Ramuh
INSERT INTO `bcnm_info` VALUES (485,203,'htb_trial_by_Ice',NULL,NULL,1800,0,6,0,5);       -- HTB Avatars: Shiva
INSERT INTO `bcnm_info` VALUES (548,207,'htb_trial_by_fire',NULL,NULL,1800,0,6,0,5);      -- HTB Avatars: Ifrit
INSERT INTO `bcnm_info` VALUES (581,209,'htb_trial_by_earth',NULL,NULL,1800,0,6,0,5);     -- HTB Avatars: Titan
INSERT INTO `bcnm_info` VALUES (612,211,'htb_trial_by_water',NULL,NULL,1800,0,6,0,5);     -- HTB Avatars: Leviathan

-- REPLACE INTO `bcnm_info` VALUES (1184,78,'the_rider_cometh',null,null,900,0,6,0,5);

INSERT INTO `bcnm_info` VALUES (1308,255,'the_wyrm_god',null,null,1800,0,18,0,7);
