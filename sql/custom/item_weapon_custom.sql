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

-- INSERT INTO `item_weapon` VALUES (itemId,'name',skill,subskill,ilvl_skill,ilvl_parry,ilvl_macc,dmgType,hit,delay,dmg,unlock_points);
-- New entries below this line, and sorted by itemID please.
REPLACE INTO `item_weapon` VALUES (18852,'octave_club',11,0,0,0,0,3,8,264,11,0);

INSERT INTO `item_weapon` VALUES (20540,'eminent_baghnakhs',1,0,203,203,167,4,1,501,91,0);
INSERT INTO `item_weapon` VALUES (20624,'eminent_dagger',2,0,203,203,167,1,1,183,89,0);
INSERT INTO `item_weapon` VALUES (20726,'eminent_scimitar',3,0,215,215,167,2,1,264,128,0);
INSERT INTO `item_weapon` VALUES (20766,'eminent_sword',4,0,215,215,167,2,1,430,209,0);
INSERT INTO `item_weapon` VALUES (20817,'eminent_axe',5,0,215,215,167,2,1,288,141,0);
INSERT INTO `item_weapon` VALUES (20865,'eminent_voulge',6,0,215,215,167,2,1,504,246,0);
INSERT INTO `item_weapon` VALUES (20908,'eminent_sickle',7,0,215,215,167,2,1,501,232,0);
INSERT INTO `item_weapon` VALUES (20998,'kaitsuburi',9,0,215,215,167,2,1,190,88,0);
INSERT INTO `item_weapon` VALUES (21044,'ichimonji-yofusa',10,0,215,215,167,2,1,450,219,0);
INSERT INTO `item_weapon` VALUES (21119,'eminent_wand',11,0,215,215,167,3,1,288,141,0);
INSERT INTO `item_weapon` VALUES (21182,'eminent_staff',12,0,215,215,167,3,1,366,170,0);
INSERT INTO `item_weapon` VALUES (21183,'eminent_pole',12,0,215,215,167,3,1,402,186,0);
INSERT INTO `item_weapon` VALUES (21231,'eminent_bow',25,0,215,215,167,1,1,720,277,0);
INSERT INTO `item_weapon` VALUES (21251,'eminent_crossbow',26,0,215,215,167,5,1,288,93,0);
INSERT INTO `item_weapon` VALUES (21281,'eminent_gun',26,1,215,215,167,6,1,600,102,0);

INSERT INTO `item_weapon` VALUES (21405,'eminent_flute',42,0,0,0,0,0,0,240,0,0);

REPLACE INTO `item_weapon` VALUES (20718,'claidheamh_soluis',3,0,242,242,188,2,1,270,142,0);
