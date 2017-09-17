-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of weapon_skills,sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have,use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------
-- INSERT INTO `abilities` VALUES (abilityId,name,job,level,validTarget,recastTime,recastId,message1,message2,animation,animationTime,castTime,actionType,range,isAOE,CE,VE,meritModID,addType,'expansion');
-- Keeps keep it sorted by ID and use gaps in file to show gaps in IDs.

REPLACE INTO `abilities` VALUES (6,'invincible',7,0,1,3600,0,0,0,18,2000,0,6,20.0,0,30000,30000,0,0,null);
REPLACE INTO `abilities` VALUES (17,'defender',1,25,1,180,3,117,0,1,2000,0,6,20.0,0,1,500,386,0,null);

REPLACE INTO `abilities` VALUES (19,'provoke',1,5,4,30,5,0,0,3,2000,0,6,18.0,0,2,2400,0,0,null);

REPLACE INTO `abilities` VALUES (23,'boost',2,5,1,15,16,116,0,7,2000,0,6,20.0,0,1,999,0,0,null);

REPLACE INTO `abilities` VALUES (30,'shield_bash',7,15,4,180,73,0,0,185,2000,0,3,4.4,0,1,1050,768,0,null);
REPLACE INTO `abilities` VALUES (31,'holy_circle',7,5,1,600,74,0,0,29,2000,0,6,20.0,1,1,200,770,0,null);
REPLACE INTO `abilities` VALUES (32,'sentinel',7,30,1,300,75,0,0,11,2000,0,6,20.0,0,2,2400,772,0,null);

REPLACE INTO `abilities` VALUES (61,'weapon_bash',8,20,4,180,88,0,0,201,2000,0,3,4.4,0,1,999,0,0,null);

REPLACE INTO `abilities` VALUES (63,'cover',7,35,2,180,76,0,0,86,2000,0,6,20.0,0,10,2400,0,0,null);

REPLACE INTO `abilities` VALUES (76,'rampart',7,62,1,300,77,0,0,91,2000,0,6,20.0,1,1,1450,776,0,null);

REPLACE INTO `abilities` VALUES (100,'dancers_roll',17,61,1,60,193,420,0,116,2000,0,6,8.0,1,1,80,0,8,'WOTG');
REPLACE INTO `abilities` VALUES (101,'scholars_roll',17,64,1,60,193,420,0,117,2000,0,6,8.0,1,1,80,0,8,'WOTG');
INSERT INTO `abilities` VALUES (102,'bolters_roll',17,76,1,60,193,420,0,118,2000,0,6,8.0,1,1,80,0,8,'TOAU');
INSERT INTO `abilities` VALUES (103,'casters_roll',17,79,1,60,193,420,0,119,2000,0,6,8.0,1,1,80,0,8,'TOAU');
INSERT INTO `abilities` VALUES (104,'coursers_roll',17,81,1,60,193,420,0,120,2000,0,6,8.0,1,1,80,0,8,'TOAU');
INSERT INTO `abilities` VALUES (105,'blitzers_roll',17,83,1,60,193,420,0,121,2000,0,6,8.0,1,1,80,0,8,'TOAU');
INSERT INTO `abilities` VALUES (106,'tacticians_roll',17,86,1,60,193,420,0,122,2000,0,6,8.0,1,1,80,0,8,'TOAU');

REPLACE INTO `abilities` VALUES (115,'light_shot',17,40,4,60,195,110,0,123,2000,0,6,18.0,0,0,0,0,0,'TOAU');
REPLACE INTO `abilities` VALUES (116,'dark_shot',17,40,4,60,195,110,0,124,2000,0,6,18.0,0,0,0,0,0,'TOAU');

REPLACE INTO `abilities` VALUES (158,'seigan',12,35,1,60,139,0,0,164,2000,0,6,20.0,0,1,999,0,0,'TOAU');

REPLACE INTO `abilities` VALUES (188,'animated_flourish',19,20,4,30,221,119,0,181,2000,0,6,17.6,0,2,2000,0,0,'WOTG');

REPLACE INTO `abilities` VALUES (210,'retaliation',1,60,1,180,8,0,0,185,2000,0,6,20.0,0,1,800,0,0,'WOTG');

INSERT INTO `abilities` VALUES (212,'despoil',6,77,4,300,61,125,0,232,2000,0,6,3.0,0,1,300,0,0,'WOTG');

REPLACE INTO `abilities` VALUES (232,'yonin',13,40,1,180,146,0,0,218,2000,0,6,20.0,0,1,999,0,4,'WOTG');

INSERT INTO `abilities` VALUES (234,'avatars_favor',15,55,1,300,176,0,0,220,2000,0,6,10.0,1,1,80,0,0,'WOTG');
REPLACE INTO `abilities` VALUES (235,'ready',9,25,4,60,232,0,0,255,2000,0,6,18.0,0,0,0,0,0,'WOTG');
INSERT INTO `abilities` VALUES (236,'restraint',1,77,1,600,9,0,0,232,2000,0,6,20.0,0,1,300,0,0,'WOTG');
INSERT INTO `abilities` VALUES (237,'perfect_counter',2,79,1,60,22,0,0,232,2000,0,6,20.0,0,1,0,0,0,'WOTG');
INSERT INTO `abilities` VALUES (238,'mana_wall',4,76,1,600,39,0,0,222,2000,0,6,20.0,0,1,80,0,0,'WOTG');
INSERT INTO `abilities` VALUES (239,'divine_emblem',7,78,1,600,80,0,0,223,2000,0,6,20.0,0,1,300,0,0,'WOTG');
INSERT INTO `abilities` VALUES (240,'nether_void',8,78,1,300,91,0,0,224,2000,0,6,20.0,0,1,300,0,0,'WOTG');

INSERT INTO `abilities` VALUES (242,'sengikori',12,77,1,180,141,0,0,226,2000,0,6,20.0,0,1,80,0,0,'ABYSSEA');
REPLACE INTO `abilities` VALUES (243,'futae',13,77,1,180,148,0,0,232,2000,0,6,20.0,0,1,0,0,0,'ABYSSEA');
INSERT INTO `abilities` VALUES (244,'spirit_jump',14,77,4,60,158,110,0,232,2000,0,3,10.0,0,1,0,1218,0,null);
INSERT INTO `abilities` VALUES (245,'presto',19,77,1,30,236,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (246,'divine_waltz_ii',19,78,27,20,217,306,0,11,2000,0,14,20.0,1,3,3,0,0,null);
INSERT INTO `abilities` VALUES (247,'flourishes_iii',19,80,1,0,0,0,0,0,2000,0,14,20.0,0,0,0,0,0,null);
INSERT INTO `abilities` VALUES (248,'climactic_flourish',19,80,1,90,226,0,0,232,2000,0,6,20.0,0,1,0,0,0,null);
INSERT INTO `abilities` VALUES (249,'libra',20,76,2,60,237,0,0,231,2000,0,6,11.0,0,0,0,0,0,null);
INSERT INTO `abilities` VALUES (250,'tactical_switch',18,79,1,180,213,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (251,'blood_rage',1,87,1,300,11,0,0,232,2000,0,6,13.9,1,1,300,0,0,null);
INSERT INTO `abilities` VALUES (253,'impetus',2,88,1,300,31,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (254,'divine_caress',3,83,1,60,32,0,0,232,2000,0,6,20.0,0,0,0,0,0,null);
INSERT INTO `abilities` VALUES (255,'sacrosanctity',3,95,1,600,33,0,0,232,2000,0,6,10.0,1,1,100,0,0,null);
INSERT INTO `abilities` VALUES (256,'enmity_douse',4,87,4,600,34,0,0,232,2000,0,6,13.0,0,0,0,0,0,null);
INSERT INTO `abilities` VALUES (257,'manawell',4,95,1,600,35,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
REPLACE INTO `abilities` VALUES (258,'saboteur',5,83,1,300,36,0,0,232,2000,0,6,20.0,0,1,80,0,0,'ABYSSEA');
REPLACE INTO `abilities` VALUES (259,'spontaneity',5,95,1,600,37,0,0,232,2000,0,6,20.0,0,1,0,0,0,'ABYSSEA');
INSERT INTO `abilities` VALUES (260,'conspirator',6,87,1,300,40,0,0,232,2000,0,6,14.0,1,1,80,0,0,null);
INSERT INTO `abilities` VALUES (261,'sepulcher',7,87,4,300,41,0,0,232,2000,0,6,12.0,0,1,400,0,0,null);
INSERT INTO `abilities` VALUES (262,'palisade',7,95,1,300,42,0,0,232,2000,0,6,20.0,0,1,800,0,0,null);
INSERT INTO `abilities` VALUES (263,'arcane_crest',8,87,4,300,43,0,0,232,2000,0,6,12.0,0,1,400,0,0,null);
INSERT INTO `abilities` VALUES (264,'scarlet_delirium',8,95,1,180,44,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (265,'spur',9,83,1,180,45,0,0,232,2000,0,6,20.0,0,0,0,0,0,null);
INSERT INTO `abilities` VALUES (266,'run_wild',9,93,1,900,46,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
REPLACE INTO `abilities` VALUES (267,'tenuto',10,83,1,5,47,0,0,232,2000,0,6,20.0,0,0,0,0,0,'ABYSSEA');
REPLACE INTO `abilities` VALUES (268,'marcato',10,95,1,600,48,0,0,232,2000,0,6,20.0,0,1,80,0,0,'ABYSSEA');
INSERT INTO `abilities` VALUES (269,'bounty_shot',11,87,4,60,51,0,0,232,2000,0,6,15.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (270,'decoy_shot',11,95,1,300,52,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (271,'hamanoha',12,87,4,300,53,0,0,232,2000,0,6,12.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (272,'hagakure',12,95,1,180,54,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);

REPLACE INTO `abilities` VALUES (275,'issekigan',13,95,1,300,57,0,0,232,2000,0,6,20.0,0,1,999,0,0,'ABYSSEA');
INSERT INTO `abilities` VALUES (276,'dragon_breaker',14,87,4,300,58,0,0,232,2000,0,6,12.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (277,'soul_jump',14,85,4,120,159,110,0,232,2000,0,3,12.0,0,1,0,1220,0,null);

INSERT INTO `abilities` VALUES (279,'steady_wing',14,95,1,300,70,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (280,'mana_cede',15,87,1,300,71,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (281,'efflux',16,83,1,180,185,0,0,256,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (282,'unbridled_learning',16,95,1,300,186,0,0,257,2000,0,6,20.0,0,1,80,0,0,null);

INSERT INTO `abilities` VALUES (285,'triple_shot',11,87,1,180,84,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (286,'allies_roll',17,89,1,60,193,420,0,138,2000,0,6,8.0,1,1,80,0,8,null);
INSERT INTO `abilities` VALUES (287,'misers_roll',17,92,1,60,193,420,0,139,2000,0,6,8.0,1,1,80,0,8,null);
INSERT INTO `abilities` VALUES (288,'companions_roll',17,95,1,60,193,420,0,265,2000,0,6,8.0,1,1,80,0,8,null);
INSERT INTO `abilities` VALUES (289,'avengers_roll',17,97,1,60,193,420,0,266,2000,0,6,8.0,1,1,80,0,8,null);

INSERT INTO `abilities` VALUES (293,'cooldown',18,95,1,300,114,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (295,'curing_waltz_v',19,87,27,17,217,306,0,9,2000,0,6,20.0,0,3,3,0,0,null);
INSERT INTO `abilities` VALUES (296,'feather_step',19,83,4,15,220,0,0,220,2000,0,6,20.0,0,1,0,0,0,null);
INSERT INTO `abilities` VALUES (297,'striking_flourish',19,89,1,120,226,0,0,232,2000,0,14,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (298,'ternary_flourish',19,93,1,150,226,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);

INSERT INTO `abilities` VALUES (300,'perpetuance',20,87,1,300,231,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (301,'immanence',20,87,1,300,231,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (302,'smiting_breath',14,90,1,60,238,0,0,232,2000,1500,13,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (303,'restoring_breath',14,90,1,60,239,0,0,232,2000,1500,13,20.0,0,1,80,0,0,null);

INSERT INTO `abilities` VALUES (305,'bully',6,93,4,180,240,0,0,232,2000,0,6,12.0,0,1,80,0,0,null);

INSERT INTO `abilities` VALUES (329,'full_circle',21,5,1,10,243,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (330,'lasting_emanation',21,25,1,300,244,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (331,'ecliptic_attrition',21,25,1,300,244,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (332,'collimated_fervor',21,40,1,300,245,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (333,'life_cycle',21,50,1,600,246,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (334,'blaze_of_glory',21,60,1,600,247,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (335,'dematerialize',21,70,1,600,248,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (336,'theurgic_focus',21,80,1,300,249,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (337,'concentric_pulse',21,90,1,300,250,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);

REPLACE INTO `abilities` VALUES (342,'ignis',22,5,1,10,10,0,0,232,2000,0,6,20.0,0,80,320,0,0,'SOA');
REPLACE INTO `abilities` VALUES (343,'gelus',22,5,1,10,10,0,0,232,2000,0,6,20.0,0,80,320,0,0,'SOA');
REPLACE INTO `abilities` VALUES (344,'flabra',22,5,1,10,10,0,0,232,2000,0,6,20.0,0,80,320,0,0,'SOA');
REPLACE INTO `abilities` VALUES (345,'tellus',22,5,1,10,10,0,0,232,2000,0,6,20.0,0,80,320,0,0,'SOA');
REPLACE INTO `abilities` VALUES (346,'sulpor',22,5,1,10,10,0,0,232,2000,0,6,20.0,0,80,320,0,0,'SOA');
REPLACE INTO `abilities` VALUES (347,'unda',22,5,1,10,10,0,0,232,2000,0,6,20.0,0,80,320,0,0,'SOA');
REPLACE INTO `abilities` VALUES (348,'lux',22,5,1,10,10,0,0,232,2000,0,6,20.0,0,80,320,0,0,'SOA');
REPLACE INTO `abilities` VALUES (349,'tenebrae',22,5,1,10,10,0,0,232,2000,0,6,20.0,0,80,320,0,0,'SOA');
INSERT INTO `abilities` VALUES (350,'vallation',22,10,1,180,23,0,0,232,2000,0,6,20.0,0,450,900,0,0,'SOA');
REPLACE INTO `abilities` VALUES (351,'swordplay',22,20,1,300,24,0,0,232,2000,0,6,20.0,0,160,320,0,0,'SOA');
INSERT INTO `abilities` VALUES (352,'lunge',22,25,1,180,25,0,0,232,2000,0,6,20.0,0,1,0,0,0,'SOA');
INSERT INTO `abilities` VALUES (353,'pflug',22,40,1,180,59,0,0,232,2000,0,6,20.0,0,1,80,0,0,'SOA');
INSERT INTO `abilities` VALUES (354,'embolden',22,60,1,600,72,0,0,232,2000,0,6,20.0,0,160,320,0,0,'SOA');
INSERT INTO `abilities` VALUES (355,'valiance',22,50,1,300,113,0,0,232,2000,0,6,20.0,0,450,900,0,0,'SOA');
INSERT INTO `abilities` VALUES (356,'gambit',22,70,1,600,116,0,0,232,2000,0,6,20.0,0,640,1280,0,0,'SOA');
INSERT INTO `abilities` VALUES (357,'liement',22,85,1,180,117,0,0,232,2000,0,6,20.0,0,450,900,0,0,'SOA');
REPLACE INTO `abilities` VALUES (358,'one_for_all',22,95,1,600,118,0,0,232,2000,0,6,20.0,1,160,320,0,0,'SOA');

REPLACE INTO `abilities` VALUES (363,'ward',22,10,1,300,142,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
REPLACE INTO `abilities` VALUES (364,'effusion',22,25,1,300,143,0,0,232,2000,0,6,20.0,0,1,80,0,0,null);
INSERT INTO `abilities` VALUES (365,'chocobo_jig_ii',19,70,1,60,218,126,0,13,2000,0,14,20.0,1,1,300,0,0,'WOTG');

INSERT INTO `abilities` VALUES (503,'holy_mist',15,76,4,60,173,0,0,0,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (504,'soothing_ruby',15,94,1,60,174,0,0,0,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (505,'regal_scratch',15,1,1,60,174,0,0,5,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (506,'mewing_lullaby',15,25,1,60,174,0,0,61,2000,0,6,18.0,1,1,60,0,0,null);
INSERT INTO `abilities` VALUES (507,'eerie_eye',15,1,55,60,173,0,0,134,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (508,'level_?_holy',15,75,1,60,173,0,0,235,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (509,'raise_ii',15,1,15,60,174,0,0,160,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (510,'reraise_ii',15,1,30,60,174,0,0,80,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (511,'altanas_favor',15,1,1,60,174,0,0,54,2000,0,6,18.0,0,1,60,2954,1,null);

INSERT INTO `abilities` VALUES (521,'lunar_bay',15,78,4,60,173,0,0,0,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (522,'heavenward_howl',15,96,1,60,174,0,0,0,2000,0,6,18.0,1,1,60,0,0,null);

INSERT INTO `abilities` VALUES (537,'inferno_howl',15,88,1,60,174,0,0,0,2000,0,6,18.0,1,1,60,0,0,null);

INSERT INTO `abilities` VALUES (553,'earthen_armor',15,82,1,60,174,0,0,0,2000,0,6,18.0,1,1,60,0,0,null);

INSERT INTO `abilities` VALUES (569,'tidal_roar',15,84,1,60,174,0,0,0,2000,0,6,18.0,1,1,60,0,0,null);

INSERT INTO `abilities` VALUES (585,'fleet_wind',15,86,1,60,174,0,0,0,2000,0,6,18.0,1,1,60,0,0,null);

INSERT INTO `abilities` VALUES (601,'diamond_storm',15,90,4,60,174,0,0,0,2000,0,6,18.0,1,1,60,0,0,null);

INSERT INTO `abilities` VALUES (617,'shock_squall',15,92,4,60,174,0,0,0,2000,0,6,18.0,1,1,60,0,0,null);

INSERT INTO `abilities` VALUES (647,'cacodemonia',15,1,4,60,173,0,0,0,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (648,'ruinous_omen',15,1,4,60,173,0,0,0,2000,0,6,18.0,1,1,60,0,2,null);
INSERT INTO `abilities` VALUES (649,'night_terror',15,80,4,60,173,0,0,0,2000,0,6,18.0,0,1,60,0,0,null);
INSERT INTO `abilities` VALUES (650,'pavor_nocturnus',15,98,4,60,174,0,0,0,2000,0,6,18.0,0,1,60,0,0,null);

-- INSERT INTO `abilities` VALUES (654,'zantetsuken',15,75,4,0,0,0,0,0,2000,0,6,18.0,1,0,0,0,0,null);
-- INSERT INTO `abilities` VALUES (655,'perfect_defense',15,75,1,0,0,0,0,0,2000,0,6,18.0,1,0,0,0,0,null);
