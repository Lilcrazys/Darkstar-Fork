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

-- -------------------------------------------------------
-- Spharai (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18637, 23, 30);
INSERT INTO `item_mods` VALUES(18637, 291, 9);
INSERT INTO `item_mods` VALUES(18637, 355, 10);
INSERT INTO `item_mods` VALUES(18637, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18637, 507, 300); -- Occ. 3x dmg 
-- -------------------------------------------------------
-- Mandau (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18638, 23, 30);
INSERT INTO `item_mods` VALUES(18638, 355, 26);
INSERT INTO `item_mods` VALUES(18638, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18638, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Excalibur (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18639, 23, 30);
INSERT INTO `item_mods` VALUES(18639, 355, 43);
INSERT INTO `item_mods` VALUES(18639, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18639, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Ragnarok (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18640, 25, 30);
INSERT INTO `item_mods` VALUES(18640, 165, 9);
INSERT INTO `item_mods` VALUES(18640, 355, 57);
INSERT INTO `item_mods` VALUES(18640, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18640, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Guttler (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18641, 23, 30);
INSERT INTO `item_mods` VALUES(18641, 355, 73);
INSERT INTO `item_mods` VALUES(18641, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18641, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Bravura (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18642, 25, 30);
INSERT INTO `item_mods` VALUES(18642, 355, 89);
INSERT INTO `item_mods` VALUES(18642, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18642, 507, 200); -- Occ. 2x dmg
-- -------------------------------------------------------
-- Gungnir (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18643, 25, 30);
INSERT INTO `item_mods` VALUES(18643, 355, 121);
INSERT INTO `item_mods` VALUES(18643, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18643, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Apocalypse (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18644, 25, 30);
INSERT INTO `item_mods` VALUES(18644, 355, 105);
INSERT INTO `item_mods` VALUES(18644, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18644, 507, 200); -- Occ. 2x dmg
-- -------------------------------------------------------
-- Kikoku (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18645, 23, 30);
INSERT INTO `item_mods` VALUES(18645, 355, 137);
INSERT INTO `item_mods` VALUES(18645, 507, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18645, 506, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Amanomurakumo (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18646, 25, 30);
INSERT INTO `item_mods` VALUES(18646, 355, 153);
INSERT INTO `item_mods` VALUES(18646, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18646, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Mjollnir (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18647, 23, 30);
INSERT INTO `item_mods` VALUES(18647, 355, 170);
INSERT INTO `item_mods` VALUES(18647, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18647, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Claustrum (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18648, 25, 30);
INSERT INTO `item_mods` VALUES(18648, 355, 185);
INSERT INTO `item_mods` VALUES(18648, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18648, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Annihilator (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18649, 24, 20);
INSERT INTO `item_mods` VALUES(18649, 26, 30);
INSERT INTO `item_mods` VALUES(18649, 355, 216);
INSERT INTO `item_mods` VALUES(18649, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18649, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Yoichinoyumi (85)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18650, 24, 20);
INSERT INTO `item_mods` VALUES(18650, 26, 30);
INSERT INTO `item_mods` VALUES(18650, 355, 200);
INSERT INTO `item_mods` VALUES(18650, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18650, 507, 300); -- Occ. 3x dmg


-- -------------------------------------------------------
-- Spharai (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18665, 23, 35);
INSERT INTO `item_mods` VALUES(18665, 291, 11);
INSERT INTO `item_mods` VALUES(18665, 355, 10);
INSERT INTO `item_mods` VALUES(18665, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18665, 507, 300); -- Occ. 3x dmg 
-- -------------------------------------------------------
-- Mandau (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18666, 23, 35);
INSERT INTO `item_mods` VALUES(18666, 355, 26);
INSERT INTO `item_mods` VALUES(18666, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18666, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Excalibur (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18667, 23, 35);
INSERT INTO `item_mods` VALUES(18667, 355, 43);
INSERT INTO `item_mods` VALUES(18667, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18667, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Ragnarok (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18668, 25, 35);
INSERT INTO `item_mods` VALUES(18668, 165, 11);
INSERT INTO `item_mods` VALUES(18668, 355, 57);
INSERT INTO `item_mods` VALUES(18668, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18668, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Guttler (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18669, 23, 35);
INSERT INTO `item_mods` VALUES(18669, 355, 73);
INSERT INTO `item_mods` VALUES(18669, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18669, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Bravura (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18670, 25, 35);
INSERT INTO `item_mods` VALUES(18670, 355, 89);
INSERT INTO `item_mods` VALUES(18670, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18670, 507, 200); -- Occ. 2x dmg
-- -------------------------------------------------------
-- Gungnir (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18671, 25, 35);
INSERT INTO `item_mods` VALUES(18671, 355, 121);
INSERT INTO `item_mods` VALUES(18671, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18671, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Apocalypse (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18672, 25, 35);
INSERT INTO `item_mods` VALUES(18672, 355, 105);
INSERT INTO `item_mods` VALUES(18672, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18672, 507, 200); -- Occ. 2x dmg
-- -------------------------------------------------------
-- Kikoku (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18673, 23, 35);
INSERT INTO `item_mods` VALUES(18673, 355, 137);
INSERT INTO `item_mods` VALUES(18673, 507, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18673, 506, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Amanomurakumo (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18674, 25, 35);
INSERT INTO `item_mods` VALUES(18674, 355, 153);
INSERT INTO `item_mods` VALUES(18674, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18674, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Mjollnir (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18675, 23, 35);
INSERT INTO `item_mods` VALUES(18675, 355, 170);
INSERT INTO `item_mods` VALUES(18675, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18675, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Claustrum (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18676, 25, 35);
INSERT INTO `item_mods` VALUES(18676, 355, 185);
INSERT INTO `item_mods` VALUES(18676, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18676, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Annihilator (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18677, 24, 25);
INSERT INTO `item_mods` VALUES(18677, 26, 35);
INSERT INTO `item_mods` VALUES(18677, 355, 216);
INSERT INTO `item_mods` VALUES(18677, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18677, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Yoichinoyumi (95)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18678, 24, 25);
INSERT INTO `item_mods` VALUES(18678, 26, 35);
INSERT INTO `item_mods` VALUES(18678, 355, 200);
INSERT INTO `item_mods` VALUES(18678, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18678, 507, 300); -- Occ. 3x dmg


REPLACE INTO `item_mods` VALUES(18852, 289, 50); -- MODDED OCTAVE CLUB

-- -------------------------------------------------------
-- Spharai (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19746, 23, 40);
INSERT INTO `item_mods` VALUES(19746, 291, 13);
INSERT INTO `item_mods` VALUES(19746, 355, 10);
INSERT INTO `item_mods` VALUES(19746, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19746, 507, 300); -- Occ. 3x dmg 
-- -------------------------------------------------------
-- Mandau (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19747, 23, 40);
INSERT INTO `item_mods` VALUES(19747, 355, 26);
INSERT INTO `item_mods` VALUES(19747, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19747, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Excalibur (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19748, 23, 40);
INSERT INTO `item_mods` VALUES(19748, 355, 43);
INSERT INTO `item_mods` VALUES(19748, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19748, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Ragnarok (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19749, 25, 40);
INSERT INTO `item_mods` VALUES(19749, 165, 13);
INSERT INTO `item_mods` VALUES(19749, 355, 57);
INSERT INTO `item_mods` VALUES(19749, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19749, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Guttler (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19750, 23, 40);
INSERT INTO `item_mods` VALUES(19750, 355, 73);
INSERT INTO `item_mods` VALUES(19750, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19750, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Bravura (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19751, 25, 40);
INSERT INTO `item_mods` VALUES(19751, 355, 89);
INSERT INTO `item_mods` VALUES(19751, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19751, 507, 200); -- Occ. 2x dmg
-- -------------------------------------------------------
-- Gungnir (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(18752, 25, 40);
INSERT INTO `item_mods` VALUES(18752, 355, 121);
INSERT INTO `item_mods` VALUES(18752, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(18752, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Apocalypse (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19753, 25, 40);
INSERT INTO `item_mods` VALUES(19753, 355, 105);
INSERT INTO `item_mods` VALUES(19753, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19753, 507, 200); -- Occ. 2x dmg
-- -------------------------------------------------------
-- Kikoku (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19754, 23, 40);
INSERT INTO `item_mods` VALUES(19754, 355, 137);
INSERT INTO `item_mods` VALUES(19754, 507, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19754, 506, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Amanomurakumo (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19755, 25, 40);
INSERT INTO `item_mods` VALUES(19755, 355, 153);
INSERT INTO `item_mods` VALUES(19755, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19755, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Mjollnir (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19756, 23, 40);
INSERT INTO `item_mods` VALUES(19756, 355, 170);
INSERT INTO `item_mods` VALUES(19756, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19756, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Claustrum (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19757, 25, 40);
INSERT INTO `item_mods` VALUES(19757, 355, 185);
INSERT INTO `item_mods` VALUES(19757, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19757, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Annihilator (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19758, 24, 30);
INSERT INTO `item_mods` VALUES(19758, 26, 40);
INSERT INTO `item_mods` VALUES(19758, 355, 216);
INSERT INTO `item_mods` VALUES(19758, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19758, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Yoichinoyumi (99-1)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(19759, 24, 30);
INSERT INTO `item_mods` VALUES(19759, 26, 40);
INSERT INTO `item_mods` VALUES(19759, 355, 200);
INSERT INTO `item_mods` VALUES(19759, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(19759, 507, 300); -- Occ. 3x dmg


-- -------------------------------------------------------
-- Spharai (99-3)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20480, 23, 40);
INSERT INTO `item_mods` VALUES(20480, 80, 242); -- h2h skill
INSERT INTO `item_mods` VALUES(20480, 107, 242); -- guard skill
INSERT INTO `item_mods` VALUES(20480, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20480, 291, 13);
INSERT INTO `item_mods` VALUES(20480, 355, 10);
INSERT INTO `item_mods` VALUES(20480, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20480, 507, 300); -- Occ. 3x dmg 
-- -------------------------------------------------------
-- Spharai (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20481, 23, 40);
INSERT INTO `item_mods` VALUES(20481, 80, 242); -- h2h skill
INSERT INTO `item_mods` VALUES(20481, 107, 242); -- guard skill
INSERT INTO `item_mods` VALUES(20481, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20481, 291, 13);
INSERT INTO `item_mods` VALUES(20481, 355, 10);
INSERT INTO `item_mods` VALUES(20481, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20481, 507, 300); -- Occ. 3x dmg 

-- -------------------------------------------------------
-- Mandau (99-3)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20555, 23, 40);
INSERT INTO `item_mods` VALUES(20555, 81, 242); -- dagger skill
INSERT INTO `item_mods` VALUES(20555, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20555, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20555, 355, 26);
INSERT INTO `item_mods` VALUES(20555, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20555, 507, 300); -- Occ. 3x dmg
-- -------------------------------------------------------
-- Mandau (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20556, 23, 40);
INSERT INTO `item_mods` VALUES(20556, 81, 242); -- dagger skill
INSERT INTO `item_mods` VALUES(20556, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20556, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20556, 355, 26);
INSERT INTO `item_mods` VALUES(20556, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20556, 507, 300); -- Occ. 3x dmg

-- -------------------------------------------------------
-- Excalibur (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20646, 23, 40);
INSERT INTO `item_mods` VALUES(20646, 82, 242); -- sword skill
INSERT INTO `item_mods` VALUES(20646, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20646, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20646, 355, 43);
INSERT INTO `item_mods` VALUES(20646, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20646, 507, 250); -- Occ. 2.5x dmg

-- Iztaasu
INSERT INTO `item_mods` VALUES(20742, 82, 54); 
INSERT INTO `item_mods` VALUES(20742, 110, 54);
INSERT INTO `item_mods` VALUES(20742, 30, 42);

-- -------------------------------------------------------
-- Ragnarok (99-3)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20745, 25, 40);
INSERT INTO `item_mods` VALUES(20745, 83, 242); -- GS skill
INSERT INTO `item_mods` VALUES(20745, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20745, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20745, 165, 13);
INSERT INTO `item_mods` VALUES(20745, 355, 57);
INSERT INTO `item_mods` VALUES(20745, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20745, 507, 250); -- Occ. 2.5x dmg
-- -------------------------------------------------------
-- Ragnarok (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20746, 25, 40);
INSERT INTO `item_mods` VALUES(20746, 83, 242); -- GS skill
INSERT INTO `item_mods` VALUES(20746, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20746, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20746, 165, 13);
INSERT INTO `item_mods` VALUES(20746, 355, 57);
INSERT INTO `item_mods` VALUES(20746, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20746, 507, 250); -- Occ. 2.5x dmg

-- Ukudyoni
INSERT INTO `item_mods` VALUES(20762, 83, 242); -- GS skill
INSERT INTO `item_mods` VALUES(20762, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20762, 30, 188); -- Macc

-- -------------------------------------------------------
-- Guttler (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20791, 23, 40);
INSERT INTO `item_mods` VALUES(20791, 84, 242); -- axe skill
INSERT INTO `item_mods` VALUES(20791, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20791, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20791, 355, 73);
INSERT INTO `item_mods` VALUES(20791, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20791, 507, 250); -- Occ. 2.5x dmg

-- -------------------------------------------------------
-- Bravura (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20836, 25, 40);
INSERT INTO `item_mods` VALUES(20836, 85, 242); -- GA skill
INSERT INTO `item_mods` VALUES(20836, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20836, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20836, 355, 89);
INSERT INTO `item_mods` VALUES(20836, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20836, 507, 200); -- Occ. 2x dmg

-- -------------------------------------------------------
-- Apocalypse (99-3)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20880, 25, 40);
INSERT INTO `item_mods` VALUES(20880, 86, 242); -- scythe skill
INSERT INTO `item_mods` VALUES(20880, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20880, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20880, 355, 105);
INSERT INTO `item_mods` VALUES(20880, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20880, 507, 200); -- Occ. 2x dmg
-- -------------------------------------------------------
-- Apocalypse (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20881, 25, 40);
INSERT INTO `item_mods` VALUES(20881, 86, 242); -- scythe skill
INSERT INTO `item_mods` VALUES(20881, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20881, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20881, 355, 105);
INSERT INTO `item_mods` VALUES(20881, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20881, 507, 200); -- Occ. 2x dmg

-- -------------------------------------------------------
-- Gungnir (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20926, 25, 40);
INSERT INTO `item_mods` VALUES(20926, 87, 242); -- polearm skill
INSERT INTO `item_mods` VALUES(20926, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20926, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20926, 355, 121);
INSERT INTO `item_mods` VALUES(20926, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20926, 507, 250); -- Occ. 2.5x dmg

-- -------------------------------------------------------
-- Kikoku (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(20971, 23, 40);
INSERT INTO `item_mods` VALUES(20971, 88, 242); -- katana skill
INSERT INTO `item_mods` VALUES(20971, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(20971, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(20971, 355, 137);
INSERT INTO `item_mods` VALUES(20971, 507, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(20971, 506, 300); -- Occ. 3x dmg

-- -------------------------------------------------------
-- Amanomurakumo (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(21016, 25, 40);
INSERT INTO `item_mods` VALUES(21016, 89, 242); -- GK skill
INSERT INTO `item_mods` VALUES(21016, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(21016, 30, 215); -- Macc
INSERT INTO `item_mods` VALUES(21016, 355, 153);
INSERT INTO `item_mods` VALUES(21016, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(21016, 507, 250); -- Occ. 2.5x dmg

-- -------------------------------------------------------
-- Mjollnir (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(21061, 23, 40);
-- INSERT INTO `item_mods` VALUES(21061, ???, 155); -- Magic dmg +   unknown
INSERT INTO `item_mods` VALUES(21061, 90, 242); -- club skill
INSERT INTO `item_mods` VALUES(21061, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(21061, 30, 228); -- Macc
INSERT INTO `item_mods` VALUES(21061, 355, 170);
INSERT INTO `item_mods` VALUES(21061, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(21061, 507, 300); -- Occ. 3x dmg

-- -------------------------------------------------------
-- Claustrum (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(21136, 25, 40);
-- INSERT INTO `item_mods` VALUES(21136, ???, 248); -- Magic dmg +  unknown
INSERT INTO `item_mods` VALUES(21136, 91, 242); -- staff skill
INSERT INTO `item_mods` VALUES(21136, 110, 242); -- parry skill
INSERT INTO `item_mods` VALUES(21136, 30, 255); -- Macc
INSERT INTO `item_mods` VALUES(21136, 355, 185);
INSERT INTO `item_mods` VALUES(21136, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(21136, 507, 250); -- Occ. 2.5x dmg

-- -------------------------------------------------------
-- Yoichinoyumi (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(21211, 24, 30);
INSERT INTO `item_mods` VALUES(21211, 26, 40);
INSERT INTO `item_mods` VALUES(21211, 104, 242); -- archery skill
INSERT INTO `item_mods` VALUES(21211, 355, 200);
INSERT INTO `item_mods` VALUES(21211, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(21211, 507, 300); -- Occ. 3x dmg

-- -------------------------------------------------------
-- Annihilator (99-4)
-- -------------------------------------------------------
INSERT INTO `item_mods` VALUES(21261, 24, 30);
INSERT INTO `item_mods` VALUES(21261, 26, 40);
INSERT INTO `item_mods` VALUES(21261, 105, 242); -- marksmanship skill
INSERT INTO `item_mods` VALUES(21261, 355, 216);
INSERT INTO `item_mods` VALUES(21261, 506, 160); -- 16% chance of extra dmg.
INSERT INTO `item_mods` VALUES(21261, 507, 300); -- Occ. 3x dmg

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

-- Orvail Corona
INSERT INTO `item_mods` VALUES(27782, 1, 43);
INSERT INTO `item_mods` VALUES(27782, 5, 22);
INSERT INTO `item_mods` VALUES(27782, 8, 12);
INSERT INTO `item_mods` VALUES(27782, 9, 12);
INSERT INTO `item_mods` VALUES(27782, 10, 12);
INSERT INTO `item_mods` VALUES(27782, 11, 12);
INSERT INTO `item_mods` VALUES(27782, 12, 14);
INSERT INTO `item_mods` VALUES(27782, 13, 14);
INSERT INTO `item_mods` VALUES(27782, 14, 14);
INSERT INTO `item_mods` VALUES(27782, 30, 8);
INSERT INTO `item_mods` VALUES(27782, 31, 29);
INSERT INTO `item_mods` VALUES(27782, 71, 4);

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

-- Orvail Robe
INSERT INTO `item_mods` VALUES(27922, 1, 56);
INSERT INTO `item_mods` VALUES(27922, 5, 40);
INSERT INTO `item_mods` VALUES(27922, 8, 9);
INSERT INTO `item_mods` VALUES(27922, 9, 9);
INSERT INTO `item_mods` VALUES(27922, 10, 9);
INSERT INTO `item_mods` VALUES(27922, 11, 9);
INSERT INTO `item_mods` VALUES(27922, 12, 18);
INSERT INTO `item_mods` VALUES(27922, 13, 18);
INSERT INTO `item_mods` VALUES(27922, 14, 18);
INSERT INTO `item_mods` VALUES(27922, 31, 31);
INSERT INTO `item_mods` VALUES(27922, 27, -5);
INSERT INTO `item_mods` VALUES(27922, 369, 2);


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

-- Orvail Cuffs
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

-- Orvail Pants
INSERT INTO `item_mods` VALUES(28203, 1, 48);
INSERT INTO `item_mods` VALUES(28203, 5, 20);
INSERT INTO `item_mods` VALUES(28203, 8, 8);
INSERT INTO `item_mods` VALUES(28203, 10, 4);
INSERT INTO `item_mods` VALUES(28203, 11, 5);
INSERT INTO `item_mods` VALUES(28203, 12, 16);
INSERT INTO `item_mods` VALUES(28203, 13, 7);
INSERT INTO `item_mods` VALUES(28203, 14, 6);
INSERT INTO `item_mods` VALUES(28203, 31, 42);
INSERT INTO `item_mods` VALUES(28203, 30, 6);
INSERT INTO `item_mods` VALUES(28203, 170, 5);


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

-- Orvail Souliers
INSERT INTO `item_mods` VALUES(28342, 1, 29);
INSERT INTO `item_mods` VALUES(28342, 5, 10);
INSERT INTO `item_mods` VALUES(28342, 8, 3);
INSERT INTO `item_mods` VALUES(28342, 9, 3);
INSERT INTO `item_mods` VALUES(28342, 10, 3);
INSERT INTO `item_mods` VALUES(28342, 11, 10);
INSERT INTO `item_mods` VALUES(28342, 12, 5);
INSERT INTO `item_mods` VALUES(28342, 13, 14);
INSERT INTO `item_mods` VALUES(28342, 14, 10);
INSERT INTO `item_mods` VALUES(28342, 30, 8);
INSERT INTO `item_mods` VALUES(28342, 31, 42);
INSERT INTO `item_mods` VALUES(28342, 27, -5);


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

-- mes_haubergeon
INSERT INTO `item_mods` VALUES(27886, 1, 140); -- DEF
INSERT INTO `item_mods` VALUES(27886, 2, 63); -- HP 
INSERT INTO `item_mods` VALUES(27886, 5, 35); -- MP
INSERT INTO `item_mods` VALUES(27886, 8, 29); -- STR
INSERT INTO `item_mods` VALUES(27886, 9, 29); -- DEX
INSERT INTO `item_mods` VALUES(27886, 10, 29); -- VIT
INSERT INTO `item_mods` VALUES(27886, 11, 6); -- AGI
INSERT INTO `item_mods` VALUES(27886, 12, 6); -- INT
INSERT INTO `item_mods` VALUES(27886, 13, 6); -- MND
INSERT INTO `item_mods` VALUES(27886, 14, 6); -- CHR
INSERT INTO `item_mods` VALUES(27886, 25, 30); -- ACC
INSERT INTO `item_mods` VALUES(27886, 23, 30); -- ATT
INSERT INTO `item_mods` VALUES(27886, 167, 30); -- Haste
INSERT INTO `item_mods` VALUES(27886, 288, 20); -- DBL ATT

-- onimusha_no_kote
INSERT INTO `item_mods` VALUES(28009, 1, 90); -- DEF
INSERT INTO `item_mods` VALUES(28009, 2, 25); -- HP 
INSERT INTO `item_mods` VALUES(28009, 8, 10); -- STR
INSERT INTO `item_mods` VALUES(28009, 9, 34); -- DEX
INSERT INTO `item_mods` VALUES(28009, 10, 28); -- VIT
INSERT INTO `item_mods` VALUES(28009, 11, 6); -- AGI
INSERT INTO `item_mods` VALUES(28009, 12, 10); -- INT
INSERT INTO `item_mods` VALUES(28009, 13, 28); -- MND
INSERT INTO `item_mods` VALUES(28009, 14, 16); -- CHR
INSERT INTO `item_mods` VALUES(28009, 23, 30); -- ATT
INSERT INTO `item_mods` VALUES(28009, 29, 1); -- MDB
INSERT INTO `item_mods` VALUES(28009, 167, 50); -- Haste
INSERT INTO `item_mods` VALUES(28009, 73, 4); -- STP

-- mes'yohi_slacks
INSERT INTO `item_mods` VALUES(28172, 1, 107); -- DEF
INSERT INTO `item_mods` VALUES(28172, 2, 43); -- HP 
INSERT INTO `item_mods` VALUES(28172, 5, 29); -- MP
INSERT INTO `item_mods` VALUES(28172, 8, 25); -- STR
INSERT INTO `item_mods` VALUES(28172, 10, 12); -- VIT
INSERT INTO `item_mods` VALUES(28172, 11, 17); -- AGI
INSERT INTO `item_mods` VALUES(28172, 12, 39); -- INT
INSERT INTO `item_mods` VALUES(28172, 13, 29); -- MND
INSERT INTO `item_mods` VALUES(28172, 14, 19); -- CHR
INSERT INTO `item_mods` VALUES(28172, 30, 20); -- MACC
INSERT INTO `item_mods` VALUES(28172, 68, 27); -- EVA
INSERT INTO `item_mods` VALUES(28172, 31, 107); -- MEVA
INSERT INTO `item_mods` VALUES(28172, 29, 8); -- MDB
INSERT INTO `item_mods` VALUES(28172, 167, 50); -- Haste

-- Quauhpilli Gloves 
INSERT INTO `item_mods` VALUES(28062, 1, 53); -- DEF
INSERT INTO `item_mods` VALUES(28062, 2, 7); -- HP
INSERT INTO `item_mods` VALUES(28062, 5, 70); -- MP
INSERT INTO `item_mods` VALUES(28062, 8, 3); -- STR
INSERT INTO `item_mods` VALUES(28062, 9, 14); -- DEX
INSERT INTO `item_mods` VALUES(28062, 10, 13); -- VIT
INSERT INTO `item_mods` VALUES(28062, 11, 2); -- AGI
INSERT INTO `item_mods` VALUES(28062, 12, 10); -- INT
INSERT INTO `item_mods` VALUES(28062, 13, 17); -- MND
INSERT INTO `item_mods` VALUES(28062, 14, 10); -- CHR
INSERT INTO `item_mods` VALUES(28062, 30, 8); -- MACC
INSERT INTO `item_mods` VALUES(28062, 28, 13); -- MATT
INSERT INTO `item_mods` VALUES(28062, 68, 6); -- EVA
INSERT INTO `item_mods` VALUES(28062, 29, 1); -- MDB
INSERT INTO `item_mods` VALUES(28062, 31, 21); -- MEVA
INSERT INTO `item_mods` VALUES(28062, 167, 2); -- Haste



-- hachiya_tekko_+1
INSERT INTO `item_mods` VALUES(27976, 1, 90); -- DEF
INSERT INTO `item_mods` VALUES(27976, 2, 25); -- HP
INSERT INTO `item_mods` VALUES(27976, 8, 10); -- STR
INSERT INTO `item_mods` VALUES(27976, 9, 34); -- DEX
INSERT INTO `item_mods` VALUES(27976, 10, 28); -- VIT
INSERT INTO `item_mods` VALUES(27976, 11, 16); -- AGI
INSERT INTO `item_mods` VALUES(27976, 12, 10); -- INT
INSERT INTO `item_mods` VALUES(27976, 13, 28); -- MND
INSERT INTO `item_mods` VALUES(27976, 14, 16); -- CHR
INSERT INTO `item_mods` VALUES(27976, 26, 28); -- RACC
INSERT INTO `item_mods` VALUES(27976, 24, 28); -- RATT
INSERT INTO `item_mods` VALUES(27976, 68, 22); -- EVA
INSERT INTO `item_mods` VALUES(27976, 31, 26); -- MEVA
INSERT INTO `item_mods` VALUES(27976, 29, 1); -- MDB
INSERT INTO `item_mods` VALUES(27976, 106, 10); -- throwing skill
INSERT INTO `item_mods` VALUES(27976, 289, 7); -- sub blow
INSERT INTO `item_mods` VALUES(27976, 167, 5); -- haste

-- hachiya_hatsuburi_+1
INSERT INTO `item_mods` VALUES(27676, 1, 102); -- DEF
INSERT INTO `item_mods` VALUES(27676, 2, 36); -- HP
INSERT INTO `item_mods` VALUES(27676, 8, 23); -- STR
INSERT INTO `item_mods` VALUES(27676, 9, 23); -- DEX
INSERT INTO `item_mods` VALUES(27676, 10, 22); -- VIT
INSERT INTO `item_mods` VALUES(27676, 11, 22); -- AGI
INSERT INTO `item_mods` VALUES(27676, 12, 21); -- INT
INSERT INTO `item_mods` VALUES(27676, 13, 21); -- MND
INSERT INTO `item_mods` VALUES(27676, 14, 21); -- CHR
INSERT INTO `item_mods` VALUES(27676, 30, 15); -- MACC
INSERT INTO `item_mods` VALUES(27676, 68, 38); -- EVA
INSERT INTO `item_mods` VALUES(27676, 31, 43); -- MEVA
INSERT INTO `item_mods` VALUES(27676, 29, 4); -- MDB
INSERT INTO `item_mods` VALUES(27676, 118, 13); -- NIN
INSERT INTO `item_mods` VALUES(27676, 289, 7); -- SB
INSERT INTO `item_mods` VALUES(27676, 167, 8); -- HASTE

-- hachiya_chainmail_+1
INSERT INTO `item_mods` VALUES(27840, 1, 132); -- DEF
INSERT INTO `item_mods` VALUES(27840, 5, 59); -- HP
INSERT INTO `item_mods` VALUES(27840, 8, 29); -- STR
INSERT INTO `item_mods` VALUES(27840, 9, 25); -- DEX
INSERT INTO `item_mods` VALUES(27840, 10, 26); -- VIT
INSERT INTO `item_mods` VALUES(27840, 11, 25); -- AGI
INSERT INTO `item_mods` VALUES(27840, 12, 24); -- INT
INSERT INTO `item_mods` VALUES(27840, 13, 24); -- MND
INSERT INTO `item_mods` VALUES(27840, 14, 24); -- CHR
INSERT INTO `item_mods` VALUES(27840, 68, 52); -- EVA
INSERT INTO `item_mods` VALUES(27840, 31, 53); -- MEVA
INSERT INTO `item_mods` VALUES(27840, 29, 4); -- MDB
INSERT INTO `item_mods` VALUES(27840, 289, 7); -- SB
INSERT INTO `item_mods` VALUES(27840, 167, 4); -- HASTE
INSERT INTO `item_mods` VALUES(27840, 259, 8); -- DW
INSERT INTO `item_mods` VALUES(27840, 499, 5); -- ShockSpikes
INSERT INTO `item_mods` VALUES(27840, 500, 20); -- spike dmg
INSERT INTO `item_mods` VALUES(27840, 501, 35); -- spike duration

-- hachiya_hakama_+1
INSERT INTO `item_mods` VALUES(28123, 1, 114); -- DEF
INSERT INTO `item_mods` VALUES(28123, 5, 47); -- HP
INSERT INTO `item_mods` VALUES(28123, 8, 32); -- STR
INSERT INTO `item_mods` VALUES(28123, 10, 14); -- VIT
INSERT INTO `item_mods` VALUES(28123, 11, 21); -- AGI
INSERT INTO `item_mods` VALUES(28123, 12, 32); -- INT
INSERT INTO `item_mods` VALUES(28123, 13, 17); -- MND
INSERT INTO `item_mods` VALUES(28123, 14, 10); -- CHR
INSERT INTO `item_mods` VALUES(28123, 25, 14); -- ACC
INSERT INTO `item_mods` VALUES(28123, 68, 48); -- EVA
INSERT INTO `item_mods` VALUES(28123, 31, 64); -- MEVA
INSERT INTO `item_mods` VALUES(28123, 29, 3); -- MDB
INSERT INTO `item_mods` VALUES(28123, 289, 7); -- SB
INSERT INTO `item_mods` VALUES(28123, 167, 6); -- HASTE
INSERT INTO `item_mods` VALUES(28123, 259, 3); -- DW


-- hachiya_kyahan_+1
INSERT INTO `item_mods` VALUES(28256, 1, 72); -- DEF
INSERT INTO `item_mods` VALUES(28256, 5, 13); -- HP
INSERT INTO `item_mods` VALUES(28256, 8, 14); -- STR
INSERT INTO `item_mods` VALUES(28256, 9, 15); -- DEX
INSERT INTO `item_mods` VALUES(28256, 10, 11); -- VIT
INSERT INTO `item_mods` VALUES(28256, 11, 34); -- AGI
INSERT INTO `item_mods` VALUES(28256, 12, 10); -- INT
INSERT INTO `item_mods` VALUES(28256, 13, 12); -- MND
INSERT INTO `item_mods` VALUES(28256, 14, 29); -- CHR
INSERT INTO `item_mods` VALUES(28256, 30, 13); -- MACC
INSERT INTO `item_mods` VALUES(28256, 28, 13); -- MATT
INSERT INTO `item_mods` VALUES(28256, 68, 69); -- EVA
INSERT INTO `item_mods` VALUES(28256, 31, 64); -- MEVA
INSERT INTO `item_mods` VALUES(28256, 29, 3); -- MDB
INSERT INTO `item_mods` VALUES(28256, 167, 4); -- HASTE
