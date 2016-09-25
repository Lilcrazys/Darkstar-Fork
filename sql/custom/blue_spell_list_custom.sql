-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of blue_spell_list.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------
-- INSERT INTO `blue_spell_list` VALUES (spellid,mob_skill_id,set_points,trait_category,trait_category_weight,primary_sc,secondary_sc);


-- These will need pull requested to DSP eventually
-- but first we need to catch up and then correct the IDs
-- because the update will change the skill ID.
INSERT INTO `blue_spell_list` VALUES (700,2945,6,16,8,0,0); -- Natures Meditation
INSERT INTO `blue_spell_list` VALUES (701,2950,6,18,8,0,0); -- Tempestuous Upheaval
INSERT INTO `blue_spell_list` VALUES (702,2958,6,13,8,0,0); -- Rending Deluge
INSERT INTO `blue_spell_list` VALUES (703,2967,6,8,8,0,0); -- Embalming Earth
INSERT INTO `blue_spell_list` VALUES (704,2970,6,23,8,3,0); -- Paralyzing Triad
INSERT INTO `blue_spell_list` VALUES (705,2974,4,29,8,0,0); -- Foul Waters
INSERT INTO `blue_spell_list` VALUES (706,2988,2,15,8,12,0); -- Glutinous Dart
INSERT INTO `blue_spell_list` VALUES (707,3030,5,17,8,0,0); -- Retinal Glare
INSERT INTO `blue_spell_list` VALUES (708,2930,6,24,8,0,0); -- Subduction
INSERT INTO `blue_spell_list` VALUES (709,2916,7,24,3,0,0); -- Thrashing Assault
INSERT INTO `blue_spell_list` VALUES (710,1952,4,17,2,0,0); -- Erratic Flutter
INSERT INTO `blue_spell_list` VALUES (711,2052,7,15,8,0,0); -- Restoral
INSERT INTO `blue_spell_list` VALUES (712,2051,6,27,8,0,0); -- Rail Cannon
INSERT INTO `blue_spell_list` VALUES (713,2054,6,20,8,0,0); -- Diffusion Ray
INSERT INTO `blue_spell_list` VALUES (714,2073,6,8,8,2,0); -- Sinker Drill
