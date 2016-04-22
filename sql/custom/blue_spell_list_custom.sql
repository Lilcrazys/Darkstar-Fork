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
INSERT INTO `blue_spell_list` VALUES (700,2689,6,16,8,0,0); -- Natures Meditation
INSERT INTO `blue_spell_list` VALUES (701,2694,6,18,8,0,0); -- Tempestuous Upheaval
INSERT INTO `blue_spell_list` VALUES (702,2702,6,13,8,0,0); -- Rending Deluge
INSERT INTO `blue_spell_list` VALUES (703,2711,6,8,8,0,0); -- Embalming Earth
INSERT INTO `blue_spell_list` VALUES (704,2714,6,23,8,3,0); -- Paralyzing Triad
INSERT INTO `blue_spell_list` VALUES (705,2718,4,29,8,0,0); -- Foul Waters
INSERT INTO `blue_spell_list` VALUES (706,2732,2,15,8,12,0); -- Glutinous Dart
INSERT INTO `blue_spell_list` VALUES (707,2774,5,17,8,0,0); -- Retinal Glare
INSERT INTO `blue_spell_list` VALUES (708,2674,6,24,8,0,0); -- Subduction
INSERT INTO `blue_spell_list` VALUES (709,893,7,24,3,0,0); -- Thrashing Assault
INSERT INTO `blue_spell_list` VALUES (710,1696,4,17,2,0,0); -- Erratic Flutter
INSERT INTO `blue_spell_list` VALUES (711,1785,7,15,8,0,0); -- Restoral
INSERT INTO `blue_spell_list` VALUES (712,1798,6,27,8,0,0); -- Rail Cannon
INSERT INTO `blue_spell_list` VALUES (713,1798,6,20,8,0,0); -- Diffusion Ray
INSERT INTO `blue_spell_list` VALUES (714,1817,6,8,8,2,0); -- Sinker Drill
