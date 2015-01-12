-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_mods.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

REPLACE INTO `item_mods` VALUES(11580, 2, 12);
REPLACE INTO `item_mods` VALUES(11580, 27, -2);

REPLACE INTO `item_mods` VALUES(16002, 374, 5);
REPLACE INTO `item_mods` VALUES(16002, 491, 5);

REPLACE INTO `item_mods` VALUES(18852, 289, 50); -- MODDED OCTAVE CLUB
