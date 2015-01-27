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
INSERT INTO `item_mods` VALUES(10528, 167, 3);

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
INSERT INTO `item_mods` VALUES(10554, 167, 6);

INSERT INTO `item_mods` VALUES(10559, 1, 47);
INSERT INTO `item_mods` VALUES(10559, 2, 40);
INSERT INTO `item_mods` VALUES(10559, 8, 9);
INSERT INTO `item_mods` VALUES(10559, 11, 9);
INSERT INTO `item_mods` VALUES(10559, 25, 14);
INSERT INTO `item_mods` VALUES(10559, 23, 14);
INSERT INTO `item_mods` VALUES(10559, 167, 6);

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

INSERT INTO `item_mods` VALUES(10901, 1, 36);
INSERT INTO `item_mods` VALUES(10901, 25, 10);
INSERT INTO `item_mods` VALUES(10901, 23, 10);
INSERT INTO `item_mods` VALUES(10901, 73, 5);
INSERT INTO `item_mods` VALUES(10901, 167, 7);
INSERT INTO `item_mods` VALUES(10901, 289, 5);

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


INSERT INTO `item_mods` VALUES(20742, 82, 54); -- Iztaasu
INSERT INTO `item_mods` VALUES(20742, 110, 54);
INSERT INTO `item_mods` VALUES(20742, 30, 42);

-- Honed Tathlum
INSERT INTO `item_mods` VALUES(21389, 25, 15); -- acc

-- Mephitis Grip
INSERT INTO `item_mods` VALUES(21429, 30, 5); -- Macc
INSERT INTO `item_mods` VALUES(21429, 114, 5); -- Enfeebling skill

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

-- Imbodla Necklace
INSERT INTO `item_mods` VALUES(28381, 12, 7); -- int
INSERT INTO `item_mods` VALUES(28381, 13, 7); -- mnd
INSERT INTO `item_mods` VALUES(28381, 114, 5); -- enfeebling skill
INSERT INTO `item_mods` VALUES(28381, 115, 5); -- elemental skill
