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

INSERT INTO `item_mods` VALUES (11926, 416, 15); -- Custom
INSERT INTO `item_mods` VALUES (13215, 2, 9999); -- HP to GM belt to test things
INSERT INTO `item_mods` VALUES (16193, 416, 10); -- Custom
INSERT INTO `item_mods` VALUES (16194, 416, 12); -- Custom
INSERT INTO `item_mods` VALUES (16199, 109, 106); -- Shield skill   Custom
INSERT INTO `item_mods` VALUES (16199, 416, 25); -- Custom
INSERT INTO `item_mods` VALUES (18852, 289, 50); -- MODDED OCTAVE CLUB
INSERT INTO `item_mods` VALUES (20714, 355, 227); -- Add "Knights of the Rotund" (not "round", ROTUND!)
INSERT INTO `item_mods` VALUES (21052, 73, 25); -- Should be Save TP +250   added Store TP +25
INSERT INTO `item_mods` VALUES (28235, 169, 25); -- Dusk to dawn: Movement speed +25% (Just added movement speed 24/7)
INSERT INTO `item_mods` VALUES (28535, 27, 50); -- enm
INSERT INTO `item_mods` VALUES (28535, 502, 50); -- reduces emn loss (TESTING)

-- ---------- Custom Alluvian Skirmish Weapons (occ does dbl dmg, tp bonus)--------------------------
INSERT INTO `item_mods` VALUES (20857, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20857, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20857, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20758, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20758, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20758, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20759, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20759, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20759, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20718, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20718, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20718, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20721, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20721, 506, 300); -- occ
INSERT INTO `item_mods` VALUES (20721, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20616, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20616, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20616, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20530, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20530, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20530, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (21173, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (21173, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (21173, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20989, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20989, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20989, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20946, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20946, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20946, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (20901, 345, 1000); -- tp bonus
INSERT INTO `item_mods` VALUES (20901, 506, 200); -- occ
INSERT INTO `item_mods` VALUES (20901, 507, 200); -- occ
INSERT INTO `item_mods` VALUES (26910, 480, 10); -- null dmg
INSERT INTO `item_mods` VALUES (26911, 480, 12); -- null dmg

-- -------------- Custom Empy Weapons (crit % and crit dmg)-----------------------------
INSERT INTO `item_mods` VALUES (19458, 165, 10); --
INSERT INTO `item_mods` VALUES (19458, 421, 20); --
INSERT INTO `item_mods` VALUES (19457, 165, 10); --
INSERT INTO `item_mods` VALUES (19457, 421, 20); --
INSERT INTO `item_mods` VALUES (19456, 165, 10); --
INSERT INTO `item_mods` VALUES (19456, 421, 20); --
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
INSERT INTO `item_mods` VALUES (20563, 165, 25); --
INSERT INTO `item_mods` VALUES (20563, 421, 50); --
INSERT INTO `item_mods` VALUES (20564, 165, 25); --
INSERT INTO `item_mods` VALUES (20564, 421, 50); --
INSERT INTO `item_mods` VALUES (20653, 165, 25); --
INSERT INTO `item_mods` VALUES (20653, 421, 50); --
INSERT INTO `item_mods` VALUES (20654, 165, 25); --
INSERT INTO `item_mods` VALUES (20654, 421, 50); --
INSERT INTO `item_mods` VALUES (20747, 165, 25); --
INSERT INTO `item_mods` VALUES (20747, 421, 50); --
INSERT INTO `item_mods` VALUES (20748, 165, 25); --
INSERT INTO `item_mods` VALUES (20748, 421, 50); --
INSERT INTO `item_mods` VALUES (20794, 165, 25); --
INSERT INTO `item_mods` VALUES (20794, 421, 50); --
INSERT INTO `item_mods` VALUES (20795, 165, 25); --
INSERT INTO `item_mods` VALUES (20795, 421, 50); --
INSERT INTO `item_mods` VALUES (20839, 165, 25); --
INSERT INTO `item_mods` VALUES (20839, 421, 50); --
INSERT INTO `item_mods` VALUES (20840, 165, 25); --
INSERT INTO `item_mods` VALUES (20840, 421, 50); --
INSERT INTO `item_mods` VALUES (20884, 165, 25); --
INSERT INTO `item_mods` VALUES (20884, 421, 50); --
INSERT INTO `item_mods` VALUES (20885, 165, 25); --
INSERT INTO `item_mods` VALUES (20885, 421, 50); --
INSERT INTO `item_mods` VALUES (20929, 165, 25); --
INSERT INTO `item_mods` VALUES (20929, 421, 50); --
INSERT INTO `item_mods` VALUES (20930, 165, 25); --
INSERT INTO `item_mods` VALUES (20930, 421, 50); --
INSERT INTO `item_mods` VALUES (20974, 165, 25); --
INSERT INTO `item_mods` VALUES (20974, 421, 50); --
INSERT INTO `item_mods` VALUES (20975, 165, 25); --
INSERT INTO `item_mods` VALUES (20975, 421, 50); --
INSERT INTO `item_mods` VALUES (21019, 165, 25); --
INSERT INTO `item_mods` VALUES (21019, 421, 50); --
INSERT INTO `item_mods` VALUES (21212, 165, 25); --
INSERT INTO `item_mods` VALUES (21212, 421, 50); --
INSERT INTO `item_mods` VALUES (21213, 165, 25); --
INSERT INTO `item_mods` VALUES (21213, 421, 50); --
INSERT INTO `item_mods` VALUES (21265, 165, 25); --
INSERT INTO `item_mods` VALUES (21265, 421, 50); --

-- ------------------- Lots of replacing here (not sure why... will investigate later) ----------------------------------------
REPLACE INTO `item_mods` VALUES (27175, 508, 35); -- Third Eye": "Counter" rate +35
REPLACE INTO `item_mods` VALUES (27175, 65, 40); --  Evasion+25
REPLACE INTO `item_mods` VALUES (27175, 8, 33); --  STR+21
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
REPLACE INTO `item_mods` VALUES (28227, 384, 41); -- Haste +4%
REPLACE INTO `item_mods` VALUES (28230, 2, 20); -- MP+20
REPLACE INTO `item_mods` VALUES (28230, 2, 28); -- HP+28
REPLACE INTO `item_mods` VALUES (28247, 384, 41); -- Haste +4%
REPLACE INTO `item_mods` VALUES (11958, 384, 30);
REPLACE INTO `item_mods` VALUES (18264, 507, 300); -- Occ. 3x dmg / was 2.5 wiki says 3x
REPLACE INTO `item_mods` VALUES (19001, 420, 10); -- Barrage accuracy
REPLACE INTO `item_mods` VALUES (19090, 420, 20); -- Barrage accuracy
REPLACE INTO `item_mods` VALUES (21111, 28, 60); -- Matt
REPLACE INTO `item_mods` VALUES (21173, 28, 120); -- Matt
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

-- ---------------- MATT shit (higher values than retail. temp leaving in)--------------------------------------

REPLACE INTO `item_mods` VALUES (21062, 28, 65); --
REPLACE INTO `item_mods` VALUES (21139, 28, 165); -- Should be 60   magic dmg +  unknown
REPLACE INTO `item_mods` VALUES (21140, 28, 185); -- Should be 60   magic dmg +  unknown
INSERT INTO `item_mods` VALUES (21144, 28, 100); --
REPLACE INTO `item_mods` VALUES (21161, 28, 135); -- Matt
REPLACE INTO `item_mods` VALUES (21176, 28, 120); -- Should be 18 see below
REPLACE INTO `item_mods` VALUES (21177, 28, 125); -- Matt
REPLACE INTO `item_mods` VALUES (21181, 28, 168); -- MATT
REPLACE INTO `item_mods` VALUES (21182, 28, 130); --  Magic Attack Bonus +25
REPLACE INTO `item_mods` VALUES (21194, 28, 95); -- Should be 19 see below
REPLACE INTO `item_mods` VALUES (21208, 28, 73); -- Should be 40   see below


-- -------------------- NEW ITEMS BELOW THIS LINE PLEASE ------------------------

-- alrunas_gloves_+1
INSERT INTO `item_mods` VALUES (28005, 1, 88);
INSERT INTO `item_mods` VALUES (28005, 2, 23);
INSERT INTO `item_mods` VALUES (28005, 8, 11);
INSERT INTO `item_mods` VALUES (28005, 9, 34);
INSERT INTO `item_mods` VALUES (28005, 10, 31);
INSERT INTO `item_mods` VALUES (28005, 11, 11);
INSERT INTO `item_mods` VALUES (28005, 12, 12);
INSERT INTO `item_mods` VALUES (28005, 13, 29);
INSERT INTO `item_mods` VALUES (28005, 14, 17);
INSERT INTO `item_mods` VALUES (28005, 26, 20);
INSERT INTO `item_mods` VALUES (28005, 23, 20);
INSERT INTO `item_mods` VALUES (28005, 68, 23);
INSERT INTO `item_mods` VALUES (28005, 31, 36);
INSERT INTO `item_mods` VALUES (28005, 29, 1);
INSERT INTO `item_mods` VALUES (28005, 384, 51);
INSERT INTO `item_mods` VALUES (28005, 365, 5);
INSERT INTO `item_mods` VALUES (28005, 162, 3);

INSERT INTO `item_mods` VALUES (28479, 67, 7);
INSERT INTO `item_mods` VALUES (28479, 66, 7);
INSERT INTO `item_mods` VALUES (28479, 27, -3);
INSERT INTO `item_mods` VALUES (28479, 73, 4);

INSERT INTO `item_mods` VALUES (28483, 2, 40);
INSERT INTO `item_mods` VALUES (28483, 27, 4);
INSERT INTO `item_mods` VALUES (28483, 291, 3);

INSERT INTO `item_mods` VALUES (27507, 64, 5);
INSERT INTO `item_mods` VALUES (27507, 28, 10);
INSERT INTO `item_mods` VALUES (27507, 27, -5);
INSERT INTO `item_mods` VALUES (27507, 296, 2);

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

-- Incarnation Sash
INSERT INTO `item_mods` VALUES (27740, 2, 34); --  Hit Points +34

--Iqabi Necklace (28380)
INSERT INTO `item_mods` VALUES (28380, 2, 10); --  Hit Points +10
INSERT INTO `item_mods` VALUES (28380, 55, -10); --  Ice Resistance -10
INSERT INTO `item_mods` VALUES (28380, 25, 13); --  Accuracy +13
INSERT INTO `item_mods` VALUES (28380, 26, 13); --  Ranged Accuracy +13

--Meekculler (20900)
INSERT INTO `item_mods` VALUES (20900, 8, 15); --  Strength +15
INSERT INTO `item_mods` VALUES (20900, 25, 15); --  Accuracy +15
INSERT INTO `item_mods` VALUES (20900, 23, 15); --  Attack +15
INSERT INTO `item_mods` VALUES (20900, 30, 15); --  Magic Accuracy +15
INSERT INTO `item_mods` VALUES (20900, 161, -4); --  Physical Damage Taken -4%

--Ghostfyre Cape (28621)
INSERT INTO `item_mods` VALUES (28621, 274, 6); --  Cure Potency +6%
INSERT INTO `item_mods` VALUES (28621, 311, 6); -- Magic Damage

--Hike Khat +1 (26785)
INSERT INTO `item_mods` VALUES (26785, 2, 36); --  Hit Points +36
INSERT INTO `item_mods` VALUES (26785, 5, 32); --  Mana Points +82 (This is the "unity ranking" and regular mana stat combined)
INSERT INTO `item_mods` VALUES (26785, 8, 14); --  Strength +14
INSERT INTO `item_mods` VALUES (26785, 9, 14); --  Dexterity +14
INSERT INTO `item_mods` VALUES (26785, 10, 14); --  Vitality +14
INSERT INTO `item_mods` VALUES (26785, 11, 14); --  Agility +14
INSERT INTO `item_mods` VALUES (26785, 12, 19); --  Intelligence +19
INSERT INTO `item_mods` VALUES (26785, 13, 19); --  Mind +19
INSERT INTO `item_mods` VALUES (26785, 14, 19); --  Charisma +19
INSERT INTO `item_mods` VALUES (26785, 68, 36); --  Evasion +36
INSERT INTO `item_mods` VALUES (26785, 31, 75); --  Magic Evasion +75
INSERT INTO `item_mods` VALUES (26785, 29, 5); --  Magic Defense Bonus +5
INSERT INTO `item_mods` VALUES (26785, 384, 60); --  Haste +6%
INSERT INTO `item_mods` VALUES (26785, 151, -3); -- Physical Damage Taken -3%

-- Brahmastra (21221)
INSERT INTO `item_mods` VALUES (21221, 2, 30); --  Hit Points +30
INSERT INTO `item_mods` VALUES (21221, 8, 10); --  Strength +10
INSERT INTO `item_mods` VALUES (21221, 11, 10); --  Agility +10
INSERT INTO `item_mods` VALUES (21221, 25, 20); --  Accuracy +20
INSERT INTO `item_mods` VALUES (21221, 26, 20); --  Ranged Accuracy +20
INSERT INTO `item_mods` VALUES (21221, 289, 5); --  Sublte Blow +5

-- Bane Cape (28620)
INSERT INTO `item_mods` VALUES (28620, 5, 90); -- Mana Points +90
INSERT INTO `item_mods` VALUES (28620, 30, 10); --  Magic Accuracy +10
INSERT INTO `item_mods` VALUES (28620, 311, 10); -- Magic Damage
INSERT INTO `item_mods` VALUES (28620, 27, -2); --  Enmity -20

-- Macabre Gauntlets +1 (27994)
INSERT INTO `item_mods` VALUES (27994, 2, 29); --  Hit Points +89 (This is the "unity ranking" and regular hit point stat combined)
INSERT INTO `item_mods` VALUES (27994, 8, 10); --  Strength +10
INSERT INTO `item_mods` VALUES (27994, 9, 29); -- Dexterity +29
INSERT INTO `item_mods` VALUES (27994, 10, 33); --  Vitality +33
INSERT INTO `item_mods` VALUES (27994, 12, 8); --  Intelligencce +8
INSERT INTO `item_mods` VALUES (27994, 13, 25); --  Mind +25
INSERT INTO `item_mods` VALUES (27994, 14, 19); --  Charisma +19
INSERT INTO `item_mods` VALUES (27994, 68, 22); -- Evasion +22
INSERT INTO `item_mods` VALUES (27994, 31, 26); --  Magic Evasion +26
INSERT INTO `item_mods` VALUES (27994, 384, 40); --  Haste +4%
INSERT INTO `item_mods` VALUES (27994, 27, 7); --  Enmity +7
INSERT INTO `item_mods` VALUES (27994, 29, 1); -- Magic Defense Bonus +1
INSERT INTO `item_mods` VALUES (27994, 274, 11); --  Cure Potency +11%
INSERT INTO `item_mods` VALUES (27994, 151, -4); --  Physical Damage Taken -4%

-- Mindmelter (21161)
INSERT INTO `item_mods` VALUES (21161, 12, 20); --  Intelligence +20 (Made this 20 because of the poison stat)
INSERT INTO `item_mods` VALUES (21161, 13, 20); --  Mind +20 (Made this 20 because of the poison stat)
INSERT INTO `item_mods` VALUES (21161, 28, 43); --  Magic Attack Bonus +43 (Made this 43 because of the point stat)
-- Skipped Magic Damage
INSERT INTO `item_mods` VALUES (21161, 30, 15); --  Magic Accuracy +15
INSERT INTO `item_mods` VALUES (21161, 296, 4); --  Conserve MP +4

-- Acclimator (20715)
INSERT INTO `item_mods` VALUES (20715, 25, 15); --  Accuracy +15
INSERT INTO `item_mods` VALUES (20715, 30, 15); --  Magic Accuracy +15
INSERT INTO `item_mods` VALUES (20715, 311, 96); -- Magic Damage
INSERT INTO `item_mods` VALUES (20715, 174, 10); --  Skill Chain Bonus +10

-- Mending Cape (28619)
INSERT INTO `item_mods` VALUES (28619, 27, -6);  -- Enmity -6
INSERT INTO `item_mods` VALUES (28619, 310, 1); --  Enhancing Cursna effect (Didnt know what to make it, set to 1)

-- Augury Cuisses +1 (28137)
INSERT INTO `item_mods` VALUES (28137, 2, 50); --  Hit Points +50
INSERT INTO `item_mods` VALUES (28137, 8, 30); --  Strength +30
INSERT INTO `item_mods` VALUES (28137, 10, 17); --  Vitality +10
INSERT INTO `item_mods` VALUES (28137, 11, 17); -- Agility +17
INSERT INTO `item_mods` VALUES (28137, 12, 33); -- Intelligence +33
INSERT INTO `item_mods` VALUES (28137, 13, 20); --  Mind +20
INSERT INTO `item_mods` VALUES (28137, 14, 16); -- Charisma +16
INSERT INTO `item_mods` VALUES (28137, 23, 16); --  Attack +16
INSERT INTO `item_mods` VALUES (28137, 28, 16); -- Magic Attack Bonus +16
INSERT INTO `item_mods` VALUES (28137, 68, 27); --  Evasion +27
INSERT INTO `item_mods` VALUES (28137, 31, 80); --  Magic Evasion +80
INSERT INTO `item_mods` VALUES (28137, 29, 4); --  Magic Defense Bonus +4
INSERT INTO `item_mods` VALUES (28137, 384, 60); --  Haste +6%
INSERT INTO `item_mods` VALUES (28137, 296, 7); --  Conserve MP +7
INSERT INTO `item_mods` VALUES (28137, 288, 3); --  Double Attack +3%

-- Achiuchikapu (20986)
INSERT INTO `item_mods` VALUES (20986, 25, 34); -- Accuracy +34
INSERT INTO `item_mods` VALUES (20986, 68, 27); --  Evasion +27
INSERT INTO `item_mods` VALUES (20986, 288, 4); -- Double Attack +4%
INSERT INTO `item_mods` VALUES (20986, 73, 5); -- Store TP +5
INSERT INTO `item_mods` VALUES (20986, 289, 8); -- Subtle Blow +8

-- Anchoret's Mantle (28618)
INSERT INTO `item_mods` VALUES (28618, 2, 80); -- Hit Points +80
INSERT INTO `item_mods` VALUES (28618, 10, 5); --  Vitality +5
INSERT INTO `item_mods` VALUES (28618, 25, 20); -- Accuracy +20
INSERT INTO `item_mods` VALUES (28618, 23, 15); -- Attack +15