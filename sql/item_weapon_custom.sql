-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_weapon.sql
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

-- INSERT INTO `item_weapon` VALUES (itemId,'name',skill,subskill,dmgType,hit,delay,dmg,unlock_points);
-- New entries below this line, and sorted by itemID please.

INSERT INTO `item_weapon` VALUES (20809,'kumbhakarna',5,0,2,1,322,169,0);
INSERT INTO `item_weapon` VALUES (21169,'keraunos',12,0,3,1,435,228,0);
INSERT INTO `item_weapon` VALUES (20536,'tinhaspa',1,0,4,1,526,121,0);
INSERT INTO `item_weapon` VALUES (21252,'one-eyed',26,0,5,1,216,60,0);
INSERT INTO `item_weapon` VALUES (20860,'minos',6,0,2,1,504,274,0);
INSERT INTO `item_weapon` VALUES (20717,'arendsi_fleuret',3,0,2,1,224,119,0);
INSERT INTO `item_weapon` VALUES (21111,'bolelabunga',11,0,3,1,216,100,0);
INSERT INTO `item_weapon` VALUES (20763,'kbiroj',4,0,2,1,456,242,0);
INSERT INTO `item_weapon` VALUES (20904,'cronus',7,0,2,1,528,288,0);
INSERT INTO `item_weapon` VALUES (21040,'shokudaikiri',10,0,2,1,450,238,0);
INSERT INTO `item_weapon` VALUES (20954,'eminent_lance',8,0,2,1,492,227,0);
INSERT INTO `item_weapon` VALUES (20994,'shigi',9,0,2,1,190,98,0);
INSERT INTO `item_weapon` VALUES (21229,'cibitshavore',25,0,1,1,600,261,0);

INSERT INTO `item_weapon` VALUES (20857,'svarga',6,0,2,1,504,286,0);
INSERT INTO `item_weapon` VALUES (21038,'senkuto',10,0,2,3,450,215,0);
