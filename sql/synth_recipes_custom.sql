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
INSERT INTO `synth_recipes` VALUES (9000,1,0,1,0,0,0,0,0,0,0,4102,4244,2793,2794,2795,2796,2797,2798,0,0,2799,2799,2799,2799,1,1,1,1); -- Astral Matter
INSERT INTO `synth_recipes` VALUES (9001,1,0,0,0,0,0,51,0,0,0,4098,4240,3297,0,0,0,0,0,0,0,807,790,803,3316,1,1,1,1); -- Flame Geode
INSERT INTO `synth_recipes` VALUES (9002,1,0,0,0,0,0,81,0,0,0,4098,4240,3520,0,0,0,0,0,0,0,803,786,767,8919,1,1,1,1); -- Ifritite
INSERT INTO `synth_recipes` VALUES (9003,1,0,0,0,0,0,81,0,0,0,4098,4240,3521,0,0,0,0,0,0,0,805,787,808,8924,1,1,1,1); -- Shivite
INSERT INTO `synth_recipes` VALUES (9004,1,0,0,0,0,0,81,0,0,0,4098,4240,3522,0,0,0,0,0,0,0,784,785,779,8922,1,1,1,1); -- Garudite
INSERT INTO `synth_recipes` VALUES (9005,1,0,0,0,0,0,81,0,0,0,4098,4240,3523,0,0,0,0,0,0,0,801,789,778,8923,1,1,1,1); -- Titanite
INSERT INTO `synth_recipes` VALUES (9006,1,0,0,0,0,0,81,0,0,0,4098,4240,3524,0,0,0,0,0,0,0,810,804,777,8921,1,1,1,1); -- Ramuite
INSERT INTO `synth_recipes` VALUES (9007,1,0,0,0,0,0,81,0,0,0,4098,4240,3525,0,0,0,0,0,0,0,791,794,781,8920,1,1,1,1); -- Leviatite
INSERT INTO `synth_recipes` VALUES (9008,1,0,0,0,0,0,81,0,0,0,4098,4240,3526,0,0,0,0,0,0,0,802,813,782,8925,1,1,1,1); -- Carbite
INSERT INTO `synth_recipes` VALUES (9009,1,0,0,0,0,0,81,0,0,0,4098,4240,3527,0,0,0,0,0,0,0,797,812,783,8926,1,1,1,1); -- Fenrite

