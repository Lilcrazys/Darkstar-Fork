-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_mods.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- REPLACE INTO `item_mods` VALUES (itemId, modId, value); -- remember to comment what the item is and what this mod is!
-- New entries below this line, and sorted by itemID then modID.
INSERT INTO `item_mods` VALUES (11926, 416, 15); -- USELESS COMMENT "Custom" CUSTOM WHAT?
INSERT INTO `item_mods` VALUES (11927, 1, 40); -- Aegis (lv99 no afterglow) DEF
INSERT INTO `item_mods` VALUES (11927, 163, -128); -- Aegis (lv99 no afterglow) -50% Magic Damage Taken
REPLACE INTO `item_mods` VALUES (11958, 384, 30);
INSERT INTO `item_mods` VALUES (13215, 2, 9999); -- HP to GM belt to test things
INSERT INTO `item_mods` VALUES (16193, 416, 10); -- USELESS COMMENT "Custom" CUSTOM WHAT?
INSERT INTO `item_mods` VALUES (16194, 416, 12); -- USELESS COMMENT "Custom" CUSTOM WHAT?
INSERT INTO `item_mods` VALUES (16199, 109, 106); -- Shield skill (Custom)
INSERT INTO `item_mods` VALUES (16199, 416, 25); -- USELESS COMMENT "Custom" CUSTOM WHAT?
REPLACE INTO `item_mods` VALUES (18264, 507, 300); -- Occ. 3x dmg / was 2.5 wiki says 3x
INSERT INTO `item_mods` VALUES (18852, 289, 50); -- MODDED OCTAVE CLUB
REPLACE INTO `item_mods` VALUES (19001, 420, 10); -- Barrage accuracy
REPLACE INTO `item_mods` VALUES (19090, 420, 20); -- Barrage accuracy
INSERT INTO `item_mods` VALUES (19456, 165, 10); --
INSERT INTO `item_mods` VALUES (19456, 421, 20); --
INSERT INTO `item_mods` VALUES (19457, 165, 10); --
INSERT INTO `item_mods` VALUES (19457, 421, 20); --
INSERT INTO `item_mods` VALUES (19458, 165, 10); --
INSERT INTO `item_mods` VALUES (19458, 421, 20); --
INSERT INTO `item_mods` VALUES (19459, 165, 10); --
INSERT INTO `item_mods` VALUES (19459, 421, 20); --
INSERT INTO `item_mods` VALUES (19460, 165, 10); --
INSERT INTO `item_mods` VALUES (19460, 421, 20); --
INSERT INTO `item_mods` VALUES (19461, 165, 10); --
INSERT INTO `item_mods` VALUES (19461, 421, 20); --
INSERT INTO `item_mods` VALUES (19462, 165, 10); --
INSERT INTO `item_mods` VALUES (19462, 421, 20); --
INSERT INTO `item_mods` VALUES (19463, 165, 10); --
INSERT INTO `item_mods` VALUES (19463, 421, 20); --
INSERT INTO `item_mods` VALUES (19464, 165, 10); --
INSERT INTO `item_mods` VALUES (19464, 421, 20); --
INSERT INTO `item_mods` VALUES (19465, 165, 10); --
INSERT INTO `item_mods` VALUES (19465, 421, 20); --
INSERT INTO `item_mods` VALUES (19468, 165, 10); --
INSERT INTO `item_mods` VALUES (19468, 421, 20); --
INSERT INTO `item_mods` VALUES (19469, 165, 10); --
INSERT INTO `item_mods` VALUES (19469, 421, 20); --
INSERT INTO `item_mods` VALUES (19632, 165, 15); --
INSERT INTO `item_mods` VALUES (19632, 421, 30); --
INSERT INTO `item_mods` VALUES (19633, 165, 15); --
INSERT INTO `item_mods` VALUES (19633, 421, 30); --
INSERT INTO `item_mods` VALUES (19634, 165, 15); --
INSERT INTO `item_mods` VALUES (19634, 421, 30); --
INSERT INTO `item_mods` VALUES (19635, 165, 15); --
INSERT INTO `item_mods` VALUES (19635, 421, 30); --
INSERT INTO `item_mods` VALUES (19636, 165, 15); --
INSERT INTO `item_mods` VALUES (19636, 421, 30); --
INSERT INTO `item_mods` VALUES (19637, 165, 15); --
INSERT INTO `item_mods` VALUES (19637, 421, 30); --
INSERT INTO `item_mods` VALUES (19638, 165, 15); --
INSERT INTO `item_mods` VALUES (19638, 421, 30); --
INSERT INTO `item_mods` VALUES (19639, 165, 15); --
INSERT INTO `item_mods` VALUES (19639, 421, 30); --
INSERT INTO `item_mods` VALUES (19640, 165, 15); --
INSERT INTO `item_mods` VALUES (19640, 421, 30); --
INSERT INTO `item_mods` VALUES (19641, 165, 15); --
INSERT INTO `item_mods` VALUES (19641, 421, 30); --
INSERT INTO `item_mods` VALUES (19644, 165, 15); --
INSERT INTO `item_mods` VALUES (19644, 421, 30); --
INSERT INTO `item_mods` VALUES (19645, 165, 15); --
INSERT INTO `item_mods` VALUES (19645, 421, 30); --
INSERT INTO `item_mods` VALUES (19805, 165, 20); --
INSERT INTO `item_mods` VALUES (19805, 421, 40); --
INSERT INTO `item_mods` VALUES (19806, 165, 20); --
INSERT INTO `item_mods` VALUES (19806, 421, 40); --
INSERT INTO `item_mods` VALUES (19807, 165, 20); --
INSERT INTO `item_mods` VALUES (19807, 421, 40); --
INSERT INTO `item_mods` VALUES (19808, 165, 20); --
INSERT INTO `item_mods` VALUES (19808, 421, 40); --
INSERT INTO `item_mods` VALUES (19809, 165, 20); --
INSERT INTO `item_mods` VALUES (19809, 421, 40); --
INSERT INTO `item_mods` VALUES (19810, 165, 20); --
INSERT INTO `item_mods` VALUES (19810, 421, 40); --
INSERT INTO `item_mods` VALUES (19811, 165, 20); --
INSERT INTO `item_mods` VALUES (19811, 421, 40); --
INSERT INTO `item_mods` VALUES (19812, 165, 20); --
INSERT INTO `item_mods` VALUES (19812, 421, 40); --
INSERT INTO `item_mods` VALUES (19813, 165, 20); --
INSERT INTO `item_mods` VALUES (19813, 421, 40); --
INSERT INTO `item_mods` VALUES (19814, 165, 20); --
INSERT INTO `item_mods` VALUES (19814, 421, 40); --
INSERT INTO `item_mods` VALUES (19817, 165, 20); --
INSERT INTO `item_mods` VALUES (19817, 421, 40); --
INSERT INTO `item_mods` VALUES (19818, 165, 20); --
INSERT INTO `item_mods` VALUES (19818, 421, 40); --
INSERT INTO `item_mods` VALUES (19853, 165, 20); --
INSERT INTO `item_mods` VALUES (19853, 421, 40); --
INSERT INTO `item_mods` VALUES (20486, 165, 25); --
INSERT INTO `item_mods` VALUES (20486, 421, 50); --
INSERT INTO `item_mods` VALUES (20487, 165, 25); --
INSERT INTO `item_mods` VALUES (20487, 421, 50); --
INSERT INTO `item_mods` VALUES (20530, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20530, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20530, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20563, 165, 25); --
INSERT INTO `item_mods` VALUES (20563, 421, 50); --
INSERT INTO `item_mods` VALUES (20564, 165, 25); --
INSERT INTO `item_mods` VALUES (20564, 421, 50); --
INSERT INTO `item_mods` VALUES (20616, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20616, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20616, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20620, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20620, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20620, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20653, 165, 25); --
INSERT INTO `item_mods` VALUES (20653, 421, 50); --
INSERT INTO `item_mods` VALUES (20654, 165, 25); --
INSERT INTO `item_mods` VALUES (20654, 421, 50); --
INSERT INTO `item_mods` VALUES (20714, 355, 227); -- Add "Knights of the Rotund" (not "round", ROTUND!)
INSERT INTO `item_mods` VALUES (20718, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20718, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20718, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20721, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20721, 506, 300); -- occ
INSERT INTO `item_mods` VALUES (20721, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20747, 165, 25); --
INSERT INTO `item_mods` VALUES (20747, 421, 50); --
INSERT INTO `item_mods` VALUES (20748, 165, 25); --
INSERT INTO `item_mods` VALUES (20748, 421, 50); --
INSERT INTO `item_mods` VALUES (20758, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20758, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20758, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20759, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20759, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20759, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20794, 165, 25); --
INSERT INTO `item_mods` VALUES (20794, 421, 50); --
INSERT INTO `item_mods` VALUES (20795, 165, 25); --
INSERT INTO `item_mods` VALUES (20795, 421, 50); --
INSERT INTO `item_mods` VALUES (20809, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20809, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20839, 165, 25); --
INSERT INTO `item_mods` VALUES (20839, 421, 50); --
INSERT INTO `item_mods` VALUES (20840, 165, 25); --
INSERT INTO `item_mods` VALUES (20840, 421, 50); --
INSERT INTO `item_mods` VALUES (20857, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20857, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20857, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20884, 165, 25); --
INSERT INTO `item_mods` VALUES (20884, 421, 50); --
INSERT INTO `item_mods` VALUES (20885, 165, 25); --
INSERT INTO `item_mods` VALUES (20885, 421, 50); --
INSERT INTO `item_mods` VALUES (20901, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20901, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20901, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20906, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20906, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20906, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20929, 165, 25); --
INSERT INTO `item_mods` VALUES (20929, 421, 50); --
INSERT INTO `item_mods` VALUES (20930, 165, 25); --
INSERT INTO `item_mods` VALUES (20930, 421, 50); --
INSERT INTO `item_mods` VALUES (20946, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20946, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20946, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20974, 165, 25); --
INSERT INTO `item_mods` VALUES (20974, 421, 50); --
INSERT INTO `item_mods` VALUES (20975, 165, 25); --
INSERT INTO `item_mods` VALUES (20975, 421, 50); --
INSERT INTO `item_mods` VALUES (20989, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20989, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20989, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20995, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20995, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20995, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (21019, 165, 25); --
INSERT INTO `item_mods` VALUES (21019, 421, 50); --
INSERT INTO `item_mods` VALUES (21052, 73, 25); -- Should be Save TP +250   added Store TP +25
REPLACE INTO `item_mods` VALUES (21062, 28, 65); --
REPLACE INTO `item_mods` VALUES (21111, 28, 60); -- Matt
REPLACE INTO `item_mods` VALUES (21139, 28, 165); -- Should be 60   magic dmg +  unknown
REPLACE INTO `item_mods` VALUES (21140, 28, 185); -- Should be 60   magic dmg +  unknown
INSERT INTO `item_mods` VALUES (21144, 28, 100); --
REPLACE INTO `item_mods` VALUES (21161, 28, 135); -- Matt
REPLACE INTO `item_mods` VALUES (21173, 28, 120); -- Matt
INSERT INTO `item_mods` VALUES (21173, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (21173, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (21173, 507, 200); -- occ
REPLACE INTO `item_mods` VALUES (21176, 28, 120); -- Should be 18 see below
REPLACE INTO `item_mods` VALUES (21177, 28, 125); -- Matt
REPLACE INTO `item_mods` VALUES (21181, 28, 168); -- MATT
REPLACE INTO `item_mods` VALUES (21182, 28, 130); --  Magic Attack Bonus +25
REPLACE INTO `item_mods` VALUES (21194, 28, 95); -- Should be 19 see below
REPLACE INTO `item_mods` VALUES (21208, 28, 73); -- Should be 40   see below
INSERT INTO `item_mods` VALUES (21212, 165, 25); --
INSERT INTO `item_mods` VALUES (21212, 421, 50); --
INSERT INTO `item_mods` VALUES (21213, 165, 25); --
INSERT INTO `item_mods` VALUES (21213, 421, 50); --
INSERT INTO `item_mods` VALUES (21265, 165, 25); --
INSERT INTO `item_mods` VALUES (21265, 421, 50); --
REPLACE INTO `item_mods` VALUES (26710,11,34);
REPLACE INTO `item_mods` VALUES (26710,9,34); -- didnt add extra unity DEX and AGI
INSERT INTO `item_mods` VALUES (26910, 480, 10); -- null dmg
INSERT INTO `item_mods` VALUES (26911, 480, 12); -- null dmg
REPLACE INTO `item_mods` VALUES (27174, 10, 12); --  VIT+12
REPLACE INTO `item_mods` VALUES (27174, 11, 9); -- AGI+9
REPLACE INTO `item_mods` VALUES (27174, 12, 17); --  INT+17
REPLACE INTO `item_mods` VALUES (27174, 13, 10); -- MND+10
REPLACE INTO `item_mods` VALUES (27174, 14, 8); --  CHR+8
REPLACE INTO `item_mods` VALUES (27174, 2, 23); -- HP+23
REPLACE INTO `item_mods` VALUES (27174, 23, 15); --  Attack+15
REPLACE INTO `item_mods` VALUES (27174, 29, 1); --  Magic Def. Bonus+1 (used magic defence ?)
REPLACE INTO `item_mods` VALUES (27174, 31, 51); -- Magic Evasion+51
REPLACE INTO `item_mods` VALUES (27174, 8, 21); --  STR+21
REPLACE INTO `item_mods` VALUES (27175, 1, 125); --  DEF:89
REPLACE INTO `item_mods` VALUES (27175, 10, 19); --  VIT+12
REPLACE INTO `item_mods` VALUES (27175, 11, 15); -- AGI+9
REPLACE INTO `item_mods` VALUES (27175, 12, 26); --  INT+17
REPLACE INTO `item_mods` VALUES (27175, 13, 16); -- MND+10
REPLACE INTO `item_mods` VALUES (27175, 14, 12); --  CHR+8
REPLACE INTO `item_mods` VALUES (27175, 2, 50); -- HP+23
REPLACE INTO `item_mods` VALUES (27175, 23, 18); --  Attack+15
REPLACE INTO `item_mods` VALUES (27175, 29, 3); --  Magic Def. Bonus+1 (used magic defence ?)
REPLACE INTO `item_mods` VALUES (27175, 31, 75); -- Magic Evasion+51
REPLACE INTO `item_mods` VALUES (27175, 384, 51); --  Haste +5%
REPLACE INTO `item_mods` VALUES (27175, 508, 35); -- Third Eye": "Counter" rate +35
REPLACE INTO `item_mods` VALUES (27175, 65, 40); --  Evasion+25
REPLACE INTO `item_mods` VALUES (27175, 8, 33); --  STR+21
INSERT INTO `item_mods` VALUES (27230, 10, 16);
INSERT INTO `item_mods` VALUES (27230, 108, 38);
INSERT INTO `item_mods` VALUES (27230, 11, 20);
INSERT INTO `item_mods` VALUES (27230, 12, 30);
INSERT INTO `item_mods` VALUES (27230, 13, 17);
INSERT INTO `item_mods` VALUES (27230, 14, 11);
INSERT INTO `item_mods` VALUES (27230, 2, 47);
INSERT INTO `item_mods` VALUES (27230, 27, 5);
INSERT INTO `item_mods` VALUES (27230, 288, 5);
INSERT INTO `item_mods` VALUES (27230, 29, 5);
INSERT INTO `item_mods` VALUES (27230, 302, 2);
INSERT INTO `item_mods` VALUES (27230, 31, 69);
INSERT INTO `item_mods` VALUES (27230, 384, 60);
INSERT INTO `item_mods` VALUES (27230, 73, -4);
INSERT INTO `item_mods` VALUES (27230, 8, 29);
REPLACE INTO `item_mods` VALUES (27676, 1, 82); -- DEF:82
REPLACE INTO `item_mods` VALUES (27676, 10, 19); -- VIT+19
REPLACE INTO `item_mods` VALUES (27676, 11, 14); -- AGI+14
REPLACE INTO `item_mods` VALUES (27676, 13, 16); -- MND+16
REPLACE INTO `item_mods` VALUES (27676, 14, 13); -- CHR+13
REPLACE INTO `item_mods` VALUES (27676, 2, 18); -- HP+18
REPLACE INTO `item_mods` VALUES (27676, 23, 17); -- Attack+17
REPLACE INTO `item_mods` VALUES (27676, 31, 29); -- Magic Evasion+29
REPLACE INTO `item_mods` VALUES (27676, 384, 61); -- Haste+6%
REPLACE INTO `item_mods` VALUES (27676, 5, 19); -- MP+19
REPLACE INTO `item_mods` VALUES (27676, 65, 15); -- Evasion+15
REPLACE INTO `item_mods` VALUES (27676, 8, 20); -- STR+20
REPLACE INTO `item_mods` VALUES (27676, 9, 14); -- DEX+14
REPLACE INTO `item_mods` VALUES (27697, 1, 109); -- DEF:82
REPLACE INTO `item_mods` VALUES (27697, 10, 25); -- VIT+19
REPLACE INTO `item_mods` VALUES (27697, 11, 20); -- AGI+14
REPLACE INTO `item_mods` VALUES (27697, 13, 22); -- MND+16
REPLACE INTO `item_mods` VALUES (27697, 14, 19); -- CHR+13
REPLACE INTO `item_mods` VALUES (27697, 2, 38); -- HP+18
REPLACE INTO `item_mods` VALUES (27697, 23, 22); -- Attack+17
REPLACE INTO `item_mods` VALUES (27697, 31, 43); -- Magic Evasion+29
REPLACE INTO `item_mods` VALUES (27697, 384, 71); -- Haste+6%
REPLACE INTO `item_mods` VALUES (27697, 5, 23); -- MP+19
REPLACE INTO `item_mods` VALUES (27697, 65, 33); -- Evasion+15
REPLACE INTO `item_mods` VALUES (27697, 8, 27); -- STR+20
REPLACE INTO `item_mods` VALUES (27697, 9, 20); -- DEX+14

REPLACE INTO `item_mods` VALUES (27777, 1, 72); -- DEF
REPLACE INTO `item_mods` VALUES (27777, 10, 10); -- VIT
REPLACE INTO `item_mods` VALUES (27777, 11, 13); -- AGI
REPLACE INTO `item_mods` VALUES (27777, 13, 10); -- MND
REPLACE INTO `item_mods` VALUES (27777, 14, 11); -- CHR
REPLACE INTO `item_mods` VALUES (27777, 2, 19); -- HP
REPLACE INTO `item_mods` VALUES (27777, 12, 10); -- INT
REPLACE INTO `item_mods` VALUES (27777, 31, 38); -- Magic Evasion
REPLACE INTO `item_mods` VALUES (27777, 384, 61); -- Haste
REPLACE INTO `item_mods` VALUES (27777, 5, 20); -- MP
REPLACE INTO `item_mods` VALUES (27777, 65, 22); -- Evasion
REPLACE INTO `item_mods` VALUES (27777, 8, 10); -- STR
REPLACE INTO `item_mods` VALUES (27777, 9, 13); -- DEX

INSERT INTO `item_mods` VALUES (27868, 2, 54); --  Hit Points +54
INSERT INTO `item_mods` VALUES (27868, 5, 59); --  Mana Points +59
INSERT INTO `item_mods` VALUES (27868, 8, 21); --  Strength +21
INSERT INTO `item_mods` VALUES (27868, 9, 21); --  Dexterity +21
INSERT INTO `item_mods` VALUES (27868, 10, 21); --  Vitality +21
INSERT INTO `item_mods` VALUES (27868, 11, 21); --  Agility +21
INSERT INTO `item_mods` VALUES (27868, 12, 29); --  Intelligence +29
INSERT INTO `item_mods` VALUES (27868, 13, 29); --  Mind +29
INSERT INTO `item_mods` VALUES (27868, 14, 29); --  Charisma +29
INSERT INTO `item_mods` VALUES (27868, 25, 25); --  Accuracy +25
INSERT INTO `item_mods` VALUES (27868, 30, 15); --  Magic Accuracy +15
INSERT INTO `item_mods` VALUES (27868, 68, 41); --  Evasion +41
INSERT INTO `item_mods` VALUES (27868, 31, 80); --  Magic Evasion +80
INSERT INTO `item_mods` VALUES (27868, 29, 6); --  Magic Defense Bonus + 68
INSERT INTO `item_mods` VALUES (27868, 114, 18); --  Enfeebling Magic Skill +18
INSERT INTO `item_mods` VALUES (27868, 384, 30); --  Haste +3%
INSERT INTO `item_mods` VALUES (27868, 369, 2); --  Refresh +2

INSERT INTO `item_mods` VALUES (28005, 1, 88);
INSERT INTO `item_mods` VALUES (28005, 10, 31);
INSERT INTO `item_mods` VALUES (28005, 11, 11);
INSERT INTO `item_mods` VALUES (28005, 12, 12);
INSERT INTO `item_mods` VALUES (28005, 13, 29);
INSERT INTO `item_mods` VALUES (28005, 14, 17);
INSERT INTO `item_mods` VALUES (28005, 162, 3);
INSERT INTO `item_mods` VALUES (28005, 2, 23);
INSERT INTO `item_mods` VALUES (28005, 23, 20);
INSERT INTO `item_mods` VALUES (28005, 26, 20);
INSERT INTO `item_mods` VALUES (28005, 29, 1);
INSERT INTO `item_mods` VALUES (28005, 31, 36);
INSERT INTO `item_mods` VALUES (28005, 365, 5);
INSERT INTO `item_mods` VALUES (28005, 384, 51);
INSERT INTO `item_mods` VALUES (28005, 68, 23);
INSERT INTO `item_mods` VALUES (28005, 8, 11);
INSERT INTO `item_mods` VALUES (28005, 9, 34);
INSERT INTO `item_mods` VALUES (28135,369,2); -- Didn't include Unity refresh

-- Manibozho Brais (ID: 28199)
INSERT INTO `item_mods` VALUES (28199, 2, 25); --  Hit Points +25
INSERT INTO `item_mods` VALUES (28199, 8, 13); --  Strength +13
INSERT INTO `item_mods` VALUES (28199, 9, 12); --  Dexterity +12
INSERT INTO `item_mods` VALUES (28199, 10, 4); --  Vitality +4
INSERT INTO `item_mods` VALUES (28199, 11, 6); --  Agility +6
INSERT INTO `item_mods` VALUES (28199, 12, 13); --  Intelligence +13
INSERT INTO `item_mods` VALUES (28199, 13, 5); --  Mind +5
INSERT INTO `item_mods` VALUES (28199, 23, 15); --  Attack +15
INSERT INTO `item_mods` VALUES (28199, 68, 19); --  Evasion +19
INSERT INTO `item_mods` VALUES (28199, 31, 49); --  Magic Evasion +49
INSERT INTO `item_mods` VALUES (28199, 29, 2); --  Magic Defense Bonus +2
INSERT INTO `item_mods` VALUES (28199, 384, 60); --  Haste +6%

REPLACE INTO `item_mods` VALUES (28227, 384, 41); -- Haste +4%
REPLACE INTO `item_mods` VALUES (28230, 2, 20); -- MP+20
REPLACE INTO `item_mods` VALUES (28230, 2, 28); -- HP+28
INSERT INTO `item_mods` VALUES (28235, 169, 25); -- Dusk to dawn: Movement speed +25% (Just added movement speed 24/7)
REPLACE INTO `item_mods` VALUES (28247, 384, 41); -- Haste +4%
INSERT INTO `item_mods` VALUES (28479, 66, 7);
INSERT INTO `item_mods` VALUES (28479, 67, 7);
INSERT INTO `item_mods` VALUES (28535, 27, 50); -- enm
INSERT INTO `item_mods` VALUES (28535, 502, 50); -- reduces emn loss (TESTING)
INSERT INTO `item_mods` VALUES (28547, 317, 3);
INSERT INTO `item_mods` VALUES (28547, 318, 3);
INSERT INTO `item_mods` VALUES (28547, 319, 3);
INSERT INTO `item_mods` VALUES (28547, 320, 3);
INSERT INTO `item_mods` VALUES (28547, 321, 3);
INSERT INTO `item_mods` VALUES (28547, 322, 3);
INSERT INTO `item_mods` VALUES (28547, 323, 3);
INSERT INTO `item_mods` VALUES (28547, 324, 3);
INSERT INTO `item_mods` VALUES (28547, 325, 3);
INSERT INTO `item_mods` VALUES (28547, 326, 3);
INSERT INTO `item_mods` VALUES (28547, 327, 3);
INSERT INTO `item_mods` VALUES (28547, 328, 3);
INSERT INTO `item_mods` VALUES (28547, 329, 3);
INSERT INTO `item_mods` VALUES (28547, 330, 3);
INSERT INTO `item_mods` VALUES (28547, 331, 3);
INSERT INTO `item_mods` VALUES (28621, 274, 6); --  Cure Potency +6%
INSERT INTO `item_mods` VALUES (28621, 311, 6); -- Magic Damage

INSERT INTO `item_mods` VALUES (28538, 5, 40); --  Cure Potency +6%
INSERT INTO `item_mods` VALUES (28538, 374, 3); -- Magic Damage
INSERT INTO `item_mods` VALUES (28538, 27, -5); -- enm

INSERT INTO `item_mods` VALUES (25707,25,5);
INSERT INTO `item_mods` VALUES (25707,28,10);
INSERT INTO `item_mods` VALUES (25707,27,-5);
INSERT INTO `item_mods` VALUES (25707,296,2);

INSERT INTO `item_mods` VALUES (20609,17,20);
INSERT INTO `item_mods` VALUES (20609,68,22);
INSERT INTO `item_mods` VALUES (20609,30,21);
INSERT INTO `item_mods` VALUES (20609,302,3);
INSERT INTO `item_mods` VALUES (20609,34, 1);
INSERT INTO `item_mods` VALUES (20609,11,15);

INSERT INTO `item_mods` VALUES (26896,1,225);
INSERT INTO `item_mods` VALUES (26896,2,91);
INSERT INTO `item_mods` VALUES (26896,5,91);
INSERT INTO `item_mods` VALUES (26896,8,35);
INSERT INTO `item_mods` VALUES (26896,9,35);
INSERT INTO `item_mods` VALUES (26896,10,35);
INSERT INTO `item_mods` VALUES (26896,11,35);
INSERT INTO `item_mods` VALUES (26896,12,48);
INSERT INTO `item_mods` VALUES (26896,13,48);
INSERT INTO `item_mods` VALUES (26896,14,48);
INSERT INTO `item_mods` VALUES (26896,29,12);
INSERT INTO `item_mods` VALUES (26896,31,156);
INSERT INTO `item_mods` VALUES (26896,68,77);
INSERT INTO `item_mods` VALUES (26896,163,-2);
INSERT INTO `item_mods` VALUES (26896,369,2);
INSERT INTO `item_mods` VALUES (26896,370,2);
INSERT INTO `item_mods` VALUES (26896,384,90);
INSERT INTO `item_mods` VALUES (26896,170,5);

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

INSERT INTO `item_mods` VALUES (27594,1,13);

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
INSERT INTO `item_mods` VALUES (20561,30,40);
INSERT INTO `item_mods` VALUES (20562,30,40);

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

INSERT INTO `item_mods` VALUES (20988,25,20);
INSERT INTO `item_mods` VALUES (20988,26,20);
INSERT INTO `item_mods` VALUES (20988,168,35);
INSERT INTO `item_mods` VALUES (20988,68,22);
INSERT INTO `item_mods` VALUES (20988,9,10);
INSERT INTO `item_mods` VALUES (20988,11,10);
