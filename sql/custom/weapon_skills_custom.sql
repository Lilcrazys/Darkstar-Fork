-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of weapon_skills.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------
ALTER TABLE `weapon_skills` MODIFY `weaponskillid` smallint(4); -- Required because DSP stupidity
-- REPLACE INTO `weapon_skills` VALUES (weaponskillid,'name',x'jobs',type,skilllevel,element,animation,animationtime,range,aoe,primary_sc,secondary_sc,tertiary_sc,main_only);
REPLACE INTO `weapon_skills` VALUES (238,'uriel_blade',x'01000000010001010000000000000001010000000001',3,400,128,243,2000,6,1,13,10,0,0);
REPLACE INTO `weapon_skills` VALUES (239,'glory_slash',x'02000000020202020202020202020002020002000002',3,400,0,242,2000,6,1,13,10,0,0);
REPLACE INTO `weapon_skills` VALUES (240,'tartarus_torpor',x'01010101000001000001000000010100000000010000',12,400,0,149,2000,10,1,2,8,0,0);

INSERT INTO `weapon_skills` VALUES (227,'knights_of_rotund',x'00000000000000000000000000000000000000000000',3,0,0,52,2000,5,1,13,11,0,0); -- Job mask stays zeros! WS is provided by modifier on the item only!


-- Teo's work in progress section, don't mess with it yet.
-- INSERT INTO `weapon_skills` VALUES (241,'netherspikes',x'00000000000000000000000000000000000000000000',1,5,0,239,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (242,'carnal_nightmare',x'00000000000000000000000000000000000000000000',1,5,0,241,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (243,'aegis_schism',x'00000000000000000000000000000000000000000000',1,5,0,242,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (244,'dancing_chains',x'00000000000000000000000000000000000000000000',1,5,0,243,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (245,'barbed_crescent',x'00000000000000000000000000000000000000000000',1,5,0,244,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (246,'shackled_fists',x'00000000000000000000000000000000000000000000',1,5,0,246,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (247,'foxfire',x'00000000000000000000000000000000000000000000',1,5,0,247,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (248,'grim_halo',x'00000000000000000000000000000000000000000000',1,5,0,248,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (249,'netherspikes',x'00000000000000000000000000000000000000000000',1,5,0,16,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (250,'carnal_nightmare',x'00000000000000000000000000000000000000000000',1,5,0,241,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (251,'aegis_schism',x'00000000000000000000000000000000000000000000',1,5,0,242,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (252,'dancing_chains',x'00000000000000000000000000000000000000000000',1,5,0,243,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (253,'barbed_crescent',x'00000000000000000000000000000000000000000000',1,5,0,244,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (254,'vulcan_shot',x'00000000000000000000000000000000000000000000',1,5,0,16,5,1,8,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (255,'dimensional_death',x'00000000000000000000000000000000000000000000',1,5,0,190,5,1,8,0,0,0);
-- 256 to 260 nothing exists.
-- INSERT INTO `weapon_skills` VALUES (ID,name,jobs,type,skilllevel,element,animation,range,aoe,primary_sc,secondary_sc,tertiary_sc,main_only);
-- 261+ for Loki's custom stuffs.
-- May have to rethink this..Packet issues.
-- INSERT INTO `weapon_skills` VALUES (261,'dot_war',x'01000000000000000000000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (262,'dot_mnk',x'00010000000000000000000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (263,'dot_whm',x'00000100000000000000000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (264,'dot_blm',x'00000001000000000000000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (265,'dot_rdm',x'00000000010000000000000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (266,'dot_thf',x'00000000000100000000000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (267,'dot_pld',x'00000000000001000000000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (268,'dot_drk',x'00000000000000010000000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (269,'dot_bst',x'00000000000000000100000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (270,'dot_brd',x'00000000000000000001000000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (271,'dot_rng',x'00000000000000000000010000000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (272,'dot_sam',x'00000000000000000000000100000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (273,'dot_nin',x'00000000000000000000000001000000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (274,'dot_drg',x'00000000000000000000000000010000000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (275,'dot_smn',x'00000000000000000000000000000100000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (276,'dot_blu',x'00000000000000000000000000000001000000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (277,'dot_cor',x'00000000000000000000000000000000010000000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (278,'dot_pup',x'00000000000000000000000000000000000100000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (279,'dot_dnc',x'00000000000000000000000000000000000001000000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (280,'dot_sch',x'00000000000000000000000000000000000000010000',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (281,'dot_geo',x'00000000000000000000000000000000000000000100',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (282,'dot_run',x'00000000000000000000000000000000000000000001',1,700,0,0,1,1,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (ID,name,jobs,type,skilllevel,element,animation,range,aoe,primary_sc,secondary_sc,tertiary_sc,main_only);
-- END Legion Custom Section