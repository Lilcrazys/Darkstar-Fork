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

-- REPLACE INTO `bcnm_info` VALUES (1184,78,'The_Rider_Cometh',null,null,900,0,6,0,5);

INSERT INTO `bcnm_info` VALUES (1308,255,'The_Wyrm_God',null,null,1800,0,18,0,7);
