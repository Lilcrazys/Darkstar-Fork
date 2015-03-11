-- ---------------------------------------------------------------------------
-- This file adds onto, modifies, or removes portions of the table "mob_droplist"
-- created by the file mob_droplist.sql and must be imported/executed AFTER that file.
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
--
-- To REMOVE a drop that DarkStar has we don't want in Legion, use:
-- DELETE FROM `mob_droplist` WHERE `dropid`=0 and `type`=0 and `itemid`=0 `droprate`=0;
-- Where the zero is replaced by whatever values DarkStar was using.
--
-- Please comment what is dropping from what mob on each line:
-- REPLACE INTO '`mob_droplist` VALUES (dropid,type,itemid,droprate); -- Item name from NM name
-- ---------------------------------------------------------------------------

-- Examples
-- DELETE FROM `mob_droplist` WHERE 'dropid'=1 and 'type'=2 and 'itemid'=3 'droprate'=4;
-- INSERT INTO `mob_droplist` VALUES (5,6,7,8);
-- REPLACE INTO `mob_droplist` VALUES (9,10,11,12);
INSERT INTO `mob_droplist` VALUES (32,0,12094,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (52,0,3291,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (52,0,3291,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (75,0,19405,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (83,0,12105,340); -- COMMENT ME
DELETE FROM `mob_droplist` WHERE `dropId`=92 and `type`=0 and `itemId`=3089 and `rate`=100; -- Orobon Cheekmeat from Ancient Orbon
DELETE FROM `mob_droplist` WHERE `dropId`=92 and `type`=0 and `itemId`=5563 and `rate`=100; -- Orobon Meat from Ancient Orbon
INSERT INTO `mob_droplist` VALUES (92,0,3172,60); -- Orison seal leg from Cep-Kamuy to Ancient Orbon
INSERT INTO `mob_droplist` VALUES (92,0,3181,60); -- Unkai seal leg from Cep-Kamuy to Ancient Orbon
INSERT INTO `mob_droplist` VALUES (92,0,3177,60); -- Bale seal leg from Cep-Kamuy to Ancient Orbon
INSERT INTO `mob_droplist` VALUES (92,0,3185,60); -- Mavi seal leg from Cep-Kamuy to Ancient Orbon
INSERT INTO `mob_droplist` VALUES (151,0,3289,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (151,0,3289,1000); -- COMMENT ME
DELETE FROM `mob_droplist` WHERE `dropId`=186 and `type`=0 and `itemId`=3176 and `rate`=100; -- Creed seal leg from Asanbosam
DELETE FROM `mob_droplist` WHERE `dropId`=186 and `type`=0 and `itemId`=3179 and `rate`=100; -- Aoidos seal leg from Asanbosam
DELETE FROM `mob_droplist` WHERE `dropId`=186 and `type`=0 and `itemId`=3180 and `rate`=100; -- Sylvan seal leg from Asanbosam
DELETE FROM `mob_droplist` WHERE `dropId`=186 and `type`=0 and `itemId`=3185 and `rate`=100; -- Mavi seal leg from Asanbosam
INSERT INTO `mob_droplist` VALUES (186,0,3176,450); -- Creed seal leg from Asanbosam
INSERT INTO `mob_droplist` VALUES (186,0,3176,480); -- Creed seal leg from Asanbosam
INSERT INTO `mob_droplist` VALUES (186,0,3179,460); -- Aoidos seal leg from Asanbosam
INSERT INTO `mob_droplist` VALUES (186,0,3179,490); -- Aoidos seal leg from Asanbosam
INSERT INTO `mob_droplist` VALUES (186,0,3180,430); -- Sylvan seal leg from Asanbosam
INSERT INTO `mob_droplist` VALUES (186,0,3180,460); -- Sylvan seal leg from Asanbosam
INSERT INTO `mob_droplist` VALUES (186,0,3185,410); -- Mavi seal leg from Asanbosam
INSERT INTO `mob_droplist` VALUES (186,0,3185,430); -- Mavi seal leg from Asanbosam

DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3171 and `rate`=600; -- Tantra seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3171 and `rate`=300; -- Tantra seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3171 and `rate`=200; -- Tantra seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3171 and `rate`=150; -- Tantra seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3171 and `rate`=120; -- Tantra seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3175 and `rate`=320; -- Raider's seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3175 and `rate`=160; -- Raider's seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3175 and `rate`=110; -- Raider's seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3175 and `rate`=80; -- Raider's seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3182 and `rate`=460; -- Iga seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3182 and `rate`=230; -- Iga seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3182 and `rate`=150; -- Iga seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3182 and `rate`=110; -- Iga seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3182 and `rate`=90; -- Iga seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3188 and `rate`=320; -- Charis seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3188 and `rate`=160; -- Charis seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3188 and `rate`=110; -- Charis seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3188 and `rate`=80; -- Charis seal leg from Athamas
DELETE FROM `mob_droplist` WHERE `dropId`=198 and `type`=0 and `itemId`=3188 and `rate`=60; -- Charis seal leg from Athamas
INSERT INTO `mob_droplist` VALUES (198,0,3171,600); -- Tantra seal leg from Athamas
INSERT INTO `mob_droplist` VALUES (198,0,3171,630); -- Tantra seal leg from Athamas
INSERT INTO `mob_droplist` VALUES (198,0,3175,320); -- Raider's seal leg from Athamas
INSERT INTO `mob_droplist` VALUES (198,0,3175,350); -- Raider's seal leg from Athamas
INSERT INTO `mob_droplist` VALUES (198,0,3182,460); -- Iga seal leg from Athamas
INSERT INTO `mob_droplist` VALUES (198,0,3182,490); -- Iga seal leg from Athamas
INSERT INTO `mob_droplist` VALUES (198,0,3188,320); -- Charis seal leg from Athamas
INSERT INTO `mob_droplist` VALUES (198,0,3188,350); -- Charis seal leg from Athamas
INSERT INTO `mob_droplist` VALUES (203,0,12102,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (222,0,3292,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (222,0,3292,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (229,0,12106,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (231,0,12097,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (321,0,12098,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (396,0,2929,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (396,0,2929,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (424,0,2966,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (424,0,2966,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (424,0,19409,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (466,0,2930,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (466,0,2930,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (529,0,2965,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (529,0,2965,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (529,0,19406,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (534,0,11434,60); -- Sapientia Sabots From Div-e Sepid to Clammy Imp
INSERT INTO `mob_droplist` VALUES (534,0,3206,60); -- Navarch's seal feet From Div-e Sepid to Clammy Imp
INSERT INTO `mob_droplist` VALUES (534,0,3192,60); -- Orison seal feet From Div-e Sepid to Clammy Imp
INSERT INTO `mob_droplist` VALUES (534,0,3208,60); -- Charis seal feet From Div-e Sepid to Clammy Imp
INSERT INTO `mob_droplist` VALUES (534,0,3190,60); -- Ravager's seal feet From Div-e Sepid to Clammy Imp

DELETE FROM `mob_droplist` WHERE `dropId`=551 and `type`=0 and `itemId`=2150 and `rate`=380; -- Colibri Feather from Coastal Colibri
DELETE FROM `mob_droplist` WHERE `dropId`=551 and `type`=2 and `itemId`=2171 and `rate`=0; -- Colibri Beak from Coastal Colibri
DELETE FROM `mob_droplist` WHERE `dropId`=551 and `type`=0 and `itemId`=2171 and `rate`=80; -- Colibri Beak from Coastal Colibri
DELETE FROM `mob_droplist` WHERE `dropId`=551 and `type`=0 and `itemId`=3092 and `rate`=200; -- Mocking Beak from Coastal Colibri
INSERT INTO `mob_droplist` VALUES (551,0,3183,60); -- Lancer seal leg from Avalerion to Coastal colibri
INSERT INTO `mob_droplist` VALUES (551,0,3179,60); -- Aoidos seal leg from Avalerion to Coastal colibri
INSERT INTO `mob_droplist` VALUES (551,0,3189,60); -- Savant's seal leg from Avalerion to Coastal
INSERT INTO `mob_droplist` VALUES (551,0,3171,60); -- Tantra seal leg from Avalerion to Coastal colibri
INSERT INTO `mob_droplist` VALUES (727,0,19402,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (788,0,3288,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (788,0,3288,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (788,0,10255,240); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (838,0,12091,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (838,0,19407,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (962,0,2931,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (962,0,2931,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (962,0,12090,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1621,0,16192,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1645,0,19397,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1668,0,12095,340); -- COMMENT ME
DELETE FROM `mob_droplist` WHERE `dropId`=1708 and `type`=0 and `itemId`=3198 and `rate`=100; -- Ferine seal feet from Hrosshvalur
DELETE FROM `mob_droplist` WHERE `dropId`=1708 and `type`=0 and `itemId`=3200 and `rate`=100; -- Sylvan seal feet from Hrosshvalur
DELETE FROM `mob_droplist` WHERE `dropId`=1708 and `type`=0 and `itemId`=3204 and `rate`=100; -- Callers seal feet from Hrosshvalur
DELETE FROM `mob_droplist` WHERE `dropId`=1708 and `type`=0 and `itemId`=3205 and `rate`=100; -- Mavi seal feet from Hrosshvalur
INSERT INTO `mob_droplist` VALUES (1708,0,3198,370); -- Ferine seal feet into Hrosshvalur
INSERT INTO `mob_droplist` VALUES (1708,0,3198,170); -- Ferine seal feet into Hrosshvalur
INSERT INTO `mob_droplist` VALUES (1708,0,3200,510); -- Sylvan seal feet into Hrosshvalur
INSERT INTO `mob_droplist` VALUES (1708,0,3200,310); -- Sylvan seal feet into Hrosshvalur
INSERT INTO `mob_droplist` VALUES (1708,0,3204,370); -- Callers seal feet into Hrosshvalur
INSERT INTO `mob_droplist` VALUES (1708,0,3204,170); -- Callers seal feet into Hrosshvalur
INSERT INTO `mob_droplist` VALUES (1708,0,3205,380); -- Mavi seal feet into Hrosshvalur
INSERT INTO `mob_droplist` VALUES (1708,0,3205,180); -- Mavi seal feet into Hrosshvalur

DELETE FROM `mob_droplist` WHERE `dropId`=1774 and `type`=0 and `itemId`=3194 and `rate`=100; -- Estoqueur`s Seal Feet from Iktomi
DELETE FROM `mob_droplist` WHERE `dropId`=1774 and `type`=0 and `itemId`=3195 and `rate`=100; -- Raider`s Seal Feet from Iktomi
DELETE FROM `mob_droplist` WHERE `dropId`=1774 and `type`=0 and `itemId`=3196 and `rate`=100; -- Creed Seal Feet from Iktomi
DELETE FROM `mob_droplist` WHERE `dropId`=1774 and `type`=0 and `itemId`=3201 and `rate`=100; -- Unkai Seal Feet from Iktomi
INSERT INTO `mob_droplist` VALUES (1774,0,3194,320); -- Estoqueur`s Seal Feet from Iktomi
INSERT INTO `mob_droplist` VALUES (1774,0,3194,350); -- Estoqueur`s Seal Feet from Iktomi
INSERT INTO `mob_droplist` VALUES (1774,0,3195,330); -- Raider`s Seal Feet from Iktomi
INSERT INTO `mob_droplist` VALUES (1774,0,3195,360); -- Raider`s Seal Feet from Iktomi
INSERT INTO `mob_droplist` VALUES (1774,0,3196,490); -- Creed Seal Feet from Iktomi
INSERT INTO `mob_droplist` VALUES (1774,0,3196,520); -- Creed Seal Feet from Iktomi
INSERT INTO `mob_droplist` VALUES (1774,0,3201,480); -- Unkai Seal Feet from Iktomi
INSERT INTO `mob_droplist` VALUES (1774,0,3201,510); -- Unkai Seal Feet from Iktomi
INSERT INTO `mob_droplist` VALUES (1786,0,12093,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1786,0,19404,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1794,0,12092,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1810,0,3290,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1810,0,3290,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1812,0,2962,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1812,0,2962,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1812,0,19400,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1841,0,3191,60); -- Tantra Seal Feet from Iku-Turso to Jasconius
INSERT INTO `mob_droplist` VALUES (1841,0,3202,60); -- Iga Seal Feet from Iku-Turso to Jasconius
INSERT INTO `mob_droplist` VALUES (1841,0,3195,60); -- Raider`s Seal Feet from Iku-Turso to Jasconius
INSERT INTO `mob_droplist` VALUES (1841,0,3208,60); -- Charis Seal Feet from Iku-Turso to Jasconius
INSERT INTO `mob_droplist` VALUES (1841,0,19057,60); -- Caucus Grip from Iku-Turso to Jasconius
INSERT INTO `mob_droplist` VALUES (1966,0,2932,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1966,0,2932,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (1966,0,12088,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (2080,0,12100,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (2473,0,20762,150); -- ukudyoni
INSERT INTO `mob_droplist` VALUES (2487,0,28440,150); -- Windbuffet Belt +1
INSERT INTO `mob_droplist` VALUES (2721,0,3287,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (2721,0,3287,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (2732,0,18574,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3106,0,2967,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3106,0,2967,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3106,0,19398,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3241,0,19410,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3273,0,2964,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3273,0,2964,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3273,0,19408,340); -- COMMENT ME
DELETE FROM `mob_droplist` WHERE `dropId`=3299 and `type`=0 and `itemId`=3107 and `rate`=180; -- Shockshroom used to spawn Armillaria
INSERT INTO `mob_droplist` VALUES (3299,0,3203,60); -- Lancer`s Seal Feet from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (3299,0,3190,60); -- Ravager`s Seal Feet from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (3299,0,3195,60); -- Raiders`s Seal Feet from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (3299,0,3208,60); -- Charis Seal Feet from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (3299,0,18803,60); -- Pax Grip from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (3529,0,12099,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3632,0,12096,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3632,0,19403,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3648,0,2963,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3648,0,2963,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (3648,0,19399,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4071,0,12107,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4516,0,19302,330); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4519,0,12103,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4519,0,19401,340); -- COMMENT ME

DELETE FROM `mob_droplist` WHERE `dropId`=4519 and `type`=0 and `itemId`=17854 and `rate`=133; -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4519,0,13791,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4519,0,11733,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4519,0,11637,700); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4519,0,3225,550); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4519,0,3224,550); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4519,0,20787,108); -- COMMENT ME
DELETE FROM `mob_droplist` WHERE `dropId`=4520 and `type`=0 and `itemId`=11409 and `rate`=167; -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4520,0,11525,520); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4521,0,11594,108); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4521,0,11735,631); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,2928,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,2928,245); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,2928,82); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4522,0,11642,250); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,11509,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,12741,796); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,14888,186); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,3225,193); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,3223,217); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,20553,101); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4523,0,2928,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4524,0,11595,102); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4524,0,17185,592); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4524,0,2933,830); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4524,0,2933,91); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4524,0,646,500); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4524,0,646,130); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4525,0,17626,373); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4525,0,11592,55); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4525,0,2939,620); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4525,0,2939,120); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4526,0,19249,300); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4526,0,3223,217); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4526,0,3225,193); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4527,0,2927,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4527,0,2927,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4527,0,11508,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4527,0,11523,250); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4527,0,3222,288); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4527,0,3225,266); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4527,0,21013,104); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4527,0,2927,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4527,0,2927,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4528,0,12388,500); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4529,0,11564,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4530,0,19250,386); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4531,0,11521,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4531,0,11729,92); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4531,0,11507,231); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4531,0,3224,142); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4531,0,3222,142); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4531,0,12104,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4531,0,20641,103); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4532,0,11604,250); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4532,0,11737,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4532,0,11596,415); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4532,0,18510,320); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4532,0,3222,288); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4532,0,3224,230); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4533,0,15019,386); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4533,0,11597,84); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4533,0,20833,103); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4534,0,18510,654); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4534,0,11596,141); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4535,0,11596,286); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4536,0,17113,152); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4536,0,11548,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4536,0,11517,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4536,0,3222,150); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4536,0,3223,151); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4537,0,15429,252); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4538,0,11551,174); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4538,0,11605,230); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4539,0,11741,474); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4539,0,3225,274); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4539,0,3223,370); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4539,0,3224,234); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4539,0,3222,434); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4540,0,11641,320); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4541,0,11640,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4542,0,28576,225); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4542,0,11646,200); -- Sirona's Ring from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3196,350); -- Creed seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3196,380); -- Creed seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3202,280); -- Iga seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3202,310); -- Iga seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3206,330); -- Navarch's seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3206,360); -- Navarch's seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3191,400); -- Tantra seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3191,430); -- Tantra seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,12101,340); -- COMMENT ME

INSERT INTO `mob_droplist` VALUES (4543,0,12089,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4543,0,28404,225); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4543,0,11361,87); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4543,0,19255,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4543,0,19256,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4543,0,11750,1000); -- COMMENT ME

INSERT INTO `mob_droplist` VALUES (4544,0,21227,110); -- hanqaku-no-yumi
INSERT INTO `mob_droplist` VALUES (4544,0,20858,120); -- Lightreaver
INSERT INTO `mob_droplist` VALUES (4544,0,21364,380); -- Elders Grip
INSERT INTO `mob_droplist` VALUES (4544,0,28665,100); -- Killedar_Shield_+1
INSERT INTO `mob_droplist` VALUES (4544,0,20991,140); -- Chidori
INSERT INTO `mob_droplist` VALUES (4544,0,21284,120); -- Vanir_Gun
INSERT INTO `mob_droplist` VALUES (4544,0,28155,110); -- Scuff._Cosciales
INSERT INTO `mob_droplist` VALUES (4544,0,28287,100); -- Durgai_Leggings
INSERT INTO `mob_droplist` VALUES (4544,0,28465,120); -- Pya'ekue Belt +1
INSERT INTO `mob_droplist` VALUES (4544,0,3925,300); -- Tanz
INSERT INTO `mob_droplist` VALUES (4544,0,3925,300); -- Tanz
INSERT INTO `mob_droplist` VALUES (4544,0,3925,300); -- Tanz

INSERT INTO `mob_droplist` VALUES (4545,0,15807,140); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4545,0,4023,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4545,0,4023,250); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (4545,0,4023,50); -- COMMENT ME


-- -------- Begin Legion Drop-- In Progress - Jewels-Trophy-MainGear Only ATM -----


INSERT INTO `mob_droplist` VALUES (9000,0,3925,200);


INSERT INTO `mob_droplist` VALUES (9001,0,3925,200);


INSERT INTO `mob_droplist` VALUES (9002,0,3925,200);


INSERT INTO `mob_droplist` VALUES (9003,0,3925,200);


INSERT INTO `mob_droplist` VALUES (9004,0,3925,200);


INSERT INTO `mob_droplist` VALUES (9005,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9006,0,3925,1000); -- Harpia - Feet
INSERT INTO `mob_droplist` VALUES (9006,0,3529,1000);
INSERT INTO `mob_droplist` VALUES (9006,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9006,0,28345,100);
INSERT INTO `mob_droplist` VALUES (9006,0,28344,100);
INSERT INTO `mob_droplist` VALUES (9006,0,28342,100);
INSERT INTO `mob_droplist` VALUES (9006,0,28327,100);
INSERT INTO `mob_droplist` VALUES (9006,0,28328,100);
INSERT INTO `mob_droplist` VALUES (9006,0,28329,100);


INSERT INTO `mob_droplist` VALUES (9020,0,3925,200);


INSERT INTO `mob_droplist` VALUES (9021,0,3925,200);


INSERT INTO `mob_droplist` VALUES (9022,0,3925,200);


INSERT INTO `mob_droplist` VALUES (9023,0,3925,200);


INSERT INTO `mob_droplist` VALUES (9024,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9025,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9026,0,3925,1000); -- Mantis - Legs
INSERT INTO `mob_droplist` VALUES (9026,0,3530,1000);
INSERT INTO `mob_droplist` VALUES (9026,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9026,0,28205,100);
INSERT INTO `mob_droplist` VALUES (9026,0,28204,100);
INSERT INTO `mob_droplist` VALUES (9026,0,28203,100);
INSERT INTO `mob_droplist` VALUES (9026,0,28188,100);
INSERT INTO `mob_droplist` VALUES (9026,0,28189,100);
INSERT INTO `mob_droplist` VALUES (9026,0,28190,100);

INSERT INTO `mob_droplist` VALUES (9030,0,3925,400);
INSERT INTO `mob_droplist` VALUES (9030,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9031,0,3925,400);
INSERT INTO `mob_droplist` VALUES (9031,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9032,0,3925,400);
INSERT INTO `mob_droplist` VALUES (9032,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9033,0,3925,400);
INSERT INTO `mob_droplist` VALUES (9033,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9034,0,3925,400);
INSERT INTO `mob_droplist` VALUES (9034,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9035,0,3925,400);
INSERT INTO `mob_droplist` VALUES (9035,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9036,0,3925,1000); -- Nakara - Hands
INSERT INTO `mob_droplist` VALUES (9036,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9036,0,3531,1000);
INSERT INTO `mob_droplist` VALUES (9036,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9036,0,28065,100);
INSERT INTO `mob_droplist` VALUES (9036,0,28064,100);
INSERT INTO `mob_droplist` VALUES (9036,0,28061,100);
INSERT INTO `mob_droplist` VALUES (9036,0,28046,100);
INSERT INTO `mob_droplist` VALUES (9036,0,28047,100);
INSERT INTO `mob_droplist` VALUES (9036,0,28048,100);

INSERT INTO `mob_droplist` VALUES (9040,0,3925,500);
INSERT INTO `mob_droplist` VALUES (9040,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9041,0,3925,500);
INSERT INTO `mob_droplist` VALUES (9041,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9042,0,3925,500);
INSERT INTO `mob_droplist` VALUES (9042,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9043,0,3925,500);
INSERT INTO `mob_droplist` VALUES (9043,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9044,0,3925,500);
INSERT INTO `mob_droplist` VALUES (9044,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9045,0,3925,500);
INSERT INTO `mob_droplist` VALUES (9045,0,3925,200);

INSERT INTO `mob_droplist` VALUES (9046,0,3925,1000); -- Iron Clad - Heads
INSERT INTO `mob_droplist` VALUES (9046,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9046,0,3532,1000);
INSERT INTO `mob_droplist` VALUES (9046,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9046,0,27785,100);
INSERT INTO `mob_droplist` VALUES (9046,0,27784,100);
INSERT INTO `mob_droplist` VALUES (9046,0,27782,100);
INSERT INTO `mob_droplist` VALUES (9046,0,27763,100);
INSERT INTO `mob_droplist` VALUES (9046,0,27762,100);
INSERT INTO `mob_droplist` VALUES (9046,0,27761,100);

INSERT INTO `mob_droplist` VALUES (9050,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9050,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9050,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9050,0,3529,200);

INSERT INTO `mob_droplist` VALUES (9051,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9051,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9051,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9051,0,3530,200);

INSERT INTO `mob_droplist` VALUES (9052,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9052,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9052,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9052,0,3531,200);

INSERT INTO `mob_droplist` VALUES (9053,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9053,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9053,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9053,0,3532,200);

INSERT INTO `mob_droplist` VALUES (9054,0,3925,1000); -- Gallu - Bodies
INSERT INTO `mob_droplist` VALUES (9054,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9054,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9054,0,4851,200);
INSERT INTO `mob_droplist` VALUES (9054,0,27925,200);
INSERT INTO `mob_droplist` VALUES (9054,0,27924,200);
INSERT INTO `mob_droplist` VALUES (9054,0,27922,200);
INSERT INTO `mob_droplist` VALUES (9054,0,27907,200);
INSERT INTO `mob_droplist` VALUES (9054,0,27908,200);
INSERT INTO `mob_droplist` VALUES (9054,0,27909,200);

INSERT INTO `mob_droplist` VALUES (9055,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9055,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9055,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9055,0,4851,200);

INSERT INTO `mob_droplist` VALUES (9056,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9056,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9056,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9056,0,4851,200);

INSERT INTO `mob_droplist` VALUES (9057,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9057,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9057,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9057,0,4851,200);

INSERT INTO `mob_droplist` VALUES (9058,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9058,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9058,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9058,0,4851,200);

INSERT INTO `mob_droplist` VALUES (9059,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9059,0,3925,1000);
INSERT INTO `mob_droplist` VALUES (9059,0,3925,200);
INSERT INTO `mob_droplist` VALUES (9059,0,4851,200);

-- ------ End Legion


-- New 7 HNM
INSERT INTO `mob_droplist` VALUES (9084,0,20548,225);
INSERT INTO `mob_droplist` VALUES (9084,0,27774,70);
INSERT INTO `mob_droplist` VALUES (9084,0,27766,70);
INSERT INTO `mob_droplist` VALUES (9084,0,21389,350);
INSERT INTO `mob_droplist` VALUES (9084,0,21429,350);
INSERT INTO `mob_droplist` VALUES (9084,0,20818,450);
INSERT INTO `mob_droplist` VALUES (9085,0,10597,72);
INSERT INTO `mob_droplist` VALUES (9085,0,20738,220);
INSERT INTO `mob_droplist` VALUES (9085,0,27781,66);
INSERT INTO `mob_droplist` VALUES (9085,0,28201,63);
INSERT INTO `mob_droplist` VALUES (9085,0,28463,70);
INSERT INTO `mob_droplist` VALUES (9085,0,28663,370);
INSERT INTO `mob_droplist` VALUES (9089,0,20861,225);
INSERT INTO `mob_droplist` VALUES (9089,0,27779,67);
INSERT INTO `mob_droplist` VALUES (9089,0,28381,325);
INSERT INTO `mob_droplist` VALUES (9089,0,28062,66);
INSERT INTO `mob_droplist` VALUES (9089,0,28579,69);
INSERT INTO `mob_droplist` VALUES (9090,0,21176,220);
INSERT INTO `mob_droplist` VALUES (9090,0,28050,70);
INSERT INTO `mob_droplist` VALUES (9090,0,28331,70);
INSERT INTO `mob_droplist` VALUES (9090,0,28389,350);
INSERT INTO `mob_droplist` VALUES (9090,0,28449,320);
INSERT INTO `mob_droplist` VALUES (9090,0,20819,420);
INSERT INTO `mob_droplist` VALUES (9091,0,20618,350);
INSERT INTO `mob_droplist` VALUES (9091,0,20997,369);
INSERT INTO `mob_droplist` VALUES (9091,0,27780,67);
INSERT INTO `mob_droplist` VALUES (9091,0,28343,65);
INSERT INTO `mob_droplist` VALUES (9091,0,28401,69);
INSERT INTO `mob_droplist` VALUES (9093,0,21052,220);
INSERT INTO `mob_droplist` VALUES (9093,0,27767,72);
INSERT INTO `mob_droplist` VALUES (9093,0,28201,72);
INSERT INTO `mob_droplist` VALUES (9093,0,28354,332);
INSERT INTO `mob_droplist` VALUES (9093,0,28535,336);
INSERT INTO `mob_droplist` VALUES (9105,0,20762,220);
INSERT INTO `mob_droplist` VALUES (9105,0,20905,220);
INSERT INTO `mob_droplist` VALUES (9105,0,21421,360);
INSERT INTO `mob_droplist` VALUES (9105,0,27781,60);
INSERT INTO `mob_droplist` VALUES (9105,0,28337,80);

-- besieged boss drops
INSERT INTO `mob_droplist` VALUES (9106,0,3925,10);
INSERT INTO `mob_droplist` VALUES (9106,0,4023,30);

-- ------------------ Alkonost ------------------------------
INSERT INTO `mob_droplist` VALUES (9200,0,11563,181); -- Mesmeric Cape
INSERT INTO `mob_droplist` VALUES (9200,0,1311,18); -- Oxblood
INSERT INTO `mob_droplist` VALUES (9200,0,4377,28); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9200,0,1294,24); -- Arachne Thread
INSERT INTO `mob_droplist` VALUES (9200,0,942,19); -- Philosopher's Stone
INSERT INTO `mob_droplist` VALUES (9200,0,887,23); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9200,0,823,21); -- Gold Thread
INSERT INTO `mob_droplist` VALUES (9200,0,830,18); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9200,0,1634,25); -- Rhodonite
INSERT INTO `mob_droplist` VALUES (9200,0,1997,25); -- Sailcloth
INSERT INTO `mob_droplist` VALUES (9200,0,5152,21); -- Buffalo Meat

-- ------------------ Ashtaerth the Gall ------------------------------
INSERT INTO `mob_droplist` VALUES (9201,0,11560,222); -- Pedant cape
INSERT INTO `mob_droplist` VALUES (9201,0,5152,21); -- Buffalo Meat
INSERT INTO `mob_droplist` VALUES (9201,0,1633,28); -- Clot Plasma
INSERT INTO `mob_droplist` VALUES (9201,0,830,18); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9201,0,1634,25); -- Rhodonite

-- ------------------ Bloodeye Vileberry ------------------------------
INSERT INTO `mob_droplist` VALUES (9202,0,12921,222); -- Ace's Hose
INSERT INTO `mob_droplist` VALUES (9202,0,13001,740); -- Augur's Gaiters
INSERT INTO `mob_droplist` VALUES (9202,0,11516,1000); -- Kanja Hachimaki
INSERT INTO `mob_droplist` VALUES (9202,0,3211,50); -- Coin of Vision
INSERT INTO `mob_droplist` VALUES (9202,0,3213,519); -- Card of Vision
INSERT INTO `mob_droplist` VALUES (9202,0,1119,10); -- Tonberry coat
INSERT INTO `mob_droplist` VALUES (9202,0,1162,5); -- Tonberry lantern
INSERT INTO `mob_droplist` VALUES (9202,0,646,15); -- Chunk of adaman ore
INSERT INTO `mob_droplist` VALUES (9202,0,836,15); -- Square of damascene cloth
INSERT INTO `mob_droplist` VALUES (9202,0,739,8); -- Chunk of orichalcum ore

-- ------------------ Bombadeel ------------------------------
INSERT INTO `mob_droplist` VALUES (9203,0,11740,200); -- Thiazi's Belt
INSERT INTO `mob_droplist` VALUES (9203,0,1133,28); -- Dragon Blood
INSERT INTO `mob_droplist` VALUES (9203,0,830,46); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9203,0,887,37); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9203,0,942,19); -- Philosopher's Stone
INSERT INTO `mob_droplist` VALUES (9203,0,1740,18); -- Iolite

-- ------------------ Clingy Clare ------------------------------
INSERT INTO `mob_droplist` VALUES (9204,0,11561,315); -- Salvus Mantle
INSERT INTO `mob_droplist` VALUES (9204,0,4272,13); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9204,0,942,18); -- Philosopher's Stone
INSERT INTO `mob_droplist` VALUES (9204,0,1633,27); -- Handful of clot plasma
INSERT INTO `mob_droplist` VALUES (9204,0,887,27); -- Coral fragment
INSERT INTO `mob_droplist` VALUES (9204,0,1311,29); -- Piece of oxblood
INSERT INTO `mob_droplist` VALUES (9204,0,1634,40); -- Rhodonite

-- ------------------ Guimauve ------------------------------
INSERT INTO `mob_droplist` VALUES (9205,0,11416,300); -- Clout Boots
INSERT INTO `mob_droplist` VALUES (9205,0,19247,83); -- Savant's Treatise
INSERT INTO `mob_droplist` VALUES (9205,0,1259,9); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (9205,0,887,28); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9205,0,1294,21); -- Arachne Thread
INSERT INTO `mob_droplist` VALUES (9205,0,1634,24); -- Rhodonite
INSERT INTO `mob_droplist` VALUES (9205,0,830,24); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9205,0,1311,29); -- Piece of oxblood

-- ------------------ Keratyrannos ------------------------------
INSERT INTO `mob_droplist` VALUES (9206,0,11643,237); -- Odium Ring
INSERT INTO `mob_droplist` VALUES (9206,0,830,14); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9206,0,645,2); -- Darksteel Ore
INSERT INTO `mob_droplist` VALUES (9206,0,1311,24); -- Piece of oxblood
INSERT INTO `mob_droplist` VALUES (9206,0,1997,30); -- Sailcloth
INSERT INTO `mob_droplist` VALUES (9206,0,1829,17); -- Red Grass Cloth
INSERT INTO `mob_droplist` VALUES (9206,0,1740,14); -- Iolite
INSERT INTO `mob_droplist` VALUES (9206,0,739,7); -- Orichalcum Ore
INSERT INTO `mob_droplist` VALUES (9206,0,1262,0); -- Dark Ore
INSERT INTO `mob_droplist` VALUES (9206,0,1634,19); -- Rhodonite
INSERT INTO `mob_droplist` VALUES (9206,0,1133,4); -- Dragon Blood

-- ------------------ Pavan - note only temp items drop ------------------------------
INSERT INTO `mob_droplist` VALUES (9207,0,5831,50); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,5846,50); -- Fool's Tonic-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,5439,50); -- Vicar's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,5844,50); -- Champion's Gambir-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,5845,50); -- Fanatic's Tonic-temp item

-- ------------------ Sarcophilus ------------------------------
INSERT INTO `mob_droplist` VALUES (9208,0,11526,176); -- Bersail Cap
INSERT INTO `mob_droplist` VALUES (9208,0,4272,39); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9208,0,645,15); -- Darksteel Ore
INSERT INTO `mob_droplist` VALUES (9208,0,1623,20); -- Eft Skin
INSERT INTO `mob_droplist` VALUES (9208,0,1741,8); -- High-Quality Eft Skin
INSERT INTO `mob_droplist` VALUES (9208,0,1255,15); -- Fire Ore
INSERT INTO `mob_droplist` VALUES (9208,0,1829,25); -- Red Grass Cloth
INSERT INTO `mob_droplist` VALUES (9208,0,942,45); -- Philosopher's Stone

-- ------------------ Siranpa Kamuy ------------------------------
INSERT INTO `mob_droplist` VALUES (9209,0,11639,129); -- Blason Ring
INSERT INTO `mob_droplist` VALUES (9209,0,4377,28); -- Coeurl Meat

-- ------------------ Ironclad Sunderer ------------------------------
INSERT INTO `mob_droplist` VALUES (9210,0,19732,147); -- Miramar Gun
INSERT INTO `mob_droplist` VALUES (9210,0,3148,75); -- Charis Seal: Body DNC
INSERT INTO `mob_droplist` VALUES (9210,0,3148,76); -- Charis Seal: Body DNC
INSERT INTO `mob_droplist` VALUES (9210,0,3148,77); -- Charis Seal: Body DNC
INSERT INTO `mob_droplist` VALUES (9210,0,3136,131); -- Creed Seal: Body PLD
INSERT INTO `mob_droplist` VALUES (9210,0,3136,132); -- Creed Seal: Body PLD
INSERT INTO `mob_droplist` VALUES (9210,0,3136,133); -- Creed Seal: Body PLD
INSERT INTO `mob_droplist` VALUES (9210,0,3138,67); -- Ferine Seal: Body BST
INSERT INTO `mob_droplist` VALUES (9210,0,3138,69); -- Ferine Seal: Body BST
INSERT INTO `mob_droplist` VALUES (9210,0,3138,68); -- Ferine Seal: Body BST
INSERT INTO `mob_droplist` VALUES (9210,0,3140,141); -- Sylvan Seal: Body RNG
INSERT INTO `mob_droplist` VALUES (9210,0,3140,142); -- Sylvan Seal: Body RNG
INSERT INTO `mob_droplist` VALUES (9210,0,3293,210); -- Iron Plate
INSERT INTO `mob_droplist` VALUES (9210,0,3293,900); -- Iron Plate

-- ------------------ Lorelei ------------------------------
INSERT INTO `mob_droplist` VALUES (9211,0,11702,224); -- Centaurus Earring
INSERT INTO `mob_droplist` VALUES (9211,0,3263,257); -- Naiad's Lock
INSERT INTO `mob_droplist` VALUES (9211,0,3162,171); -- Iga Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3162,172); -- Iga Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3166,185); -- Navarch's Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3166,186); -- Navarch's Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3151,328); -- Tantra Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3151,329); -- Tantra Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3156,228); -- Creed Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3156,229); -- Creed Seal: Hands

-- ------------------ Teugghia ------------------------------
INSERT INTO `mob_droplist` VALUES (9212,0,11907,211); -- Torrid Gages
INSERT INTO `mob_droplist` VALUES (9212,0,3143,55); -- Lancer's Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3143,56); -- Lancer's Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3143,57); -- Lancer's Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3133,81); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3133,82); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3133,83); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3133,84); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3142,55); -- Iga Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3142,56); -- Iga Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3142,57); -- Iga Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3137,83); -- Bale Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3137,84); -- Bale Seal: Body

-- ------------------ Fulmotondro - note only temp items drop ------------------------------
INSERT INTO `mob_droplist` VALUES (9213,0,5831,50); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,5846,50); -- Fool's Tonic-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,5439,50); -- Vicar's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,5844,50); -- Champion's Gambir-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,5845,50); -- Fanatic's Tonic-temp item

-- ------------------ Gnawtooth Gary ------------------------------
INSERT INTO `mob_droplist` VALUES (9214,0,0,65); -- Clarus Stone
INSERT INTO `mob_droplist` VALUES (9214,0,0,21); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,0,22); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,0,222); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,0,122); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,0,62); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,0,63); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,0,64); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,0,65); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,0,63); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,0,64); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,0,65); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,0,66); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,0,70); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9214,0,0,71); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9214,0,0,73); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9214,0,0,72); -- Aoidos' Seal: Feet BRD

-- ------------------ Iku-Turso ------------------------------
INSERT INTO `mob_droplist` VALUES (9215,0,19057,112); -- Caecus Grip
INSERT INTO `mob_droplist` VALUES (9215,0,3191,125); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,3191,126); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,3191,127); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,3191,128); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,3202,133); -- Iga Seal: Feet NIN
INSERT INTO `mob_droplist` VALUES (9215,0,3202,134); -- Iga Seal: Feet NIN
INSERT INTO `mob_droplist` VALUES (9215,0,3202,132); -- Iga Seal: Feet NIN
INSERT INTO `mob_droplist` VALUES (9215,0,3195,79); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,3195,78); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,3195,77); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,3208,76); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,3208,85); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9215,0,3208,86); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9215,0,3208,87); -- Charis Seal: Feet DNC

-- ------------------ Kadraeth the Hatespawn ------------------------------
INSERT INTO `mob_droplist` VALUES (9216,0,0,91); -- Qirmiz Tathlum
INSERT INTO `mob_droplist` VALUES (9216,0,0,231); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9216,0,0,149); -- Creed Seal: Feet PLD
INSERT INTO `mob_droplist` VALUES (9216,0,0,148); -- Creed Seal: Feet PLD
INSERT INTO `mob_droplist` VALUES (9216,0,0,220); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9216,0,0,237); -- Sylvan Seal: Feet RNG

-- ------------------ Karkadann ------------------------------
INSERT INTO `mob_droplist` VALUES (9217,0,11615,1000); -- Orison Locket
INSERT INTO `mob_droplist` VALUES (9217,0,16207,1000); -- Iga Dochugappa
INSERT INTO `mob_droplist` VALUES (9217,0,11935,205); -- Ambusher's Hose
INSERT INTO `mob_droplist` VALUES (9217,0,3217,436); -- Card of Ardor
INSERT INTO `mob_droplist` VALUES (9217,0,3221,513); -- Card of Wieldance
INSERT INTO `mob_droplist` VALUES (9217,0,729,77); -- Bloodwood log
INSERT INTO `mob_droplist` VALUES (9217,0,1301,26); -- Wind bead
INSERT INTO `mob_droplist` VALUES (9217,0,4448,26); -- Puffball
INSERT INTO `mob_droplist` VALUES (9217,0,1299,26); -- Fire bead

-- ------------------ Khalkotaur ------------------------------
INSERT INTO `mob_droplist` VALUES (9218,0,3197,90); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9218,0,3197,91); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9218,0,3197,89); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9218,0,3203,208); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9218,0,3190,331); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9218,0,3201,112); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9218,0,3201,111); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9218,0,19058,154); -- Vox Grip

-- ------------------ Quasimodo ------------------------------
INSERT INTO `mob_droplist` VALUES (9219,0,18968,78); -- Bounty Sickle
INSERT INTO `mob_droplist` VALUES (9219,0,3193,75); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,3193,76); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,3193,77); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,3193,78); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,3194,90); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,3194,93); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,3194,91); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,3194,92); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,3192,79); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,3192,78); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,3192,80); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,3192,81); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,3209,69); -- Savant's Seal: Feet SCH
INSERT INTO `mob_droplist` VALUES (9219,0,3209,68); -- Savant's Seal: Feet SCH
INSERT INTO `mob_droplist` VALUES (9219,0,3209,67); -- Savant's Seal: Feet SCH
INSERT INTO `mob_droplist` VALUES (9219,0,3209,66); -- Savant's Seal: Feet SCH

-- ------------------ Rakshas ------------------------------
INSERT INTO `mob_droplist` VALUES (9220,0,19316,316); -- Fetter Lance
INSERT INTO `mob_droplist` VALUES (9220,0,4377,20); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9220,0,4447,19); -- Scream Fungus
INSERT INTO `mob_droplist` VALUES (9220,0,2315,31); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9220,0,942,51); -- Philosopher's Stone

-- ------------------ Seps ------------------------------
INSERT INTO `mob_droplist` VALUES (9221,0,17856,298); -- Syrinx
INSERT INTO `mob_droplist` VALUES (9221,0,3194,94); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,3194,93); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,3194,95); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,3194,94); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,3209,93); -- Savant's Seal: Feet (SCH)
INSERT INTO `mob_droplist` VALUES (9221,0,3209,94); -- Savant's Seal: Feet (SCH)
INSERT INTO `mob_droplist` VALUES (9221,0,3209,95); -- Savant's Seal: Feet (SCH)
INSERT INTO `mob_droplist` VALUES (9221,0,3198,73); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,3198,74); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,3198,75); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,3198,76); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,3200,128); -- Sylvan Seal: Feet (RNG)
INSERT INTO `mob_droplist` VALUES (9221,0,3200,127); -- Sylvan Seal: Feet (RNG)
INSERT INTO `mob_droplist` VALUES (9221,0,3200,129); -- Sylvan Seal: Feet (RNG)

-- ------------------ Xan ------------------------------
INSERT INTO `mob_droplist` VALUES (9222,0,11753,353); -- Emphatikos Rope
INSERT INTO `mob_droplist` VALUES (9222,0,4377,39); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9222,0,4272,20); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9222,0,2315,98); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9222,0,4387,20); -- Wild Onion

-- ------------------ Armillaria ------------------------------
INSERT INTO `mob_droplist` VALUES (9223,0,18803,235); -- Pax Grip
INSERT INTO `mob_droplist` VALUES (9223,0,3203,109); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,3203,118); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,3203,112); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,3203,111); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,3190,114); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,3190,115); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,3190,121); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,3190,120); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,3195,117); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9223,0,3195,118); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9223,0,3195,119); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9223,0,3208,75); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9223,0,3208,76); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9223,0,3208,77); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9223,0,3208,78); -- Charis Seal: Feet DNC

-- ------------------ Chhir Batti ------------------------------
INSERT INTO `mob_droplist` VALUES (9224,0,19054,93); -- Fulcio Grip
INSERT INTO `mob_droplist` VALUES (9224,0,3197,96); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9224,0,3197,97); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9224,0,3197,98); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9224,0,3201,87); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9224,0,3201,88); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9224,0,3201,89); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9224,0,3192,82); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,3192,85); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,3192,86); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,3192,84); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,3205,60); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9224,0,3205,62); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9224,0,3205,63); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9224,0,3205,64); -- Mavi Seal: Feet BLU

-- ------------------ Div-e Sepid ------------------------------
INSERT INTO `mob_droplist` VALUES (9225,0,11434,61); -- Sapientia Sabots
INSERT INTO `mob_droplist` VALUES (9225,0,3208,100); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,3208,102); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,3208,101); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,3208,99); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,85); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,88); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,89); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,87); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,86); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3192,99); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,3192,98); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,3192,97); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,3192,96); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,3206,116); -- Navarch's Seal: Feet (COR)
INSERT INTO `mob_droplist` VALUES (9225,0,3206,117); -- Navarch's Seal: Feet (COR)
INSERT INTO `mob_droplist` VALUES (9225,0,3206,118); -- Navarch's Seal: Feet (COR)

-- ------------------ Durinn ------------------------------
INSERT INTO `mob_droplist` VALUES (9226,0,11431,1000); -- Ballerines
INSERT INTO `mob_droplist` VALUES (9226,0,18966,114); -- Crisis Scythe
INSERT INTO `mob_droplist` VALUES (9226,0,3228,800); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,3228,650); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,3228,350); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,3226,550); -- Stone of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,3220,550); -- Jewel of Wieldance
INSERT INTO `mob_droplist` VALUES (9226,0,3221,260); -- Card of Wieldance
INSERT INTO `mob_droplist` VALUES (9226,0,5564,8); -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (9226,0,2703,2); -- Khromated Leather
INSERT INTO `mob_droplist` VALUES (9226,0,729,2); -- Bloodwood Log
INSERT INTO `mob_droplist` VALUES (9226,0,722,2); -- Divine Lumber
INSERT INTO `mob_droplist` VALUES (9226,0,1306,1); -- Dark Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1302,1); -- Earth Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1300,1); -- Ice Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1303,1); -- Lightning Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1304,1); -- Water Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1301,1); -- Wind Bead

-- ------------------ Dvalinn ------------------------------
INSERT INTO `mob_droplist` VALUES (9227,0,11649,117); -- Solemn Ring
INSERT INTO `mob_droplist` VALUES (9227,0,3206,86); -- Navarch's Seal: Feet COR
INSERT INTO `mob_droplist` VALUES (9227,0,3206,87); -- Navarch's Seal: Feet COR
INSERT INTO `mob_droplist` VALUES (9227,0,3206,88); -- Navarch's Seal: Feet COR
INSERT INTO `mob_droplist` VALUES (9227,0,3198,102); -- Ferine Seal: Feet BST
INSERT INTO `mob_droplist` VALUES (9227,0,3198,101); -- Ferine Seal: Feet BST
INSERT INTO `mob_droplist` VALUES (9227,0,3198,103); -- Ferine Seal: Feet BST
INSERT INTO `mob_droplist` VALUES (9227,0,3207,134); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9227,0,3207,135); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9227,0,3204,108); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9227,0,3204,109); -- Caller's Seal: Feet SMN

-- ------------------ abyssic cluster ------------------------------
INSERT INTO `mob_droplist` VALUES (9228,0,11621,314); -- Chrysopoeia Torque
INSERT INTO `mob_droplist` VALUES (9228,0,18778,111); -- Marotte Claws
INSERT INTO `mob_droplist` VALUES (9228,0,4377,41); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9228,0,887,41); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9228,0,722,22); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9228,0,902,11); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9228,0,4272,18); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9228,0,2315,30); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9228,0,2152,15); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9228,0,4387,41); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9228,0,2428,11); -- Wivre Hide
INSERT INTO `mob_droplist` VALUES (9228,0,885,26); -- Turtle Shell

-- ------------------ avalerion ------------------------------
INSERT INTO `mob_droplist` VALUES (9229,0,11648,261); -- Spiral Ring
INSERT INTO `mob_droplist` VALUES (9229,0,3183,115); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,3183,117); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,3183,118); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,3183,116); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,3179,82); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,3179,83); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,3179,84); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,3179,85); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,3189,102); -- Savant's Seal: Legs SCH
INSERT INTO `mob_droplist` VALUES (9229,0,3189,103); -- Savant's Seal: Legs SCH
INSERT INTO `mob_droplist` VALUES (9229,0,3189,104); -- Savant's Seal: Legs SCH
INSERT INTO `mob_droplist` VALUES (9229,0,3171,59); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9229,0,3171,57); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9229,0,3171,60); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9229,0,3171,61); -- Tantra Seal: Legs MNK

-- ------------------ cep-kamuy ------------------------------
INSERT INTO `mob_droplist` VALUES (9230,0,11696,140); -- Kemas Earring
INSERT INTO `mob_droplist` VALUES (9230,0,3172,116); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3172,119); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3172,118); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3172,117); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3181,123); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3181,122); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3181,120); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3181,121); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3177,112); -- Bale Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3177,111); -- Bale Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3177,110); -- Bale Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3185,96); -- Mavi Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3185,95); -- Mavi Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3185,94); -- Mavi Seal: Legs

-- ------------------ flame skimmer ------------------------------
INSERT INTO `mob_droplist` VALUES (9231,0,19313,375); -- Magnus Lance
INSERT INTO `mob_droplist` VALUES (9231,0,3184,94); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,3184,93); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,3184,91); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,3184,92); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,3187,96); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,3187,97); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,3187,98); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,3187,99); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,3178,147); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3178,137); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3178,127); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3178,107); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3178,117); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3186,86); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9231,0,3186,87); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9231,0,3186,88); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9231,0,3186,89); -- Navarch's Seal: Legs COR

-- ------------------ ironclad observer ------------------------------
INSERT INTO `mob_droplist` VALUES (9232,0,19314,261); -- Quint Spear
INSERT INTO `mob_droplist` VALUES (9232,0,887,45); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9232,0,722,1); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9232,0,1447,1); -- Lacquer Tree Lumber
INSERT INTO `mob_droplist` VALUES (9232,0,2152,27); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9232,0,1311,1); -- Oxblood
INSERT INTO `mob_droplist` VALUES (9232,0,4387,81); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9232,0,4377,54); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9232,0,5455,1); -- Ahtapot

-- ------------------ ironclad pulverizer ------------------------------
INSERT INTO `mob_droplist` VALUES (9233,0,16206,933); -- Unkai Sugemino
INSERT INTO `mob_droplist` VALUES (9233,0,11620,1000); -- Savant's Chain
INSERT INTO `mob_droplist` VALUES (9233,0,11936,67); -- Bustle Dirs
INSERT INTO `mob_droplist` VALUES (9233,0,3215,333); -- Coin of Ardor
INSERT INTO `mob_droplist` VALUES (9233,0,3219,533); -- Coin of Wieldance
INSERT INTO `mob_droplist` VALUES (9233,0,655,1); -- Adaman Ingot
INSERT INTO `mob_droplist` VALUES (9233,0,729,1); -- Bloodwood Log
INSERT INTO `mob_droplist` VALUES (9233,0,4377,1); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9233,0,902,1); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9233,0,5564,67); -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (9233,0,2703,67); -- Khromated Leather
INSERT INTO `mob_droplist` VALUES (9233,0,1447,1); -- Lacquer Tree Lumber
INSERT INTO `mob_droplist` VALUES (9233,0,1303,1); -- Lightning Bead
INSERT INTO `mob_droplist` VALUES (9233,0,2152,1); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9233,0,1711,1); -- Molybdenum Ingot
INSERT INTO `mob_droplist` VALUES (9233,0,1313,1); -- Siren's Hair
INSERT INTO `mob_droplist` VALUES (9233,0,885,1); -- Turtle Shell

-- ------------------ ironclad severer ------------------------------
INSERT INTO `mob_droplist` VALUES (9234,0,11360,69); -- Taranis's Harness
INSERT INTO `mob_droplist` VALUES (9234,0,11619,746); -- Caller's Pendant
INSERT INTO `mob_droplist` VALUES (9234,0,11751,899); -- Cirque Sash
INSERT INTO `mob_droplist` VALUES (9234,0,16203,788); -- Goetia Mantle
INSERT INTO `mob_droplist` VALUES (9234,0,655,32); -- Adaman Ingot
INSERT INTO `mob_droplist` VALUES (9234,0,1312,17); -- Angel Skin
INSERT INTO `mob_droplist` VALUES (9234,0,729,17); -- Bloodwood Log
INSERT INTO `mob_droplist` VALUES (9234,0,836,33); -- Damascene Cloth
INSERT INTO `mob_droplist` VALUES (9234,0,902,17); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9234,0,722,50); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9234,0,723,17); -- Divine Lumber
INSERT INTO `mob_droplist` VALUES (9234,0,1306,17); -- Dark Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1305,17); -- Light Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1302,17); -- Earth Bead
INSERT INTO `mob_droplist` VALUES (9234,0,5564,50); -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (9234,0,1300,17); -- Ice Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1299,17); -- Fire Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1304,17); -- Water Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1301,17); -- Wind Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1469,17); -- Wootz Ore
INSERT INTO `mob_droplist` VALUES (9234,0,4387,17); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9234,0,1303,17); -- Lightning Bead
INSERT INTO `mob_droplist` VALUES (9234,0,3216,611); -- Jewel of Ardor
INSERT INTO `mob_droplist` VALUES (9234,0,3220,556); -- Jewel of Wieldance

-- ------------------ jala - note only temp items drop  ------------------------------
INSERT INTO `mob_droplist` VALUES (9235,0,5831,15); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5440,15); -- Dusty Wing-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5836,15); -- Healing Salve II-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5851,15); -- Berserker's Tonic-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5834,15); -- Lucid Wings I-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5395,15); -- Cleric's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5397,15); -- Sprinter's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5435,15); -- Fool's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5826,15); -- Lucid Potion III-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5829,15); -- Lucid Ether III-temp item

-- ------------------ karkatakam ------------------------------
INSERT INTO `mob_droplist` VALUES (9236,0,16210,536); -- Ebullient Cape
INSERT INTO `mob_droplist` VALUES (9236,0,2315,33); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9236,0,887,36); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9236,0,793,36); -- Black Pearl
INSERT INTO `mob_droplist` VALUES (9236,0,902,36); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9236,0,1311,36); -- Oxblood
INSERT INTO `mob_droplist` VALUES (9236,0,719,36); -- Ebony Lumber
INSERT INTO `mob_droplist` VALUES (9236,0,885,1); -- Turtle Shell
INSERT INTO `mob_droplist` VALUES (9236,0,722,36); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9236,0,2152,1); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9236,0,4387,39); -- Wild Onion

-- ------------------ manohra ------------------------------
INSERT INTO `mob_droplist` VALUES (9237,0,11694,123); -- Bloodgem Earring
INSERT INTO `mob_droplist` VALUES (9237,0,3170,80); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,3170,83); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,3170,82); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,3170,81); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,3175,147); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9237,0,3175,145); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9237,0,3175,146); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9237,0,3188,89); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,3188,86); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,3188,87); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,3188,88); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,3183,89); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9237,0,3183,86); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9237,0,3183,87); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9237,0,3183,88); -- Lancer's Seal: Legs DRG

-- ------------------ minax bugard ------------------------------
INSERT INTO `mob_droplist` VALUES (9238,0,19315,264); -- Erebus's Lance
INSERT INTO `mob_droplist` VALUES (9238,0,3171,112); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,3171,115); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,3171,114); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,3171,116); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,3186,144); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9238,0,3186,146); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9238,0,3186,145); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9238,0,3182,93); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9238,0,3182,95); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9238,0,3182,94); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9238,0,3176,95); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9238,0,3176,94); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9238,0,3176,93); -- Creed Seal: Legs PLD

-- ------------------ nehebkau ------------------------------
INSERT INTO `mob_droplist` VALUES (9239,0,19053,152); -- Curatio Grip
INSERT INTO `mob_droplist` VALUES (9239,0,3176,86); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,3176,87); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,3176,88); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,3176,89); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,3174,75); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,3174,76); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,3174,77); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,3174,78); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,3181,183); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,3181,182); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,3181,180); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,3181,181); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,3175,136); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9239,0,3175,135); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9239,0,3175,134); -- Raider's Seal: Legs THF

-- ------------------ nonno ------------------------------
INSERT INTO `mob_droplist` VALUES (9240,0,19055,118); -- Macero Grip
INSERT INTO `mob_droplist` VALUES (9240,0,3173,91); -- Goetia Seal: Legs BLM
INSERT INTO `mob_droplist` VALUES (9240,0,3173,93); -- Goetia Seal: Legs BLM
INSERT INTO `mob_droplist` VALUES (9240,0,3173,92); -- Goetia Seal: Legs BLM
INSERT INTO `mob_droplist` VALUES (9240,0,3182,165); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9240,0,3182,164); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9240,0,3182,163); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9240,0,3177,86); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,3177,89); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,3177,87); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,3177,88); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,3187,94); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9240,0,3187,96); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9240,0,3187,95); -- Cirque Seal: Legs PUP

-- ------------------ npfundlwa ------------------------------
INSERT INTO `mob_droplist` VALUES (9241,0,19059,121); -- Quire Grip
INSERT INTO `mob_droplist` VALUES (9241,0,3172,93); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,3172,83); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,3172,73); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,3172,173); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,3170,88); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,3170,78); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,3170,68); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,3170,168); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,3188,68); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,3188,98); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,3188,78); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,3188,88); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,3186,57); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9241,0,3186,67); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9241,0,3186,167); -- Navarch's Seal: Legs COR

-- ------------------ tuskertrap ------------------------------
INSERT INTO `mob_droplist` VALUES (9242,0,11623,100); -- Noetic Torque
INSERT INTO `mob_droplist` VALUES (9242,0,3184,64); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,3184,74); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,3184,84); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,3184,174); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,3178,103); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9242,0,3178,123); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9242,0,3178,113); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9242,0,3185,83); -- Mavi Seal: Legs BLU
INSERT INTO `mob_droplist` VALUES (9242,0,3185,93); -- Mavi Seal: Legs BLU
INSERT INTO `mob_droplist` VALUES (9242,0,3185,183); -- Mavi Seal: Legs BLU
INSERT INTO `mob_droplist` VALUES (9242,0,3180,110); -- Sylvan Seal: Legs RNG
INSERT INTO `mob_droplist` VALUES (9242,0,3180,130); -- Sylvan Seal: Legs RNG
INSERT INTO `mob_droplist` VALUES (9242,0,3180,120); -- Sylvan Seal: Legs RNG

-- ------------------ gaizkin ------------------------------
INSERT INTO `mob_droplist` VALUES (9243,0,19261,107); -- Jinx Discus
INSERT INTO `mob_droplist` VALUES (9243,0,3119,97); -- Aoidos' Seal: Head BRD
INSERT INTO `mob_droplist` VALUES (9243,0,3119,297); -- Aoidos' Seal: Head BRD
INSERT INTO `mob_droplist` VALUES (9243,0,3119,197); -- Aoidos' Seal: Head BRD
INSERT INTO `mob_droplist` VALUES (9243,0,3123,210); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9243,0,3123,110); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9243,0,3123,120); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9243,0,3111,174); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,3111,94); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,3111,84); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,3111,74); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,3129,140); -- Savant's Seal: Head SCH
INSERT INTO `mob_droplist` VALUES (9243,0,3129,120); -- Savant's Seal: Head SCH
INSERT INTO `mob_droplist` VALUES (9243,0,3129,130); -- Savant's Seal: Head SCH

-- ------------------ gieremund ------------------------------
INSERT INTO `mob_droplist` VALUES (9244,0,18456,349); -- Yoshihiro
INSERT INTO `mob_droplist` VALUES (9244,0,3110,65); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3110,55); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3110,395); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3110,295); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3110,195); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3115,56); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,3115,296); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,3115,196); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,3115,86); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,3123,67); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,3123,57); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,3123,47); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,3123,37); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,3128,76); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,3128,46); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,3128,86); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,3128,56); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,3128,66); -- Charis Seal: Head DNC

-- ------------------ mielikki ------------------------------
INSERT INTO `mob_droplist` VALUES (9245,0,16190,153); -- Bloom Buckler
INSERT INTO `mob_droplist` VALUES (9245,0,3118,143); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,3118,133); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,3118,113); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,3118,123); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,3126,31); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,3126,41); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,3126,51); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,3126,61); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,3127,147); -- Cirque Seal: Head PUP
INSERT INTO `mob_droplist` VALUES (9245,0,3127,167); -- Cirque Seal: Head PUP
INSERT INTO `mob_droplist` VALUES (9245,0,3127,157); -- Cirque Seal: Head PUP
INSERT INTO `mob_droplist` VALUES (9245,0,3124,55); -- Caller's Seal: Head SMN
INSERT INTO `mob_droplist` VALUES (9245,0,3124,45); -- Caller's Seal: Head SMN
INSERT INTO `mob_droplist` VALUES (9245,0,3124,35); -- Caller's Seal: Head SMN

-- ------------------ svarbhanu ------------------------------
INSERT INTO `mob_droplist` VALUES (9246,0,19188,250); -- Killer Shortbow
INSERT INTO `mob_droplist` VALUES (9246,0,746,25); -- Platinum Ore
INSERT INTO `mob_droplist` VALUES (9246,0,836,1); -- Damascene Cloth
INSERT INTO `mob_droplist` VALUES (9246,0,4387,53); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9246,0,902,16); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9246,0,658,50); -- Damascus Ingot
INSERT INTO `mob_droplist` VALUES (9246,0,654,49); -- Darksteel Ingot
INSERT INTO `mob_droplist` VALUES (9246,0,745,29); -- Gold Ingot
INSERT INTO `mob_droplist` VALUES (9246,0,2951,16); -- Malachite
INSERT INTO `mob_droplist` VALUES (9246,0,1740,25); -- Iolite

-- ------------------ tejas - note only temp items drop ------------------------------
INSERT INTO `mob_droplist` VALUES (9247,0,5395,15); -- Cleric's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,2833,15); -- Flask of mana mist-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,5435,15); -- Fool's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,5836,15); -- Healing Salve II-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,5831,15); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,5397,15); -- Sprinter's Drink-temp item
