-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_mods.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

INSERT INTO `item_mods` VALUES(10409, 1, 30);
INSERT INTO `item_mods` VALUES(10409, 13, 10);
INSERT INTO `item_mods` VALUES(10409, 112, 10);
INSERT INTO `item_mods` VALUES(10409, 27, -5);

INSERT INTO `item_mods` VALUES(10523, 1, 31);
INSERT INTO `item_mods` VALUES(10523, 8, 9);
INSERT INTO `item_mods` VALUES(10523, 10, 9);
INSERT INTO `item_mods` VALUES(10523, 12, 9);
INSERT INTO `item_mods` VALUES(10523, 13, 9);
INSERT INTO `item_mods` VALUES(10523, 23, 15);
INSERT INTO `item_mods` VALUES(10523, 288, 2);

INSERT INTO `item_mods` VALUES(10528, 1, 28);
INSERT INTO `item_mods` VALUES(10528, 9, 8);
INSERT INTO `item_mods` VALUES(10528, 10, 8);
INSERT INTO `item_mods` VALUES(10528, 11, 8);
INSERT INTO `item_mods` VALUES(10528, 25, 9);
INSERT INTO `item_mods` VALUES(10528, 170, 40);
INSERT INTO `item_mods` VALUES(10528, 384, 30);

INSERT INTO `item_mods` VALUES(10533, 1, 24);
INSERT INTO `item_mods` VALUES(10533, 6, 3);
INSERT INTO `item_mods` VALUES(10533, 28, 13);
INSERT INTO `item_mods` VALUES(10533, 71, 4);
INSERT INTO `item_mods` VALUES(10533, 312, 8);

INSERT INTO `item_mods` VALUES(10554, 1, 51);
INSERT INTO `item_mods` VALUES(10554, 9, 10);
INSERT INTO `item_mods` VALUES(10554, 10, 10);
INSERT INTO `item_mods` VALUES(10554, 23, 24);
INSERT INTO `item_mods` VALUES(10554, 73, 6);
INSERT INTO `item_mods` VALUES(10554, 384, 60);

INSERT INTO `item_mods` VALUES(10559, 1, 47);
INSERT INTO `item_mods` VALUES(10559, 2, 40);
INSERT INTO `item_mods` VALUES(10559, 8, 9);
INSERT INTO `item_mods` VALUES(10559, 11, 9);
INSERT INTO `item_mods` VALUES(10559, 25, 14);
INSERT INTO `item_mods` VALUES(10559, 23, 14);
INSERT INTO `item_mods` VALUES(10559, 384, 60);

INSERT INTO `item_mods` VALUES(10564, 1, 42);
INSERT INTO `item_mods` VALUES(10564, 3, 4);
INSERT INTO `item_mods` VALUES(10564, 6, 4);
INSERT INTO `item_mods` VALUES(10564, 13, 14);

INSERT INTO `item_mods` VALUES(10597, 1, 38);
INSERT INTO `item_mods` VALUES(10597, 12, 13);
INSERT INTO `item_mods` VALUES(10597, 28, 6);
INSERT INTO `item_mods` VALUES(10597, 115, 8);
INSERT INTO `item_mods` VALUES(10697, 27, -2);

INSERT INTO `item_mods` VALUES(10620, 1, 28);
INSERT INTO `item_mods` VALUES(10620, 25, 12);
INSERT INTO `item_mods` VALUES(10620, 288, 3);
INSERT INTO `item_mods` VALUES(10620, 161, -5);

INSERT INTO `item_mods` VALUES(10625, 1, 26);
INSERT INTO `item_mods` VALUES(10625, 9, 9);
INSERT INTO `item_mods` VALUES(10625, 11, 9);
INSERT INTO `item_mods` VALUES(10625, 13, 9);
INSERT INTO `item_mods` VALUES(10625, 23, 14);
INSERT INTO `item_mods` VALUES(10625, 24, 14);
INSERT INTO `item_mods` VALUES(10625, 288, 3);

INSERT INTO `item_mods` VALUES(10630, 1, 21);
INSERT INTO `item_mods` VALUES(10630, 3, 3);
INSERT INTO `item_mods` VALUES(10630, 6, 3);
INSERT INTO `item_mods` VALUES(10630, 13, 8);
INSERT INTO `item_mods` VALUES(10630, 14, 8);
INSERT INTO `item_mods` VALUES(10630, 30, 7);
INSERT INTO `item_mods` VALUES(10630, 28, 7);

INSERT INTO `item_mods` VALUES(10750, 11, -4); 
INSERT INTO `item_mods` VALUES(10750, 23, 8);
INSERT INTO `item_mods` VALUES(10750, 73, 4);

INSERT INTO `item_mods` VALUES(10819, 1, 12); -- def +12
INSERT INTO `item_mods` VALUES(10819, 161, -4); -- phy dmg taken -4%
INSERT INTO `item_mods` VALUES(10819, 426, 2); -- convert dmg > MP 2%

INSERT INTO `item_mods` VALUES(10901, 1, 36); -- def
INSERT INTO `item_mods` VALUES(10901, 25, 10); -- acc
INSERT INTO `item_mods` VALUES(10901, 23, 10); -- atk
INSERT INTO `item_mods` VALUES(10901, 73, 5); -- store tp
INSERT INTO `item_mods` VALUES(10901, 384, 70); -- gear haste
INSERT INTO `item_mods` VALUES(10901, 289, 5); -- sub blow

INSERT INTO `item_mods` VALUES(10906, 1, 34);
INSERT INTO `item_mods` VALUES(10906, 8, 6);
INSERT INTO `item_mods` VALUES(10906, 11, 14);
INSERT INTO `item_mods` VALUES(10906, 24, 6);
INSERT INTO `item_mods` VALUES(10906, 30, 6);
INSERT INTO `item_mods` VALUES(10906, 28, 6);
INSERT INTO `item_mods` VALUES(10906, 165, 4);

INSERT INTO `item_mods` VALUES(10911, 1, 29);
INSERT INTO `item_mods` VALUES(10911, 12, 12);
INSERT INTO `item_mods` VALUES(10911, 28, 5);
INSERT INTO `item_mods` VALUES(10911, 170, 10);

INSERT INTO `item_mods` VALUES(11037, 57, 10);

INSERT INTO `item_mods` VALUES(11580, 2, 12);
INSERT INTO `item_mods` VALUES(11580, 27, -2);

INSERT INTO `item_mods` VALUES(16002, 374, 5);
INSERT INTO `item_mods` VALUES(16002, 491, 5);

REPLACE INTO `item_mods` VALUES(18852, 289, 50); -- MODDED OCTAVE CLUB

-- Iztaasu
INSERT INTO `item_mods` VALUES(20742, 82, 54); 
INSERT INTO `item_mods` VALUES(20742, 110, 54);
INSERT INTO `item_mods` VALUES(20742, 30, 42);

-- Ukudyoni
INSERT INTO `item_mods` VALUES(20762, 83, 242); -- GS skill
INSERT INTO `item_mods` VALUES(20762, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20762, 30, 188); -- Macc

-- Honed Tathlum
INSERT INTO `item_mods` VALUES(21389, 25, 15); -- acc

-- Mephitis Grip
INSERT INTO `item_mods` VALUES(21429, 30, 5); -- Macc
INSERT INTO `item_mods` VALUES(21429, 114, 5); -- Enfeebling skill

-- Shneddick Chapeau
INSERT INTO `item_mods` VALUES(27752, 1, 63); -- def
INSERT INTO `item_mods` VALUES(27752, 2, 11); -- hp
INSERT INTO `item_mods` VALUES(27752, 5, 18); -- mp
INSERT INTO `item_mods` VALUES(27752, 8, 15); -- str
INSERT INTO `item_mods` VALUES(27752, 9, 17); -- dex
INSERT INTO `item_mods` VALUES(27752, 10, 15); -- vit
INSERT INTO `item_mods` VALUES(27752, 11, 17); -- agi
INSERT INTO `item_mods` VALUES(27752, 12, 15); -- int
INSERT INTO `item_mods` VALUES(27752, 13, 15); -- mnd
INSERT INTO `item_mods` VALUES(27752, 14, 15); -- chr
INSERT INTO `item_mods` VALUES(27752, 68, 18); -- eva
INSERT INTO `item_mods` VALUES(27752, 31, 31); -- Meva
INSERT INTO `item_mods` VALUES(27752, 384, 70); -- gear haste 

-- Gorney Morion
INSERT INTO `item_mods` VALUES(27761, 1, 71); -- def
INSERT INTO `item_mods` VALUES(27761, 2, 12); -- hp
INSERT INTO `item_mods` VALUES(27761, 5, 18); -- mp
INSERT INTO `item_mods` VALUES(27761, 8, 19); -- str
INSERT INTO `item_mods` VALUES(27761, 9, 16); -- dex
INSERT INTO `item_mods` VALUES(27761, 10, 19); -- vit
INSERT INTO `item_mods` VALUES(27761, 11, 16); -- agi
INSERT INTO `item_mods` VALUES(27761, 12, 6); -- int
INSERT INTO `item_mods` VALUES(27761, 13, 6); -- mnd
INSERT INTO `item_mods` VALUES(27761, 14, 6); -- chr
INSERT INTO `item_mods` VALUES(27761, 68, 9); -- eva
INSERT INTO `item_mods` VALUES(27761, 31, 18); -- Meva
INSERT INTO `item_mods` VALUES(27761, 384, 60); -- gear haste

-- Weatherspoon Corona
INSERT INTO `item_mods` VALUES(27763, 1, 60); -- def
INSERT INTO `item_mods` VALUES(27763, 2, 21); -- hp
INSERT INTO `item_mods` VALUES(27763, 5, 35); -- mp
INSERT INTO `item_mods` VALUES(27763, 12, 17); -- int
INSERT INTO `item_mods` VALUES(27763, 13, 17); -- mnd
INSERT INTO `item_mods` VALUES(27763, 14, 17); -- chr
INSERT INTO `item_mods` VALUES(27763, 30, 10); -- Macc
INSERT INTO `item_mods` VALUES(27763, 68, 10); -- eva
INSERT INTO `item_mods` VALUES(27763, 31, 43); -- Meva
INSERT INTO `item_mods` VALUES(27763, 29, 1); -- MDB
INSERT INTO `item_mods` VALUES(27763, 384, 50); -- gear haste

-- Uk'uxkaj Cap
INSERT INTO `item_mods` VALUES(27766, 1, 95); -- def
INSERT INTO `item_mods` VALUES(27766, 2, 28); -- hp
INSERT INTO `item_mods` VALUES(27766, 5, 22); -- mp
INSERT INTO `item_mods` VALUES(27766, 8, 22); -- str
INSERT INTO `item_mods` VALUES(27766, 9, 25); -- dex
INSERT INTO `item_mods` VALUES(27766, 10, 22); -- vit
INSERT INTO `item_mods` VALUES(27766, 11, 25); -- agl
INSERT INTO `item_mods` VALUES(27766, 12, 22); -- int
INSERT INTO `item_mods` VALUES(27766, 13, 22); -- mnd
INSERT INTO `item_mods` VALUES(27766, 14, 23); -- chr
INSERT INTO `item_mods` VALUES(27766, 68, 34); -- eva
INSERT INTO `item_mods` VALUES(27766, 31, 46); -- Meva
INSERT INTO `item_mods` VALUES(27766, 29, 2); -- MDB
INSERT INTO `item_mods` VALUES(27766, 165, 3); -- crit %
INSERT INTO `item_mods` VALUES(27766, 384, 70); -- haste gear 

INSERT INTO `item_mods` VALUES(27779, 1, 72);
INSERT INTO `item_mods` VALUES(27779, 2, 12);
INSERT INTO `item_mods` VALUES(27779, 5, 18);
INSERT INTO `item_mods` VALUES(27779, 8, 20);
INSERT INTO `item_mods` VALUES(27779, 9, 12);
INSERT INTO `item_mods` VALUES(27779, 10, 15);
INSERT INTO `item_mods` VALUES(27779, 11, 12);
INSERT INTO `item_mods` VALUES(27779, 12, 11);
INSERT INTO `item_mods` VALUES(27779, 13, 11);
INSERT INTO `item_mods` VALUES(27779, 14, 11);
INSERT INTO `item_mods` VALUES(27779, 23, 20);
INSERT INTO `item_mods` VALUES(27779, 68, 9);
INSERT INTO `item_mods` VALUES(27779, 31, 18);
INSERT INTO `item_mods` VALUES(27779, 288, 2);
INSERT INTO `item_mods` VALUES(27779, 384, 70);

INSERT INTO `item_mods` VALUES(27781, 1, 61);
INSERT INTO `item_mods` VALUES(27781, 2, 11);
INSERT INTO `item_mods` VALUES(27781, 5, 70);
INSERT INTO `item_mods` VALUES(27781, 8, 11);
INSERT INTO `item_mods` VALUES(27781, 9, 11);
INSERT INTO `item_mods` VALUES(27781, 10, 11);
INSERT INTO `item_mods` VALUES(27781, 11, 11);
INSERT INTO `item_mods` VALUES(27781, 12, 20);
INSERT INTO `item_mods` VALUES(27781, 13, 20);
INSERT INTO `item_mods` VALUES(27781, 14, 20);
INSERT INTO `item_mods` VALUES(27781, 30, 15);
INSERT INTO `item_mods` VALUES(27781, 68, 10);
INSERT INTO `item_mods` VALUES(27781, 29, 1);
INSERT INTO `item_mods` VALUES(27781, 31, 43);
INSERT INTO `item_mods` VALUES(27781, 384, 50);

-- Gorney Haubert
INSERT INTO `item_mods` VALUES(27907, 1, 90); -- def
INSERT INTO `item_mods` VALUES(27907, 2, 20); -- hp
INSERT INTO `item_mods` VALUES(27907, 5, 27); -- mp
INSERT INTO `item_mods` VALUES(27907, 8, 20); -- str
INSERT INTO `item_mods` VALUES(27907, 9, 15); -- dex
INSERT INTO `item_mods` VALUES(27907, 10, 20); -- vit
INSERT INTO `item_mods` VALUES(27907, 11, 15); -- agi
INSERT INTO `item_mods` VALUES(27907, 12, 15); -- int
INSERT INTO `item_mods` VALUES(27907, 13, 15); -- mnd
INSERT INTO `item_mods` VALUES(27907, 14, 15); -- chr
INSERT INTO `item_mods` VALUES(27907, 25, 15); -- acc
INSERT INTO `item_mods` VALUES(27907, 68, 12); -- eva
INSERT INTO `item_mods` VALUES(27907, 31, 28); -- Meva
INSERT INTO `item_mods` VALUES(27907, 29, 1); -- MDB
INSERT INTO `item_mods` VALUES(27907, 288, 2); -- double atk
INSERT INTO `item_mods` VALUES(27907, 384, 30); -- gear haste
-- Shneddick Tabard
INSERT INTO `item_mods` VALUES(27908, 1, 82); -- def
INSERT INTO `item_mods` VALUES(27908, 2, 18); -- hp
INSERT INTO `item_mods` VALUES(27908, 5, 34); -- mp
INSERT INTO `item_mods` VALUES(27908, 8, 17); -- str
INSERT INTO `item_mods` VALUES(27908, 9, 20); -- dex
INSERT INTO `item_mods` VALUES(27908, 10, 17); -- vit
INSERT INTO `item_mods` VALUES(27908, 11, 19); -- agi
INSERT INTO `item_mods` VALUES(27908, 12, 17); -- int
INSERT INTO `item_mods` VALUES(27908, 13, 17); -- mnd
INSERT INTO `item_mods` VALUES(27908, 14, 17); -- chr
INSERT INTO `item_mods` VALUES(27908, 25, 15); -- acc
INSERT INTO `item_mods` VALUES(27908, 68, 14); -- eva
INSERT INTO `item_mods` VALUES(27908, 31, 37); -- Meva
INSERT INTO `item_mods` VALUES(27908, 29, 2); -- MDB
INSERT INTO `item_mods` VALUES(27908, 384, 50); -- gear haste
-- Weatherspoon Robe
INSERT INTO `item_mods` VALUES(27909, 1, 78); -- def
INSERT INTO `item_mods` VALUES(27909, 2, 17); -- hp
INSERT INTO `item_mods` VALUES(27909, 5, 46); -- mp
INSERT INTO `item_mods` VALUES(27909, 8, 16); -- str
INSERT INTO `item_mods` VALUES(27909, 9, 16); -- dex
INSERT INTO `item_mods` VALUES(27909, 10, 16); -- vit
INSERT INTO `item_mods` VALUES(27909, 11, 16); -- agi
INSERT INTO `item_mods` VALUES(27909, 12, 20); -- int
INSERT INTO `item_mods` VALUES(27909, 13, 20); -- mnd
INSERT INTO `item_mods` VALUES(27909, 14, 20); -- chr
-- INSERT INTO `item_mods` VALUES(27909, ???, 10); -- magic dmg +     unknown
INSERT INTO `item_mods` VALUES(27909, 28, 10); -- MAB added to replace above
INSERT INTO `item_mods` VALUES(27909, 68, 12); -- eva
INSERT INTO `item_mods` VALUES(27909, 31, 47); -- Meva
INSERT INTO `item_mods` VALUES(27909, 29, 2); -- MDB
INSERT INTO `item_mods` VALUES(27909, 384, 20); -- gear haste


-- Pak Corselet +1
INSERT INTO `item_mods` VALUES(27921, 1, 69); -- def
INSERT INTO `item_mods` VALUES(27921, 2, 3); -- hp
INSERT INTO `item_mods` VALUES(27921, 5, 30); -- mp
INSERT INTO `item_mods` VALUES(27921, 8, 17); -- str
INSERT INTO `item_mods` VALUES(27921, 9, 10); -- dex
INSERT INTO `item_mods` VALUES(27921, 10, 8); -- vit
INSERT INTO `item_mods` VALUES(27921, 11, 9); -- agi
INSERT INTO `item_mods` VALUES(27921, 12, 7); -- int
INSERT INTO `item_mods` VALUES(27921, 13, 7); -- mnd
INSERT INTO `item_mods` VALUES(27921, 14, 7); -- chr
INSERT INTO `item_mods` VALUES(27921, 25, 19); -- acc
INSERT INTO `item_mods` VALUES(27921, 23, 19); -- atk
INSERT INTO `item_mods` VALUES(27921, 68, 1); -- eva
INSERT INTO `item_mods` VALUES(27921, 31, 27); -- Meva
INSERT INTO `item_mods` VALUES(27921, 78, 4); -- store TP
INSERT INTO `item_mods` VALUES(27921, 288, 4); -- double atk
INSERT INTO `item_mods` VALUES(27921, 384, 30); -- gear haste

-- Gorney Moufles
INSERT INTO `item_mods` VALUES(28046, 1, 63); -- def
INSERT INTO `item_mods` VALUES(28046, 2, 25); -- hp
INSERT INTO `item_mods` VALUES(28046, 8, 5); -- str
INSERT INTO `item_mods` VALUES(28046, 9, 15); -- dex
INSERT INTO `item_mods` VALUES(28046, 10, 17); -- vit
INSERT INTO `item_mods` VALUES(28046, 12, 4); -- int
INSERT INTO `item_mods` VALUES(28046, 13, 13); -- mnd
INSERT INTO `item_mods` VALUES(28046, 14, 10); -- chr
INSERT INTO `item_mods` VALUES(28046, 23, 10); -- atk
INSERT INTO `item_mods` VALUES(28046, 68, 6); -- eva
INSERT INTO `item_mods` VALUES(28046, 31, 15); -- Meva
INSERT INTO `item_mods` VALUES(28046, 384, 40); -- gear haste
-- Shneddick Gloves
INSERT INTO `item_mods` VALUES(28047, 1, 56); -- def
INSERT INTO `item_mods` VALUES(28047, 2, 30); -- hp
INSERT INTO `item_mods` VALUES(28047, 8, 6); -- str
INSERT INTO `item_mods` VALUES(28047, 9, 19); -- dex
INSERT INTO `item_mods` VALUES(28047, 10, 17); -- vit
INSERT INTO `item_mods` VALUES(28047, 11, 2); -- agi
INSERT INTO `item_mods` VALUES(28047, 12, 6); -- int
INSERT INTO `item_mods` VALUES(28047, 13, 16); -- mnd
INSERT INTO `item_mods` VALUES(28047, 14, 9); -- chr
INSERT INTO `item_mods` VALUES(28047, 26, 10); -- Racc
INSERT INTO `item_mods` VALUES(28047, 68, 7); -- eva
INSERT INTO `item_mods` VALUES(28047, 31, 21); -- Meva
INSERT INTO `item_mods` VALUES(28047, 384, 40); -- gear haste
-- Weatherspoon Cuffs
INSERT INTO `item_mods` VALUES(28048, 1, 52); -- def
INSERT INTO `item_mods` VALUES(28048, 2, 22); -- hp
INSERT INTO `item_mods` VALUES(28048, 5, 26); -- mp
INSERT INTO `item_mods` VALUES(28048, 8, 3); -- str
INSERT INTO `item_mods` VALUES(28048, 9, 14); -- dex
INSERT INTO `item_mods` VALUES(28048, 10, 13); -- vit
INSERT INTO `item_mods` VALUES(28048, 11, 2); -- agi
INSERT INTO `item_mods` VALUES(28048, 12, 10); -- int
INSERT INTO `item_mods` VALUES(28048, 13, 17); -- mnd
INSERT INTO `item_mods` VALUES(28048, 14, 10); -- chr
INSERT INTO `item_mods` VALUES(28048, 68, 6); -- eva
INSERT INTO `item_mods` VALUES(28048, 31, 21); -- Meva
INSERT INTO `item_mods` VALUES(28048, 29, 1); -- MDB
INSERT INTO `item_mods` VALUES(28048, 374, 8); -- cure potency +%
INSERT INTO `item_mods` VALUES(28048, 384, 30); -- gear haste

-- Buremte Gloves
INSERT INTO `item_mods` VALUES(28050, 1, 74); -- def
INSERT INTO `item_mods` VALUES(28050, 2, 19); -- hp
INSERT INTO `item_mods` VALUES(28050, 8, 9); -- str
INSERT INTO `item_mods` VALUES(28050, 9, 31); -- dex
INSERT INTO `item_mods` VALUES(28050, 10, 27); -- vit
INSERT INTO `item_mods` VALUES(28050, 11, 4); -- agi
INSERT INTO `item_mods` VALUES(28050, 12, 11); -- int
INSERT INTO `item_mods` VALUES(28050, 13, 26); -- mnd
INSERT INTO `item_mods` VALUES(28050, 14, 15); -- chr
INSERT INTO `item_mods` VALUES(28050, 25, 20); -- acc
INSERT INTO `item_mods` VALUES(28050, 26, 20); -- Racc
INSERT INTO `item_mods` VALUES(28050, 68, 19); -- eva
INSERT INTO `item_mods` VALUES(28050, 31, 32); -- Meva
INSERT INTO `item_mods` VALUES(28050, 29, 1); -- MDB
INSERT INTO `item_mods` VALUES(28050, 384, 30); -- haste gear
INSERT INTO `item_mods` VALUES(28050, 375, 13); -- cure received %

INSERT INTO `item_mods` VALUES(28061, 1, 53);
INSERT INTO `item_mods` VALUES(28061, 2, 7); 
INSERT INTO `item_mods` VALUES(28061, 5, 70); 
INSERT INTO `item_mods` VALUES(28061, 8, 3); 
INSERT INTO `item_mods` VALUES(28061, 9, 14);
INSERT INTO `item_mods` VALUES(28061, 10, 13);
INSERT INTO `item_mods` VALUES(28061, 11, 2);
INSERT INTO `item_mods` VALUES(28061, 12, 10);
INSERT INTO `item_mods` VALUES(28061, 13, 17);
INSERT INTO `item_mods` VALUES(28061, 14, 10); 
INSERT INTO `item_mods` VALUES(28061, 30, 8);
INSERT INTO `item_mods` VALUES(28061, 28, 13);
INSERT INTO `item_mods` VALUES(28061, 68, 6); 
INSERT INTO `item_mods` VALUES(28061, 29, 1); 
INSERT INTO `item_mods` VALUES(28061, 31, 21);
INSERT INTO `item_mods` VALUES(28061, 384, 20);


-- Gorney Brayettes
INSERT INTO `item_mods` VALUES(28188, 1, 78); -- def
INSERT INTO `item_mods` VALUES(28188, 2, 30); -- hp
INSERT INTO `item_mods` VALUES(28188, 8, 19); -- str
INSERT INTO `item_mods` VALUES(28188, 10, 11); -- vit
INSERT INTO `item_mods` VALUES(28188, 11, 8); -- agi
INSERT INTO `item_mods` VALUES(28188, 12, 13); -- int
INSERT INTO `item_mods` VALUES(28188, 13, 6); -- mnd
INSERT INTO `item_mods` VALUES(28188, 14, 5); -- chr
INSERT INTO `item_mods` VALUES(28188, 68, 16); -- eva
INSERT INTO `item_mods` VALUES(28188, 31, 37); -- Meva
INSERT INTO `item_mods` VALUES(28188, 29, 3); -- MDB
INSERT INTO `item_mods` VALUES(28188, 384, 40); -- gear haste
-- Shneddick Tights
INSERT INTO `item_mods` VALUES(28189, 1, 71); -- def
INSERT INTO `item_mods` VALUES(28189, 2, 15); -- hp
INSERT INTO `item_mods` VALUES(28189, 8, 15); -- str
INSERT INTO `item_mods` VALUES(28189, 10, 8); -- vit
INSERT INTO `item_mods` VALUES(28189, 11, 10); -- agi
INSERT INTO `item_mods` VALUES(28189, 12, 16); -- int
INSERT INTO `item_mods` VALUES(28189, 13, 9); -- mnd
INSERT INTO `item_mods` VALUES(28189, 14, 6); -- chr
INSERT INTO `item_mods` VALUES(28189, 28, 15); -- MAB
INSERT INTO `item_mods` VALUES(28189, 68, 11); -- eva
INSERT INTO `item_mods` VALUES(28189, 31, 40); -- Meva
INSERT INTO `item_mods` VALUES(28189, 29, 1); -- MDB
-- Weatherspoon Pants
INSERT INTO `item_mods` VALUES(28190, 1, 67); -- def
INSERT INTO `item_mods` VALUES(28190, 2, 23); -- hp
INSERT INTO `item_mods` VALUES(28190, 5, 33); -- mp
INSERT INTO `item_mods` VALUES(28190, 8, 13); -- str
INSERT INTO `item_mods` VALUES(28190, 10, 6); -- vit
INSERT INTO `item_mods` VALUES(28190, 11, 9); -- agi
INSERT INTO `item_mods` VALUES(28190, 12, 18); -- int
INSERT INTO `item_mods` VALUES(28190, 13, 12); -- mnd
INSERT INTO `item_mods` VALUES(28190, 14, 10); -- chr
INSERT INTO `item_mods` VALUES(28190, 68, 9); -- eva
INSERT INTO `item_mods` VALUES(28190, 31, 62); -- Meva
INSERT INTO `item_mods` VALUES(28190, 29, 2); -- MDB
INSERT INTO `item_mods` VALUES(28190, 27, -5); -- enmity
INSERT INTO `item_mods` VALUES(28190, 384, 30); -- gear haste

INSERT INTO `item_mods` VALUES(28201, 1, 72);
INSERT INTO `item_mods` VALUES(28201, 2, 15);
INSERT INTO `item_mods` VALUES(28201, 8, 15);
INSERT INTO `item_mods` VALUES(28201, 10, 8);
INSERT INTO `item_mods` VALUES(28201, 11, 15);
INSERT INTO `item_mods` VALUES(28201, 12, 16);
INSERT INTO `item_mods` VALUES(28201, 13, 9);
INSERT INTO `item_mods` VALUES(28201, 14, 6);
INSERT INTO `item_mods` VALUES(28201, 25, 10);
INSERT INTO `item_mods` VALUES(28201, 23, 10);
INSERT INTO `item_mods` VALUES(28201, 68, 11);
INSERT INTO `item_mods` VALUES(28201, 29, 1);
INSERT INTO `item_mods` VALUES(28201, 31, 40);
INSERT INTO `item_mods` VALUES(28201, 384, 70);

-- Gorney Sollerets
INSERT INTO `item_mods` VALUES(28327, 1, 52); -- def
INSERT INTO `item_mods` VALUES(28327, 2, 27); -- hp
INSERT INTO `item_mods` VALUES(28327, 8, 12); -- str
INSERT INTO `item_mods` VALUES(28327, 9, 10); -- dex
INSERT INTO `item_mods` VALUES(28327, 10, 9); -- vit
INSERT INTO `item_mods` VALUES(28327, 11, 15); -- agi
INSERT INTO `item_mods` VALUES(28327, 13, 5); -- mnd
INSERT INTO `item_mods` VALUES(28327, 14, 14); -- chr
INSERT INTO `item_mods` VALUES(28327, 25, 13); -- acc
INSERT INTO `item_mods` VALUES(28327, 23, 13); -- atk
INSERT INTO `item_mods` VALUES(28327, 68, 14); -- eva
INSERT INTO `item_mods` VALUES(28327, 31, 37); -- Meva
INSERT INTO `item_mods` VALUES(28327, 161, -3); -- phy dmg taken
INSERT INTO `item_mods` VALUES(28327, 384, 30); -- gear haste
-- Shneddick Boots
INSERT INTO `item_mods` VALUES(28328, 1, 45); -- def
INSERT INTO `item_mods` VALUES(28328, 2, 25); -- hp
INSERT INTO `item_mods` VALUES(28328, 8, 6); -- str
INSERT INTO `item_mods` VALUES(28328, 9, 12); -- dex
INSERT INTO `item_mods` VALUES(28328, 10, 6); -- vit
INSERT INTO `item_mods` VALUES(28328, 11, 19); -- agi
INSERT INTO `item_mods` VALUES(28328, 13, 6); -- mnd
INSERT INTO `item_mods` VALUES(28328, 14, 16); -- chr
INSERT INTO `item_mods` VALUES(28328, 30, 15); -- Macc
INSERT INTO `item_mods` VALUES(28328, 68, 21); -- eva
INSERT INTO `item_mods` VALUES(28328, 31, 40); -- Meva
INSERT INTO `item_mods` VALUES(28328, 29, 1); -- MDB
INSERT INTO `item_mods` VALUES(28328, 384, 40); -- gear haste
-- Weatherspoon Souliers
INSERT INTO `item_mods` VALUES(28329, 1, 41); -- def
INSERT INTO `item_mods` VALUES(28329, 2, 20); -- hp
INSERT INTO `item_mods` VALUES(28329, 5, 27); -- mp
INSERT INTO `item_mods` VALUES(28329, 8, 5); -- str
INSERT INTO `item_mods` VALUES(28329, 9, 6); -- dex
INSERT INTO `item_mods` VALUES(28329, 10, 5); -- vit
INSERT INTO `item_mods` VALUES(28329, 11, 17); -- agi
INSERT INTO `item_mods` VALUES(28329, 12, 9); -- int
INSERT INTO `item_mods` VALUES(28329, 13, 10); -- mnd
INSERT INTO `item_mods` VALUES(28329, 14, 18); -- chr
INSERT INTO `item_mods` VALUES(28329, 28, 10); -- MAB
INSERT INTO `item_mods` VALUES(28329, 68, 16); -- eva
INSERT INTO `item_mods` VALUES(28329, 31, 62); -- Meva
INSERT INTO `item_mods` VALUES(28329, 29, 1); -- MDB
INSERT INTO `item_mods` VALUES(28329, 384, 30); -- gear haste

-- Uk'uxkaj Boots
INSERT INTO `item_mods` VALUES(28331, 1, 58); -- def
INSERT INTO `item_mods` VALUES(28331, 2, 10); -- hp
INSERT INTO `item_mods` VALUES(28331, 5, 13); -- mp
INSERT INTO `item_mods` VALUES(28331, 8, 8); -- str
INSERT INTO `item_mods` VALUES(28331, 9, 9); -- dex
INSERT INTO `item_mods` VALUES(28331, 10, 8); -- vit
INSERT INTO `item_mods` VALUES(28331, 11, 8); -- agi
INSERT INTO `item_mods` VALUES(28331, 12, 15); -- int
INSERT INTO `item_mods` VALUES(28331, 13, 16); -- mnd
INSERT INTO `item_mods` VALUES(28331, 14, 29); -- chr
INSERT INTO `item_mods` VALUES(28331, 68, 43); -- eva
INSERT INTO `item_mods` VALUES(28331, 31, 93); -- Meva
INSERT INTO `item_mods` VALUES(28331, 29, 4); -- MDB
-- INSERT INTO `item_mods` VALUES(28331, ???, ?); -- enhances enfeebling magic effect


-- Imbodla Necklace
INSERT INTO `item_mods` VALUES(28381, 12, 7); -- int
INSERT INTO `item_mods` VALUES(28381, 13, 7); -- mnd
INSERT INTO `item_mods` VALUES(28381, 114, 5); -- enfeebling skill
INSERT INTO `item_mods` VALUES(28381, 115, 5); -- elemental skill

-- Agitator's Collar
INSERT INTO `item_mods` VALUES(28389, 25, 8); -- acc
INSERT INTO `item_mods` VALUES(28389, 23, 5); -- atk
INSERT INTO `item_mods` VALUES(28389, 161, -4); -- phy dmg taken -%

-- Metalsinger Belt
INSERT INTO `item_mods` VALUES(28449, 1, 15); -- def
INSERT INTO `item_mods` VALUES(28449, 8, 13); -- str
INSERT INTO `item_mods` VALUES(28449, 25, 5); -- acc
INSERT INTO `item_mods` VALUES(28449, 288, 1); -- double atk

