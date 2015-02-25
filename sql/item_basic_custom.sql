-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_basic.sql
-- and must be imported/executed AFTER that file
--
-- The primary use of this file is for items DSP doesn't want AT ALL,
-- namely SoA items with item level or +skill properties.
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- INSERT INTO `item_basic` VALUES (itemid,subid,'name','sortname',stackSize,flags,aH,NoSale,BaseSell);
-- New entries below this line, and sorted by itemID please.

REPLACE INTO `item_basic` VALUES (17440,0,'kraken_club','kraken_club',1,34816,0,0,12850); -- K.club removed from AH listing.
