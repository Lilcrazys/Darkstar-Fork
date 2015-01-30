-- ---------------------------------------------------------------------------
-- This file adds onto, modifies, or removes portions of the table "mob_droplist"
-- created by the file mob_droplist.sql and must be imported/executed AFTER that file.
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
--
-- To REMOVE a drop that DarkStar has we don't want in Legion, use:
-- DELETE FROM `mob_droplist` WHERE `dropid`=0 and `type`=0 and `itemid`=0 `droprate`=0;
-- Where the zero is replaced by whatever values DarkStar was using.
--
-- Please comment what is dropping from what mob on each line:
-- REPLACE INTO '`mob_droplist` VALUES (dropid,type,itemid,droprate); -- Item name from NM name
-- ---------------------------------------------------------------------------

-- Examples
-- DELETE FROM `mob_droplist` WHERE 'dropid'=1 and 'type'=2 and 'itemid'=3 'droprate'=4;
-- INSERT INTO `mob_droplist` VALUES (5,6,7,8);
-- REPLACE INTO `mob_droplist` VALUES (9,10,11,12);


INSERT INTO `mob_droplist` VALUES (2773,0,20762,150);