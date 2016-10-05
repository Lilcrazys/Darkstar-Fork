-- ---------------------------------------------------------------------------
-- This file adds onto, or modifies portions of the table
-- "bcnm_battlefield" created by the file bcnm_battlefield.sql
-- and must be imported/executed AFTER that file.
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- INSERT INTO `bcnm_battlefield` VALUES (bcnmId,battlefieldNumber,monsterId,conditions);

-- INSERT INTO `bcnm_battlefield` VALUES (1184,1,17097298,3); -- Odin Prime
-- INSERT INTO `bcnm_battlefield` VALUES (1184,1,17097299,0); -- Odin Image
-- INSERT INTO `bcnm_battlefield` VALUES (1184,1,17097300,0); -- Odin Image
-- INSERT INTO `bcnm_battlefield` VALUES (1184,1,17097301,0); -- Odin Image

INSERT INTO `bcnm_battlefield` VALUES (1308,1,17821697,3); -- Shinryu
INSERT INTO `bcnm_battlefield` VALUES (1308,2,17821698,3); -- Shinryu
INSERT INTO `bcnm_battlefield` VALUES (1308,3,17821699,3); -- Shinryu
