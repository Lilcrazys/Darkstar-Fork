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


DELETE FROM `mob_droplist` WHERE `dropId`=92 and `type`=0 and `itemId`=3089 and `rate`=100; -- Orobon Cheekmeat from Ancient Orbon
DELETE FROM `mob_droplist` WHERE `dropId`=92 and `type`=0 and `itemId`=5563 and `rate`=100; -- Orobon Meat from Ancient Orbon
INSERT INTO `mob_droplist` VALUES (92,0,3172,60); -- Orison seal leg from Cep-Kamuy to Ancient Orbon
INSERT INTO `mob_droplist` VALUES (92,0,3181,60); -- Unkai seal leg from Cep-Kamuy to Ancient Orbon
INSERT INTO `mob_droplist` VALUES (92,0,3177,60); -- Bale seal leg from Cep-Kamuy to Ancient Orbon
INSERT INTO `mob_droplist` VALUES (92,0,3185,60); -- Mavi seal leg from Cep-Kamuy to Ancient Orbon

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
INSERT INTO `mob_droplist` VALUES (1841,0,3191,60); -- Tantra Seal Feet from Iku-Turso to Jasconius
INSERT INTO `mob_droplist` VALUES (1841,0,3202,60); -- Iga Seal Feet from Iku-Turso to Jasconius
INSERT INTO `mob_droplist` VALUES (1841,0,3195,60); -- Raider`s Seal Feet from Iku-Turso to Jasconius
INSERT INTO `mob_droplist` VALUES (1841,0,3208,60); -- Charis Seal Feet from Iku-Turso to Jasconius
INSERT INTO `mob_droplist` VALUES (1841,0,19057,60); -- Caucus Grip from Iku-Turso to Jasconius

INSERT INTO `mob_droplist` VALUES (2473,0,20762,150); -- ukudyoni

INSERT INTO `mob_droplist` VALUES (2487,0,28440,150); -- Windbuffet Belt +1 

DELETE FROM `mob_droplist` WHERE `dropId`=3299 and `type`=0 and `itemId`=3107 and `rate`=180; -- Shockshroom used to spawn Armillaria
INSERT INTO `mob_droplist` VALUES (3299,0,3203,60); -- Lancer`s Seal Feet from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (3299,0,3190,60); -- Ravager`s Seal Feet from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (3299,0,3195,60); -- Raiders`s Seal Feet from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (3299,0,3208,60); -- Charis Seal Feet from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (3299,0,18803,60); -- Pax Grip from Armillaria to Speltercap
INSERT INTO `mob_droplist` VALUES (4542,0,11646,200); -- Sirona's Ring from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3196,350); -- Creed seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3196,380); -- Creed seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3202,280); -- Iga seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3202,310); -- Iga seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3206,330); -- Navarch's seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3206,360); -- Navarch's seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3191,400); -- Tantra seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (4542,0,3191,430); -- Tantra seal feet from Pascerpot


