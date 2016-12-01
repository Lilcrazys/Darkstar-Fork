-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_mods.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have,use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- REPLACE INTO `item_mods` VALUES (itemId,modId,value); -- remember to comment what the item is and what this mod is!
-- New entries below this line,and sorted by itemID then modID.

-- No "Enhances Holy Water Effect" MOD for Blenmot's ring or HQ (10794/10795)

INSERT INTO `item_mods` VALUES (11926,416,15); --  Legion Custom MOD_NULL_PHYSICAL_DAMAGE

INSERT INTO `item_mods` VALUES (11927,163,-128); -- Aegis (lv99 no afterglow) -50% Magic Damage Taken

INSERT INTO `item_mods` VALUES (13215,2,9999); -- HP to GM belt to test things

INSERT INTO `item_mods` VALUES (16193,416,10); -- Legion Custom MOD_NULL_PHYSICAL_DAMAGE

INSERT INTO `item_mods` VALUES (16194,416,12); -- Legion Custom MOD_NULL_PHYSICAL_DAMAGE

INSERT INTO `item_mods` VALUES (16199,109,106); -- Shield skill (Custom)
INSERT INTO `item_mods` VALUES (16199,416,25); -- Legion Custom MOD_NULL_PHYSICAL_DAMAGE

REPLACE INTO `item_mods` VALUES (18264,507,300); -- Occ. 3x dmg / was 2.5 wiki says 3x

INSERT INTO `item_mods` VALUES (18852,289,50); -- MODDED OCTAVE CLUB

REPLACE INTO `item_mods` VALUES (19001,420,10); -- Barrage accuracy

REPLACE INTO `item_mods` VALUES (19090,420,20); -- Barrage accuracy

INSERT INTO `item_mods` VALUES (19456,165,10); -- LEGION CUSTOM Crit hit rate
INSERT INTO `item_mods` VALUES (19456,421,20); -- LEGION CUSTOM CRIT DMG

INSERT INTO `item_mods` VALUES (19457,165,10); --
INSERT INTO `item_mods` VALUES (19457,421,20); --

INSERT INTO `item_mods` VALUES (19458,165,10); --
INSERT INTO `item_mods` VALUES (19458,421,20); --

INSERT INTO `item_mods` VALUES (19459,165,10); --
INSERT INTO `item_mods` VALUES (19459,421,20); --

INSERT INTO `item_mods` VALUES (19460,165,10); --
INSERT INTO `item_mods` VALUES (19460,421,20); --

INSERT INTO `item_mods` VALUES (19461,165,10); --
INSERT INTO `item_mods` VALUES (19461,421,20); --

INSERT INTO `item_mods` VALUES (19462,165,10); --
INSERT INTO `item_mods` VALUES (19462,421,20); --

INSERT INTO `item_mods` VALUES (19463,165,10); --
INSERT INTO `item_mods` VALUES (19463,421,20); --

INSERT INTO `item_mods` VALUES (19464,165,10); --
INSERT INTO `item_mods` VALUES (19464,421,20); --

INSERT INTO `item_mods` VALUES (19465,165,10); --
INSERT INTO `item_mods` VALUES (19465,421,20); --

INSERT INTO `item_mods` VALUES (19468,165,10); --
INSERT INTO `item_mods` VALUES (19468,421,20); --

INSERT INTO `item_mods` VALUES (19469,165,10); --
INSERT INTO `item_mods` VALUES (19469,421,20); --

INSERT INTO `item_mods` VALUES (19632,165,15); --
INSERT INTO `item_mods` VALUES (19632,421,30); --

INSERT INTO `item_mods` VALUES (19633,165,15); --
INSERT INTO `item_mods` VALUES (19633,421,30); --

INSERT INTO `item_mods` VALUES (19634,165,15); --
INSERT INTO `item_mods` VALUES (19634,421,30); --

INSERT INTO `item_mods` VALUES (19635,165,15); --
INSERT INTO `item_mods` VALUES (19635,421,30); --

INSERT INTO `item_mods` VALUES (19636,165,15); --
INSERT INTO `item_mods` VALUES (19636,421,30); --

INSERT INTO `item_mods` VALUES (19637,165,15); --
INSERT INTO `item_mods` VALUES (19637,421,30); --

INSERT INTO `item_mods` VALUES (19638,165,15); --
INSERT INTO `item_mods` VALUES (19638,421,30); --

INSERT INTO `item_mods` VALUES (19639,165,15); --
INSERT INTO `item_mods` VALUES (19639,421,30); --

INSERT INTO `item_mods` VALUES (19640,165,15); --
INSERT INTO `item_mods` VALUES (19640,421,30); --

INSERT INTO `item_mods` VALUES (19641,165,15); --
INSERT INTO `item_mods` VALUES (19641,421,30); --

INSERT INTO `item_mods` VALUES (19644,165,15); --
INSERT INTO `item_mods` VALUES (19644,421,30); --

INSERT INTO `item_mods` VALUES (19645,165,15); --
INSERT INTO `item_mods` VALUES (19645,421,30); --

INSERT INTO `item_mods` VALUES (19805,165,20); -- LEGION CUSTOM Crit hit rate
INSERT INTO `item_mods` VALUES (19805,421,40); -- LEGION CUSTOM CRIT DMG

INSERT INTO `item_mods` VALUES (19806,165,20); --
INSERT INTO `item_mods` VALUES (19806,421,40); --

INSERT INTO `item_mods` VALUES (19807,165,20); --
INSERT INTO `item_mods` VALUES (19807,421,40); --

INSERT INTO `item_mods` VALUES (19808,165,20); --
INSERT INTO `item_mods` VALUES (19808,421,40); --

INSERT INTO `item_mods` VALUES (19809,165,20); --
INSERT INTO `item_mods` VALUES (19809,421,40); --

INSERT INTO `item_mods` VALUES (19810,165,20); --
INSERT INTO `item_mods` VALUES (19810,421,40); --

INSERT INTO `item_mods` VALUES (19811,165,20); --
INSERT INTO `item_mods` VALUES (19811,421,40); --

INSERT INTO `item_mods` VALUES (19812,165,20); --
INSERT INTO `item_mods` VALUES (19812,421,40); --

INSERT INTO `item_mods` VALUES (19813,165,20); --
INSERT INTO `item_mods` VALUES (19813,421,40); --

INSERT INTO `item_mods` VALUES (19814,165,20); --
INSERT INTO `item_mods` VALUES (19814,421,40); --

INSERT INTO `item_mods` VALUES (19817,165,20); --
INSERT INTO `item_mods` VALUES (19817,421,40); --

INSERT INTO `item_mods` VALUES (19818,165,20); --
INSERT INTO `item_mods` VALUES (19818,421,40); --

INSERT INTO `item_mods` VALUES (19853,165,20); --
INSERT INTO `item_mods` VALUES (19853,421,40); --

INSERT INTO `item_mods` VALUES (20486,165,25); --
INSERT INTO `item_mods` VALUES (20486,421,50); --

INSERT INTO `item_mods` VALUES (20487,165,25); --
INSERT INTO `item_mods` VALUES (20487,421,50); --

INSERT INTO `item_mods` VALUES (20510,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20510,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (20512,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (20512,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (20512,8,50); -- STR

-- Godhands
INSERT INTO `item_mods` VALUES (20515,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (20515,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (20515,73,10); -- STP
INSERT INTO `item_mods` VALUES (20515,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (20515,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20515,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (20515,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (20515,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (20515,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (20515,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (20525,25,20); -- Blurred Claws - 20 Acc
INSERT INTO `item_mods` VALUES (20526,25,25); -- Blurred Claws +1 - 25 Acc
INSERT INTO `item_mods` VALUES (20526,173,20); -- Martial Arts +20

INSERT INTO `item_mods` VALUES (20530,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20530,506,200); -- occ
INSERT INTO `item_mods` VALUES (20530,507,200); -- occ

INSERT INTO `item_mods` VALUES (20537,10,7);

INSERT INTO `item_mods` VALUES (20538,10,8);

INSERT INTO `item_mods` VALUES (20563,165,25); --
INSERT INTO `item_mods` VALUES (20563,421,50); --

INSERT INTO `item_mods` VALUES (20564,165,25); --
INSERT INTO `item_mods` VALUES (20564,421,50); --

INSERT INTO `item_mods` VALUES (20584,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20584,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (20585,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20585,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (20587,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (20587,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (20587,9,50); -- DEX

INSERT INTO `item_mods` VALUES (20589,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (20589,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (20589,9,50); -- DEX

-- Aeneas
INSERT INTO `item_mods` VALUES (20594,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (20594,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (20594,73,10); -- STP
INSERT INTO `item_mods` VALUES (20594,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (20594,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20594,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (20594,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (20594,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (20594,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (20594,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (20601,25,15); -- Blurred Knife - 15 Acc
INSERT INTO `item_mods` VALUES (20601,68,22); -- 22 Eva
INSERT INTO `item_mods` VALUES (20602,25,20); -- Blurred Knife +1 - 20 Acc
INSERT INTO `item_mods` VALUES (20602,68,22); -- 22 Eva

-- Jugo Kukri +1
INSERT INTO `item_mods` VALUES (20609,11,15); -- LEGION CUSTOM AGI
INSERT INTO `item_mods` VALUES (20609,30,15); -- 21 Macc
INSERT INTO `item_mods` VALUES (20609,68,22); -- 22 Evasion
INSERT INTO `item_mods` VALUES (20609,302,3); -- Triple Atk 3%
INSERT INTO `item_mods` VALUES (20609,431,1); -- Additional Effect: Wind

INSERT INTO `item_mods` VALUES (20616,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20616,506,200); -- occ
INSERT INTO `item_mods` VALUES (20616,507,200); -- occ

INSERT INTO `item_mods` VALUES (20620,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20620,506,200); -- occ
INSERT INTO `item_mods` VALUES (20620,507,200); -- occ

INSERT INTO `item_mods` VALUES (20653,165,25); --
INSERT INTO `item_mods` VALUES (20653,421,50); --

INSERT INTO `item_mods` VALUES (20654,165,25); --
INSERT INTO `item_mods` VALUES (20654,421,50); --

INSERT INTO `item_mods` VALUES (20686,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20686,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (20687,302,10); -- TRP ATK
INSERT INTO `item_mods` VALUES (20687,288,15); -- DBL ATK

-- Sequence 
INSERT INTO `item_mods` VALUES (20695,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (20695,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (20695,73,10); -- STP
INSERT INTO `item_mods` VALUES (20695,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (20695,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20695,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (20695,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (20695,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (20695,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (20695,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (20711,25,15); -- Blurred Sword - 15 Acc
INSERT INTO `item_mods` VALUES (20712,25,20); -- Blurred Sword +1 - 20 Acc

REPLACE INTO `item_mods` VALUES (20715,311,96); -- Acclimator +96 M.Dmg

INSERT INTO `item_mods` VALUES (20718,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20718,506,200); -- occ
INSERT INTO `item_mods` VALUES (20718,507,200); -- occ

INSERT INTO `item_mods` VALUES (20721,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20721,506,300); -- occ
INSERT INTO `item_mods` VALUES (20721,507,200); -- occ

INSERT INTO `item_mods` VALUES (20747,165,25); --
INSERT INTO `item_mods` VALUES (20747,421,50); --

INSERT INTO `item_mods` VALUES (20748,165,25); --
INSERT INTO `item_mods` VALUES (20748,421,50); --

INSERT INTO `item_mods` VALUES (20758,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20758,506,200); -- occ
INSERT INTO `item_mods` VALUES (20758,507,200); -- occ

INSERT INTO `item_mods` VALUES (20759,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20759,506,200); -- occ
INSERT INTO `item_mods` VALUES (20759,507,200); -- occ

INSERT INTO `item_mods` VALUES (20794,165,25); --
INSERT INTO `item_mods` VALUES (20794,421,50); --

INSERT INTO `item_mods` VALUES (20795,165,25); --
INSERT INTO `item_mods` VALUES (20795,421,50); --

-- Blurred Axe
INSERT INTO `item_mods` VALUES (20802,25,15); -- 15 Acc

-- Blurred Axe +1
INSERT INTO `item_mods` VALUES (20803,25,20); -- 20 Acc

INSERT INTO `item_mods` VALUES (20809,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20809,506,200); -- occ

INSERT INTO `item_mods` VALUES (20839,165,25); --
INSERT INTO `item_mods` VALUES (20839,421,50); --

INSERT INTO `item_mods` VALUES (20840,165,25); --
INSERT INTO `item_mods` VALUES (20840,421,50); --

INSERT INTO `item_mods` VALUES (20857,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20857,506,200); -- occ
INSERT INTO `item_mods` VALUES (20857,507,200); -- occ

INSERT INTO `item_mods` VALUES (20884,165,25); --
INSERT INTO `item_mods` VALUES (20884,421,50); --

INSERT INTO `item_mods` VALUES (20885,165,25); --
INSERT INTO `item_mods` VALUES (20885,421,50); --

-- Chango
INSERT INTO `item_mods` VALUES (20843,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (20843,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (20843,73,10); -- STP
INSERT INTO `item_mods` VALUES (20843,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (20843,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20843,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (20843,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (20843,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (20843,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (20843,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (20849,25,20); -- Blurred Cleaver - 20 Acc
INSERT INTO `item_mods` VALUES (20850,25,25); -- Blurred Cleaver +1 - 25 Acc

-- Anguta
INSERT INTO `item_mods` VALUES (20890,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (20890,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (20890,73,10); -- STP
INSERT INTO `item_mods` VALUES (20890,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (20890,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20890,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (20890,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (20890,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (20890,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (20890,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (20896,25,20); -- Blurred Scythe - 20 Acc
INSERT INTO `item_mods` VALUES (20897,25,25); -- Blurred Scythe +1 - 25 Acc

INSERT INTO `item_mods` VALUES (20901,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20901,506,200); -- occ
INSERT INTO `item_mods` VALUES (20901,507,200); -- occ

INSERT INTO `item_mods` VALUES (20906,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20906,506,200); -- occ
INSERT INTO `item_mods` VALUES (20906,507,200); -- occ

INSERT INTO `item_mods` VALUES (20929,165,25); --
INSERT INTO `item_mods` VALUES (20929,421,50); --

INSERT INTO `item_mods` VALUES (20930,165,25); --
INSERT INTO `item_mods` VALUES (20930,421,50); --

-- Trishula
INSERT INTO `item_mods` VALUES (20935,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (20935,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (20935,73,10); -- STP
INSERT INTO `item_mods` VALUES (20935,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (20935,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20935,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (20935,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (20935,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (20935,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (20935,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (20940,25,20); -- Blurred Lance - 20 Acc
INSERT INTO `item_mods` VALUES (20941,25,25); -- Blurred Lance +1 - 25 Acc

INSERT INTO `item_mods` VALUES (20946,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20946,506,200); -- occ
INSERT INTO `item_mods` VALUES (20946,507,200); -- occ

INSERT INTO `item_mods` VALUES (20974,165,25); --
INSERT INTO `item_mods` VALUES (20974,421,50); --

INSERT INTO `item_mods` VALUES (20975,165,25); --
INSERT INTO `item_mods` VALUES (20975,421,50); --

-- Heishi Shorinken 
INSERT INTO `item_mods` VALUES (20977,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (20977,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (20977,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20977,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (20977,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (20977,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (20977,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (20977,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (20984,25,15); -- Kujaku - 15 Acc
INSERT INTO `item_mods` VALUES (20984,68,22); -- 22 Eva
INSERT INTO `item_mods` VALUES (20985,25,20); -- Kujaku +1 - 20 Acc
INSERT INTO `item_mods` VALUES (20985,68,22); -- 22 Eva

INSERT INTO `item_mods` VALUES (20989,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20989,506,200); -- occ
INSERT INTO `item_mods` VALUES (20989,507,200); -- occ

INSERT INTO `item_mods` VALUES (20995,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20995,506,200); -- occ
INSERT INTO `item_mods` VALUES (20995,507,200); -- occ

INSERT INTO `item_mods` VALUES (21006,23,23);
INSERT INTO `item_mods` VALUES (21006,68,12);
INSERT INTO `item_mods` VALUES (21006,9,7);

INSERT INTO `item_mods` VALUES (21007,23,25);
INSERT INTO `item_mods` VALUES (21007,68,13);
INSERT INTO `item_mods` VALUES (21007,9,8);

INSERT INTO `item_mods` VALUES (21019,165,25); --
INSERT INTO `item_mods` VALUES (21019,421,50); --

-- Dojikiri Yasutsuna 
INSERT INTO `item_mods` VALUES (21025,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (21025,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (21025,73,10); -- STP
INSERT INTO `item_mods` VALUES (21025,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (21025,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21025,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (21025,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (21025,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (21025,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (21025,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (21032,25,20); -- Kunitsuna - 20 Acc
INSERT INTO `item_mods` VALUES (21033,25,25); -- Kunitsuna +1 - 25 Acc

INSERT INTO `item_mods` VALUES (21041,73,5);

INSERT INTO `item_mods` VALUES (21042,73,6);

INSERT INTO `item_mods` VALUES (21052,73,25); -- Should be Save TP +250   added Store TP +25

REPLACE INTO `item_mods` VALUES (21062,28,65); --

INSERT INTO `item_mods` VALUES (21077,23,60); -- Mjollnir iLvL 119 AG - ATT +60
INSERT INTO `item_mods` VALUES (21077,431,1); -- Additional Effect - scripts\globals\items\mjollnir.lua
INSERT INTO `item_mods` VALUES (21077,506,130); -- Extra DMG Chance 13%
INSERT INTO `item_mods` VALUES (21077,507,300); -- Extra DMG X3
INSERT INTO `item_mods` VALUES (21077,740,40); -- Randgrith DMG +40%
INSERT INTO `item_mods` VALUES (21077,311,217); -- Magic DMG +217

INSERT INTO `item_mods` VALUES (21078,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21078,288,15); -- DBL ATK
INSERT INTO `item_mods` VALUES (21078,30,40); -- MACC

INSERT INTO `item_mods` VALUES (21079,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21079,421,65); -- Crit DMG

-- Tishtrya
INSERT INTO `item_mods` VALUES (21082,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (21082,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (21082,73,10); -- STP
INSERT INTO `item_mods` VALUES (21082,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (21082,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21082,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (21082,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (21082,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (21082,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (21082,175,100); -- Skill Chain DMG

-- Blurred Rod
INSERT INTO `item_mods` VALUES (21093,12,6); -- 6 Int
INSERT INTO `item_mods` VALUES (21093,13,6); -- 6 Mnd
INSERT INTO `item_mods` VALUES (21093,30,15); -- 15 Macc
INSERT INTO `item_mods` VALUES (21093,28,16); -- 16 Mab
INSERT INTO `item_mods` VALUES (21093,311,124); -- 124 M.Dmg

-- Nlurred Rod +1
INSERT INTO `item_mods` VALUES (21094,12,6); -- 6 Int
INSERT INTO `item_mods` VALUES (21094,13,6); -- 6 Mnd
INSERT INTO `item_mods` VALUES (21094,30,20); -- 20 Macc
INSERT INTO `item_mods` VALUES (21094,28,16); -- 16 Mab
INSERT INTO `item_mods` VALUES (21094,311,124); -- 124 M.Dmg

REPLACE INTO `item_mods` VALUES (21111,28,60); -- Matt

REPLACE INTO `item_mods` VALUES (21139,28,165); -- Should be 60   magic dmg +  unknown

REPLACE INTO `item_mods` VALUES (21140,28,185); -- Should be 60   magic dmg +  unknown

INSERT INTO `item_mods` VALUES (21144,28,100); --

-- Khatvanga
INSERT INTO `item_mods` VALUES (21147,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (21147,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (21147,73,10); -- STP
INSERT INTO `item_mods` VALUES (21147,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (21147,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21147,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (21147,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (21147,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (21147,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (21147,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (21157,12,12); -- Blurred Staff - 12 Int
INSERT INTO `item_mods` VALUES (21157,13,12); -- 12 Mnd
INSERT INTO `item_mods` VALUES (21157,30,20); -- 20 Macc
INSERT INTO `item_mods` VALUES (21157,28,28); -- 28 Mab
INSERT INTO `item_mods` VALUES (21158,12,12); -- Blurred Staff +1 - 12 Int
INSERT INTO `item_mods` VALUES (21158,13,13); -- 12 Mnd
INSERT INTO `item_mods` VALUES (21158,30,25); -- 25 Macc
INSERT INTO `item_mods` VALUES (21158,28,28); -- 28 Mab

REPLACE INTO `item_mods` VALUES (21161,28,135); -- Matt

REPLACE INTO `item_mods` VALUES (21173,28,120); -- Matt

INSERT INTO `item_mods` VALUES (21173,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (21173,506,200); -- occ
INSERT INTO `item_mods` VALUES (21173,507,200); -- occ

REPLACE INTO `item_mods` VALUES (21176,28,120); -- Should be 18 see below

REPLACE INTO `item_mods` VALUES (21177,28,125); -- Matt

REPLACE INTO `item_mods` VALUES (21181,28,168); -- MATT

REPLACE INTO `item_mods` VALUES (21182,28,130); --  Magic Attack Bonus +25

REPLACE INTO `item_mods` VALUES (21194,28,95); -- Should be 19 see below

INSERT INTO `item_mods` VALUES (21200,12,12);
INSERT INTO `item_mods` VALUES (21200,13,12);
INSERT INTO `item_mods` VALUES (21200,28,25);
INSERT INTO `item_mods` VALUES (21200,311,195);

INSERT INTO `item_mods` VALUES (21201,12,13);
INSERT INTO `item_mods` VALUES (21201,13,13);
INSERT INTO `item_mods` VALUES (21201,28,26);
INSERT INTO `item_mods` VALUES (21201,311,205);

INSERT INTO `item_mods` VALUES (21202,5,85);

INSERT INTO `item_mods` VALUES (21203,5,87);

REPLACE INTO `item_mods` VALUES (21208,28,73); -- Should be 40   see below

INSERT INTO `item_mods` VALUES (21212,165,25); --
INSERT INTO `item_mods` VALUES (21212,421,50); --

INSERT INTO `item_mods` VALUES (21213,165,25); --
INSERT INTO `item_mods` VALUES (21213,421,50); --

INSERT INTO `item_mods` VALUES (21217,26,20); -- Blurred Bow - 20 Racc
INSERT INTO `item_mods` VALUES (21218,26,25); -- Blurred Bow +1 - 25 Racc

INSERT INTO `item_mods` VALUES (21239,73,4);

INSERT INTO `item_mods` VALUES (21240,73,5);

INSERT INTO `item_mods` VALUES (21249,26,12);

INSERT INTO `item_mods` VALUES (21250,26,13);

INSERT INTO `item_mods` VALUES (21265,165,25); --
INSERT INTO `item_mods` VALUES (21265,421,50); --

INSERT INTO `item_mods` VALUES (21267,24,45); -- Annihilator iLvL 119 AG - RNG ATT +45
INSERT INTO `item_mods` VALUES (21267,26,60); -- RNG ACC +60
INSERT INTO `item_mods` VALUES (21267,506,130); -- Extra DMG Chance 13%
INSERT INTO `item_mods` VALUES (21267,507,300); -- Extra DMG X3
INSERT INTO `item_mods` VALUES (21267,786,40); -- Coronach DMG +40%
INSERT INTO `item_mods` VALUES (21267,27,-25); -- ENM
INSERT INTO `item_mods` VALUES (21267,66,10); -- RATT%

INSERT INTO `item_mods` VALUES (21268,831,35);
INSERT INTO `item_mods` VALUES (21268,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21268,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21269,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21269,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21269,11,50); -- AGI

INSERT INTO `item_mods` VALUES (21353,165,1);
INSERT INTO `item_mods` VALUES (21353,23,5);
INSERT INTO `item_mods` VALUES (21353,25,5);
INSERT INTO `item_mods` VALUES (21353,26,10);

INSERT INTO `item_mods` VALUES (21354,165,2);
INSERT INTO `item_mods` VALUES (21354,23,6);
INSERT INTO `item_mods` VALUES (21354,25,6);
INSERT INTO `item_mods` VALUES (21354,26,11);

INSERT INTO `item_mods` VALUES (21378,165,1);
INSERT INTO `item_mods` VALUES (21378,421,5);

INSERT INTO `item_mods` VALUES (21379,165,2);
INSERT INTO `item_mods` VALUES (21379,421,6);

-- Marsyas
INSERT INTO `item_mods` VALUES (21398,454,50); -- Song Duration

INSERT INTO `item_mods` VALUES (21400,452,1); -- Blurred Harp - All Songs +1
INSERT INTO `item_mods` VALUES (21400,453,1); -- One Additional Song
INSERT INTO `item_mods` VALUES (21400,440,2); -- Lullaby +2
INSERT INTO `item_mods` VALUES (21401,452,2); -- Blurred Harp +1 - All Songs +2
INSERT INTO `item_mods` VALUES (21401,453,1); -- One Additional Song
INSERT INTO `item_mods` VALUES (21401,440,2); -- Lullaby +2
INSERT INTO `item_mods` VALUES (21401,442,2); -- Ballad +2

INSERT INTO `item_mods` VALUES (21480,26,20); -- Blurred Crossbow - 20 Racc
INSERT INTO `item_mods` VALUES (21481,26,25); -- Blurred Crossbow +1 - 25 Racc
INSERT INTO `item_mods` VALUES (21481,365,15); -- Snapshot +15

-- Fomalhaut
INSERT INTO `item_mods` VALUES (21485,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (21485,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (21485,73,10); -- STP
INSERT INTO `item_mods` VALUES (21485,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (21485,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21485,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (21485,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (21485,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (21485,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (21485,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (21683,25,60); -- Ragnarok iLvL 119 AG - ACC +60
INSERT INTO `item_mods` VALUES (21683,165,14); -- Crit Rate +14%
INSERT INTO `item_mods` VALUES (21683,506,160); -- Extra DMG Chance 16%
INSERT INTO `item_mods` VALUES (21683,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (21683,627,40); -- Scourge DMG +40%

INSERT INTO `item_mods` VALUES (21684,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21684,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21684,10,50); -- VIT

INSERT INTO `item_mods` VALUES (21700,25,20); -- Blurred Claymore - 20 Acc
INSERT INTO `item_mods` VALUES (21701,25,25); -- Blurred Claymore +1 - 25 Acc

INSERT INTO `item_mods` VALUES (21750,23,60); -- Guttler iLvL 119 AG - ATT +60
INSERT INTO `item_mods` VALUES (21750,431,1); -- Additional Effect - scripts\globals\items\guttler.lua
INSERT INTO `item_mods` VALUES (21750,506,130); -- Extra DMG Chance 13%
INSERT INTO `item_mods` VALUES (21750,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (21750,643,40); -- Onslaught DMG +40%
INSERT INTO `item_mods` VALUES (21750,62,10); -- ATT%

INSERT INTO `item_mods` VALUES (21751,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21751,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (21752,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21752,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21752,8,35); -- STR

-- Tri edge
INSERT INTO `item_mods` VALUES (21753,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (21753,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (21753,73,10); -- STP
INSERT INTO `item_mods` VALUES (21753,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (21753,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21753,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (21753,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (21753,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (21753,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (21753,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (21756,25,60); -- Bravura iLvL 119 AG - ACC +60
INSERT INTO `item_mods` VALUES (21756,431,1); -- Additional Effect - scripts\globals\items\bravura.lua
INSERT INTO `item_mods` VALUES (21756,506,200); -- Extra DMG Chance 20%
INSERT INTO `item_mods` VALUES (21756,507,200); -- Extra DMG X2
INSERT INTO `item_mods` VALUES (21756,659,40); -- Metatron Torment DMG +40%
INSERT INTO `item_mods` VALUES (21756,370,5); -- Regen
INSERT INTO `item_mods` VALUES (21756,161,10); -- DMG Taken

INSERT INTO `item_mods` VALUES (21757,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21757,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (21758,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21758,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21758,8,50); -- STR

INSERT INTO `item_mods` VALUES (21808,25,60); -- Apocalypse iLvL 119 AG - ACC +60
INSERT INTO `item_mods` VALUES (21808,431,1); -- Additional Effect - scripts\gobals\items\apocalypse.lua
INSERT INTO `item_mods` VALUES (21808,506,200); -- Extra DMG Chance 20%
INSERT INTO `item_mods` VALUES (21808,507,200); -- Extra DMG X2
INSERT INTO `item_mods` VALUES (21808,675,40); -- Catastrophe DMG +40%
INSERT INTO `item_mods` VALUES (21808,384,100); --  Haste 

INSERT INTO `item_mods` VALUES (21809,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21809,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (21810,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21810,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21810,8,35); -- STR
INSERT INTO `item_mods` VALUES (21810,13,35); -- MND

INSERT INTO `item_mods` VALUES (21857,25,60); -- Gungnir iLvL 119 AG - ACC +60
INSERT INTO `item_mods` VALUES (21857,431,1); -- Additional Effect - scripts\globals\items\gungnir.lua
INSERT INTO `item_mods` VALUES (21857,506,200); -- Extra DMG Chance %20
INSERT INTO `item_mods` VALUES (21857,507,200); -- Extra DMG X2
INSERT INTO `item_mods` VALUES (21857,691,40); -- Geirskogul DMG +40%
INSERT INTO `item_mods` VALUES (21857,62,5); -- ATK%
INSERT INTO `item_mods` VALUES (21857,288,5); -- DBL ATK 

INSERT INTO `item_mods` VALUES (21858,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21858,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (21859,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21859,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21859,10,50); -- VIT

INSERT INTO `item_mods` VALUES (21906,23,60); -- Kikoku iLvL 119 AG - ATT +60
INSERT INTO `item_mods` VALUES (21906,431,1); -- Additional Effect - scripts\globals\items\kikoku.lua
INSERT INTO `item_mods` VALUES (21906,506,180); -- Extra DMG Chance 18%
INSERT INTO `item_mods` VALUES (21906,507,300); -- Extra DMG X3
INSERT INTO `item_mods` VALUES (21906,707,40); -- Blade: Metsu DMG +40%
INSERT INTO `item_mods` VALUES (21906,62,10); -- ATK%
INSERT INTO `item_mods` VALUES (21906,289,10);  -- Subtle Blow

INSERT INTO `item_mods` VALUES (21907,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21907,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (21908,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21908,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21908,11,50); -- AGI

INSERT INTO `item_mods` VALUES (21954,25,60); -- Amanomurakumo ILvL 119 AG - ACC +60
INSERT INTO `item_mods` VALUES (21954,431,1); -- Additional Effect - scripts\globals\items\amanomurakumo.lua
INSERT INTO `item_mods` VALUES (21954,506,180); -- Extra DMG Chance 18%
INSERT INTO `item_mods` VALUES (21954,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (21954,723,40); -- Tachi: Kaiten DMG +40%
INSERT INTO `item_mods` VALUES (21954,73,10); -- STP
INSERT INTO `item_mods` VALUES (21954,306,10); -- Zanshin

INSERT INTO `item_mods` VALUES (21955,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (21955,288,15); -- DBL ATK

INSERT INTO `item_mods` VALUES (21956,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21956,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21956,8,50); -- STR

INSERT INTO `item_mods` VALUES (22115,24,45); -- Yoichinoyumi iLvL 119 AG - RNG ATT +45
INSERT INTO `item_mods` VALUES (22115,26,80); -- RNG ACC +80
INSERT INTO `item_mods` VALUES (22115,506,180); -- Extra DMG Chance 18%
INSERT INTO `item_mods` VALUES (22115,507,300); -- Extra DMG X3
INSERT INTO `item_mods` VALUES (22115,770,40); -- Namas Arrow DMG +40%

INSERT INTO `item_mods` VALUES (22116,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (22116,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (22116,9,50); -- DEX

INSERT INTO `item_mods` VALUES (22060,25,60); -- Claustrum iLvL 119 AG - ACC +60
INSERT INTO `item_mods` VALUES (22060,431,1); -- Additional Effect - scripts\globals\items\claustrum.lua
INSERT INTO `item_mods` VALUES (22060,506,180); -- Extra DMG Chance 18%
INSERT INTO `item_mods` VALUES (22060,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (22060,755,40); -- Gate of Tartarus DMG +40%
INSERT INTO `item_mods` VALUES (22060,311,279); -- Magic DMG +279
INSERT INTO `item_mods` VALUES (22060,161,-10); -- DMG Taken
INSERT INTO `item_mods` VALUES (22060,369,5); -- REFRESH
INSERT INTO `item_mods` VALUES (22060,28,165); -- MAB

INSERT INTO `item_mods` VALUES (22061,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (22061,288,15); -- DBL ATK
INSERT INTO `item_mods` VALUES (22061,28,165); -- MAB
INSERT INTO `item_mods` VALUES (22061,30,40); -- MACC

INSERT INTO `item_mods` VALUES (22062,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (22062,288,15); -- DBL ATK
INSERT INTO `item_mods` VALUES (22062,28,200); -- MAB
INSERT INTO `item_mods` VALUES (22062,30,40); -- MACC

INSERT INTO `item_mods` VALUES (22063,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (22063,288,15); -- DBL ATK
INSERT INTO `item_mods` VALUES (22063,28,165); -- MAB
INSERT INTO `item_mods` VALUES (22063,30,40); -- MACC

INSERT INTO `item_mods` VALUES (22064,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (22064,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (22064,12,50); -- INT
INSERT INTO `item_mods` VALUES (22064,28,165); -- MAB
INSERT INTO `item_mods` VALUES (22064,30,40); -- MACC

-- Fail-NOT
INSERT INTO `item_mods` VALUES (22117,506,100); -- Extra DMG Chance 10%
INSERT INTO `item_mods` VALUES (22117,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (22117,73,10); -- STP
INSERT INTO `item_mods` VALUES (22117,345,500); -- TP Bonus
INSERT INTO `item_mods` VALUES (22117,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (22117,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (22117,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (22117,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (22117,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (22117,175,100); -- Skill Chain DMG


INSERT INTO `item_mods` VALUES (25707,25,5);
INSERT INTO `item_mods` VALUES (25707,28,10);
INSERT INTO `item_mods` VALUES (25707,27,-5);
INSERT INTO `item_mods` VALUES (25707,296,2);

-- Srivatsa
INSERT INTO `item_mods` VALUES (26403,2,150); -- HP
INSERT INTO `item_mods` VALUES (26403,5,150); -- MP
INSERT INTO `item_mods` VALUES (26403,23,35); -- ATK
INSERT INTO `item_mods` VALUES (26403,25,35); -- ACC
INSERT INTO `item_mods` VALUES (26403,27,15); -- Enmity
INSERT INTO `item_mods` VALUES (26403,109,129); -- Shield skill (Custom)
INSERT INTO `item_mods` VALUES (26403,161,-8); -- DMG TKN
INSERT INTO `item_mods` VALUES (26403,163,-25); -- MAGIC DMG TKN
INSERT INTO `item_mods` VALUES (26403,416,10); -- Annuls DMG 

INSERT INTO `item_mods` VALUES (26406,127,3);
INSERT INTO `item_mods` VALUES (26406,128,3);
INSERT INTO `item_mods` VALUES (26406,129,3);
INSERT INTO `item_mods` VALUES (26406,130,3);
INSERT INTO `item_mods` VALUES (26406,131,3);
INSERT INTO `item_mods` VALUES (26406,132,3);
INSERT INTO `item_mods` VALUES (26406,133,3);
INSERT INTO `item_mods` VALUES (26406,134,3);
INSERT INTO `item_mods` VALUES (26406,135,3);

REPLACE INTO `item_mods` VALUES (26710,11,34);
REPLACE INTO `item_mods` VALUES (26710,9,34); -- didnt add extra unity DEX and AGI

INSERT INTO `item_mods` VALUES (26874,311,20); -- Supay Weskit magic damage added,already pushed to DSP

INSERT INTO `item_mods` VALUES (26877,1,133);
INSERT INTO `item_mods` VALUES (26877,10,29);
INSERT INTO `item_mods` VALUES (26877,11,36);
INSERT INTO `item_mods` VALUES (26877,12,28);
INSERT INTO `item_mods` VALUES (26877,13,28);
INSERT INTO `item_mods` VALUES (26877,14,28);
INSERT INTO `item_mods` VALUES (26877,165,3);
INSERT INTO `item_mods` VALUES (26877,170,5);
INSERT INTO `item_mods` VALUES (26877,2,59);
INSERT INTO `item_mods` VALUES (26877,25,25);
INSERT INTO `item_mods` VALUES (26877,26,25);
INSERT INTO `item_mods` VALUES (26877,29,6);
INSERT INTO `item_mods` VALUES (26877,30,25);
INSERT INTO `item_mods` VALUES (26877,31,64);
INSERT INTO `item_mods` VALUES (26877,384,40);
INSERT INTO `item_mods` VALUES (26877,5,44);
INSERT INTO `item_mods` VALUES (26877,68,49);
INSERT INTO `item_mods` VALUES (26877,8,29);
INSERT INTO `item_mods` VALUES (26877,9,37);

INSERT INTO `item_mods` VALUES (26878,1,134);
INSERT INTO `item_mods` VALUES (26878,10,30);
INSERT INTO `item_mods` VALUES (26878,11,37);
INSERT INTO `item_mods` VALUES (26878,12,29);
INSERT INTO `item_mods` VALUES (26878,13,29);
INSERT INTO `item_mods` VALUES (26878,14,29);
INSERT INTO `item_mods` VALUES (26878,165,4);
INSERT INTO `item_mods` VALUES (26878,170,6);
INSERT INTO `item_mods` VALUES (26878,2,59);
INSERT INTO `item_mods` VALUES (26878,25,26);
INSERT INTO `item_mods` VALUES (26878,26,26);
INSERT INTO `item_mods` VALUES (26878,29,6);
INSERT INTO `item_mods` VALUES (26878,30,26);
INSERT INTO `item_mods` VALUES (26878,31,64);
INSERT INTO `item_mods` VALUES (26878,384,40);
INSERT INTO `item_mods` VALUES (26878,5,44);
INSERT INTO `item_mods` VALUES (26878,68,49);
INSERT INTO `item_mods` VALUES (26878,8,30);
INSERT INTO `item_mods` VALUES (26878,9,38);

INSERT INTO `item_mods` VALUES (26879,1,127);
INSERT INTO `item_mods` VALUES (26879,10,25);
INSERT INTO `item_mods` VALUES (26879,11,25);
INSERT INTO `item_mods` VALUES (26879,12,34);
INSERT INTO `item_mods` VALUES (26879,13,34);
INSERT INTO `item_mods` VALUES (26879,14,34);
INSERT INTO `item_mods` VALUES (26879,2,54);
INSERT INTO `item_mods` VALUES (26879,28,25);
INSERT INTO `item_mods` VALUES (26879,29,6);
INSERT INTO `item_mods` VALUES (26879,30,28);
INSERT INTO `item_mods` VALUES (26879,31,80);
INSERT INTO `item_mods` VALUES (26879,384,30);
INSERT INTO `item_mods` VALUES (26879,5,59);
INSERT INTO `item_mods` VALUES (26879,68,41);
INSERT INTO `item_mods` VALUES (26879,8,25);
INSERT INTO `item_mods` VALUES (26879,9,25);

INSERT INTO `item_mods` VALUES (26880,1,128);
INSERT INTO `item_mods` VALUES (26880,10,26);
INSERT INTO `item_mods` VALUES (26880,11,26);
INSERT INTO `item_mods` VALUES (26880,12,35);
INSERT INTO `item_mods` VALUES (26880,13,35);
INSERT INTO `item_mods` VALUES (26880,14,35);
INSERT INTO `item_mods` VALUES (26880,2,54);
INSERT INTO `item_mods` VALUES (26880,28,26);
INSERT INTO `item_mods` VALUES (26880,29,6);
INSERT INTO `item_mods` VALUES (26880,30,29);
INSERT INTO `item_mods` VALUES (26880,31,80);
INSERT INTO `item_mods` VALUES (26880,384,30);
INSERT INTO `item_mods` VALUES (26880,5,59);
INSERT INTO `item_mods` VALUES (26880,68,41);
INSERT INTO `item_mods` VALUES (26880,8,26);
INSERT INTO `item_mods` VALUES (26880,9,26);

INSERT INTO `item_mods` VALUES (26881,1,143);
INSERT INTO `item_mods` VALUES (26881,10,33);
INSERT INTO `item_mods` VALUES (26881,11,21);
INSERT INTO `item_mods` VALUES (26881,12,21);
INSERT INTO `item_mods` VALUES (26881,13,21);
INSERT INTO `item_mods` VALUES (26881,14,21);
INSERT INTO `item_mods` VALUES (26881,161,-2);
INSERT INTO `item_mods` VALUES (26881,2,111);
INSERT INTO `item_mods` VALUES (26881,23,15);
INSERT INTO `item_mods` VALUES (26881,25,15);
INSERT INTO `item_mods` VALUES (26881,29,4);
INSERT INTO `item_mods` VALUES (26881,31,53);
INSERT INTO `item_mods` VALUES (26881,384,4);
INSERT INTO `item_mods` VALUES (26881,5,44);
INSERT INTO `item_mods` VALUES (26881,68,41);
INSERT INTO `item_mods` VALUES (26881,8,33);
INSERT INTO `item_mods` VALUES (26881,9,21);

INSERT INTO `item_mods` VALUES (26882,1,144);
INSERT INTO `item_mods` VALUES (26882,10,34);
INSERT INTO `item_mods` VALUES (26882,11,21);
INSERT INTO `item_mods` VALUES (26882,12,21);
INSERT INTO `item_mods` VALUES (26882,13,21);
INSERT INTO `item_mods` VALUES (26882,14,21);
INSERT INTO `item_mods` VALUES (26882,161,-3);
INSERT INTO `item_mods` VALUES (26882,2,121);
INSERT INTO `item_mods` VALUES (26882,23,16);
INSERT INTO `item_mods` VALUES (26882,25,16);
INSERT INTO `item_mods` VALUES (26882,29,4);
INSERT INTO `item_mods` VALUES (26882,31,53);
INSERT INTO `item_mods` VALUES (26882,384,30);
INSERT INTO `item_mods` VALUES (26882,5,44);
INSERT INTO `item_mods` VALUES (26882,68,41);
INSERT INTO `item_mods` VALUES (26882,8,34);
INSERT INTO `item_mods` VALUES (26882,9,21);

INSERT INTO `item_mods` VALUES (26883,1,131);
INSERT INTO `item_mods` VALUES (26883,10,23);
INSERT INTO `item_mods` VALUES (26883,11,29);
INSERT INTO `item_mods` VALUES (26883,12,29);
INSERT INTO `item_mods` VALUES (26883,13,24);
INSERT INTO `item_mods` VALUES (26883,14,24);
INSERT INTO `item_mods` VALUES (26883,2,59);
INSERT INTO `item_mods` VALUES (26883,23,15);
INSERT INTO `item_mods` VALUES (26883,24,15);
INSERT INTO `item_mods` VALUES (26883,28,10);
INSERT INTO `item_mods` VALUES (26883,29,5);
INSERT INTO `item_mods` VALUES (26883,302,1);
INSERT INTO `item_mods` VALUES (26883,31,64);
INSERT INTO `item_mods` VALUES (26883,384,30);
INSERT INTO `item_mods` VALUES (26883,5,29);
INSERT INTO `item_mods` VALUES (26883,68,55);
INSERT INTO `item_mods` VALUES (26883,8,29);
INSERT INTO `item_mods` VALUES (26883,9,28);

INSERT INTO `item_mods` VALUES (26884,1,132);
INSERT INTO `item_mods` VALUES (26884,10,23);
INSERT INTO `item_mods` VALUES (26884,11,29);
INSERT INTO `item_mods` VALUES (26884,12,30);
INSERT INTO `item_mods` VALUES (26884,13,24);
INSERT INTO `item_mods` VALUES (26884,14,24);	
INSERT INTO `item_mods` VALUES (26884,2,59);
INSERT INTO `item_mods` VALUES (26884,23,16);
INSERT INTO `item_mods` VALUES (26884,24,16);
INSERT INTO `item_mods` VALUES (26884,28,11);
INSERT INTO `item_mods` VALUES (26884,29,5);
INSERT INTO `item_mods` VALUES (26884,302,2);
INSERT INTO `item_mods` VALUES (26884,31,64);
INSERT INTO `item_mods` VALUES (26884,384,30);
INSERT INTO `item_mods` VALUES (26884,5,29);
INSERT INTO `item_mods` VALUES (26884,68,55);
INSERT INTO `item_mods` VALUES (26884,8,30);
INSERT INTO `item_mods` VALUES (26884,9,28);

INSERT INTO `item_mods` VALUES (26885,1,125);
INSERT INTO `item_mods` VALUES (26885,10,21);
INSERT INTO `item_mods` VALUES (26885,11,21);
INSERT INTO `item_mods` VALUES (26885,12,34);
INSERT INTO `item_mods` VALUES (26885,13,34);
INSERT INTO `item_mods` VALUES (26885,14,34);
INSERT INTO `item_mods` VALUES (26885,2,84);
INSERT INTO `item_mods` VALUES (26885,28,12);
INSERT INTO `item_mods` VALUES (26885,29,6);
INSERT INTO `item_mods` VALUES (26885,30,12);
INSERT INTO `item_mods` VALUES (26885,31,80);
INSERT INTO `item_mods` VALUES (26885,369,2);
INSERT INTO `item_mods` VALUES (26885,384,30);
INSERT INTO `item_mods` VALUES (26885,5,89);
INSERT INTO `item_mods` VALUES (26885,65,41);
INSERT INTO `item_mods` VALUES (26885,8,21);
INSERT INTO `item_mods` VALUES (26885,9,21);

INSERT INTO `item_mods` VALUES (26886,1,126);
INSERT INTO `item_mods` VALUES (26886,10,21);
INSERT INTO `item_mods` VALUES (26886,11,21);
INSERT INTO `item_mods` VALUES (26886,12,35);
INSERT INTO `item_mods` VALUES (26886,13,35);
INSERT INTO `item_mods` VALUES (26886,14,35);
INSERT INTO `item_mods` VALUES (26886,2,94);
INSERT INTO `item_mods` VALUES (26886,28,13);
INSERT INTO `item_mods` VALUES (26886,29,6);
INSERT INTO `item_mods` VALUES (26886,30,13);
INSERT INTO `item_mods` VALUES (26886,31,80);
INSERT INTO `item_mods` VALUES (26886,369,2);
INSERT INTO `item_mods` VALUES (26886,384,30);
INSERT INTO `item_mods` VALUES (26886,5,99);
INSERT INTO `item_mods` VALUES (26886,65,41);
INSERT INTO `item_mods` VALUES (26886,8,21);
INSERT INTO `item_mods` VALUES (26886,9,21);

INSERT INTO `item_mods` VALUES (26910,480,10); -- null dmg

INSERT INTO `item_mods` VALUES (26911,480,12); -- null dmg

REPLACE INTO `item_mods` VALUES (27174,10,12); --  VIT+12
REPLACE INTO `item_mods` VALUES (27174,11,9); -- AGI+9
REPLACE INTO `item_mods` VALUES (27174,12,17); --  INT+17
REPLACE INTO `item_mods` VALUES (27174,13,10); -- MND+10
REPLACE INTO `item_mods` VALUES (27174,14,8); --  CHR+8
REPLACE INTO `item_mods` VALUES (27174,2,23); -- HP+23
REPLACE INTO `item_mods` VALUES (27174,23,15); --  Attack+15
REPLACE INTO `item_mods` VALUES (27174,29,1); --  Magic Def. Bonus+1 (used magic defence ?)
REPLACE INTO `item_mods` VALUES (27174,31,51); -- Magic Evasion+51
REPLACE INTO `item_mods` VALUES (27174,8,21); --  STR+21

REPLACE INTO `item_mods` VALUES (27175,1,125); --  DEF:89
REPLACE INTO `item_mods` VALUES (27175,10,19); --  VIT+12
REPLACE INTO `item_mods` VALUES (27175,11,15); -- AGI+9
REPLACE INTO `item_mods` VALUES (27175,12,26); --  INT+17
REPLACE INTO `item_mods` VALUES (27175,13,16); -- MND+10
REPLACE INTO `item_mods` VALUES (27175,14,12); --  CHR+8
REPLACE INTO `item_mods` VALUES (27175,2,50); -- HP+23
REPLACE INTO `item_mods` VALUES (27175,23,18); --  Attack+15
REPLACE INTO `item_mods` VALUES (27175,29,3); --  Magic Def. Bonus+1 (used magic defence ?)
REPLACE INTO `item_mods` VALUES (27175,31,75); -- Magic Evasion+51
REPLACE INTO `item_mods` VALUES (27175,384,51); --  Haste +5%
REPLACE INTO `item_mods` VALUES (27175,508,35); -- Third Eye": "Counter" rate +35
REPLACE INTO `item_mods` VALUES (27175,65,40); --  Evasion+25
REPLACE INTO `item_mods` VALUES (27175,8,33); --  STR+21

INSERT INTO `item_mods` VALUES (27230,10,16);
INSERT INTO `item_mods` VALUES (27230,108,38);
INSERT INTO `item_mods` VALUES (27230,11,20);
INSERT INTO `item_mods` VALUES (27230,12,30);
INSERT INTO `item_mods` VALUES (27230,13,17);
INSERT INTO `item_mods` VALUES (27230,14,11);
INSERT INTO `item_mods` VALUES (27230,2,47);
INSERT INTO `item_mods` VALUES (27230,27,5);
INSERT INTO `item_mods` VALUES (27230,288,5);
INSERT INTO `item_mods` VALUES (27230,29,5);
INSERT INTO `item_mods` VALUES (27230,302,2);
INSERT INTO `item_mods` VALUES (27230,31,69);
INSERT INTO `item_mods` VALUES (27230,384,60);
INSERT INTO `item_mods` VALUES (27230,73,-4);
INSERT INTO `item_mods` VALUES (27230,8,29);

INSERT INTO `item_mods` VALUES (27262,1,113);
INSERT INTO `item_mods` VALUES (27262,2,50);
INSERT INTO `item_mods` VALUES (27262,8,29);
INSERT INTO `item_mods` VALUES (27262,10,16);
INSERT INTO `item_mods` VALUES (27262,11,20);
INSERT INTO `item_mods` VALUES (27262,12,30);
INSERT INTO `item_mods` VALUES (27262,13,30);
INSERT INTO `item_mods` VALUES (27262,14,30);
INSERT INTO `item_mods` VALUES (27262,25,20);
INSERT INTO `item_mods` VALUES (27262,29,2);
INSERT INTO `item_mods` VALUES (27262,31,51);
INSERT INTO `item_mods` VALUES (27262,68,47);
INSERT INTO `item_mods` VALUES (27262,88,23);
INSERT INTO `item_mods` VALUES (27262,291,14);
INSERT INTO `item_mods` VALUES (27262,384,81);

INSERT INTO `item_mods` VALUES (27396,1,83);
INSERT INTO `item_mods` VALUES (27396,10,15);
INSERT INTO `item_mods` VALUES (27396,11,32);
INSERT INTO `item_mods` VALUES (27396,13,10);
INSERT INTO `item_mods` VALUES (27396,14,26);
INSERT INTO `item_mods` VALUES (27396,2,45);
INSERT INTO `item_mods` VALUES (27396,23,7);
INSERT INTO `item_mods` VALUES (27396,27,4);
INSERT INTO `item_mods` VALUES (27396,29,2);
INSERT INTO `item_mods` VALUES (27396,31,75);
INSERT INTO `item_mods` VALUES (27396,384,30);
INSERT INTO `item_mods` VALUES (27396,68,52);
INSERT INTO `item_mods` VALUES (27396,8,17);
INSERT INTO `item_mods` VALUES (27396,9,19);

INSERT INTO `item_mods` VALUES (27397,1,84);
INSERT INTO `item_mods` VALUES (27397,10,15);
INSERT INTO `item_mods` VALUES (27397,11,32);
INSERT INTO `item_mods` VALUES (27397,13,10);
INSERT INTO `item_mods` VALUES (27397,14,26);
INSERT INTO `item_mods` VALUES (27397,2,55);
INSERT INTO `item_mods` VALUES (27397,23,8);
INSERT INTO `item_mods` VALUES (27397,27,5);
INSERT INTO `item_mods` VALUES (27397,29,2);
INSERT INTO `item_mods` VALUES (27397,31,75);
INSERT INTO `item_mods` VALUES (27397,384,30);
INSERT INTO `item_mods` VALUES (27397,68,52);
INSERT INTO `item_mods` VALUES (27397,8,18);
INSERT INTO `item_mods` VALUES (27397,9,20);

INSERT INTO `item_mods` VALUES (27398,1,71);
INSERT INTO `item_mods` VALUES (27398,10,11);
INSERT INTO `item_mods` VALUES (27398,11,35);
INSERT INTO `item_mods` VALUES (27398,12,2);
INSERT INTO `item_mods` VALUES (27398,13,11);
INSERT INTO `item_mods` VALUES (27398,14,28);
INSERT INTO `item_mods` VALUES (27398,2,43);
INSERT INTO `item_mods` VALUES (27398,23,7);
INSERT INTO `item_mods` VALUES (27398,28,7);
INSERT INTO `item_mods` VALUES (27398,29,3);
INSERT INTO `item_mods` VALUES (27398,31,96);
INSERT INTO `item_mods` VALUES (27398,359,4);
INSERT INTO `item_mods` VALUES (27398,384,30);
INSERT INTO `item_mods` VALUES (27398,5,8);
INSERT INTO `item_mods` VALUES (27398,68,77);
INSERT INTO `item_mods` VALUES (27398,8,13);
INSERT INTO `item_mods` VALUES (27398,9,20);

INSERT INTO `item_mods` VALUES (27399,1,72);
INSERT INTO `item_mods` VALUES (27399,10,11);
INSERT INTO `item_mods` VALUES (27399,11,35);
INSERT INTO `item_mods` VALUES (27399,12,3);
INSERT INTO `item_mods` VALUES (27399,13,11);
INSERT INTO `item_mods` VALUES (27399,14,28);
INSERT INTO `item_mods` VALUES (27399,2,53);
INSERT INTO `item_mods` VALUES (27399,23,8);
INSERT INTO `item_mods` VALUES (27399,259,5);
INSERT INTO `item_mods` VALUES (27399,28,8);
INSERT INTO `item_mods` VALUES (27399,29,3);
INSERT INTO `item_mods` VALUES (27399,31,96);
INSERT INTO `item_mods` VALUES (27399,384,30);
INSERT INTO `item_mods` VALUES (27399,5,8);
INSERT INTO `item_mods` VALUES (27399,68,77);
INSERT INTO `item_mods` VALUES (27399,8,14);
INSERT INTO `item_mods` VALUES (27399,9,20);

INSERT INTO `item_mods` VALUES (27407,1,65);
INSERT INTO `item_mods` VALUES (27407,2,13);
INSERT INTO `item_mods` VALUES (27407,5,54);
INSERT INTO `item_mods` VALUES (27407,8,10);
INSERT INTO `item_mods` VALUES (27407,9,11);
INSERT INTO `item_mods` VALUES (27407,10,10);
INSERT INTO `item_mods` VALUES (27407,11,33);
INSERT INTO `item_mods` VALUES (27407,12,17);
INSERT INTO `item_mods` VALUES (27407,13,19);
INSERT INTO `item_mods` VALUES (27407,14,34);
INSERT INTO `item_mods` VALUES (27407,27,-7);
INSERT INTO `item_mods` VALUES (27407,29,5);
INSERT INTO `item_mods` VALUES (27407,31,107);
INSERT INTO `item_mods` VALUES (27407,68,55);
INSERT INTO `item_mods` VALUES (27407,296,4);
INSERT INTO `item_mods` VALUES (27407,384,30);
INSERT INTO `item_mods` VALUES (27407,396,-17);

INSERT INTO `item_mods` VALUES (27564,15,15);
INSERT INTO `item_mods` VALUES (27564,8,8);

INSERT INTO `item_mods` VALUES (27566,13,8);
INSERT INTO `item_mods` VALUES (27566,20,15);

INSERT INTO `item_mods` VALUES (27567,13,9);
INSERT INTO `item_mods` VALUES (27567,20,16);
INSERT INTO `item_mods` VALUES (27567,30,3);

INSERT INTO `item_mods` VALUES (27568,19,15);
INSERT INTO `item_mods` VALUES (27568,9,8);

INSERT INTO `item_mods` VALUES (27569,19,16);
INSERT INTO `item_mods` VALUES (27569,25,5);
INSERT INTO `item_mods` VALUES (27569,9,9);

INSERT INTO `item_mods` VALUES (27570,10,8);
INSERT INTO `item_mods` VALUES (27570,18,15)
;
INSERT INTO `item_mods` VALUES (27571,1,8);
INSERT INTO `item_mods` VALUES (27571,10,9);
INSERT INTO `item_mods` VALUES (27571,18,16);

INSERT INTO `item_mods` VALUES (27572,11,8);
INSERT INTO `item_mods` VALUES (27572,17,15);

INSERT INTO `item_mods` VALUES (27573,11,9);
INSERT INTO `item_mods` VALUES (27573,17,16);
INSERT INTO `item_mods` VALUES (27573,26,5);

INSERT INTO `item_mods` VALUES (27574,12,8);
INSERT INTO `item_mods` VALUES (27574,16,15);

INSERT INTO `item_mods` VALUES (27576,14,8);
INSERT INTO `item_mods` VALUES (27576,2,30);
INSERT INTO `item_mods` VALUES (27576,21,15);

INSERT INTO `item_mods` VALUES (27577,14,9);
INSERT INTO `item_mods` VALUES (27577,2,35);
INSERT INTO `item_mods` VALUES (27577,21,16);
INSERT INTO `item_mods` VALUES (27577,30,4);

INSERT INTO `item_mods` VALUES (27578,22,15);
INSERT INTO `item_mods` VALUES (27578,28,2);
INSERT INTO `item_mods` VALUES (27578,30,2);
INSERT INTO `item_mods` VALUES (27578,5,50);

INSERT INTO `item_mods` VALUES (27579,22,16);
INSERT INTO `item_mods` VALUES (27579,28,3);
INSERT INTO `item_mods` VALUES (27579,30,3);
INSERT INTO `item_mods` VALUES (27579,311,5);
INSERT INTO `item_mods` VALUES (27579,5,55);

INSERT INTO `item_mods` VALUES (27594,1,13);

INSERT INTO `item_mods` VALUES (27643,25,15); -- Blurred Shield - 15 Acc
INSERT INTO `item_mods` VALUES (27643,23,15); -- 15 Att
INSERT INTO `item_mods` VALUES (27643,518,5); -- Chance of Successful Block +5
INSERT INTO `item_mods` VALUES (27644,25,20); -- Blurred Shield +1 - 20 Acc
INSERT INTO `item_mods` VALUES (27644,23,20); -- 20 Att
INSERT INTO `item_mods` VALUES (27644,518,10); -- Chance of Successful Block +10

INSERT INTO `item_mods` VALUES (27676,1,82); -- DEF:82
INSERT INTO `item_mods` VALUES (27676,10,19); -- VIT+19
INSERT INTO `item_mods` VALUES (27676,11,14); -- AGI+14
INSERT INTO `item_mods` VALUES (27676,13,16); -- MND+16
INSERT INTO `item_mods` VALUES (27676,14,13); -- CHR+13
INSERT INTO `item_mods` VALUES (27676,2,18); -- HP+18
INSERT INTO `item_mods` VALUES (27676,23,17); -- Attack+17
INSERT INTO `item_mods` VALUES (27676,31,29); -- Magic Evasion+29
INSERT INTO `item_mods` VALUES (27676,384,61); -- Haste+6%
INSERT INTO `item_mods` VALUES (27676,5,19); -- MP+19
INSERT INTO `item_mods` VALUES (27676,65,15); -- Evasion+15
INSERT INTO `item_mods` VALUES (27676,8,20); -- STR+20
INSERT INTO `item_mods` VALUES (27676,9,14); -- DEX+14

INSERT INTO `item_mods` VALUES (27697,1,109); -- DEF:82
INSERT INTO `item_mods` VALUES (27697,10,25); -- VIT+19
INSERT INTO `item_mods` VALUES (27697,11,20); -- AGI+14
INSERT INTO `item_mods` VALUES (27697,13,22); -- MND+16
INSERT INTO `item_mods` VALUES (27697,14,19); -- CHR+13
INSERT INTO `item_mods` VALUES (27697,2,38); -- HP+18
INSERT INTO `item_mods` VALUES (27697,23,22); -- Attack+17
INSERT INTO `item_mods` VALUES (27697,31,43); -- Magic Evasion+29
INSERT INTO `item_mods` VALUES (27697,384,61); -- Haste+6%
INSERT INTO `item_mods` VALUES (27697,5,23); -- MP+19
INSERT INTO `item_mods` VALUES (27697,65,33); -- Evasion+15
INSERT INTO `item_mods` VALUES (27697,8,27); -- STR+20
INSERT INTO `item_mods` VALUES (27697,9,20); -- DEX+14

INSERT INTO `item_mods` VALUES (27746,1,87);
INSERT INTO `item_mods` VALUES (27746,2,26);
INSERT INTO `item_mods` VALUES (27746,5,21);
INSERT INTO `item_mods` VALUES (27746,8,16);
INSERT INTO `item_mods` VALUES (27746,9,23);
INSERT INTO `item_mods` VALUES (27746,10,16);
INSERT INTO `item_mods` VALUES (27746,11,17);
INSERT INTO `item_mods` VALUES (27746,12,16);
INSERT INTO `item_mods` VALUES (27746,13,16);
INSERT INTO `item_mods` VALUES (27746,14,17);
INSERT INTO `item_mods` VALUES (27746,25,12);
INSERT INTO `item_mods` VALUES (27746,108,32);
INSERT INTO `item_mods` VALUES (27746,31,45);
INSERT INTO `item_mods` VALUES (27746,29,2);
INSERT INTO `item_mods` VALUES (27746,384,70);
INSERT INTO `item_mods` VALUES (27746,289,3);

INSERT INTO `item_mods` VALUES (27747,1,90);
INSERT INTO `item_mods` VALUES (27747,2,28);
INSERT INTO `item_mods` VALUES (27747,5,22);
INSERT INTO `item_mods` VALUES (27747,8,18);
INSERT INTO `item_mods` VALUES (27747,9,26);
INSERT INTO `item_mods` VALUES (27747,10,18);
INSERT INTO `item_mods` VALUES (27747,11,19);
INSERT INTO `item_mods` VALUES (27747,12,18);
INSERT INTO `item_mods` VALUES (27747,13,18);
INSERT INTO `item_mods` VALUES (27747,14,19);
INSERT INTO `item_mods` VALUES (27747,25,13);
INSERT INTO `item_mods` VALUES (27747,108,34);
INSERT INTO `item_mods` VALUES (27747,31,46);
INSERT INTO `item_mods` VALUES (27747,29,2);
INSERT INTO `item_mods` VALUES (27747,384,70);
INSERT INTO `item_mods` VALUES (27747,289,4);

INSERT INTO `item_mods` VALUES (27748,1,97);
INSERT INTO `item_mods` VALUES (27748,10,26);
INSERT INTO `item_mods` VALUES (27748,11,15);
INSERT INTO `item_mods` VALUES (27748,12,14);
INSERT INTO `item_mods` VALUES (27748,13,14);
INSERT INTO `item_mods` VALUES (27748,14,14);
INSERT INTO `item_mods` VALUES (27748,2,30);
INSERT INTO `item_mods` VALUES (27748,27,4);
INSERT INTO `item_mods` VALUES (27748,29,1);
INSERT INTO `item_mods` VALUES (27748,31,27);
INSERT INTO `item_mods` VALUES (27748,375,7);
INSERT INTO `item_mods` VALUES (27748,384,60);
INSERT INTO `item_mods` VALUES (27748,5,21);
INSERT INTO `item_mods` VALUES (27748,68,24);
INSERT INTO `item_mods` VALUES (27748,8,20);
INSERT INTO `item_mods` VALUES (27748,9,15);

INSERT INTO `item_mods` VALUES (27749,1,100);
INSERT INTO `item_mods` VALUES (27749,10,29);
INSERT INTO `item_mods` VALUES (27749,11,17);
INSERT INTO `item_mods` VALUES (27749,12,16);
INSERT INTO `item_mods` VALUES (27749,13,16);
INSERT INTO `item_mods` VALUES (27749,14,16);
INSERT INTO `item_mods` VALUES (27749,2,32);
INSERT INTO `item_mods` VALUES (27749,27,5);
INSERT INTO `item_mods` VALUES (27749,29,1);
INSERT INTO `item_mods` VALUES (27749,31,28);
INSERT INTO `item_mods` VALUES (27749,375,8);
INSERT INTO `item_mods` VALUES (27749,384,60);
INSERT INTO `item_mods` VALUES (27749,5,22);
INSERT INTO `item_mods` VALUES (27749,68,26);
INSERT INTO `item_mods` VALUES (27749,8,22);
INSERT INTO `item_mods` VALUES (27749,9,17);

INSERT INTO `item_mods` VALUES (27750,1,82);
INSERT INTO `item_mods` VALUES (27750,10,15);
INSERT INTO `item_mods` VALUES (27750,11,15);
INSERT INTO `item_mods` VALUES (27750,12,19);
INSERT INTO `item_mods` VALUES (27750,13,19);
INSERT INTO `item_mods` VALUES (27750,14,25);
INSERT INTO `item_mods` VALUES (27750,170,8);
INSERT INTO `item_mods` VALUES (27750,2,26);
INSERT INTO `item_mods` VALUES (27750,27,-4);
INSERT INTO `item_mods` VALUES (27750,29,4);
INSERT INTO `item_mods` VALUES (27750,31,63);
INSERT INTO `item_mods` VALUES (27750,384,50);
INSERT INTO `item_mods` VALUES (27750,5,29);
INSERT INTO `item_mods` VALUES (27750,68,26);
INSERT INTO `item_mods` VALUES (27750,8,15);
INSERT INTO `item_mods` VALUES (27750,9,15);

INSERT INTO `item_mods` VALUES (27751,1,85);
INSERT INTO `item_mods` VALUES (27751,10,17);
INSERT INTO `item_mods` VALUES (27751,11,17);
INSERT INTO `item_mods` VALUES (27751,12,21);
INSERT INTO `item_mods` VALUES (27751,13,21);
INSERT INTO `item_mods` VALUES (27751,14,28);
INSERT INTO `item_mods` VALUES (27751,170,9);
INSERT INTO `item_mods` VALUES (27751,2,28);
INSERT INTO `item_mods` VALUES (27751,27,-5);
INSERT INTO `item_mods` VALUES (27751,29,4);
INSERT INTO `item_mods` VALUES (27751,31,65);
INSERT INTO `item_mods` VALUES (27751,384,50);
INSERT INTO `item_mods` VALUES (27751,5,30);
INSERT INTO `item_mods` VALUES (27751,68,28);
INSERT INTO `item_mods` VALUES (27751,8,17);
INSERT INTO `item_mods` VALUES (27751,9,17);

REPLACE INTO `item_mods` VALUES (27777,1,72); -- DEF
REPLACE INTO `item_mods` VALUES (27777,10,10); -- VIT
REPLACE INTO `item_mods` VALUES (27777,11,13); -- AGI
REPLACE INTO `item_mods` VALUES (27777,13,10); -- MND
REPLACE INTO `item_mods` VALUES (27777,14,11); -- CHR
REPLACE INTO `item_mods` VALUES (27777,2,19); -- HP
REPLACE INTO `item_mods` VALUES (27777,12,10); -- INT
REPLACE INTO `item_mods` VALUES (27777,31,38); -- Magic Evasion
REPLACE INTO `item_mods` VALUES (27777,384,61); -- Haste
REPLACE INTO `item_mods` VALUES (27777,5,20); -- MP
REPLACE INTO `item_mods` VALUES (27777,65,22); -- Evasion
REPLACE INTO `item_mods` VALUES (27777,8,10); -- STR
REPLACE INTO `item_mods` VALUES (27777,9,13); -- DEX

INSERT INTO `item_mods` VALUES (27868,2,54); --  Hit Points +54
INSERT INTO `item_mods` VALUES (27868,5,59); --  Mana Points +59
INSERT INTO `item_mods` VALUES (27868,8,21); --  Strength +21
INSERT INTO `item_mods` VALUES (27868,9,21); --  Dexterity +21
INSERT INTO `item_mods` VALUES (27868,10,21); --  Vitality +21
INSERT INTO `item_mods` VALUES (27868,11,21); --  Agility +21
INSERT INTO `item_mods` VALUES (27868,12,29); --  Intelligence +29
INSERT INTO `item_mods` VALUES (27868,13,29); --  Mind +29
INSERT INTO `item_mods` VALUES (27868,14,29); --  Charisma +29
INSERT INTO `item_mods` VALUES (27868,25,25); --  Accuracy +25
INSERT INTO `item_mods` VALUES (27868,30,15); --  Magic Accuracy +15
INSERT INTO `item_mods` VALUES (27868,68,41); --  Evasion +41
INSERT INTO `item_mods` VALUES (27868,31,80); --  Magic Evasion +80
INSERT INTO `item_mods` VALUES (27868,29,6); --  Magic Defense Bonus + 68
INSERT INTO `item_mods` VALUES (27868,114,18); --  Enfeebling Magic Skill +18
INSERT INTO `item_mods` VALUES (27868,384,30); --  Haste +3%
INSERT INTO `item_mods` VALUES (27868,369,2); --  Refresh +2

INSERT INTO `item_mods` VALUES (27890,1,116);
INSERT INTO `item_mods` VALUES (27890,2,86);
INSERT INTO `item_mods` VALUES (27890,5,81);
INSERT INTO `item_mods` VALUES (27890,8,20);
INSERT INTO `item_mods` VALUES (27890,9,31);
INSERT INTO `item_mods` VALUES (27890,10,20);
INSERT INTO `item_mods` VALUES (27890,11,30);
INSERT INTO `item_mods` VALUES (27890,12,18);
INSERT INTO `item_mods` VALUES (27890,13,18);
INSERT INTO `item_mods` VALUES (27890,14,18);
INSERT INTO `item_mods` VALUES (27890,25,15);
INSERT INTO `item_mods` VALUES (27890,26,15);
INSERT INTO `item_mods` VALUES (27890,108,39);
INSERT INTO `item_mods` VALUES (27890,31,56);
INSERT INTO `item_mods` VALUES (27890,29,4);
INSERT INTO `item_mods` VALUES (27890,384,40);

INSERT INTO `item_mods` VALUES (27892,1,127);
INSERT INTO `item_mods` VALUES (27892,10,31);
INSERT INTO `item_mods` VALUES (27892,11,15);
INSERT INTO `item_mods` VALUES (27892,12,15);
INSERT INTO `item_mods` VALUES (27892,13,15);
INSERT INTO `item_mods` VALUES (27892,14,15);
INSERT INTO `item_mods` VALUES (27892,2,115);
INSERT INTO `item_mods` VALUES (27892,27,6);
INSERT INTO `item_mods` VALUES (27892,29,3);
INSERT INTO `item_mods` VALUES (27892,31,42);
INSERT INTO `item_mods` VALUES (27892,384,30);
INSERT INTO `item_mods` VALUES (27892,5,98);
INSERT INTO `item_mods` VALUES (27892,68,32);
INSERT INTO `item_mods` VALUES (27892,8,31);
INSERT INTO `item_mods` VALUES (27892,9,15);

INSERT INTO `item_mods` VALUES (27894,1,111);
INSERT INTO `item_mods` VALUES (27894,10,17);
INSERT INTO `item_mods` VALUES (27894,11,17);
INSERT INTO `item_mods` VALUES (27894,12,31);
INSERT INTO `item_mods` VALUES (27894,13,31);
INSERT INTO `item_mods` VALUES (27894,14,31);
INSERT INTO `item_mods` VALUES (27894,2,43);
INSERT INTO `item_mods` VALUES (27894,27,-6);
INSERT INTO `item_mods` VALUES (27894,29,5);
INSERT INTO `item_mods` VALUES (27894,30,11);
INSERT INTO `item_mods` VALUES (27894,31,70);
INSERT INTO `item_mods` VALUES (27894,311,14);
INSERT INTO `item_mods` VALUES (27894,384,20);
INSERT INTO `item_mods` VALUES (27894,5,55);
INSERT INTO `item_mods` VALUES (27894,68,32);
INSERT INTO `item_mods` VALUES (27894,8,17);
INSERT INTO `item_mods` VALUES (27894,9,17);

INSERT INTO `item_mods` VALUES (27987,1,101);
INSERT INTO `item_mods` VALUES (27987,10,30);
INSERT INTO `item_mods` VALUES (27987,11,7);
INSERT INTO `item_mods` VALUES (27987,12,10);
INSERT INTO `item_mods` VALUES (27987,13,26);
INSERT INTO `item_mods` VALUES (27987,14,20);
INSERT INTO `item_mods` VALUES (27987,2,57);
INSERT INTO `item_mods` VALUES (27987,25,7);
INSERT INTO `item_mods` VALUES (27987,29,1);
INSERT INTO `item_mods` VALUES (27987,30,7);
INSERT INTO `item_mods` VALUES (27987,31,26);
INSERT INTO `item_mods` VALUES (27987,384,40);
INSERT INTO `item_mods` VALUES (27987,68,22);
INSERT INTO `item_mods` VALUES (27987,8,6);
INSERT INTO `item_mods` VALUES (27987,9,35);

INSERT INTO `item_mods` VALUES (27988,1,102);
INSERT INTO `item_mods` VALUES (27988,10,30);
INSERT INTO `item_mods` VALUES (27988,11,7);
INSERT INTO `item_mods` VALUES (27988,12,10);
INSERT INTO `item_mods` VALUES (27988,13,26);
INSERT INTO `item_mods` VALUES (27988,14,20);
INSERT INTO `item_mods` VALUES (27988,2,67);
INSERT INTO `item_mods` VALUES (27988,25,8);
INSERT INTO `item_mods` VALUES (27988,29,1);
INSERT INTO `item_mods` VALUES (27988,30,8);
INSERT INTO `item_mods` VALUES (27988,31,26);
INSERT INTO `item_mods` VALUES (27988,384,40);
INSERT INTO `item_mods` VALUES (27988,68,22);
INSERT INTO `item_mods` VALUES (27988,8,6);
INSERT INTO `item_mods` VALUES (27988,9,36);

INSERT INTO `item_mods` VALUES (28005,1,88);
INSERT INTO `item_mods` VALUES (28005,10,31);
INSERT INTO `item_mods` VALUES (28005,11,11);
INSERT INTO `item_mods` VALUES (28005,12,12);
INSERT INTO `item_mods` VALUES (28005,13,29);
INSERT INTO `item_mods` VALUES (28005,14,17);
INSERT INTO `item_mods` VALUES (28005,162,3);
INSERT INTO `item_mods` VALUES (28005,2,23);
INSERT INTO `item_mods` VALUES (28005,23,20);
INSERT INTO `item_mods` VALUES (28005,26,20);
INSERT INTO `item_mods` VALUES (28005,29,1);
INSERT INTO `item_mods` VALUES (28005,31,36);
INSERT INTO `item_mods` VALUES (28005,365,5);
INSERT INTO `item_mods` VALUES (28005,384,51);
INSERT INTO `item_mods` VALUES (28005,68,23);
INSERT INTO `item_mods` VALUES (28005,8,11);
INSERT INTO `item_mods` VALUES (28005,9,34);

INSERT INTO `item_mods` VALUES (28036,1,76);
INSERT INTO `item_mods` VALUES (28036,2,18);
INSERT INTO `item_mods` VALUES (28036,8,7);
INSERT INTO `item_mods` VALUES (28036,9,35);
INSERT INTO `item_mods` VALUES (28036,10,24);
INSERT INTO `item_mods` VALUES (28036,11,2);
INSERT INTO `item_mods` VALUES (28036,12,8);
INSERT INTO `item_mods` VALUES (28036,13,22);
INSERT INTO `item_mods` VALUES (28036,14,12);
INSERT INTO `item_mods` VALUES (28036,25,10);
INSERT INTO `item_mods` VALUES (28036,108,18);
INSERT INTO `item_mods` VALUES (28036,31,31);
INSERT INTO `item_mods` VALUES (28036,29,1);
INSERT INTO `item_mods` VALUES (28036,384,40);
INSERT INTO `item_mods` VALUES (28036,73,3);

INSERT INTO `item_mods` VALUES (28037,1,79);
INSERT INTO `item_mods` VALUES (28037,2,19);
INSERT INTO `item_mods` VALUES (28037,8,8);
INSERT INTO `item_mods` VALUES (28037,9,38);
INSERT INTO `item_mods` VALUES (28037,10,26);
INSERT INTO `item_mods` VALUES (28037,11,3);
INSERT INTO `item_mods` VALUES (28037,12,10);
INSERT INTO `item_mods` VALUES (28037,13,25);
INSERT INTO `item_mods` VALUES (28037,14,14);
INSERT INTO `item_mods` VALUES (28037,25,11);
INSERT INTO `item_mods` VALUES (28037,108,19);
INSERT INTO `item_mods` VALUES (28037,31,32);
INSERT INTO `item_mods` VALUES (28037,29,1);
INSERT INTO `item_mods` VALUES (28037,384,40);
INSERT INTO `item_mods` VALUES (28037,73,4);

INSERT INTO `item_mods` VALUES (28038,1,87);
INSERT INTO `item_mods` VALUES (28038,10,33);
INSERT INTO `item_mods` VALUES (28038,12,5);
INSERT INTO `item_mods` VALUES (28038,13,18);
INSERT INTO `item_mods` VALUES (28038,14,13);
INSERT INTO `item_mods` VALUES (28038,161,-4);
INSERT INTO `item_mods` VALUES (28038,166,-3);
INSERT INTO `item_mods` VALUES (28038,2,21);
INSERT INTO `item_mods` VALUES (28038,31,22);
INSERT INTO `item_mods` VALUES (28038,384,30);
INSERT INTO `item_mods` VALUES (28038,68,16);
INSERT INTO `item_mods` VALUES (28038,8,6);

INSERT INTO `item_mods` VALUES (28038,9,21);
INSERT INTO `item_mods` VALUES (28039,1,90);
INSERT INTO `item_mods` VALUES (28039,10,35);
INSERT INTO `item_mods` VALUES (28039,12,6);
INSERT INTO `item_mods` VALUES (28039,13,21);
INSERT INTO `item_mods` VALUES (28039,14,15);
INSERT INTO `item_mods` VALUES (28039,161,-5);
INSERT INTO `item_mods` VALUES (28039,166,-4);
INSERT INTO `item_mods` VALUES (28039,2,23);
INSERT INTO `item_mods` VALUES (28039,31,23);
INSERT INTO `item_mods` VALUES (28039,384,30);
INSERT INTO `item_mods` VALUES (28039,68,17);
INSERT INTO `item_mods` VALUES (28039,8,7);
INSERT INTO `item_mods` VALUES (28039,9,24);

INSERT INTO `item_mods` VALUES (28040,1,71);
INSERT INTO `item_mods` VALUES (28040,10,18);
INSERT INTO `item_mods` VALUES (28040,11,2);
INSERT INTO `item_mods` VALUES (28040,12,13);
INSERT INTO `item_mods` VALUES (28040,13,35);
INSERT INTO `item_mods` VALUES (28040,14,15);
INSERT INTO `item_mods` VALUES (28040,2,16);
INSERT INTO `item_mods` VALUES (28040,27,-3);
INSERT INTO `item_mods` VALUES (28040,29,2);
INSERT INTO `item_mods` VALUES (28040,296,4);
INSERT INTO `item_mods` VALUES (28040,31,31);
INSERT INTO `item_mods` VALUES (28040,384,30);
INSERT INTO `item_mods` VALUES (28040,5,13);
INSERT INTO `item_mods` VALUES (28040,68,16);
INSERT INTO `item_mods` VALUES (28040,8,3);
INSERT INTO `item_mods` VALUES (28040,9,20);

INSERT INTO `item_mods` VALUES (28041,1,74);
INSERT INTO `item_mods` VALUES (28041,10,21);
INSERT INTO `item_mods` VALUES (28041,11,3);
INSERT INTO `item_mods` VALUES (28041,12,15);
INSERT INTO `item_mods` VALUES (28041,13,35);
INSERT INTO `item_mods` VALUES (28041,14,15);
INSERT INTO `item_mods` VALUES (28041,2,18);
INSERT INTO `item_mods` VALUES (28041,27,-4);
INSERT INTO `item_mods` VALUES (28041,29,2);
INSERT INTO `item_mods` VALUES (28041,296,5);
INSERT INTO `item_mods` VALUES (28041,31,32);
INSERT INTO `item_mods` VALUES (28041,384,30);
INSERT INTO `item_mods` VALUES (28041,5,13);
INSERT INTO `item_mods` VALUES (28041,68,17);
INSERT INTO `item_mods` VALUES (28041,8,4);
INSERT INTO `item_mods` VALUES (28041,9,23);

INSERT INTO `item_mods` VALUES (28135,369,2); -- Didn't include Unity refresh

INSERT INTO `item_mods` VALUES (28176,1,97);
INSERT INTO `item_mods` VALUES (28176,2,35);
INSERT INTO `item_mods` VALUES (28176,8,21);
INSERT INTO `item_mods` VALUES (28176,10,11);
INSERT INTO `item_mods` VALUES (28176,11,20);
INSERT INTO `item_mods` VALUES (28176,12,22);
INSERT INTO `item_mods` VALUES (28176,13,12);
INSERT INTO `item_mods` VALUES (28176,14,7);
INSERT INTO `item_mods` VALUES (28176,26,12);
INSERT INTO `item_mods` VALUES (28176,108,28);
INSERT INTO `item_mods` VALUES (28176,31,58);
INSERT INTO `item_mods` VALUES (28176,29,3);
INSERT INTO `item_mods` VALUES (28176,384,60);
INSERT INTO `item_mods` VALUES (28176,73,4);

INSERT INTO `item_mods` VALUES (28177,1,100);
INSERT INTO `item_mods` VALUES (28177,2,37);
INSERT INTO `item_mods` VALUES (28177,8,24);
INSERT INTO `item_mods` VALUES (28177,10,13);
INSERT INTO `item_mods` VALUES (28177,11,23);
INSERT INTO `item_mods` VALUES (28177,12,25);
INSERT INTO `item_mods` VALUES (28177,13,14);
INSERT INTO `item_mods` VALUES (28177,14,8);
INSERT INTO `item_mods` VALUES (28177,26,13);
INSERT INTO `item_mods` VALUES (28177,108,30);
INSERT INTO `item_mods` VALUES (28177,31,60);
INSERT INTO `item_mods` VALUES (28177,29,4);
INSERT INTO `item_mods` VALUES (28177,384,60);
INSERT INTO `item_mods` VALUES (28177,73,5);

INSERT INTO `item_mods` VALUES (28178,1,107);
INSERT INTO `item_mods` VALUES (28178,2,38);
INSERT INTO `item_mods` VALUES (28178,8,27);
INSERT INTO `item_mods` VALUES (28178,10,23);
INSERT INTO `item_mods` VALUES (28178,11,11);
INSERT INTO `item_mods` VALUES (28178,12,18);
INSERT INTO `item_mods` VALUES (28178,13,8);
INSERT INTO `item_mods` VALUES (28178,14,6);
INSERT INTO `item_mods` VALUES (28178,108,16);
INSERT INTO `item_mods` VALUES (28178,31,54);
INSERT INTO `item_mods` VALUES (28178,29,2);
INSERT INTO `item_mods` VALUES (28178,384,50);
INSERT INTO `item_mods` VALUES (28178,161,-4);

INSERT INTO `item_mods` VALUES (28179,1,111);
INSERT INTO `item_mods` VALUES (28179,2,41);
INSERT INTO `item_mods` VALUES (28179,8,30);
INSERT INTO `item_mods` VALUES (28179,10,25);
INSERT INTO `item_mods` VALUES (28179,11,13);
INSERT INTO `item_mods` VALUES (28179,12,21);
INSERT INTO `item_mods` VALUES (28179,13,10);
INSERT INTO `item_mods` VALUES (28179,14,7);
INSERT INTO `item_mods` VALUES (28179,108,17);
INSERT INTO `item_mods` VALUES (28179,31,56);
INSERT INTO `item_mods` VALUES (28179,29,2);
INSERT INTO `item_mods` VALUES (28179,384,50);
INSERT INTO `item_mods` VALUES (28179,161,-5);

INSERT INTO `item_mods` VALUES (28180,1,92);
INSERT INTO `item_mods` VALUES (28180,10,8);
INSERT INTO `item_mods` VALUES (28180,11,12);
INSERT INTO `item_mods` VALUES (28180,12,34);
INSERT INTO `item_mods` VALUES (28180,13,17);
INSERT INTO `item_mods` VALUES (28180,14,13);
INSERT INTO `item_mods` VALUES (28180,2,31);
INSERT INTO `item_mods` VALUES (28180,27,-4);
INSERT INTO `item_mods` VALUES (28180,29,4);
INSERT INTO `item_mods` VALUES (28180,31,90);
INSERT INTO `item_mods` VALUES (28180,384,40);
INSERT INTO `item_mods` VALUES (28180,5,27);
INSERT INTO `item_mods` VALUES (28180,68,20);
INSERT INTO `item_mods` VALUES (28180,8,18);

INSERT INTO `item_mods` VALUES (28181,1,95);
INSERT INTO `item_mods` VALUES (28181,10,10);
INSERT INTO `item_mods` VALUES (28181,11,14);
INSERT INTO `item_mods` VALUES (28181,12,36);
INSERT INTO `item_mods` VALUES (28181,13,20);
INSERT INTO `item_mods` VALUES (28181,14,15);
INSERT INTO `item_mods` VALUES (28181,2,34);
INSERT INTO `item_mods` VALUES (28181,27,-5);
INSERT INTO `item_mods` VALUES (28181,29,4);
INSERT INTO `item_mods` VALUES (28181,31,93);
INSERT INTO `item_mods` VALUES (28181,384,40);
INSERT INTO `item_mods` VALUES (28181,5,27);
INSERT INTO `item_mods` VALUES (28181,68,21);
INSERT INTO `item_mods` VALUES (28181,8,21);

-- Manibozho Brais (ID: 28199)
INSERT INTO `item_mods` VALUES (28199,2,25); --  Hit Points +25
INSERT INTO `item_mods` VALUES (28199,8,13); --  Strength +13
INSERT INTO `item_mods` VALUES (28199,9,12); --  Dexterity +12
INSERT INTO `item_mods` VALUES (28199,10,4); --  Vitality +4
INSERT INTO `item_mods` VALUES (28199,11,6); --  Agility +6
INSERT INTO `item_mods` VALUES (28199,12,13); --  Intelligence +13
INSERT INTO `item_mods` VALUES (28199,13,5); --  Mind +5
INSERT INTO `item_mods` VALUES (28199,23,15); --  Attack +15
INSERT INTO `item_mods` VALUES (28199,68,19); --  Evasion +19
INSERT INTO `item_mods` VALUES (28199,31,49); --  Magic Evasion +49
INSERT INTO `item_mods` VALUES (28199,29,2); --  Magic Defense Bonus +2
INSERT INTO `item_mods` VALUES (28199,384,60); --  Haste +6%

REPLACE INTO `item_mods` VALUES (28227,384,41); -- Haste +4%

REPLACE INTO `item_mods` VALUES (28230,2,20); -- MP+20
REPLACE INTO `item_mods` VALUES (28230,2,28); -- HP+28

INSERT INTO `item_mods` VALUES (28235,169,25); -- Dusk to dawn: Movement speed +25% (Just added movement speed 24/7)

REPLACE INTO `item_mods` VALUES (28247,384,41); -- Haste +4%

INSERT INTO `item_mods` VALUES (28275,1,63);
INSERT INTO `item_mods` VALUES (28275,2,13);
INSERT INTO `item_mods` VALUES (28275,5,14);
INSERT INTO `item_mods` VALUES (28275,8,10);
INSERT INTO `item_mods` VALUES (28275,9,11);
INSERT INTO `item_mods` VALUES (28275,10,10);
INSERT INTO `item_mods` VALUES (28275,11,36);
INSERT INTO `item_mods` VALUES (28275,12,17);
INSERT INTO `item_mods` VALUES (28275,13,19);
INSERT INTO `item_mods` VALUES (28275,14,34);
INSERT INTO `item_mods` VALUES (28275,29,5);
INSERT INTO `item_mods` VALUES (28275,31,107);
INSERT INTO `item_mods` VALUES (28275,68,65); -- 10 Evasion added to total of 55 to accommodate for lack of unity ranking.
INSERT INTO `item_mods` VALUES (28275,169,12);
INSERT INTO `item_mods` VALUES (28275,249,15);
INSERT INTO `item_mods` VALUES (28275,384,30);

INSERT INTO `item_mods` VALUES (28314,1,61);
INSERT INTO `item_mods` VALUES (28314,2,10);
INSERT INTO `item_mods` VALUES (28314,8,8);
INSERT INTO `item_mods` VALUES (28314,9,17);
INSERT INTO `item_mods` VALUES (28314,10,8);
INSERT INTO `item_mods` VALUES (28314,11,34);
INSERT INTO `item_mods` VALUES (28314,13,8);
INSERT INTO `item_mods` VALUES (28314,14,22);
INSERT INTO `item_mods` VALUES (28314,26,10);
INSERT INTO `item_mods` VALUES (28314,108,52);
INSERT INTO `item_mods` VALUES (28314,31,58);
INSERT INTO `item_mods` VALUES (28314,29,3);
INSERT INTO `item_mods` VALUES (28314,384,40);
INSERT INTO `item_mods` VALUES (28314,289,2);

INSERT INTO `item_mods` VALUES (28315,1,63);
INSERT INTO `item_mods` VALUES (28315,2,10);
INSERT INTO `item_mods` VALUES (28315,8,10);
INSERT INTO `item_mods` VALUES (28315,9,20);
INSERT INTO `item_mods` VALUES (28315,10,10);
INSERT INTO `item_mods` VALUES (28315,11,38);
INSERT INTO `item_mods` VALUES (28315,13,10);
INSERT INTO `item_mods` VALUES (28315,14,25);
INSERT INTO `item_mods` VALUES (28315,26,11);
INSERT INTO `item_mods` VALUES (28315,108,56);
INSERT INTO `item_mods` VALUES (28315,31,60);
INSERT INTO `item_mods` VALUES (28315,29,4);
INSERT INTO `item_mods` VALUES (28315,384,40);
INSERT INTO `item_mods` VALUES (28315,289,3);

INSERT INTO `item_mods` VALUES (28316,1,71);
INSERT INTO `item_mods` VALUES (28316,10,20);
INSERT INTO `item_mods` VALUES (28316,11,21);
INSERT INTO `item_mods` VALUES (28316,13,6);
INSERT INTO `item_mods` VALUES (28316,14,19);
INSERT INTO `item_mods` VALUES (28316,2,13);
INSERT INTO `item_mods` VALUES (28316,27,3);
INSERT INTO `item_mods` VALUES (28316,29,1);
INSERT INTO `item_mods` VALUES (28316,31,54);
INSERT INTO `item_mods` VALUES (28316,384,30);
INSERT INTO `item_mods` VALUES (28316,68,36);
INSERT INTO `item_mods` VALUES (28316,8,11);
INSERT INTO `item_mods` VALUES (28316,9,8);

INSERT INTO `item_mods` VALUES (28317,1,74);
INSERT INTO `item_mods` VALUES (28317,10,22);
INSERT INTO `item_mods` VALUES (28317,11,24);
INSERT INTO `item_mods` VALUES (28317,13,7);
INSERT INTO `item_mods` VALUES (28317,14,22);
INSERT INTO `item_mods` VALUES (28317,2,14);
INSERT INTO `item_mods` VALUES (28317,27,4);
INSERT INTO `item_mods` VALUES (28317,29,1);
INSERT INTO `item_mods` VALUES (28317,31,56);
INSERT INTO `item_mods` VALUES (28317,384,30);
INSERT INTO `item_mods` VALUES (28317,68,39);
INSERT INTO `item_mods` VALUES (28317,8,13);
INSERT INTO `item_mods` VALUES (28317,9,10);

INSERT INTO `item_mods` VALUES (28318,1,56);
INSERT INTO `item_mods` VALUES (28318,2,10);
INSERT INTO `item_mods` VALUES (28318,5,13);
INSERT INTO `item_mods` VALUES (28318,8,6);
INSERT INTO `item_mods` VALUES (28318,9,7);
INSERT INTO `item_mods` VALUES (28318,10,6);
INSERT INTO `item_mods` VALUES (28318,11,25);
INSERT INTO `item_mods` VALUES (28318,12,12);
INSERT INTO `item_mods` VALUES (28318,13,13);
INSERT INTO `item_mods` VALUES (28318,14,34);
INSERT INTO `item_mods` VALUES (28318,30,8);
INSERT INTO `item_mods` VALUES (28318,108,40);
INSERT INTO `item_mods` VALUES (28318,31,90);
INSERT INTO `item_mods` VALUES (28318,29,4);
INSERT INTO `item_mods` VALUES (28318,384,30);
INSERT INTO `item_mods` VALUES (28318,27,-3);

INSERT INTO `item_mods` VALUES (28319,1,58);
INSERT INTO `item_mods` VALUES (28319,2,10);
INSERT INTO `item_mods` VALUES (28319,5,13);
INSERT INTO `item_mods` VALUES (28319,8,7);
INSERT INTO `item_mods` VALUES (28319,9,8);
INSERT INTO `item_mods` VALUES (28319,10,7);
INSERT INTO `item_mods` VALUES (28319,11,27);
INSERT INTO `item_mods` VALUES (28319,12,14);
INSERT INTO `item_mods` VALUES (28319,13,15);
INSERT INTO `item_mods` VALUES (28319,14,36);
INSERT INTO `item_mods` VALUES (28319,30,9);
INSERT INTO `item_mods` VALUES (28319,108,43);
INSERT INTO `item_mods` VALUES (28319,31,93);
INSERT INTO `item_mods` VALUES (28319,29,4);
INSERT INTO `item_mods` VALUES (28319,384,30);
INSERT INTO `item_mods` VALUES (28319,27,-4);

INSERT INTO `item_mods` VALUES (28374,1,10);
INSERT INTO `item_mods` VALUES (28374,25,3);
INSERT INTO `item_mods` VALUES (28374,306,5);
INSERT INTO `item_mods` VALUES (28374,73,5);

INSERT INTO `item_mods` VALUES (28375,1,11);
INSERT INTO `item_mods` VALUES (28375,25,4);
INSERT INTO `item_mods` VALUES (28375,306,6);
INSERT INTO `item_mods` VALUES (28375,73,6);

INSERT INTO `item_mods` VALUES (28479,66,7);
INSERT INTO `item_mods` VALUES (28479,67,7);

INSERT INTO `item_mods` VALUES (28547,317,3);
INSERT INTO `item_mods` VALUES (28547,318,3);
INSERT INTO `item_mods` VALUES (28547,319,3);
INSERT INTO `item_mods` VALUES (28547,320,3);
INSERT INTO `item_mods` VALUES (28547,321,3);
INSERT INTO `item_mods` VALUES (28547,322,3);
INSERT INTO `item_mods` VALUES (28547,323,3);
INSERT INTO `item_mods` VALUES (28547,324,3);
INSERT INTO `item_mods` VALUES (28547,325,3);
INSERT INTO `item_mods` VALUES (28547,326,3);
INSERT INTO `item_mods` VALUES (28547,327,3);
INSERT INTO `item_mods` VALUES (28547,328,3);
INSERT INTO `item_mods` VALUES (28547,329,3);
INSERT INTO `item_mods` VALUES (28547,330,3);
INSERT INTO `item_mods` VALUES (28547,331,3);
