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
-- Extra DMG Chance 10% is in DSP already
-- Extra DMG X2.5 is in DSP already
-- STP is in DSP already
-- TP Bonus is in DSP already
INSERT INTO `item_mods` VALUES (20515,302,5); -- TRIP ATK
INSERT INTO `item_mods` VALUES (20515,288,10); -- DBL ATK
INSERT INTO `item_mods` VALUES (20515,165,5); -- Crit Rate
INSERT INTO `item_mods` VALUES (20515,421,25); -- Crit DMG
INSERT INTO `item_mods` VALUES (20515,174,100); -- Skill Chain Bonus
INSERT INTO `item_mods` VALUES (20515,175,100); -- Skill Chain DMG

INSERT INTO `item_mods` VALUES (20530,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20530,506,200); -- occ
INSERT INTO `item_mods` VALUES (20530,507,200); -- occ

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

-- Excalipoor II (DO NOT REMOVE UNTIL THE WS EXISTS IN DSP)
INSERT INTO `item_mods` VALUES (20714, 355, 227); -- Add "Knights of the Rotund" (not "round", ROTUND!)

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

INSERT INTO `item_mods` VALUES (20946,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20946,506,200); -- occ
INSERT INTO `item_mods` VALUES (20946,507,200); -- occ

INSERT INTO `item_mods` VALUES (20974,165,25); --
INSERT INTO `item_mods` VALUES (20974,421,50); --

INSERT INTO `item_mods` VALUES (20975,165,25); --
INSERT INTO `item_mods` VALUES (20975,421,50); --

INSERT INTO `item_mods` VALUES (20989,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20989,506,200); -- occ
INSERT INTO `item_mods` VALUES (20989,507,200); -- occ

INSERT INTO `item_mods` VALUES (20995,345,1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20995,506,200); -- occ
INSERT INTO `item_mods` VALUES (20995,507,200); -- occ

INSERT INTO `item_mods` VALUES (21019,165,25); --
INSERT INTO `item_mods` VALUES (21019,421,50); --

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

REPLACE INTO `item_mods` VALUES (21111,28,60); -- Matt

REPLACE INTO `item_mods` VALUES (21139,28,165); -- Should be 60   magic dmg +  unknown

REPLACE INTO `item_mods` VALUES (21140,28,185); -- Should be 60   magic dmg +  unknown

INSERT INTO `item_mods` VALUES (21144,28,100); --

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

REPLACE INTO `item_mods` VALUES (21208,28,73); -- Should be 40   see below

INSERT INTO `item_mods` VALUES (21212,165,25); --
INSERT INTO `item_mods` VALUES (21212,421,50); --

INSERT INTO `item_mods` VALUES (21213,165,25); --
INSERT INTO `item_mods` VALUES (21213,421,50); --

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

INSERT INTO `item_mods` VALUES (21683,25,60); -- Ragnarok iLvL 119 AG - ACC +60
INSERT INTO `item_mods` VALUES (21683,165,14); -- Crit Rate +14%
INSERT INTO `item_mods` VALUES (21683,506,160); -- Extra DMG Chance 16%
INSERT INTO `item_mods` VALUES (21683,507,250); -- Extra DMG X2.5
INSERT INTO `item_mods` VALUES (21683,627,40); -- Scourge DMG +40%

INSERT INTO `item_mods` VALUES (21684,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (21684,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (21684,10,50); -- VIT

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

INSERT INTO `item_mods` VALUES (22063,302,10); -- TRIP ATK
INSERT INTO `item_mods` VALUES (22063,288,15); -- DBL ATK
INSERT INTO `item_mods` VALUES (22063,28,165); -- MAB
INSERT INTO `item_mods` VALUES (22063,30,40); -- MACC

INSERT INTO `item_mods` VALUES (22064,165,15); -- Crit Rate
INSERT INTO `item_mods` VALUES (22064,421,65); -- Crit DMG
INSERT INTO `item_mods` VALUES (22064,12,50); -- INT
INSERT INTO `item_mods` VALUES (22064,28,165); -- MAB
INSERT INTO `item_mods` VALUES (22064,30,40); -- MACC

INSERT INTO `item_mods` VALUES (26406,127,3); -- Kupo Shield
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

-- Assid. Pants +1
INSERT INTO `item_mods` VALUES (28135,369,2); -- Substitute for Unity refresh (this shouldn't be here)
