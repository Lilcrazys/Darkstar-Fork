-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of weapon_skills.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------
-- ALTER TABLE `weapon_skills` MODIFY `weaponskillid` smallint(4); -- May be required in future for ID above 255
-- REPLACE INTO `weapon_skills` VALUES (weaponskillid,'name',jobs,type,skilllevel,element,animation,animationTime,range,aoe,primary_sc,secondary_sc,tertiary_sc,main_only,unlock_id);

INSERT INTO `weapon_skills` VALUES (227,'knights_of_rotund',0x00000000000000000000000000000000000000000000,3,0,0,52,2000,5,1,13,11,0,0,0); -- Job mask stays zeros! WS is provided by modifier on the item only!

REPLACE INTO `weapon_skills` VALUES (238,'uriel_blade',0x01000000010001010000000000000001010000000001,3,400,128,243,2000,6,1,13,10,0,0,0);
REPLACE INTO `weapon_skills` VALUES (239,'glory_slash',0x02000000020202020202020202020002020002000002,3,400,0,242,2000,6,1,13,10,0,0,0);
REPLACE INTO `weapon_skills` VALUES (240,'tartarus_torpor',0x01010101000001000001000000010100000000010000,12,400,0,149,2000,10,1,2,8,0,0,0);

-- Teo's work in progress section, don't mess with it yet.
-- Fomor WS granted via item, keep job mask zero's!
-- INSERT INTO `weapon_skills` VALUES (241,'netherspikes',0x00000000000000000000000000000000000000000000,1,0,0,239,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (242,'carnal_nightmare',0x00000000000000000000000000000000000000000000,1,0,0,241,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (243,'aegis_schism',0x00000000000000000000000000000000000000000000,1,0,0,242,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (244,'dancing_chains',0x00000000000000000000000000000000000000000000,1,0,0,243,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (245,'barbed_crescent',0x00000000000000000000000000000000000000000000,1,0,0,244,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (246,'shackled_fists',0x00000000000000000000000000000000000000000000,1,0,0,246,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (247,'foxfire',0x00000000000000000000000000000000000000000000,1,0,0,247,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (248,'grim_halo',0x00000000000000000000000000000000000000000000,1,0,0,248,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (249,'netherspikes',0x00000000000000000000000000000000000000000000,1,0,0,16,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (250,'carnal_nightmare',0x00000000000000000000000000000000000000000000,1,0,0,241,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (251,'aegis_schism',0x00000000000000000000000000000000000000000000,1,0,0,242,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (252,'dancing_chains',0x00000000000000000000000000000000000000000000,1,0,0,243,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (253,'barbed_crescent',0x00000000000000000000000000000000000000000000,1,0,0,244,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (254,'vulcan_shot',0x00000000000000000000000000000000000000000000,1,0,0,16,2000,5,1,8,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (255,'dimensional_death',0x00000000000000000000000000000000000000000000,1,0,0,190,2000,5,1,8,0,0,0,0);
-- 256 to 260 nothing exists.
-- INSERT INTO `weapon_skills` VALUES (weaponskillid,'name',jobs,type,skilllevel,element,animation,range,aoe,primary_sc,secondary_sc,tertiary_sc,main_only,unlock_id);
-- 261+ for Loki's custom stuffs.
-- May have to rethink this..Packet issues.
-- INSERT INTO `weapon_skills` VALUES (261,'dot_war',0x01000000000000000000000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (262,'dot_mnk',0x00010000000000000000000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (263,'dot_whm',0x00000100000000000000000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (264,'dot_blm',0x00000001000000000000000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (265,'dot_rdm',0x00000000010000000000000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (266,'dot_thf',0x00000000000100000000000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (267,'dot_pld',0x00000000000001000000000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (268,'dot_drk',0x00000000000000010000000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (269,'dot_bst',0x00000000000000000100000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (270,'dot_brd',0x00000000000000000001000000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (271,'dot_rng',0x00000000000000000000010000000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (272,'dot_sam',0x00000000000000000000000100000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (273,'dot_nin',0x00000000000000000000000001000000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (274,'dot_drg',0x00000000000000000000000000010000000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (275,'dot_smn',0x00000000000000000000000000000100000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (276,'dot_blu',0x00000000000000000000000000000001000000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (277,'dot_cor',0x00000000000000000000000000000000010000000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (278,'dot_pup',0x00000000000000000000000000000000000100000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (279,'dot_dnc',0x00000000000000000000000000000000000001000000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (280,'dot_sch',0x00000000000000000000000000000000000000010000,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (281,'dot_geo',0x00000000000000000000000000000000000000000100,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (282,'dot_run',0x00000000000000000000000000000000000000000001,1,700,0,0,2000,1,1,0,0,0,0,0);
-- INSERT INTO `weapon_skills` VALUES (weaponskillid,'name',jobs,type,skilllevel,element,animation,animationtime,range,aoe,primary_sc,secondary_sc,tertiary_sc,main_only,unlock_id);
-- END Legion Custom Section