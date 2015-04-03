-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of synth_recipes.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- INSERT INTO `synth_recipes` VALUES (ID,Type,KeyItem,Alchemy,Bone,Cloth,Cook,Gold,Leather,Smith,Wood,Crystal,HQCrystal,Ingredient1,Ingredient2,Ingredient3,Ingredient4,Ingredient5,Ingredient6,Ingredient7,Ingredient8,Result,ResultHQ1,ResultHQ2,ResultHQ3,ResultQty,ResultHQ1Qty,ResultHQ2Qty,ResultHQ3Qty);
-- New entries below this line, and sorted by SynthID please. All non DSP IDs need to be above 9000.

-- ------------------------------------------------------------
-- Alchemy
-- ------------------------------------------------------------
INSERT INTO `synth_recipes` VALUES (9000,1,0,1,0,0,0,0,0,0,0,4102,4244,2793,2794,2795,2796,2797,2798,0,0,2799,2799,2799,2799,1,1,1,1); -- Astral Matter (would be synergy on retail)
INSERT INTO `synth_recipes` VALUES (9001,1,0,99,0,0,0,0,0,0,0,4102,4244,4154,4154,5306,13446,0,0,0,0,10790,10791,10791,10791,1,1,1,1); -- Ephedra Ring
INSERT INTO `synth_recipes` VALUES (9002,1,0,99,0,0,0,0,0,0,0,4102,4244,4154,4154,5306,13466,0,0,0,0,10792,10793,10793,10793,1,1,1,1); -- Saida Ring
INSERT INTO `synth_recipes` VALUES (9003,1,0,104,0,0,0,0,0,0,0,4103,4245,914,930,942,8710,0,0,0,0,17913,17913,17913,17913,4,6,8,10); -- Saline Broth
INSERT INTO `synth_recipes` VALUES (9004,1,0,104,0,0,0,0,0,60,0,4098,4240,914,937,3549,3936,8748,0,0,0,8927,8927,8927,8927,6,8,10,12); -- Abrasion Bolt Heads
INSERT INTO `synth_recipes` VALUES (9005,1,0,104,0,0,0,0,0,60,0,4098,4240,937,1626,5306,5306,8748,0,0,0,8927,8927,8927,8927,6,8,10,12); -- Righteous Bolt Heads
INSERT INTO `synth_recipes` VALUES (9006,1,0,110,0,0,0,0,0,0,0,4103,4245,924,2365,1133,1626,2015,2229,2361,17727,18914,18915,18915,18915,1,1,1,1); -- Killer's Kilij
INSERT INTO `synth_recipes` VALUES (9007,1,0,114,0,0,0,0,0,0,0,4103,4245,1133,16577,4015,0,0,0,0,0,20723,20724,20724,20724,1,1,1,1); -- Dija Sword

-- ------------------------------------------------------------
-- Goldsmithing
-- ------------------------------------------------------------
INSERT INTO `synth_recipes` VALUES (10001,1,0,0,0,0,0,81,0,0,0,4098,4240,3520,0,0,0,0,0,0,0,803,786,767,8919,1,1,1,1); -- Ifritite
INSERT INTO `synth_recipes` VALUES (10002,1,0,0,0,0,0,81,0,0,0,4098,4240,3521,0,0,0,0,0,0,0,805,787,808,8924,1,1,1,1); -- Shivite
INSERT INTO `synth_recipes` VALUES (10003,1,0,0,0,0,0,81,0,0,0,4098,4240,3522,0,0,0,0,0,0,0,784,785,779,8922,1,1,1,1); -- Garudite
INSERT INTO `synth_recipes` VALUES (10004,1,0,0,0,0,0,81,0,0,0,4098,4240,3523,0,0,0,0,0,0,0,801,789,778,8923,1,1,1,1); -- Titanite
INSERT INTO `synth_recipes` VALUES (10005,1,0,0,0,0,0,81,0,0,0,4098,4240,3524,0,0,0,0,0,0,0,810,804,777,8921,1,1,1,1); -- Ramuite
INSERT INTO `synth_recipes` VALUES (10006,1,0,0,0,0,0,81,0,0,0,4098,4240,3525,0,0,0,0,0,0,0,791,794,781,8920,1,1,1,1); -- Leviatite
INSERT INTO `synth_recipes` VALUES (10007,1,0,0,0,0,0,81,0,0,0,4098,4240,3526,0,0,0,0,0,0,0,802,813,782,8925,1,1,1,1); -- Carbite
INSERT INTO `synth_recipes` VALUES (10008,1,0,0,0,0,0,81,0,0,0,4098,4240,3527,0,0,0,0,0,0,0,797,812,783,8926,1,1,1,1); -- Fenrite
INSERT INTO `synth_recipes` VALUES (10009,1,0,0,0,0,0,51,0,0,0,4098,4240,3297,0,0,0,0,0,0,0,807,790,803,3316,1,1,1,1); -- Flame Gem
INSERT INTO `synth_recipes` VALUES (10010,1,0,0,0,0,0,51,0,0,0,4098,4240,3298,0,0,0,0,0,0,0,809,808,805,3317,1,1,1,1); -- Snow Gem
INSERT INTO `synth_recipes` VALUES (10011,1,0,0,0,0,0,51,0,0,0,4098,4240,3299,0,0,0,0,0,0,0,806,788,784,3318,1,1,1,1); -- Breeze Gem
INSERT INTO `synth_recipes` VALUES (10012,1,0,0,0,0,0,51,0,0,0,4098,4240,3300,0,0,0,0,0,0,0,814,815,801,3319,1,1,1,1); -- Soil Gem
INSERT INTO `synth_recipes` VALUES (10013,1,0,0,0,0,0,51,0,0,0,4098,4240,3301,0,0,0,0,0,0,0,800,811,810,3320,1,1,1,1); -- Thunder Gem
INSERT INTO `synth_recipes` VALUES (10014,1,0,0,0,0,0,51,0,0,0,4098,4240,3302,0,0,0,0,0,0,0,795,798,791,3321,1,1,1,1); -- Aqua Gem
INSERT INTO `synth_recipes` VALUES (10015,1,0,0,0,0,0,51,0,0,0,4098,4240,3303,0,0,0,0,0,0,0,796,796,802,3322,1,1,1,1); -- Light Gem
INSERT INTO `synth_recipes` VALUES (10016,1,0,0,0,0,0,51,0,0,0,4098,4240,3304,0,0,0,0,0,0,0,799,799,797,3323,1,1,1,1); -- Shadow Gem
INSERT INTO `synth_recipes` VALUES (10017,1,0,0,0,0,0,102,0,60,0,4096,4238,755,758,12936,0,0,0,0,0,10641,10642,10642,10642,1,1,1,1); -- Ugol Solerets
INSERT INTO `synth_recipes` VALUES (10018,1,0,0,0,60,0,103,60,0,0,4096,4238,759,765,826,873,873,0,0,0,10575,10576,10576,10576,1,1,1,1); -- Ugol Bryettes
INSERT INTO `synth_recipes` VALUES (10019,1,0,0,0,0,0,103,0,0,0,4096,4238,755,757,765,1977,2275,2275,0,0,10410,10411,10411,10411,1,1,1,1); -- Ugol Salade
INSERT INTO `synth_recipes` VALUES (10020,1,0,0,0,60,0,105,0,0,0,4096,4238,755,757,758,765,765,765,828,829,10494,10495,10495,10495,1,1,1,1); -- Ugol Haubert
INSERT INTO `synth_recipes` VALUES (10021,1,0,60,0,0,0,113,0,0,0,4096,4238,766,914,3927,3980,0,0,0,0,21129,21130,21130,21130,1,1,1,1); -- Sharur
-- INSERT INTO `synth_recipes` VALUES (10022,1,0,0,0,60,0,115,60,0,0,4096,4238,766,823,3548,3923,0,0,0,0,21129,21130,21130,21130,1,1,1,1); -- Ravenous Breastplate -- Missing Macuil Plating x2/Ravenous Breastplate/Ravenous Breastplate +1 ID's

-- ------------------------------------------------------------
-- Bonecraft
-- ------------------------------------------------------------
INSERT INTO `synth_recipes` VALUES (10101,1,0,60,102,0,0,0,0,0,0,4098,4240,1311,1715,4154,4154,5306,0,0,0,10794,10795,10795,10795,1,1,1,1); -- Blenmot's Ring
INSERT INTO `synth_recipes` VALUES (10102,1,0,0,102,60,0,0,60,0,0,4099,4241,830,836,8708,8982,8982,8983,8983,0,26883,26884,26884,26884,1,1,1,1); -- Sombra Harness
INSERT INTO `synth_recipes` VALUES (10103,1,0,0,103,0,0,0,0,0,0,4099,4241,823,850,867,885,3445,3552,0,0,10346,10347,10347,10347,1,1,1,1); -- Dux Cussies
INSERT INTO `synth_recipes` VALUES (10104,1,0,0,104,0,0,0,0,0,0,4098,4240,867,885,3445,3552,0,0,0,0,10434,10435,10435,10435,1,1,1,1); -- Dux Visor
INSERT INTO `synth_recipes` VALUES (10105,1,0,0,104,0,0,0,60,0,0,4099,4241,819,869,8977,8981,0,0,0,0,26726,26727,26727,26727,1,1,1,1); -- Revealers Crown
INSERT INTO `synth_recipes` VALUES (10106,1,0,0,105,0,0,0,0,0,0,4099,4241,823,867,885,3552,12696,0,0,0,10316,10317,10317,10317,1,1,1,1); -- Dux Finger Gauntlets
INSERT INTO `synth_recipes` VALUES (10107,1,0,60,106,0,0,0,0,0,0,4098,4240,4015,8719,8719,0,0,0,0,0,28544,28545,28545,28545,1,1,1,1); -- Yacuruna Ring
INSERT INTO `synth_recipes` VALUES (10108,1,0,0,107,0,0,0,0,0,0,4099,4241,823,867,885,885,885,3445,3552,12568,10272,10273,10273,10273,1,1,1,1); -- Dux Scale Mail
INSERT INTO `synth_recipes` VALUES (10109,1,0,0,108,0,0,0,0,0,0,4098,4240,877,1762,3869,0,0,0,0,0,18827,18828,18828,18828,1,1,1,1); -- Oxossi Facon
INSERT INTO `synth_recipes` VALUES (10110,1,0,0,111,0,0,0,0,0,0,4099,4241,1311,1409,2427,3940,3979,3979,0,0,28404,28405,28405,28405,1,1,1,1); -- Ej Necklace
INSERT INTO `synth_recipes` VALUES (10111,1,0,0,111,0,0,0,0,0,0,4098,4240,760,3977,3977,0,0,0,0,0,28526,28527,28527,28527,1,1,1,1); -- Tati Earring
INSERT INTO `synth_recipes` VALUES (10112,1,0,0,114,0,0,60,0,0,60,4098,4240,4019,4021,8704,8752,8752,0,0,0,20537,20538,20538,20538,1,1,1,1); -- Bhakazi Sainti
INSERT INTO `synth_recipes` VALUES (10113,1,0,0,114,0,0,0,0,0,0,4098,4240,4012,4019,0,0,0,0,0,0,20621,20622,20622,20622,1,1,1,1); -- Nanti Knife
INSERT INTO `synth_recipes` VALUES (10114,1,0,0,114,0,0,0,0,0,60,4098,4240,4012,4019,8704,0,0,0,0,0,20814,20815,20815,20815,1,1,1,1); -- Budliqa
INSERT INTO `synth_recipes` VALUES (10115,1,0,0,113,0,0,0,0,0,0,4099,4241,908,1767,3977,0,0,0,0,0,28664,28665,28665,28665,1,1,1,1); -- Killedar Shield
INSERT INTO `synth_recipes` VALUES (10116,1,0,0,113,0,0,60,0,0,60,4098,4240,766,851,3927,3979,0,0,0,0,20919,20920,20920,20920,1,1,1,1); -- Lacryma Sickle
INSERT INTO `synth_recipes` VALUES (10117,1,0,0,113,0,0,0,0,60,0,4096,4238,766,658,3979,0,0,0,0,0,21289,21290,21290,21290,1,1,1,1); -- Donderbuss

-- ------------------------------------------------------------
-- Clothcraft
-- ------------------------------------------------------------
