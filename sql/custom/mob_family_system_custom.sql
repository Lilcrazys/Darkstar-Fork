-- ---------------------------------------------------------------------------
-- This file adds onto the table "mob_family_system" created
-- by the file mob_droplist.sql and must be imported/executed AFTER that file.
-- ---------------------------------------------------------------------------

-- INSERT INTO `mob_family_system` VALUES (familyID,familyName,systemID,systemName,melee-size,speed,HP,MP,STR,DEX,VIT,AGI,INT,MND,CHR,ATT,DEF,ACC,EVA,Slash,Pierce,H2H,Impact,Fire,Ice,Wind,Earth,Lightning,Water,Light,Dark,Element,detects,charmable);
-- New info below this line Sorted by familyID starting at 4000.

REPLACE INTO `mob_family_system` VALUES (76,'Crab',2,'Aquan',0,40,108,120,4,3,1,5,3,3,4,3,2,3,3,1,1,1,1,0.875,1,0.875,0.875,1,0.75,0.875,0.875,6,2,1); -- Add DETECT_HEARING to this crab family, which JumpyCrab uses..

REPLACE INTO `mob_family_system` VALUES (117,'Gargouille',9,'Demon',0,40,110,120,3,3,3,3,3,3,3,3,3,3,3,1,1,1,1,1,1,1,1,1,1,1,1,8,256,0); -- Add DETECT_SCENT to rid of stupid DSP error message in console log..

REPLACE INTO `mob_family_system` VALUES (452,'Rockfin',2,'Aquan',2,40,120,140,6,5,4,5,3,3,4,4,4,2,2,1,1,1,1,1,1.25,1,1,1.25,0.75,1,1,6,2,0); -- Tchakka needs DETECT_HEARING

INSERT INTO `mob_family_system` VALUES (4000,'Tome',18,'Unclassified',0,40,100,120,3,3,3,3,3,3,3,3,3,3,3,1,1,1,1,1,1,1,1,1,1,1,1,0,41,0);
INSERT INTO `mob_family_system` VALUES (4001,'Astral_Box',18,'Unclassified',0,0,1,1,6,6,6,6,6,6,6,6,6,6,6,1,1,1,1,1,1,1,1,1,1,1,1,0,256,0);
