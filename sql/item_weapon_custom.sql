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

INSERT INTO `item_weapon` VALUES (20809,'kumbhakarna',5,0,2,1,322,169,0); -- axe
INSERT INTO `item_weapon` VALUES (21169,'keraunos',12,0,3,1,435,228,0); -- staff
INSERT INTO `item_weapon` VALUES (20536,'tinhaspa',1,0,4,1,526,121,0); -- h2h
INSERT INTO `item_weapon` VALUES (21252,'one-eyed',26,0,5,1,216,60,0); -- cb
INSERT INTO `item_weapon` VALUES (20860,'minos',6,0,2,1,504,274,0); -- ga
INSERT INTO `item_weapon` VALUES (20717,'arendsi_fleuret',3,0,2,1,224,119,0); -- sword
INSERT INTO `item_weapon` VALUES (21111,'bolelabunga',11,0,3,1,216,100,0); -- club
INSERT INTO `item_weapon` VALUES (20763,'kbiroj',4,0,2,1,456,242,0); -- gs
INSERT INTO `item_weapon` VALUES (20904,'cronus',7,0,2,1,528,288,0); -- scythe
INSERT INTO `item_weapon` VALUES (21040,'shokudaikiri',10,0,2,1,450,238,0); -- gkt
INSERT INTO `item_weapon` VALUES (20954,'eminent_lance',8,0,2,1,492,227,0); -- pole
INSERT INTO `item_weapon` VALUES (20994,'shigi',9,0,2,1,190,98,0); -- kata
INSERT INTO `item_weapon` VALUES (21229,'cibitshavore',25,0,1,1,600,261,0); -- bow

INSERT INTO `item_weapon` VALUES (20857,'svarga',6,0,2,1,504,286,0); -- GA
INSERT INTO `item_weapon` VALUES (21038,'senkuto',10,0,2,3,450,215,0); -- GKT

INSERT INTO `item_weapon` VALUES (20616,'ipetam',8,0,5,1,220,115,0); -- dagger
INSERT INTO `item_weapon` VALUES (20721,'mimesis',3,0,2,1,236,128,0); -- sword
INSERT INTO `item_weapon` VALUES (20718,'claidheamh_soluis',3,0,2,1,270,142,0); -- sword
INSERT INTO `item_weapon` VALUES (20759,'macbain',4,0,2,1,510,268,0); -- GS
INSERT INTO `item_weapon` VALUES (20758,'mekosuchus_blade',4,0,2,1,504,273,0); -- GS
INSERT INTO `item_weapon` VALUES (20901,'inanna',7,0,2,1,550,288,0); -- scythe
INSERT INTO `item_weapon` VALUES (20946,'olyndicus',8,0,2,1,528,227,0); -- polearm
INSERT INTO `item_weapon` VALUES (20989,'izuna',9,0,2,1,237,124,0); -- katana
INSERT INTO `item_weapon` VALUES (21173,'kaladanda',12,0,1,1,366,204,0); -- staff
INSERT INTO `item_weapon` VALUES (20530,'ohrmazd',1,0,4,1,526,128,0); -- h2h




