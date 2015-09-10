-- phpMyAdmin SQL Dump
-- version 3.3.8
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Ven 03 Février 2012    22:54
-- Version du serveur: 6.0.0
-- Version de PHP: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `dspdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `mob_skill`
--

DROP TABLE IF EXISTS `mob_skill`;
CREATE TABLE IF NOT EXISTS `mob_skill` (
`mob_skill_id` smallint(4) unsigned NOT NULL,
`family_id` smallint(3) unsigned NOT NULL,
`mob_anim_id` smallint(4) unsigned NOT NULL,
`mob_skill_name` char(25) CHARACTER SET latin1 NOT NULL,
`mob_skill_aoe` tinyint(1) unsigned NOT NULL DEFAULT '0',
`mob_skill_distance` float(3,1) NOT NULL DEFAULT '6.0',
`mob_anim_time` smallint(4) unsigned NOT NULL DEFAULT '2000',
`mob_prepare_time` smallint(4) unsigned NOT NULL DEFAULT '1000',
`mob_valid_targets` smallint(4) unsigned NOT NULL DEFAULT '4',
`mob_skill_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
`mob_skill_param` smallint(5) NOT NULL DEFAULT '0',
`knockback` tinyint(1) NOT NULL DEFAULT '0',
PRIMARY KEY (`mob_skill_id`,`family_id`,`mob_skill_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mob_skill`
--

-- ------------------------------------------
-- Normal Monster
-- ------------------------------------------

-- General Abilities
INSERT INTO `mob_skill` VALUES (16,0,16,'Ranged_Attack',0,25.0,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (402,0,402,'Catapult',0,25.0,2000,0,4,0,0,0); -- Gigas RNG's ranged attack.
-- INSERT INTO `mob_skill` VALUES (402,0,402,'Ranged_Aqua_Ball',1,10.0,2000,0,4,0,0,0); -- used in Shooting Fish
-- INSERT INTO `mob_skill` VALUES (1491,0,1236,'Zarraqa',0,25.0,2000,0,4,0,0,0); -- used by troll rangers only.
INSERT INTO `mob_skill` VALUES (808,0,351,'Jump',0,9.5,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (514,0,442,'Jumping_Thrust',0,9.5,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (761,0,505,'Call_Beast',0,7.0,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1645,0,505,'Activate',0,7.0,2000,0,1,0,0,0);

-- Burrowed Antlions
INSERT INTO `mob_skill` VALUES (22,357,812,'Pit_Ambush',0,9.0,2000,0,4,0,0,0);

-- Two Hours
-- make a mob 2 hour by setting mobmod_main_2hour
INSERT INTO `mob_skill` VALUES (432,0,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (434,0,434,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (433,0,433,'Benediction',1,20.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,0,435,'Manafont',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (436,0,436,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (437,0,437,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (438,0,438,'Invincible',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (439,0,439,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (484,0,432,'Familiar',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (440,0,432,'Soul_Voice',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (479,0,20,'Eagle_Eye_Shot',0,25.0,2000,0,4,2,0,0);
INSERT INTO `mob_skill` VALUES (474,0,432,'Meikyo_Shisui',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (475,0,18,'Mijin_Gakure',1,20.0,2000,0,4,2,0,0);
INSERT INTO `mob_skill` VALUES (476,0,432,'Call_Wyvern',0,7.0,2000,0,1,2,0,0);
-- INSERT INTO `mob_skill` VALUES (478,0,432,'Astral_Flow',0,7.0,2000,0,1,2,0,0); -- Most NM use this version and animation.
-- INSERT INTO `mob_skill` VALUES (2000,0,724,'Astral_Flow',0,7.0,2000,0,1,2,0,0); -- Only looks alright with small or human-like Mob Models
-- INSERT INTO `mob_skill` VALUES (1933,0,432,'Azure Lore',0,7.0,2000,0,1,2,0,0); -- Mammol Ja
-- INSERT INTO `mob_skill` VALUES (2001,0,???,'Azure Lore',0,7.0,2000,0,1,2,0,0); -- Raubahn
-- INSERT INTO `mob_skill` VALUES (1934,0,432,'Wild Card',0,7.0,2000,0,1,2,0,0); -- Lamia/Merrow
-- INSERT INTO `mob_skill` VALUES (2002,0,???,'Wild Card',0,7.0,2000,0,1,2,0,0); -- Qultada
-- INSERT INTO `mob_skill` VALUES (1935,0,432,'Overdrive',0,7.0,2000,0,1,2,0,0); -- Troll
-- INSERT INTO `mob_skill` VALUES (2003,0,???,'Overdrive',0,7.0,2000,0,1,2,0,0); -- Zonpa-Zippa (S)
-- INSERT INTO `mob_skill` VALUES (2454,0,432,'Trance',0,7.0,2000,0,1,2,0,0); -- Urd
-- INSERT INTO `mob_skill` VALUES (2004,0,???,'Trance',0,7.0,2000,0,1,2,0,0); -- Laila, Lilisette
-- INSERT INTO `mob_skill` VALUES (2005,0,???,'Tabula_Rasa',0,7.0,2000,0,1,2,0,0); -- Gunther, Adelheid
-- INSERT INTO `mob_skill` VALUES (2102,0,432,'Tabula_Rasa',0,7.0,2000,0,1,2,0,0); -- ???
-- INSERT INTO `mob_skill` VALUES (???,0,???,'Bolster',0,7.0,2000,0,1,2,0,0); -- Likely does not yet exist in dats for mob use in retail.
-- INSERT INTO `mob_skill` VALUES (3009,0,432,'Elemental_Sforzo',0,7.0,2000,0,1,2,0,0); -- Nothing yet uses this to my knowledge.

-- Rabbits
INSERT INTO `mob_skill` VALUES (1,206,1,'Foot_Kick',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2,206,2,'Dust_Cloud',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3,206,3,'Whirl_Claws',1,5.0,2000,1500,4,0,0,0);

-- Rabbits With Cure
INSERT INTO `mob_skill` VALUES (1,404,1,'Foot_Kick',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2,404,2,'Dust_Cloud',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3,404,3,'Whirl_Claws',1,5.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (67,404,37,'Wild_Carrot',0,20.0,2000,1500,1,0,0,0);

-- Rabbits (Snowy)
INSERT INTO `mob_skill` VALUES (1,405,1,'Foot_Kick',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3,405,3,'Whirl_Claws',1,5.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (67,405,37,'Wild_Carrot',0,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (405,405,970,'Snow_Cloud',4,10.0,2000,1500,4,0,0,0);

-- Rabbits (nm or abyssea area?)
-- INSERT INTO `mob_skill` VALUES (1311,?,?,'Foot_Kick',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1312,?,?,'Dust_Cloud',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1313,?,?,'Whirl_Claws',1,5.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1314,?,?,'Wild_Carrot',0,20.0,2000,1500,1,0,0,0);

-- Sheep
INSERT INTO `mob_skill` VALUES (4,226,4,'Lamb_Chop',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (5,226,5,'Rage',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (6,226,6,'Sheep_Charge',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (8,226,8,'Sheep_Song',1,15.0,2000,1500,4,0,0,0);

-- Sheep (Karakul sub-family)
INSERT INTO `mob_skill` VALUES (4,167,4,'Lamb_Chop',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (5,167,5,'Rage',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (6,167,6,'Sheep_Charge',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (8,167,8,'Sheep_Song',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1581,167,1275,'Feeble_Bleat',1,18.0,2000,1500,4,0,0,0); -- ToAU and Abyssea only

-- Slumbering Samwell
INSERT INTO `mob_skill` VALUES (8,398,8,'Sheep_Song',1,15.0,2000,1500,4,0,0,0);

-- Ram
INSERT INTO `mob_skill` VALUES (9,208,9,'Rage',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (10,208,10,'Ram_Charge',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (11,208,11,'Rumble',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (12,208,12,'Great_Bleat',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (13,208,13,'Petribreath',4,15.0,2000,1500,4,0,0,0);

-- Tiger
INSERT INTO `mob_skill` VALUES (14,242,14,'Roar',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (15,242,15,'Razor_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (17,242,17,'Claw_Cyclone',4,10.0,2000,1500,4,0,0,0);


-- INSERT INTO `mob_skill` VALUES (1951,242,0,'Disorienting_Waul',1,18.0,2000,1500,4,0,0,0); -- used by certain NM

-- Tigers (Dynamis - Nightmare tiger)
-- INSERT INTO `mob_skill` VALUES (1421,?,?,'Roar',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1422,?,?,'Razor_Fang',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1423,?,?,'Claw_Cyclone',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1425,?,0,'Crossthrash',0,7.0,2000,1500,4,0,0,0); -- NM/Dyna/einherjar
-- INSERT INTO `mob_skill` VALUES (1424,?,0,'Predatory_Glare',4,16.0,2000,1500,4,0,0,0); -- NM/Dyna/einherjar

-- Dhalmel
INSERT INTO `mob_skill` VALUES (24,80,24,'Sonic_Wave',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (25,80,25,'Stomping',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (28,80,28,'Cold_Stare',4,15.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (29,80,29,'Whistle',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (30,80,30,'Berserk',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (31,80,31,'Healing_Breeze',1,15.0,2000,1500,1,0,0,0);

-- Opo-opo
INSERT INTO `mob_skill` VALUES (38,188,38,'Eye_Scratch',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (32,188,32,'Vicious_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (34,188,34,'Spinning_Claw',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (39,188,39,'Magic_Fruit',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (35,188,35,'Claw_Storm',0,7.0,2000,1500,4,0,0,0); -- 7hp/tick
INSERT INTO `mob_skill` VALUES (33,188,33,'Stone_Throw',0,25.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (36,188,36,'Blank_Gaze_Dispel',0,16.0,2000,2000,4,0,0,0);

-- Mandragora
INSERT INTO `mob_skill` VALUES (45,178,45,'Dream_Flower',1,15.0,2000,1500,4,0,0,0); -- Not used by Lycopodia
INSERT INTO `mob_skill` VALUES (46,178,46,'Wild_Oats',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (48,178,48,'Photosynthesis',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (49,178,49,'Leaf_Dagger',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (44,178,44,'Head_Butt',0,7.0,1500,1500,4,0,0,0); -- occasional knockback..
INSERT INTO `mob_skill` VALUES (50,178,50,'Scream',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1954,496,1603,'Petal_Pirouette',1,15.0,2000,1500,4,0,0,0); -- Only used by Chaneque

-- INSERT INTO `mob_skill` VALUES (2154,?,?,'Demonic_Flower',0,7.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (2345,?,?,'Petalback_Spin',1,15.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (2343,?,?,'Tepal_Twist',1,15.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (2344,?,?,'Bloom_Fouette',1,15.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (2131,?,?,'Fatal_Scream',1,15.0,2000,1500,4,0,0,0); -- Adenium only

-- Morbol
INSERT INTO `mob_skill` VALUES (60,186,60,'Impale',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (61,186,61,'Vampiric_Lash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (62,186,62,'Vampiric_Root',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (63,186,63,'Bad_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (64,186,64,'Sweet_Breath',4,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (470,186,1213,'Drain_Whip',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (?,?,?,'Extremely_Bad_Breath',4,7.0,2000,1500,4,0,0,0); -- used only by Evil Oscar,Cirrate Christelle,Lividroot Amooshah,Eccentric Eve and Melancholic Moira.

-- Cirrate Christelle
-- INSERT INTO `mob_skill` VALUES (1351,?,63,'Fragrant_Breath',4,30.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1349,?,63,'Miasmic_Breath',4,30.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1353,?,63,'Putrid_Breath',4,30.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1355,?,?,'Vampiric_Lash',4,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1354,?,?,'Extremely_Bad_Breath',4,7.0,2000,1500,4,0,0,0);

-- Sabotenders
INSERT INTO `mob_skill` VALUES (65,212,65,'Needleshot',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (66,212,66,'1000_Needles',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (68,212,68,'Photosynthesis',0,7.0,2000,1500,1,0,0,0); -- daytime only

-- Sabotenders (Dynamis)
-- INSERT INTO `mob_skill` VALUES (1369,?,?,'2000_Needles',1,10.0,2000,1500,4,0,0,0); -- Only used by Nightmare Sabotender
-- INSERT INTO `mob_skill` VALUES (1370,?,?,'4000_Needles',1,10.0,2000,1500,4,0,0,0); -- Only used by Nightmare Sabotender
-- INSERT INTO `mob_skill` VALUES (1371,?,?,'Needleshot',1,10.0,2000,1500,4,0,0,0);

-- Funguar
INSERT INTO `mob_skill` VALUES (52,116,52,'Frogkick',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (53,116,53,'Spore',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (58,116,58,'Silence_Gas',4,13.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (59,116,59,'Dark_Spore',4,13.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (54,116,54,'Queasyshroom',0,7,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (55,116,55,'Numbshroom',0,7,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (56,116,56,'Shakeshroom',0,7,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1952,?,?,'Microspores',1,15.0,2000,1500,4,0,0,0); -- Only used by certain Notorious Monsters
-- INSERT INTO `mob_skill` VALUES (2351,?,?,'Agaricus',0,25.0,2000,1500,4,0,0,0); -- Only used by certain Notorious Monsters

-- Fairy Ring (Dynamis - Valkurm)
-- Note: M. Spore is his normal attack round move. However no WS use message is displayed.
-- INSERT INTO `mob_skill` VALUES (1364,?,59,'Mephitic_Spore',0,25.0,2000,1500,4,0,0,0);

-- Treant
INSERT INTO `mob_skill` VALUES (72,245,72,'Drill_Branch',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (73,245,73,'Pinecone_Bomb',0,23.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (75,245,75,'Leafstorm',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (76,245,76,'Entangle',0,7.0,2000,1500,4,0,0,0);

-- Bees
INSERT INTO `mob_skill` VALUES (80,48,80,'Final_Sting',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (79,48,79,'Pollen',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (78,48,78,'Sharp_Sting',0,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1591,?,?,'Frenzy_Pollen',0,7.0,2000,1500,1,0,0,0); -- Only used by Nightmare Hornets and Chasmic Hornet.

-- Bees (Nightmare Bee Dynamis)
-- INSERT INTO `mob_skill` VALUES (1590,?,?,'Sharp_Sting',0,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1591,?,?,'Frenzy_Pollen',0,7.0,2000,1500,1,0,0,0); -- Only used by Nightmare Hornets and Chasmic Hornet.
-- INSERT INTO `mob_skill` VALUES (1592,?,?,'Final_Sting',0,7.0,2000,1500,4,0,0,0);

-- Beetle
INSERT INTO `mob_skill` VALUES (82,49,82,'Power_Attack_Beetle',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (83,49,83,'Hi-Freq_Field',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (84,49,84,'Rhino_Attack',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (87,49,87,'Spoil',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (85,49,85,'Rhino_Guard',0,7.0,2000,1500,1,0,0,0);

-- Crawler
-- TODO: Find out which crawlers have ID entries 1325-27
INSERT INTO `mob_skill` VALUES (90,79,90,'Cocoon',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (89,79,89,'Poison_Breath',4,12.0,2000,1500,4,0,0,0); --  Not used by Eruca
INSERT INTO `mob_skill` VALUES (88,79,88,'Sticky_Thread',4,12.0,2000,1500,4,0,0,0);

-- Crawlers (Eruca)
INSERT INTO `mob_skill` VALUES (90,107,90,'Cocoon',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (88,107,88,'Sticky_Thread',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1535,107,386,'Incinerate',4,10.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (90,108,90,'Cocoon',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (88,108,88,'Sticky_Thread',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1535,108,386,'Incinerate',4,10.0,2000,1500,4,0,0,0);

-- Scorpion
INSERT INTO `mob_skill` VALUES (94,217,94,'Mandible_Bite',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (97,217,97,'Death_Scissors',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (98,217,98,'Wild_Rage',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (99,217,99,'Earth_Pounder',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (95,217,95,'Poison_Sting',0,7.0,2000,1500,4,0,0,0); -- 1hp/tick
INSERT INTO `mob_skill` VALUES (93,217,93,'Cold_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (92,217,92,'Numbing_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (100,217,100,'Sharp_Strike',0,7.0,2000,1500,1,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1965,?,?,'Hell_Scissors',0,7.0,2000,3500,4,0,0,0); -- Used only by Khadem Quemquoma,Vaa Oozu's Scolopendrid,Centipedal Centruroides,Hedetet,and Hedjedjet.

-- Serket
INSERT INTO `mob_skill` VALUES (463,273,94,'Critical_Bite',0,7.0,2000,1500,4,0,0,0); -- hnm only
INSERT INTO `mob_skill` VALUES (465,273,97,'Stasis',0,9.0,2000,1500,4,0,0,0); -- hnm only
INSERT INTO `mob_skill` VALUES (466,273,98,'Venom_Storm',1,40.0,2000,1500,4,0,0,0); -- hnm only
INSERT INTO `mob_skill` VALUES (467,273,99,'Earthbreaker_Custom',1,40.0,2000,1500,4,0,0,0); -- HNM only
INSERT INTO `mob_skill` VALUES (464,273,95,'Venom_Sting',0,10.0,2000,1500,4,0,0,0); -- hnm only
INSERT INTO `mob_skill` VALUES (461,273,92,'Venom_Breath',4,20.0,2000,1500,4,0,0,0); -- hnm only
INSERT INTO `mob_skill` VALUES (468,273,100,'Evasion',0,9.0,2000,1500,1,0,0,0); -- hnm only

-- Aqrabuamelu
INSERT INTO `mob_skill` VALUES (93,402,93,'Cold_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1965,402,97,'Hell_Scissors',0,7.0,2000,3500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (463,402,94,'Critical_Bite',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (465,402,97,'Stasis',0,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (466,402,98,'Venom_Storm',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (467,402,99,'Earthbreaker_Custom',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (464,402,95,'Venom_Sting',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (461,402,92,'Venom_Breath',4,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (94,402,94,'Mandible_Bite',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (97,402,97,'Death_Scissors',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (98,402,98,'Wild_Rage',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (99,402,99,'Earth_Pounder',1,15.0,2000,1500,4,0,0,0);

-- DynamisStatue-Orc
INSERT INTO `mob_skill` VALUES (854,93,761,'Seismostomp',1,15.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (855,93,762,'Numbing_Glare',4,15.0,2000,1500,4,0,0,0);

-- DynamisStatue-Yagudo
INSERT INTO `mob_skill` VALUES (854,95,763,'Seismostomp',1,15.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (857,95,764,'Tormentful_Glare',4,15.0,2000,1500,4,0,0,0);

-- DynamisStatue-Goblin
INSERT INTO `mob_skill` VALUES (854,92,765,'Seismostomp',1,15.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (859,92,766,'Torpid_Glare',4,15.0,2000,1500,4,0,0,0);

-- DynamisStatue-Quadav
INSERT INTO `mob_skill` VALUES (854,94,767,'Seismostomp',1,15.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (861,94,768,'Lead_Breath',4,15.0,2000,1500,4,0,0,0);

-- Dynamis Lord
INSERT INTO `mob_skill` VALUES (871,361,316,'Dynamic_Implosion',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (872,361,817,'Transfusion',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (873,361,318,'Mana_Storm',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (874,361,320,'Dynamic_Assault',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (875,361,324,'Violent_Rupture',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (877,361,322,'Oblivion_Smash',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (878,361,321,'Tera_Slash',4,15.0,2000,1500,4,0,0,0);

-- Animated Weapons
INSERT INTO `mob_skill` VALUES (932,15,793,'Final_Heaven',0,7.0,2000,1500,4,0,0,0);         -- Animated_Knuckles
INSERT INTO `mob_skill` VALUES (933,11,797,'Mercy_Stroke',0,7.0,2000,1500,4,0,0,0);         -- Animated_Dagger
INSERT INTO `mob_skill` VALUES (934,24,792,'Knights_of_Round',0,7.0,2000,1500,4,0,0,0);     -- Animated_Longsword
INSERT INTO `mob_skill` VALUES (935,14,799,'Scourge',0,7.0,2000,1500,4,0,0,0);          -- Animated_Claymore
INSERT INTO `mob_skill` VALUES (936,8,795,'Onslaught',0,7.0,2000,1500,4,0,0,0);             -- Animated_Tabar
INSERT INTO `mob_skill` VALUES (937,12,798,'Metatron_Torment',0,7.0,2000,1500,4,0,0,0);     -- Animated_Great_Axe
INSERT INTO `mob_skill` VALUES (938,20,796,'Catastrophe',0,7.0,2000,1500,4,0,0,0);      -- Animated_Scythe
INSERT INTO `mob_skill` VALUES (939,19,800,'Geirskogul',0,7.0,2000,1500,4,0,0,0);       -- Animated_Spear
INSERT INTO `mob_skill` VALUES (940,17,802,'Blade_Metsu',0,7.0,2000,1500,4,0,0,0);      -- Animated_Kunai
INSERT INTO `mob_skill` VALUES (941,13,803,'Tachi_Kaiten',0,7.0,2000,1500,4,0,0,0);         -- Animated_Tachi
INSERT INTO `mob_skill` VALUES (942,9,794,'Randgrith',0,7.0,2000,1500,4,0,0,0);             -- Animated_Hammer
INSERT INTO `mob_skill` VALUES (943,23,801,'Gate_of_Tartarus',0,7.0,2000,1500,4,0,0,0);     -- Animated_Staff
INSERT INTO `mob_skill` VALUES (944,7,804,'Namas_Arrow',0,18.0,2000,1500,4,0,0,0);      -- Animated_Longbow
INSERT INTO `mob_skill` VALUES (945,18,805,'Coronach',0,18.0,2000,1500,4,0,0,0);            -- Animated_Gun
INSERT INTO `mob_skill` VALUES (1175,22,803,'Shield_Bash',0,7.0,2000,1500,4,0,0,0);         -- Animated_Shield

-- Buffalo
INSERT INTO `mob_skill` VALUES (237,57,846,'Rampant_Gnaw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (238,57,847,'Big_Horn',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (239,57,848,'Snort',4,12.5,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (240,57,849,'Rabid_Dance',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (241,57,850,'Lowing',1,15.0,2000,2500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1108,?,?,'Mighty_Snort',4,?,2000,1500,4,0,0,0); -- Certain NM's only
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Cattlepult',0,?,2000,1500,4,0,0,0); -- Special Event Only.
-- INSERT INTO `mob_skill` VALUES (1219,?,?,'Bull_Rush',0,7.0,2000,1500,4,0,0,0); -- Special Event Only.

-- Diremite
INSERT INTO `mob_skill` VALUES (106,81,830,'Double_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (107,81,831,'Grapple',4,12.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (108,81,832,'Filamented_Hold',4,12.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (109,81,833,'Spinning_Top',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2443,?,?,'Tarsal_Slam',4,10.0,2000,1500,4,0,0,0); -- Only used by certain notorious monsters

-- Memory Receptacle
INSERT INTO `mob_skill` VALUES (286,181,899,'Empty_Seed',1,20.0,2000,2000,4,0,0,7);

-- Weeper
INSERT INTO `mob_skill` VALUES (961,256,834,'Empty_Cutter',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (962,256,835,'Vacuous_Osculation',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (963,256,836,'Hexagon_Belt',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (964,256,837,'Auroral_Drape',1,13.7,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (965,256,838,'Memory_Of_Fire',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (966,256,839,'Memory_Of_Ice',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (967,256,840,'Memory_Of_Wind',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (968,256,841,'Memory_Of_Light',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (969,256,842,'Memory_Of_Earth',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (970,256,843,'Memory_Of_Lightning',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (971,256,844,'Memory_Of_Water',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (972,256,845,'Memory_Of_Dark',1,10.0,2000,1500,4,0,0,0);

-- Wanderer
INSERT INTO `mob_skill` VALUES (132,255,857,'Vanity_Dive',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (133,255,858,'Empty_Beleaguer',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (134,255,859,'Mirage',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (135,255,860,'Aura_Of_Persistence',0,7.0,2000,1500,1,0,0,0);

-- Gorger
INSERT INTO `mob_skill` VALUES (485,137,905,'Quadratic_Continuum',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (488,137,906,'Spirit_Absorption',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (491,137,907,'Vanity_Drive',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (494,137,908,'Stygian_Flatus',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (496,137,909,'Promyvion_Barrier',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (499,137,910,'Fission',0,7.0,2000,1500,4,0,0,0); -- NM only

INSERT INTO `mob_skill` VALUES (485,138,905,'Quadratic_Continuum',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (488,138,906,'Spirit_Absorption',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (491,138,907,'Vanity_Drive',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (494,138,908,'Stygian_Flatus',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (496,138,909,'Promyvion_Barrier',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (499,138,910,'Fission',0,7.0,2000,1500,4,0,0,0); -- NM only

-- Craver
INSERT INTO `mob_skill` VALUES (973,78,919,'Brain_Spike',0,9.0,2000,1500,4,0,0,0); -- Regular only
INSERT INTO `mob_skill` VALUES (974,78,920,'Empty_Thrash',4,12.0,2000,1500,4,0,0,1); -- Regular only
INSERT INTO `mob_skill` VALUES (975,78,921,'Promyvion_Brume',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (976,78,922,'Murk',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (977,78,923,'Material_Fend',0,10.0,2000,1500,1,0,0,0);

-- Craver NM
INSERT INTO `mob_skill` VALUES (978,78,924,'Carousel',1,10.0,2000,1500,4,0,0,2); -- NM only   (doesn't apply to Coveter,he uses normal Craver moves)
INSERT INTO `mob_skill` VALUES (1018,78,919,'Impalement',0,10.0,2000,1500,4,0,0,0); -- NM only (doesn't apply to Coveter,he uses normal Craver moves)

-- Thinker
INSERT INTO `mob_skill` VALUES (986,241,933,'Empty_Cutter',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (987,241,934,'Negative_Whirl',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (988,241,935,'Stygian_Vapor',1,8.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (989,241,936,'Winds_Of_Promyvion',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (990,241,937,'Spirit_Absorption',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (991,241,938,'Binary_Absorption',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (992,241,939,'Trinary_Absorption',0,7.0,2000,1500,4,0,0,0); -- NM only
INSERT INTO `mob_skill` VALUES (993,241,940,'Spirit_Tap',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (994,241,941,'Binary_Tap',0,7.0,2000,1500,4,0,0,0);

-- NM Thinker
INSERT INTO `mob_skill` VALUES (995,241,942,'Trinary_Tap',0,7.0,2000,1500,4,0,0,0); -- NM only
INSERT INTO `mob_skill` VALUES (996,241,943,'Shadow_Spread',1,10.0,2000,1500,4,0,0,0); -- NM only

-- Seether
INSERT INTO `mob_skill` VALUES (997,220,872,'Vanity_Strike',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (998,220,872,'Wanion',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (999,220,873,'Occultation',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1000,220,874,'Empty_Crush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1002,220,876,'Lamentation',1,10.0,2000,1500,4,0,0,0);

-- Lizard
INSERT INTO `mob_skill` VALUES (110,174,110,'Tail_Blow',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (111,174,111,'Fireball',1,11.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (112,174,112,'Blockhead',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (113,174,113,'Brain_Crush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (116,174,116,'Infrasonics',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (117,174,117,'Secretion',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (114,174,114,'Baleful_Gaze',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (115,174,115,'Plague_Breath',4,10.0,2000,1500,4,0,0,0);

-- Lizards (cold region)
-- INSERT INTO `mob_skill` VALUES (110,?,110,'Tail_Blow',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (112,?,112,'Blockhead',0,7.0,2000,1500,4,0,0,1);
-- INSERT INTO `mob_skill` VALUES (113,?,113,'Brain_Crush',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (116,?,116,'Infrasonics',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (117,?,117,'Secretion',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (114,?,114,'Baleful_Gaze',0,10.0,2000,2000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (115,?,115,'Plague_Breath',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (365,?,969,'Snowball',1,11.0,2000,1500,4,0,0,0); -- only in colder regions

-- Highlander Lizard
INSERT INTO `mob_skill` VALUES (115,438,115,'Plague_Breath',4,10.0,2000,1500,4,0,0,0);

-- Raptor (desert areas)
INSERT INTO `mob_skill` VALUES (118,210,118,'Ripper_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (120,210,120,'Foul_Breath',4,15.0,2000,1500,4,0,0,0); -- only used in dry desert/mountainous areas
INSERT INTO `mob_skill` VALUES (123,210,123,'Chomp_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (124,210,124,'Scythe_Tail',0,7.0,2000,1500,4,0,0,1);

-- Raptors (thundery areas)
INSERT INTO `mob_skill` VALUES (118,376,118,'Ripper_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (122,376,122,'Thunderbolt_Breath',4,15.0,2000,1500,4,0,0,0); -- only used by raptors in stormy areas (S. Champagn,???)
INSERT INTO `mob_skill` VALUES (123,376,123,'Chomp_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (124,376,124,'Scythe_Tail',0,7.0,2000,1500,4,0,0,1);

-- Raptors (cold areas)
INSERT INTO `mob_skill` VALUES (118,377,118,'Ripper_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (121,377,121,'Frost_Breath',4,15.0,2000,1500,4,0,0,0); -- only the raptors in Uleguerand Range will use this move
INSERT INTO `mob_skill` VALUES (123,377,123,'Chomp_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (124,377,124,'Scythe_Tail',0,7.0,2000,1500,4,0,0,1);

-- Bugard
INSERT INTO `mob_skill` VALUES (126,58,819,'Tail_Roll',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (127,58,820,'Tusk',0,7.0,2000,2000,4,0,0,2);
INSERT INTO `mob_skill` VALUES (128,58,821,'Scutum',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (129,58,822,'Bone_Crunch',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (130,58,823,'Awful_Eye',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (131,58,824,'Heavy_Bellow',4,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1107,?,?,'Hungry_Crunch',0,7.0,2000,1500,4,0,0,0); -- Only used by the Boggelmann
-- INSERT INTO `mob_skill` VALUES (2387,?,?,'Tyrant_Tusk',4,15.0,2000,1500,4,0,0,0); -- Only used by
-- INSERT INTO `mob_skill` VALUES (2439,?,?,'Torment_Tusk',4,15.0,2000,1500,4,0,0,0); -- Only used by

-- Giant Bats
INSERT INTO `mob_skill` VALUES (138,46,138,'Blood_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (136,46,136,'Ultrasonics',1,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (900,46,338,'Marrow_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (899,46,339,'Subsonics',1,16.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (0,46,986,'Supersonics',1,16.0,2000,1500,4,0,0,0); -- Aht Urhgan only

-- INSERT INTO `mob_skill` VALUES (1145,?,138,'Soul_Accretion',0,7.0,2000,1500,4,0,0,0); -- Only by Upyri. Used frequently during nighttime hours (Tends to use x2 in short delays ~2 or 3 seconds @ night,possibly night-only).
-- INSERT INTO `mob_skill` VALUES (899,46,337,'Subsonics',1,16.0,2000,1500,4,0,0,0); -- Cap from Upyri. Animation ID different??

-- Bat Trio
INSERT INTO `mob_skill` VALUES (137,47,137,'Sonic_Boom',1,12.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (139,47,139,'Jet_Stream',0,7.0,2000,1500,4,0,0,0);

-- Bat Trio (CoP,TOAU,WOTG)
-- INSERT INTO `mob_skill` VALUES (137,?,137,'Sonic_Boom',1,12.5,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (139,?,139,'Jet_Stream',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (901,?,339,'Slipstream',1,16.0,2000,1500,4,0,0,0); -- Not used in original zones
-- INSERT INTO `mob_skill` VALUES (902,?,340,'Turbulence',1,16.0,2000,1500,4,0,0,0); -- Not used in original zones

-- Greater Birds (Rocs on Wiki)
-- NOTES: Based on my retial testing,I can assume wiki info has the 2 sets of abilities reversed. I fought 5 different types
-- of normal birds,and they all did blind/giga/dread dive.
INSERT INTO `mob_skill` VALUES (666,125,143,'Blind_Vortex',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (667,125,144,'Giga_Scream',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (668,125,145,'Dread_Dive',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (146,125,146,'Feather_Barrier',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (670,125,147,'Stormwind',1,15.0,6000,1500,4,0,0,0); -- Animation times may very.

-- INSERT INTO `mob_skill` VALUES (143,?,143,'Scratch',0,7.0,2000,1500,4,0,0,0); -- Used in place of Blind Vortex by certain NM.
-- INSERT INTO `mob_skill` VALUES (144,?,144,'Triple_Attack',0,7.0,2000,1500,4,0,0,0); -- Used in place of Giga Scream by certain NM.
-- INSERT INTO `mob_skill` VALUES (145,?,145,'Gliding_Spike',0,7.0,2000,1500,4,0,0,0); -- Used in place of Dread Dive by certain NM.
-- INSERT INTO `mob_skill` VALUES (146,?,146,'Feather_Barrier',0,7.0,2000,1500,1,0,0,0); -- NM Version. Weaponskill ID different.
-- INSERT INTO `mob_skill` VALUES (147,?,147,'Stormwind',1,15.0,2000,1500,4,0,0,0); -- NM version. Weaponskill ID different.

-- INSERT INTO `mob_skill` VALUES (2447,?,?,'Dread_Wind',1,15.0,2000,1500,4,0,0,0); -- Used by Bennu.

-- Cockatrices
INSERT INTO `mob_skill` VALUES (150,70,150,'Hammer_Beak',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (151,70,151,'Poison_Pick',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (152,70,152,'Sound_Vacuum',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (155,70,155,'Baleful_Gaze',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (154,70,154,'Sound_Blast',1,16.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1077,?,?,'Contagion_Transfer',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1079,?,?,'Toxic_Pick',0,7.0,2000,1500,4,0,0,0); (MONSTROSITY)

-- Leeches
INSERT INTO `mob_skill` VALUES (158,172,158,'Suction',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (159,172,159,'Acid_Mist',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (160,172,160,'Sand_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (161,172,161,'Drainkiss',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (167,172,167,'Brain_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (162,172,162,'Regeneration',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (165,172,165,'MP_Drainkiss',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (164,172,164,'TP_Drainkiss',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (70,?,?,'Absorbing_Kiss',0,7.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (71,?,?,'Deep_Kiss',0,7.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (69,?,?,'Random_Kiss',0,7.0,2000,1500,4,0,0,0); -- Only used by certain NM

INSERT INTO `mob_skill` VALUES (158,369,158,'Suction',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (159,369,159,'Acid_Mist',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (160,369,160,'Sand_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (161,369,161,'Drainkiss',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (167,369,167,'Brain_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (162,369,162,'Regeneration',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (165,369,165,'MP_Drainkiss',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (164,369,164,'TP_Drainkiss',0,7.0,2000,1500,4,0,0,0);

-- Worms
INSERT INTO `mob_skill` VALUES (168,258,168,'Full-Force_Blow',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (169,258,169,'Gastric_Bomb',0,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (170,258,170,'Sandspin',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (171,258,171,'Tremors',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (173,258,173,'Sound_Vacuum',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (172,258,172,'MP_Absorption',0,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1633,258,172,'Spirit_Vacuum',0,7.0,2000,1500,4,0,0,0); -- Only used by Anemic Aloysius

-- Slimes
INSERT INTO `mob_skill` VALUES (175,228,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (176,228,176,'Fluid_Toss',0,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (177,228,177,'Digest',0,7.0,2000,1000,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2294,?,?,'Dissolve',4,10.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (2258,?,?,'Cytokinesis',0,7.0,2000,1500,4,0,0,0); -- Only used by certain NM

-- Slimes (ToAU Clots?)
-- INSERT INTO `mob_skill` VALUES (175,?,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (177,?,177,'Digest',0,7.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (176,?,176,'Fluid_Toss',0,15.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (?,?,?,'HP_Drain',0,7.0,2000,1500,4,0,0,0); -- TOAU/WOTG?
-- INSERT INTO `mob_skill` VALUES (2296,?,?,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0); -- Only used by clots in the Near East,Hematic Cyst,and Blobdingnag.
-- INSERT INTO `mob_skill` VALUES (2295,?,?,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0); -- Only used by clots in the Near East and Blobdingnag.

-- Clot
INSERT INTO `mob_skill` VALUES (175,66,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (176,66,176,'Fluid_Toss',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (177,66,177,'Digest',0,7.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (175,229,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (176,229,176,'Fluid_Toss',0,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (177,229,177,'Digest',0,7.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (175,230,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (176,230,176,'Fluid_Toss',0,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (177,230,177,'Digest',0,7.0,2000,1500,4,0,0,0);

-- Hecteyes
INSERT INTO `mob_skill` VALUES (181,139,181,'Death_Ray',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (182,139,182,'Hex_Eye',4,10.0,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (184,139,184,'Catharsis',0,7.0,2000,1500,1,0,0,0);

-- Hecteyes (CoP + ?)
-- INSERT INTO `mob_skill` VALUES (183,?,183,'Petro_Gaze',4,10.0,2000,3500,4,0,0,0); -- Known users: Hecteyes in Chains of Promathia areas,Sobbing Eyes in the BCNM40 battle Under Observation,Shoggoth (Tier II VNM).
-- INSERT INTO `mob_skill` VALUES (184,?,184,'Catharsis',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (181,139,181,'Death_Ray',0,7.0,2000,1500,4,0,0,0);

-- Crab
INSERT INTO `mob_skill` VALUES (188,75,188,'Big_Scissors',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (187,75,187,'Bubble_Curtain',0,7.0,2000,1500,1,0,0,0); -- Shell -50% magic damage taken
INSERT INTO `mob_skill` VALUES (186,75,186,'Bubble_Shower',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (192,75,192,'Metallic_Body',0,7.0,2000,1500,1,0,0,0); -- 25HP Stoneskin
INSERT INTO `mob_skill` VALUES (189,75,189,'Scissor_Guard',0,7.0,2000,1500,1,0,0,0); -- +100% defense boost

-- INSERT INTO `mob_skill` VALUES (2257,?,?,'Mega_Scissors',4,10.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (2256,?,?,'Venom_Shower',1,20.0,2000,1500,4,0,0,0); -- Only used by certain NM

INSERT INTO `mob_skill` VALUES (188,76,188,'Big_Scissors',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (187,76,187,'Bubble_Curtain',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (186,76,186,'Bubble_Shower',1,14.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (192,76,192,'Metallic_Body',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (189,76,189,'Scissor_Guard',0,7.0,2000,1500,1,0,0,0); -- +100% defense boost

INSERT INTO `mob_skill` VALUES (188,77,188,'Big_Scissors',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (187,77,187,'Bubble_Curtain',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (186,77,186,'Bubble_Shower',1,14.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (192,77,192,'Metallic_Body',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (189,77,189,'Scissor_Guard',0,7.0,2000,1500,1,0,0,0); -- +100% defense boost

INSERT INTO `mob_skill` VALUES (188,372,188,'Big_Scissors',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (187,372,187,'Bubble_Curtain',0,7.0,2000,1500,1,0,0,0); -- Shell -50% magic damage taken
INSERT INTO `mob_skill` VALUES (186,372,186,'Bubble_Shower',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (192,372,192,'Metallic_Body',0,7.0,2000,1500,1,0,0,0); -- 25HP Stoneskin
INSERT INTO `mob_skill` VALUES (189,372,189,'Scissor_Guard',0,7.0,2000,1500,1,0,0,0); -- +100% defense boost

-- Tegmine
INSERT INTO `mob_skill` VALUES (187,400,187,'Bubble_Curtain',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (186,400,186,'Bubble_Shower',1,12.0,2000,1500,4,0,0,0);

-- Shadows
INSERT INTO `mob_skill` VALUES (190,221,190,'Dimensional_Death',0,7.0,2000,0,4,1,0,0);
INSERT INTO `mob_skill` VALUES (190,222,190,'Dimensional_Death',0,7.0,2000,0,4,1,0,0);
INSERT INTO `mob_skill` VALUES (190,223,190,'Dimensional_Death',0,7.0,2000,0,4,1,0,0);

-- Pugil
INSERT INTO `mob_skill` VALUES (195,197,195,'Splash_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (196,197,196,'Screwdriver',0,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (197,197,197,'Water_Wall',0,7.0,2000,1500,1,0,0,0); -- 100% Defense Boost. 1 minute duration
INSERT INTO `mob_skill` VALUES (198,197,198,'Water_Shield',0,7.0,2000,1500,1,0,0,0); -- Eva boost
INSERT INTO `mob_skill` VALUES (194,197,194,'Aqua_Ball',2,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (193,197,193,'Intimidate',4,10.0,2000,1500,4,0,0,0);

-- Pugils (Jagils Subspecies)
-- INSERT INTO `mob_skill` VALUES (195,?,195,'Splash_Breath',4,12.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (197,?,197,'Water_Wall',0,7.0,2000,1500,1,0,0,0); -- 100% Defense Boost. 1 minute duration
-- INSERT INTO `mob_skill` VALUES (198,?,198,'Water_Shield',0,7.0,2000,1500,1,0,0,0); -- Eva boost
-- INSERT INTO `mob_skill` VALUES (194,?,194,'Aqua_Ball',2,12.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (193,?,193,'Intimidate',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (385,?,973,'Recoil_Dive',4,10.0,2000,1500,4,0,0,0); -- Used by Jagils instead of Screwdriver

-- Pugils (Dynamis - Nightmare Makara) ?
-- INSERT INTO `mob_skill` VALUES (1610,?,?,'Splash_Breath',4,12.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1612,?,?,'Water_Wall',0,7.0,2000,1500,1,0,0,0); -- 100% Defense Boost. 1 minute duration
-- INSERT INTO `mob_skill` VALUES (1613,?,?,'Water_Shield',0,7.0,2000,1500,1,0,0,0); -- Eva boost
-- INSERT INTO `mob_skill` VALUES (1609,?,?,'Aqua_Ball',2,12.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1608,?,?,'Intimidate',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1614,?,?,'Recoil_Dive',4,10.0,2000,1500,4,0,0,0); -- Used by Jagils instead of Screwdriver
-- INSERT INTO `mob_skill` VALUES (1611,?,?,'Screwdriver',0,9.0,2000,1500,4,0,0,0);

-- Sea Monks
INSERT INTO `mob_skill` VALUES (202,218,202,'Ink_Jet',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (203,218,203,'Hard_Membrane',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (204,218,204,'Cross_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (205,218,205,'Regeneration',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (206,218,206,'Maelstrom',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (207,218,207,'Whirlwind',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (200,218,200,'Tentacle',0,7.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (202,219,202,'Ink_Jet',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (203,219,203,'Hard_Membrane',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (204,219,204,'Cross_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (205,219,205,'Regeneration',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (206,219,206,'Maelstrom',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (207,219,207,'Whirlwind',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (200,219,200,'Tentacle',0,7.0,2000,1500,4,0,0,0);

-- Hounds
INSERT INTO `mob_skill` VALUES (209,142,209,'Howling',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (210,142,210,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (211,142,211,'Rot_Gas',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (212,142,212,'Dirty_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (213,142,213,'Shadow_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (214,142,214,'Methane_Breath',4,12.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (209,143,209,'Howling',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (210,143,210,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (211,143,211,'Rot_Gas',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (212,143,212,'Dirty_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (213,143,213,'Shadow_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (214,143,214,'Methane_Breath',4,12.0,2000,1500,4,0,0,0);

-- Ghost
INSERT INTO `mob_skill` VALUES (220,121,220,'Curse',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (218,121,218,'Fear_Touch',0,7.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (219,121,219,'Terror_Touch',0,7.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (217,121,217,'Ectosmash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (221,121,221,'Dark_Sphere',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (216,121,216,'Grave_Reel',1,15.0,2000,1500,4,0,0,0);

-- Ghosts (Bhoot Subspecies)
-- INSERT INTO `mob_skill` VALUES (1538,?,?,'Perdition',0,10.0,2000,1500,4,0,0,0); -- Bhoot only

-- Skeletons
INSERT INTO `mob_skill` VALUES (222,227,222,'Hell_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (223,227,223,'Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (228,227,228,'Black_Cloud',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (229,227,229,'Blood_Saber',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (?,227,?,'Marrow Drain',0,7.0,2000,1500,4,0,0,0);

-- Skeletons (Drauger Subspecies)
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Malediction',1,15.0,2000,1500,4,0,0,0); --  Drain (~300). Only used by draugar

-- INSERT INTO `mob_skill` VALUES (?,?,?,'Dereliction',1,20.0,2000,1500,4,0,0,0); -- Only used by draugar NM

-- Coeurls
INSERT INTO `mob_skill` VALUES (396,71,396,'Blaster',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (397,71,397,'Chaotic_Eye',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (224,0,288,'Petrifactive_Breath',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (225,0,289,'Frenzied_Rage',0,7.0,2000,1500,1,0,0,0); --  Attack Boost (20%)
-- INSERT INTO `mob_skill` VALUES (226,0,290,'Pounce',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (227,0,291,'Charged_Whisker',1,12.5,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1953,?,?,'Blink_of_Peril',4,10.0,2000,1500,4,0,0,0); -- Only used by certain Lynx-type NM
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Mortal_Gaze',4,10.0,2000,1500,4,0,0,0); -- Only used by certain NMS

-- Doomed
INSERT INTO `mob_skill` VALUES (233,86,233,'Stinking_Gas',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (234,86,234,'Undead_Mold',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (236,86,236,'Abyss_Blast',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (232,86,232,'Acid_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (235,86,235,'Call_of_the_Grave',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (230,86,230,'Whip_Tongue',0,7.0,2000,1500,4,0,0,1);

-- INSERT INTO `mob_skill` VALUES (1082,?,?,'Infernal_Pestilence',4,10.0,2000,1500,4,0,0,0); -- Only used by certain NM

-- Bombs
INSERT INTO `mob_skill` VALUES (253,56,253,'Self-Destruct',1,20.0,2000,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (254,56,254,'Berserk',0,7.0,2000,1500,1,0,0,0);
-- These 3 below this comment should be on sep families or a return added to their script to prevent other bombs from using
INSERT INTO `mob_skill` VALUES (338,56,880,'Vulcanian_Impact',0,7.0,2000,1500,4,0,0,0); -- COP TOAU Only
INSERT INTO `mob_skill` VALUES (339,56,881,'Heat_Wave',1,15.0,2000,1500,4,0,0,0); -- COP TOAU Only
INSERT INTO `mob_skill` VALUES (340,56,882,'Hellstorm',1,15.0,2000,1500,4,0,0,0); -- TOAU Only

-- Bombs (TOAU [Big Bomb PH: Friar's Lantern Version])
-- NOTE: Might be the same for TOAU NMs also
-- INSERT INTO `mob_skill` VALUES (337,?,879,'Berserk',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (338,?,880,'Vulcanian_Impact',0,7.0,2000,1500,4,0,0,0); -- COP TOAU Only
-- INSERT INTO `mob_skill` VALUES (339,?,881,'Heat_Wave',1,15.0,2000,1500,4,0,0,0); -- COP TOAU Only
-- INSERT INTO `mob_skill` VALUES (340,?,882,'Hellstorm',1,15.0,2000,1500,4,0,0,0); -- TOAU Only
-- INSERT INTO `mob_skill` VALUES (253,?,253,'Self-Destruct',1,20.0,2000,3000,4,0,0,0);

-- Evil Weapons
INSERT INTO `mob_skill` VALUES (257,110,257,'Smite_of_Rage',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (258,110,258,'Whirl_of_Rage',1,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (?,?,?,'Whispers_of_Ire',1,15.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Flurry_of_Rage',0,7.0,2000,1500,4,0,0,0); -- Only used by certain NM
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Smite_of_Fury',0,7.0,2000,1500,4,0,0,0); -- Only used by certain NM (CoP)
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Furious_Flurry',0,7.0,2000,1500,4,0,0,0); -- Only used by certain NM (CoP)

-- Magic Pot
INSERT INTO `mob_skill` VALUES (269,175,269,'Battery_Charge',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (267,175,267,'Mysterious_Light',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (265,175,265,'Spinning_Attack',4,10.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (264,175,264,'Double_Ray',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (266,175,266,'Spectral_Barrier',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (268,175,268,'Mind_Drain',0,7.0,2000,1500,4,0,0,0);

-- Dolls
INSERT INTO `mob_skill` VALUES (278,83,278,'Kartstrahl',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (279,83,279,'Blitzstrahl',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (280,83,280,'Panzerfaust',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (281,83,281,'Berserk',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (282,83,282,'Panzerschreck',0,15.0,2000,1500,1,0,0,0); -- Needs scripts
INSERT INTO `mob_skill` VALUES (283,83,283,'Typhoon',1,10.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (285,83,285,'Gravity_Field',2,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (287,83,287,'Meltdown',1,15.0,2000,5000,4,0,0,0);

INSERT INTO `mob_skill` VALUES (278,84,278,'Kartstrahl',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (279,84,279,'Blitzstrahl',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (280,84,280,'Panzerfaust',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (281,84,281,'Berserk',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (282,83,282,'Panzerschreck',0,15.0,2000,1500,1,0,0,0); -- Needs scripts
INSERT INTO `mob_skill` VALUES (283,84,283,'Typhoon',1,10.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (285,84,285,'Gravity_Field',2,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (287,84,287,'Meltdown',1,15.0,2000,5000,4,0,0,0);

INSERT INTO `mob_skill` VALUES (278,85,278,'Kartstrahl',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (279,85,279,'Blitzstrahl',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (280,85,280,'Panzerfaust',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (281,85,281,'Berserk',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (282,83,282,'Panzerschreck',0,15.0,2000,1500,1,0,0,0); -- Needs scripts
INSERT INTO `mob_skill` VALUES (283,85,283,'Typhoon',1,10.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (285,85,285,'Gravity_Field',2,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (287,85,287,'Meltdown',1,15.0,2000,5000,4,0,0,0);

-- Calcabrina
INSERT INTO `mob_skill` VALUES (281,395,281,'Berserk',0,7.0,2000,1500,1,0,0,0);

-- Martinet
INSERT INTO `mob_skill` VALUES (279,401,279,'Blitzstrahl',0,15.0,2000,1500,4,0,0,0);

-- Ahriman
INSERT INTO `mob_skill` VALUES (292,4,292,'Blindeye',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (293,4,293,'Eyes_On_Me',0,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (294,4,294,'Hypnosis',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (295,4,295,'Mind_Break',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (296,4,296,'Binding_Wave',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (297,4,297,'Airy_Shield',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (299,4,299,'Magic_Barrier',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (301,4,301,'Level_5_Petrify',1,15.0,2000,1500,4,0,0,0);

-- Demons
INSERT INTO `mob_skill` VALUES (303,169,303,'Soul_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (304,169,304,'Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (307,169,307,'Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (892,169,311,'Condemnation',4,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2116,?,?,'Hellborn_Yawp',4,10.0,2000,1500,4,0,0,0);--  Only used by Shadowsoul,Abununnu and Count Bifrons.

-- Demons (Dynamis)
-- probably uses WS ID's 889-894
INSERT INTO `mob_skill` VALUES (303,358,303,'Soul_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (304,358,304,'Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (307,358,307,'Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (892,358,311,'Condemnation',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (893,358,313,'Quadrastrike',0,7.0,2000,1500,4,0,0,0);

-- Duke Focalor
INSERT INTO `mob_skill` VALUES (303,399,303,'Soul_Drain',0,7.0,2000,1500,4,0,0,0);

-- Goobbue
INSERT INTO `mob_skill` VALUES (325,136,325,'Blow',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (327,136,327,'Beatdown',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (328,136,328,'Uppercut',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (330,136,330,'Blank_Gaze',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (331,136,331,'Antiphase',1,15.0,2000,1500,4,0,0,0);

-- Nant'ina (Dynamis - Valkurm)
-- Note: Uses Blow and Uppercut as normal attack round moves. WS message is displayed.
-- INSERT INTO `mob_skill` VALUES (1361,?,325,'Blow',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1362,?,328,'Uppercut',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1363,?,331,'Attractant',1,15.0,2000,1500,4,0,0,0);

-- Goblins
INSERT INTO `mob_skill` VALUES (334,133,334,'Goblin_Rush',0,6.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (335,133,335,'Bomb_Toss',2,8,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (336,133,336,'Bomb_Toss_Suicide',1,13.5,2000,1500,4,0,0,0);

-- Dynamis Goblin (Vanguard Type)
INSERT INTO `mob_skill` VALUES (334,327,334,'Goblin_Rush',0,6.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (335,327,335,'Bomb_Toss',2,13.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (826,327,744,'Smokebomb',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (828,327,746,'Crispy_Candle',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (830,327,748,'Paralysis_Shower',4,10.0,2000,1500,4,0,0,0);

-- Dynamis Goblin (Vanguard NM Type)
INSERT INTO `mob_skill` VALUES (334,373,334,'Goblin_Rush',0,6.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (335,373,335,'Bomb_Toss',2,13.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (826,373,744,'Smokebomb',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (828,373,746,'Crispy_Candle',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (830,373,748,'Paralysis_Shower',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (843,373,750,'Dice_Heal',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (844,373,751,'Dice_Curse',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (845,373,752,'Dice_Damage',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (846,373,753,'Dice_Stun',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (847,373,754,'Dice_Poison',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (848,373,755,'Dice_Disease',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (849,373,756,'Dice_Sleep',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (850,373,757,'Dice_Slow',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (851,373,758,'Dice_TP_Loss',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (852,373,759,'Dice_Dispel',1,10.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (853,373,760,'Dice_Reset',1,10.0,3000,1500,4,0,0,0);

-- Orcs
INSERT INTO `mob_skill` VALUES (377,189,354,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (353,189,353,'Battle_Dance',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (352,189,352,'Arm_Block',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (351,189,351,'Slam_Dunk',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (349,189,349,'Aerial_Wheel',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (350,189,350,'Shoulder_Attack',0,7.0,2000,1500,4,0,0,1);
-- warlord Rojgnoj
INSERT INTO `mob_skill` VALUES (438,334,438,'Invincible',0,7.0,2000,0,1,2,0,0);
-- left hand
INSERT INTO `mob_skill` VALUES (435,334,435,'Manafont',0,7.0,2000,0,1,2,0,0);
-- Yukvok of clan death
INSERT INTO `mob_skill` VALUES (479,334,21,'Eagle_Eye_Shot',0,25.0,2000,0,4,2,0,0);
-- right hand
INSERT INTO `mob_skill` VALUES (439,334,439,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);

-- INSERT INTO `mob_skill` VALUES (810,?,740,'Fanatic_Dance',1,10.0,2000,2000,4,0,0,0); -- Only NM's in Dynamis and Falsespinner Bhudbrodd
-- INSERT INTO `mob_skill` VALUES (2155,?,?,'Phantasmal_Dance',1,15.0,2000,2000,4,0,0,0); -- certain NM only

-- Orcs (WOTG only)
INSERT INTO `mob_skill` VALUES (1945,334,1555,'Orcish_Counterstance',0,7.0,2000,2000,1,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2007,?,1626,'Tornado_Edge',4,10.0,2000,2000,4,0,0,0); -- certain NM only
-- INSERT INTO `mob_skill` VALUES (1946,?,?,'Berserker_Dance',1,7.0,2000,2000,1,0,0,0); -- certain NM only
-- INSERT INTO `mob_skill` VALUES (2008,?,?,'Shoulder_Charge',4,10.0,2000,2000,4,0,0,0); -- certain NM only
-- INSERT INTO `mob_skill` VALUES (2117,?,?,'Veil_of_Chaos',1,15.0,2000,2000,4,0,0,0); -- certain NM only

-- Orcish NM
INSERT INTO `mob_skill` VALUES (353,334,353,'Battle_Dance',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (352,334,352,'Arm_Block',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (351,334,351,'Slam_Dunk',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (349,334,349,'Aerial_Wheel',0,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (350,334,350,'Shoulder_Attack',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (810,334,740,'Fanatic_Dance',1,10.0,2000,2000,4,0,0,0); -- Only NM's in Dynamis and Falsespinner Bhudbrodd

-- Quadav
INSERT INTO `mob_skill` VALUES (355,200,355,'Ore_Toss',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (377,200,354,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (356,200,356,'Head_Butt',0,7.0,2000,2000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (357,200,357,'Shell_Bash',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (358,200,358,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2156,?,?,'Thunderous_Yowl',1,15.0,2000,3000,4,0,0,0);

INSERT INTO `mob_skill` VALUES (377,201,354,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (355,201,355,'Ore_Toss',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (356,201,356,'Head_Butt',0,7.0,2000,2000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (357,201,357,'Shell_Bash',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (358,201,358,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);

INSERT INTO `mob_skill` VALUES (377,202,354,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (355,202,355,'Ore_Toss',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (356,202,356,'Head_Butt',0,7.0,2000,2000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (357,202,357,'Shell_Bash',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (358,202,358,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);

-- Quadav (Armored Model)
-- INSERT INTO `mob_skill` VALUES (1967,?,1557,'Ore_Toss',0,7.0,2000,2000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1970,?,1560,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1969,?,1559,'Shell_Bash',0,7.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1971,?,1561,'Howl',1,20.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1968,?,1558,'Head_Butt',0,7.0,2000,2000,4,0,0,1); -- knockback might be level dependant. level 60 quadav were knocking me back

-- INSERT INTO `mob_skill` VALUES (2156,?,?,'Thunderous_Yowl',1,15.0,2000,2000,4,0,0,1);    -- Certain NM only
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Skull_Smash',0,7.0,2000,2000,4,0,0,1);            -- Certain NM only
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Shell_Charge',4,10.0,2000,2000,4,0,0,1);          -- Certain NM only
-- INSERT INTO `mob_skill` VALUES (2118,?,?,'Torment_of_Gu'Dha',1,20.0,2000,2000,4,0,0,1);  -- Certain NM only

-- Qu'Vho Deathhurler
INSERT INTO `mob_skill` VALUES (355,397,355,'Ore_Toss',0,10.0,2000,2000,4,0,0,0);

-- Quadav NM
INSERT INTO `mob_skill` VALUES (377,337,354,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (355,337,355,'Ore_Toss',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (356,337,356,'Head_Butt',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (357,337,357,'Shell_Bash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (358,337,358,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1977,?,1608,'Diamond_Shell',0,7.0,2000,3000,1,0,0,0); -- Only used by Campaign mobs / ToAU NMs?
-- INSERT INTO `mob_skill` VALUES (1978,?,1609,'Ore_Lob',2,15.0,2000,1500,4,0,0,0); -- Campaign NM's,and some WotG NM's.

-- Yagudo
INSERT INTO `mob_skill` VALUES (361,270,361,'Feather_Storm',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (377,270,354,'Howl',1,20.0,2000,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES (362,270,362,'Double_Kick',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (363,270,363,'Parry',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (364,270,364,'Sweep',1,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1742,?,?,'Hane_Fubuki',0,7.0,2000,1500,4,0,0,0); -- Used only by Gessho & Kazan the Peerless instead of Feather Storm
-- INSERT INTO `mob_skill` VALUES (1746,?,?,'Rinpyotosha',1,20.0,2000,1500,2,0,0,0);         -- Used only by Gessho & Kazan the Peerless instead of Howl
-- INSERT INTO `mob_skill` VALUES (1743,?,?,'Hiden_Sokyaku',0,7.0,2000,1500,4,0,0,1);   -- Used only by Gessho & Kazan the Peerless instead of Double Kick.
-- INSERT INTO `mob_skill` VALUES (1744,?,?,'Shiko_no_Mitate',0,7.0,2000,1500,1,0,0,0);  -- Used only by Gessho & Kazan the Peerless instead of Parry.
-- INSERT INTO `mob_skill` VALUES (1745,?,?,'Happobarai',1,10.0,2000,1500,4,0,0,0); -- Used only by Gessho & Kazan the Peerless instead of Sweep.

-- Yagudo NM
INSERT INTO `mob_skill` VALUES (361,360,361,'Feather_Storm',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (377,360,354,'Howl',1,20.0,2000,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES (362,360,362,'Double_Kick',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (363,360,363,'Parry',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (364,360,364,'Sweep',1,10.0,2000,1500,4,0,0,0);

-- Yagudo (Dynamis)
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Doom',0,10.0,2000,1500,4,0,0,0);

-- Yagudo (WoTG)
-- INSERT INTO `mob_skill` VALUES (1949,?,1565,'Feathered_Furore',4,10.0,2000,2000,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1950,?,?,'Dark_Invocation',0,15.0,2000,1500,4,0,0,0); -- certain Campaign bosses and Aa Xalmo the Savage
-- INSERT INTO `mob_skill` VALUES (2014,?,?,'Shirahadori',0,15.0,2000,1500,4,0,0,0); -- certain nms only
-- INSERT INTO `mob_skill` VALUES (1680,?,?,'Shibaraku',1,10.0,2000,1500,4,0,0,0); -- certain nms only
-- INSERT INTO `mob_skill` VALUES (2013,?,?,'Kamaitachi',1,15.0,2000,1500,4,0,0,0); -- certain nms only
-- INSERT INTO `mob_skill` VALUES (2119,?,?,'Vorticose_Sands',1,15.0,2000,1500,4,0,0,0); -- Tzee Xicu the Manifest WOTG missions only

-- Birds
INSERT INTO `mob_skill` VALUES (366,55,366,'Helldive',0,9.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (367,55,367,'Wing_Cutter',4,10.0,2000,1500,4,0,0,0);

-- Birds (COP,TOAU)
-- INSERT INTO `mob_skill` VALUES (366,55,?,'Helldive',0,9.0,2000,1500,4,0,0,2);
-- INSERT INTO `mob_skill` VALUES (367,55,?,'Wing_Cutter',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1324,?,343,'Damnation_Dive',4,10.0,2000,1500,4,0,0,0);     -- COP/TOAU
-- INSERT INTO `mob_skill` VALUES (1323,?,342,'Blind_Side_Barrage',0,7.0,2000,1500,4,0,0,0);  -- COP/TOAU
-- INSERT INTO `mob_skill` VALUES (1322,?,341,'Broadside_Barrage',0,7.0,2000,1500,4,0,0,0);   -- COP/TOAU

-- Behemoth
INSERT INTO `mob_skill` VALUES (372,51,372,'Wild_Horn',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (373,51,373,'Thunderbolt',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (374,51,374,'Kick_Out',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (375,51,375,'Shock_Wave',4,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (376,51,376,'Flame_Armor',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (377,51,377,'Howl',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (378,51,378,'Meteor',2,30.0,2000,1500,4,0,0,0);

-- King Behemoth
INSERT INTO `mob_skill` VALUES (372,479,372,'Wild_Horn',4,10.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (373,479,373,'Thunderbolt',1,40.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (374,479,374,'Kick_Out',4,10.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (375,479,375,'Shock_Wave',4,7.0,2000,1500,4,8,0,2);
INSERT INTO `mob_skill` VALUES (376,479,376,'Flame_Armor',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (377,479,377,'Howl',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (378,479,378,'Meteor',2,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2135,479,373,'Amnesic_Blast',0,10.0,2000,1500,4,0,0,0);

-- Behemoth (Elasmoth subspecies)
-- INSERT INTO `mob_skill` VALUES (2134,?,?,'Accursed_Armor',0,30.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2135,?,?,'Amnesic_Blast',0,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2330,?,?,'Ecliptic_Meteor',1,30.0,2000,?,4,0,0,0);

-- Warmachine
INSERT INTO `mob_skill` VALUES (379,190,379,'Burst',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (380,190,380,'Flame_Arrow',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (381,190,381,'Firebomb',4,9.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (382,190,382,'Blastbomb',2,13.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (383,190,383,'Fountain',4,9.5,2000,1500,4,0,0,0);

-- Dragons (4 footed variety)
INSERT INTO `mob_skill` VALUES (386,87,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (387,87,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (388,87,388,'Wind_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (389,87,389,'Body_Slam',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (390,87,390,'Heavy_Stomp',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (391,87,391,'Chaos_Blade',4,9.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (392,87,392,'Petro_Eyes',4,9.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (393,87,393,'Voidsong',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (394,87,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (395,87,395,'Lodesong',1,20.0,2000,1500,4,0,0,0);


-- Dragons (Dahak Subspecies)
-- INSERT INTO `mob_skill` VALUES (386,?,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (387,?,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (388,?,388,'Wind_Breath',4,12.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (389,?,389,'Body_Slam',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (390,?,390,'Heavy_Stomp',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (391,?,391,'Chaos_Blade',4,9.5,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (392,?,392,'Petro_Eyes',4,9.5,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (394,?,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (395,?,395,'Lodesong',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1536,?,?,'Nullsong',1,15.0,2000,1500,4,0,0,0); -- Dahaks only

-- Flies
INSERT INTO `mob_skill` VALUES (403,113,403,'Cursed_Sphere',2,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (404,113,404,'Venom',4,10.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (404,374,404,'Venom',0,10.0,2000,1500,4,0,0,0);

-- Flies (CoP+ToAU+Abyssea)
INSERT INTO `mob_skill` VALUES (62,375,401,'Somersault',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (403,375,403,'Cursed_Sphere',2,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (404,375,404,'Venom',0,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (?,375,?,'Debilitating_Drone',0,7.0,2000,1500,4,0,0,0);

-- Gigas (non-abyssea?)
INSERT INTO `mob_skill` VALUES (406,126,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0); -- Lighting-Type only.
INSERT INTO `mob_skill` VALUES (407,126,407,'Ice_Roar',4,9.0,2000,1500,4,0,0,0); -- Ice-Type only.
INSERT INTO `mob_skill` VALUES (408,126,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (409,126,409,'Grand_Slam',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (410,126,410,'Power_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (411,126,411,'Power_Attack_Weapon',0,7.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (406,127,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (407,127,407,'Ice_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (408,127,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (409,127,409,'Grand_Slam',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (410,127,410,'Power_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (411,127,411,'Power_Attack_Weapon',0,7.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (406,128,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (407,128,407,'Ice_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (408,128,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (409,128,409,'Grand_Slam',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (410,128,410,'Power_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (411,128,411,'Power_Attack_Weapon',0,7.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (406,129,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (407,129,407,'Ice_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (408,129,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (409,129,409,'Grand_Slam',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (410,129,410,'Power_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (411,129,411,'Power_Attack_Weapon',0,7.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (406,130,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (407,130,407,'Ice_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (408,130,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (409,130,409,'Grand_Slam',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (410,130,410,'Power_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (411,130,411,'Power_Attack_Weapon',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1380,?,?,'Trebuchet',1,15.0,2000,1500,4,0,0,0);     -- Certain NM only
-- INSERT INTO `mob_skill` VALUES (2093,?,?,'Daunting_Hurl',0,15.0,2000,1500,4,0,0,0); -- Certain NM only

-- Shadow Lord
INSERT INTO `mob_skill` VALUES (412,224,412,'Kick_Back',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (415,224,415,'Umbra_Smash',1,12.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (416,224,416,'Giga_Slash',1,12.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (417,224,417,'Dark_Nova',1,12.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (413,225,413,'Implosion',1,60,2000,0,4,0,0,0);

-- Golems
INSERT INTO `mob_skill` VALUES (418,135,418,'Crystal_Shield',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (419,135,419,'Heavy_Strike',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (420,135,420,'Ice_Break',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (421,135,421,'Thunder_Break',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (422,135,422,'Crystal_Rain',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (423,135,423,'Crystal_Weapon_Fire',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (424,135,424,'Crystal_Weapon_Stone',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (425,135,425,'Crystal_Weapon_Water',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (426,135,426,'Crystal_Weapon_Wind',0,15.0,2000,1500,4,0,0,0);

-- Sapling
INSERT INTO `mob_skill` VALUES (429,216,429,'Sprout_Spin',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (430,216,430,'Slumber_Powder',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (431,216,431,'Sprout_Smack',0,7.0,2000,1500,4,0,0,0);

-- Ghillie Dhu
INSERT INTO `mob_skill` VALUES (429,437,429,'Sprout_Spin',1,15.0,2000,1500,4,0,0,0);

-- Cardians
INSERT INTO `mob_skill` VALUES (427,61,427,'Bludgeon',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (428,61,428,'Deal_Out',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (77,61,77,'Double_Down',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (74,61,74,'Shuffle',4,10.0,2000,1500,4,0,0,0);

-- anim 432 = 2h cloud
-- now they dont start matching up....

-- Sahagin (-72 for anim id)
INSERT INTO `mob_skill` VALUES (515,213,443,'Hydro_Ball',4,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (521,213,449,'Hydro_Shot',0,10.0,2000,3000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (524,213,452,'Spinning_Fin',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (518,213,446,'Bubble_Armor',0,7.0,2000,1500,1,0,0,0);

-- Tonberries
INSERT INTO `mob_skill` VALUES (527,243,455,'Words_of_Bane',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (528,243,456,'Sigh',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (529,243,457,'Light_of_Penance',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (530,243,458,'Lateral_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (531,243,459,'Vertical_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (532,243,460,'Throat_Stab',0,3.4,2000,3500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (664,243,503,'Everyones_Grudge',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (665,243,504,'Everyones_Rancor',0,7.0,2000,1500,4,0,0,0); -- Certain NMs only,25% or below.

-- INSERT INTO `mob_skill` VALUES (2137,?,?,'Ritual_Bind',1,15.0,2000,1500,4,0,0,0); -- Bloodeye Vileberry only

-- Golden-Tongued Culberry (Different mag resists)
INSERT INTO `mob_skill` VALUES (527,244,455,'Words_of_Bane',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (528,244,456,'Sigh',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (529,244,457,'Light_of_Penance',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (530,244,458,'Lateral_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (531,244,459,'Vertical_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (532,244,460,'Throat_Stab',0,3.4,2000,3500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (664,244,503,'Everyones_Grudge',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (665,244,504,'Everyones_Rancor',0,7.0,2000,1500,4,0,0,0); -- Certain NMs only

-- Grav'iton
INSERT INTO `mob_skill` VALUES (527,282,455,'Words_of_Bane',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (528,282,456,'Sigh',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (529,282,457,'Light_of_Penance',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (530,282,458,'Lateral_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (531,282,459,'Vertical_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (532,282,460,'Throat_Stab',0,3.4,2000,3500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (664,282,503,'Everyones_Grudge',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (665,282,504,'Everyones_Rancor',0,7.0,2000,1500,4,0,0,0);

-- ZM4 Tonberries
INSERT INTO `mob_skill` VALUES (527,336,455,'Words_of_Bane',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (528,336,456,'Sigh',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (529,336,457,'Light_of_Penance',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (530,336,458,'Lateral_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (531,336,459,'Vertical_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (532,336,460,'Throat_Stab',0,3.4,2000,3500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (664,336,503,'Everyones_Grudge',0,7.0,2000,1500,4,0,0,0);

-- Antica
INSERT INTO `mob_skill` VALUES (535,25,463,'Magnetite_Cloud',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (536,25,464,'Sandstorm',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (540,25,468,'Jamming_Wave',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (537,25,465,'Sand_Veil',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (538,25,466,'Sand_Shield',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (534,25,462,'Shoulder_Slam',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (539,25,467,'Sand_Trap',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (533,25,461,'Spikeball',0,13.5,2000,1500,4,0,0,0);

-- Manticore
INSERT INTO `mob_skill` VALUES (541,179,469,'Deadly_Hold',0,7.0,2000,1800,4,0,0,0);
INSERT INTO `mob_skill` VALUES (542,179,470,'Tail_Swing',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (543,179,471,'Tail_Smash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (544,179,472,'Heat_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (545,179,473,'Riddle',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (546,179,474,'Great_Sandstorm',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (547,179,475,'Great_Whirlwind',4,10.0,2000,1500,4,0,0,0);

-- Kirin
INSERT INTO `mob_skill` VALUES (541,281,469,'Deadly_Hold',0,7.0,2000,1800,4,0,0,0);
INSERT INTO `mob_skill` VALUES (542,281,470,'Tail_Swing',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (543,281,471,'Tail_Smash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (544,281,472,'Heat_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (545,281,473,'Riddle',1,15.0,2000,1500,4,0,0,0); -- might not use this move,according to wiki list
INSERT INTO `mob_skill` VALUES (546,281,474,'Great_Sandstorm',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (547,281,475,'Great_Whirlwind',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (478,281,432,'Astral_Flow',0,7.0,2000,0,1,2,0,0);

-- Kirin's Avatar
INSERT INTO `mob_skill` VALUES (656,495,611,'searing_light',1,30.0,0,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (583,495,521,'Howling_Moon',1,30.0,0,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (592,495,534,'Inferno',1,30.0,0,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (628,495,586,'Diamond_Dust',1,30.0,0,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (610,495,560,'Tidal_Wave',1,30.0,0,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (637,495,599,'judgment_bolt',1,30.0,0,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (619,495,573,'aerial_blast',1,30.0,0,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (601,495,547,'earthen_fury',1,30.0,0,0,4,0,0,0);

-- Pet Suzaku
INSERT INTO `mob_skill` VALUES (143,333,143,'Scratch',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (144,333,144,'Triple_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (145,333,145,'Gliding_Spike',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (146,333,146,'Feather_Barrier',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (147,333,147,'Stormwind',1,15.0,2000,1500,4,0,0,0);

-- Pet Genbu
INSERT INTO `mob_skill` VALUES (549,330,477,'Head_Butt_Turtle',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (550,330,478,'Tortoise_Stomp',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (551,330,479,'Harden_Shell',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (552,330,480,'Earth_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (553,330,481,'Aqua_Breath',4,10.0,2000,1500,4,0,0,0);

-- Pet Seiryu
INSERT INTO `mob_skill` VALUES (558,331,486,'Deadly_Drive',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (559,331,487,'Wind_Wall',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (560,331,488,'Fang_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (561,331,489,'Dread_Shriek',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (562,331,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (565,331,493,'Radiant_Breath',4,15.0,2000,1500,4,0,0,0);

-- Pet Byakko
INSERT INTO `mob_skill` VALUES (14,332,14,'Roar',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (15,332,15,'Razor_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (17,332,17,'Claw_Cyclone',4,15.0,2000,1500,4,0,0,0);

-- Adamantoises
INSERT INTO `mob_skill` VALUES (548,2,476,'Tortoise_Song',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (549,2,477,'Head_Butt_Turtle',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (550,2,478,'Tortoise_Stomp_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (551,2,479,'Harden_Shell',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (552,2,480,'Earth_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (553,2,481,'Aqua_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2329,2,478,'Tetsudo_Tremor',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2329,?,?,'Testudo_Tremor',1,15.0,2000,1500,4,0,0,0); -- Ferromantoise only

-- Spiders
INSERT INTO `mob_skill` VALUES (554,235,482,'Sickle_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (555,235,483,'Acid_Spray',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (556,235,484,'Spider_Web',1,15.0,2000,1500,4,0,0,0);

-- Spiders (NM?)
-- INSERT INTO `mob_skill` VALUES (703,?,?,'Sickle_Slash',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (704,?,?,'Acid_Spray',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (705,?,?,'Spider_Web',1,15.0,2000,1500,4,0,0,0);

-- Wyverns
INSERT INTO `mob_skill` VALUES (557,265,485,'Dispelling_Wind',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (558,265,486,'Deadly_Drive',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (559,265,487,'Wind_Wall',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (560,265,488,'Fang_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (561,265,489,'Dread_Shriek',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (562,265,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (565,265,493,'Radiant_Breath',4,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (566,?,494,'Chaos_Breath',4,15.0,2000,1500,4,0,0,0); -- Certain NM Only
-- INSERT INTO `mob_skill` VALUES (563,?,491,'Blizzard_Breath',4,15.0,2000,1500,4,0,0,0); -- Certain NM Only
-- INSERT INTO `mob_skill` VALUES (564,?,492,'Thunder_Breath',4,15.0,2000,1500,4,0,0,0); -- Certain NM Only
-- INSERT INTO `mob_skill` VALUES (1966,?,?,'Hurricane_Breath',4,15.0,2000,1500,4,0,0,0); -- Certain NM Only

INSERT INTO `mob_skill` VALUES (557,266,485,'Dispelling_Wind',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (558,266,486,'Deadly_Drive',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (559,266,487,'Wind_Wall',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (560,266,488,'Fang_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (561,266,489,'Dread_Shriek',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (562,266,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (565,266,493,'Radiant_Breath',4,15.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (557,267,485,'Dispelling_Wind',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (558,267,486,'Deadly_Drive',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (559,267,487,'Wind_Wall',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (560,267,488,'Fang_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (561,267,489,'Dread_Shriek',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (562,267,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (565,267,493,'Radiant_Breath',4,15.0,2000,1500,4,0,0,0);

-- Suzaku
INSERT INTO `mob_skill` VALUES (143,280,143,'Scratch',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (144,280,144,'Triple_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (145,280,145,'Gliding_Spike',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (146,280,146,'Feather_Barrier',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (147,280,147,'Stormwind',1,15.0,2000,1500,4,0,0,0);

-- Genbu
INSERT INTO `mob_skill` VALUES (549,277,477,'Head_Butt_Turtle',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (550,277,478,'Tortoise_Stomp_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (551,277,479,'Harden_Shell',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (552,277,480,'Earth_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (553,277,481,'Aqua_Breath',4,15.0,2000,1500,4,0,0,0);

-- Seiryu
INSERT INTO `mob_skill` VALUES (558,278,486,'Deadly_Drive_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (559,278,487,'Wind_Wall',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (560,278,488,'Fang_Rush_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (561,278,489,'Dread_Shriek',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (562,278,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (565,278,493,'Radiant_Breath',4,15.0,2000,1500,4,0,0,0);

-- Byakko
INSERT INTO `mob_skill` VALUES (14,279,14,'Roar',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (15,279,15,'Razor_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (17,279,17,'Claw_Cyclone',4,15.0,2000,1500,4,0,0,0);

-- offsets shift some more.. (tpid - 72 - 89 (-161)

-- Mimic
INSERT INTO `mob_skill` VALUES (332,183,107,'Death_Trap',1,30.0,2000,2000,4,0,0,0);

-- Mimic (Abyssea)
-- INSERT INTO `mob_skill` VALUES (2324,?,?,'Pandora's_Curse',0,7.0,2000,2000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2325,?,?,'Pandora's_Gift',0,7.0,2000,2000,4,0,0,0); -- Unknown who uses this

-- Bugbear
INSERT INTO `mob_skill` VALUES (105,59,829,'Earth_Shock',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (104,59,828,'Flying_Hip_Press',1,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (103,59,827,'Bionic_Boost',0,7.0,2000,1500,1,0,0,0); -- *Needs Script*
INSERT INTO `mob_skill` VALUES (102,59,826,'Heavy_Whisk',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (101,59,825,'Heavy_Blow',0,7.0,2000,1500,4,0,0,0);

-- Moblin
INSERT INTO `mob_skill` VALUES (832,184,334,'Goblin_Rush',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (825,184,743,'Frypan',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (826,184,744,'Smokebomb',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (827,184,745,'Smokebomb',0,10.0,2000,1500,1,0,0,0); -- fail
INSERT INTO `mob_skill` VALUES (828,184,746,'Crispy_Candle',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (829,184,747,'Crispy_Candle',0,10.0,2000,1500,1,0,0,0); -- fail
INSERT INTO `mob_skill` VALUES (830,184,748,'Paralysis_Shower',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (831,184,749,'Paralysis_Shower',0,10.0,2000,1500,1,0,0,0); -- fail

-- Flytrap
INSERT INTO `mob_skill` VALUES (178,114,806,'Soporific',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (179,114,807,'Palsy_Pollen',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (180,114,808,'Gloeosuccus',0,7.0,2000,1500,4,0,0,0);

-- Antlions
INSERT INTO `mob_skill` VALUES (19,26,809,'Sand_Blast',1,8.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (20,26,810,'Sand_Pit',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (21,26,811,'Venom_Spray',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (23,26,813,'Mandibular_Bite',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2261,?,?,'Quake_Blast',1,15.0,2000,1500,4,0,0,0); -- only used by certain nms

-- Antlions (Formiceros Subspecies)
-- INSERT INTO `mob_skill` VALUES (2260,?,?,'Gravitic_Horn',4,10.0,2000,1500,4,0,0,0); -- Formiceros subspecies only

-- Eft
INSERT INTO `mob_skill` VALUES (259,98,814,'Toxic_Spit',0,9.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (260,98,815,'Geist_Wall',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (261,98,816,'Numbing_Noise',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (262,98,817,'Nimble_Snap',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (263,98,818,'Cyclotail',1,10.0,2000,1500,4,0,0,0);

-- Fomor
INSERT INTO `mob_skill` VALUES (246,115,246,'Shackled_Fists',0,7.0,2000,0,4,1,0,0); -- Fomor Monks Only.
INSERT INTO `mob_skill` VALUES (247,115,247,'Foxfire',4,10.0,2000,0,4,1,0,0); -- 1-Handed Weapon Wielders Only
INSERT INTO `mob_skill` VALUES (248,115,248,'Grim_Halo',1,10.0,2000,0,4,1,0,0); -- 2-Handed Weapon Wielders Only
INSERT INTO `mob_skill` VALUES (249,115,249,'Netherspikes',4,10.0,2000,0,4,1,0,0);
INSERT INTO `mob_skill` VALUES (250,115,250,'Carnal_Nightmare',1,10.0,2000,0,4,1,0,0);
INSERT INTO `mob_skill` VALUES (251,115,251,'Aegis_Schism',0,7.0,2000,0,4,1,0,0);
INSERT INTO `mob_skill` VALUES (252,115,252,'Dancing_Chains',1,10.0,2000,0,4,1,0,0);
INSERT INTO `mob_skill` VALUES (253,115,253,'Barbed_Crescent',0,7.0,2000,0,4,1,0,0);

-- Fomor (Dynamis - Hydra)
INSERT INTO `mob_skill` VALUES (246,359,246,'Shackled_Fists',0,7.0,2000,0,4,1,0,0);    -- WS IDs are prob different.
INSERT INTO `mob_skill` VALUES (247,359,247,'Foxfire',4,10.0,2000,0,4,1,0,0);          -- WS IDs are prob different.
INSERT INTO `mob_skill` VALUES (248,359,248,'Grim_Halo',1,10.0,2000,0,4,1,0,0);        -- WS IDs are prob different.
INSERT INTO `mob_skill` VALUES (249,359,249,'Netherspikes',4,10.0,2000,0,4,1,0,0);     -- WS IDs are prob different.
INSERT INTO `mob_skill` VALUES (250,359,250,'Carnal_Nightmare',1,10.0,2000,0,4,1,0,0); -- WS IDs are prob different.
INSERT INTO `mob_skill` VALUES (251,359,251,'Aegis_Schism',0,7.0,2000,0,4,1,0,0);      -- WS IDs are prob different.
INSERT INTO `mob_skill` VALUES (252,359,252,'Dancing_Chains',1,10.0,2000,0,4,1,0,0);   -- WS IDs are prob different.
INSERT INTO `mob_skill` VALUES (253,359,253,'Barbed_Crescent',0,7.0,2000,0,4,1,0,0);   -- WS IDs are prob different.

-- Tauri
INSERT INTO `mob_skill` VALUES (242,240,851,'Triclip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (243,240,852,'Back_Swish',4,10.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (244,240,853,'Mow',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (245,240,854,'Frightful_Roar',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (246,240,855,'Mortal_Ray',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (247,240,856,'Unblessed_Armor',0,7.0,2000,1500,1,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1104,?,?,'Apocalyptic_Ray',4,10.0,2000,1500,1,0,0,0); -- Eldertaur only
-- INSERT INTO `mob_skill` VALUES (1103,?,?,'Chthonian_Ray',4,10.0,2000,1500,1,0,0,0); -- Mindertaur only
-- INSERT INTO `mob_skill` VALUES (2133,?,?,'Lethal_Triclip',1,15.0,2000,1500,1,0,0,0); -- Certain NM only

-- Clusters
INSERT INTO `mob_skill` VALUES (311,68,866,'Sling_Bomb',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (312,68,867,'Formation_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (313,68,868,'Refueling',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (314,68,869,'Circle_of_Flames',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (315,68,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (316,68,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (317,68,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (318,68,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (319,68,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (313,69,868,'Refueling',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (311,69,866,'Sling_Bomb',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (312,69,867,'Formation_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (314,69,869,'Circle_of_Flames',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (315,69,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (316,69,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (317,69,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (318,69,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (319,69,?,'Self-Destruct',1,10.0,2000,1500,4,0,0,0);

-- Uragnites
INSERT INTO `mob_skill` VALUES (1315,251,861,'Gas_Shell',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1316,251,862,'Venom_Shell',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1317,251,863,'Palsynyxis',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1318,251,864,'Painful_Whip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1319,251,865,'Suctorial_Tentacle',0,7.0,2000,1500,4,0,0,0);

-- Snolls
INSERT INTO `mob_skill` VALUES (1391,232,875,'Berserk',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1389,232,876,'Freeze_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1390,232,877,'Cold_Wave',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1388,232,878,'Hypothermal_Combustion',1,20.0,2000,2000,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (343,?,?,'Arctic_Impact',1,18.0,2000,2000,4,0,0,0); -- Certain NM Only
-- INSERT INTO `mob_skill` VALUES (344,?,?,'Cold_Wave',4,10.0,2000,2000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (345,?,?,'Hypothermal_Combustion',4,12.0,2000,2000,4,0,0,0); -- Certain NM Only

-- Corse
INSERT INTO `mob_skill` VALUES (274,74,900,'Memento_Mori',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (275,74,901,'Silence_Seal',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (276,74,902,'Envoutement',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (277,74,903,'Danse_Macabre',0,10.0,2000,2000,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1073,?,903,'Gala_Macabre',1,10.0,2000,2000,4,0,0,0); -- Certain NM only
-- INSERT INTO `mob_skill` VALUES (274,?,1070,'Final_Retribution',1,10.0,2000,1500,4,0,0,0); -- Only used by some notorious monsters like Xolotl. Dragon skull headed staff types?

-- Corse (Kumakatok Subspecies - Purple Robes,Gold Hat)
-- INSERT INTO `mob_skill` VALUES (2382,?,?,'Hadal_Summons',1,15.0,2000,1500,4,0,0,0); -- Kumakatok subspecies

-- Spheroids
INSERT INTO `mob_skill` VALUES (728,234,685,'Electrocharge',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (305,234,971,'Electromagnetic_Field',1,10.0,2000,1500,4,0,0,0);

-- Spheroids (CoP/Abyssea)
-- INSERT INTO `mob_skill` VALUES (1657,?,?,'Stunbolt',0,10.0,2000,1500,4,0,0,0); -- CoP / Abyssea only.
-- INSERT INTO `mob_skill` VALUES (1775,?,972,'Reactive_Shield',0,7.0,2000,1500,1,0,0,0); -- CoP / Abyssea only.

-- Mammets
INSERT INTO `mob_skill` VALUES (91,149,889,'Velocious_Blade',0,3.0,2000,1500,4,0,0,0); -- Sword Form Only
INSERT INTO `mob_skill` VALUES (163,149,890,'Scission_Thrust',4,7.0,2000,1500,4,0,0,0); -- Sword Form Only
INSERT INTO `mob_skill` VALUES (166,149,891,'Sonic_Blade',1,5.0,2000,1500,4,0,0,0); -- Sword Form Only
INSERT INTO `mob_skill` VALUES (185,149,892,'Microquake',0,3.0,2000,1500,4,0,0,0); -- Polearm Form Only
INSERT INTO `mob_skill` VALUES (191,149,893,'Percussive_Foin',4,10.0,2000,1500,4,0,0,0); -- Polearm Form Only
INSERT INTO `mob_skill` VALUES (201,149,894,'Gravity_Wheel',1,7.0,2000,1500,4,0,0,0); -- Polearm Form Only
INSERT INTO `mob_skill` VALUES (208,149,895,'Psychomancy',1,15.0,2000,1500,4,0,0,0); -- Staff Form Only
INSERT INTO `mob_skill` VALUES (215,149,896,'Mind_Wall',0,7.0,2000,1500,1,0,0,0); -- Staff Form Only
INSERT INTO `mob_skill` VALUES (231,149,897,'Transmogrification',0,7.0,2000,1500,1,0,0,0); -- Hand Form Only
INSERT INTO `mob_skill` VALUES (284,149,898,'Tremorous_Tread',1,5.0,2000,1500,4,0,0,0);

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VALUES POST 1024
-- Take tpid and +256 then -1024 to find the correct param for the packet
-- Take animid and -1024 to find the correct param
-- REMEMBER TO SET BOTH ANIM AND TPID TO THE CORRECT 0X01
-- --------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Mamool Ja Warrior
INSERT INTO `mob_skill` VALUES (1475,176,1149,'Forceful_Blow',0,7.0,2000,1000,4,0,0,0); -- Hand to Hand Only / After Weapon Break
INSERT INTO `mob_skill` VALUES (1476,176,1150,'Somersault_Kick',0,7.0,2000,1000,4,0,0,4);
INSERT INTO `mob_skill` VALUES (1477,176,1151,'Firespit',0,25.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1478,176,1152,'Warm-Up',0,7.0,2000,1000,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1479,176,1153,'Javelin_Throw',0,7.0,2000,1500,4,0,0,0); -- Weapon is lost after use. Linked with Piercing Type.
-- INSERT INTO `mob_skill` VALUES (1480,176,1154,'Axe_Throw',0,7.0,2000,1500,4,0,0,0); -- Weapon is lost after use. Linked with Slashing Type.
-- INSERT INTO `mob_skill` VALUES (1481,176,1155,'Vorpal_Blade',0,7.0,2000,1500,4,0,0,0); -- Only used by BLU's. Requires weapon out.
-- INSERT INTO `mob_skill` VALUES (1482,176,1156,'Groundburst',1,16.0,2000,1500,4,0,0,0); -- Only used by NMs.
-- INSERT INTO `mob_skill` VALUES (1583,176,1147,'Rushing_Slash',0,7.0,2000,1500,4,0,0,0); -- Slashing Type Wielders Only.
-- INSERT INTO `mob_skill` VALUES (1584,176,1148,'Rushing_Stab',0,7.0,2000,1500,4,0,0,0); -- Piercing Type Wielders Only.

-- Mamool Ja Sage
-- INSERT INTO `mob_skill` VALUES (1664,?,1264,'Rushing_Drub',0,7.0,2000,1500,4,0,0,0); -- Staff Wielders Only.
-- INSERT INTO `mob_skill` VALUES (1665,?,1265,'Forceful_Blow',0,7.0,2000,1000,4,0,0,0); -- Hand to Hand Only.
-- INSERT INTO `mob_skill` VALUES (1666,?,1266,'Somersault_Kick',0,7.0,2000,1000,4,0,0,4);
-- INSERT INTO `mob_skill` VALUES (1667,?,1267,'Firespit',0,25.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1668,?,1268,'Warm-Up',0,7.0,2000,1000,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1669,?,1269,'Stave_Toss',0,7.0,2000,1000,1,0,0,0); -- Linked with Staff
-- INSERT INTO `mob_skill` VALUES (1670,?,1270,'Groundburst',0,7.0,2000,1000,1,0,0,0); -- Only used by NMs.

-- Mamool Ja Knight
-- INSERT INTO `mob_skill` VALUES (1838,?,?,'Fire_Angon',4,16.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1839,?,?,'Batterhorn',4,16.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1840,?,?,'Clobber',4,16.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1841,?,?,'Granite_Skin',4,16.0,2000,1000,4,0,0,0);

-- Mamool Ja Knight (probably Lancelord Gaheel Ja version)
-- INSERT INTO `mob_skill` VALUES (1842,?,?,'Blazing Angon',4,16.0,2000,1000,4,0,0,0); -- Used only by Lancelord Gaheel Ja when his health is below 25%,and by Searing Vogaal Ja during Besieged.
-- INSERT INTO `mob_skill` VALUES (1843,?,?,'Batterhorn',4,16.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1844,?,?,'Clobber',4,16.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1845,?,?,'Demoralizing_Roar',4,16.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1846,?,?,'Boiling Blood',4,16.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1847,?,?,'Granite_Skin',4,16.0,2000,1000,4,0,0,0);

-- Apkallu
INSERT INTO `mob_skill` VALUES (1457,27,1159,'Yawn',1,10.0,2000,1500,4,0,0,0); -- retail confirmed range.
INSERT INTO `mob_skill` VALUES (1458,27,1160,'Wing_Slap',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1459,27,1161,'Beak_Lunge',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1460,27,1162,'Frigid_Shuffle',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1461,27,1163,'Wing_Whirl',1,10.0,2000,1500,4,0,0,0);

-- Marid
INSERT INTO `mob_skill` VALUES (1447,180,1170,'Barrier_Tusk',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1448,180,1171,'Onrush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1449,180,1172,'Stampede',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1450,180,1173,'Flailing_Trunk',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1451,180,1174,'Voracious_Trunk',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1452,180,?,'Proboscis_Shower',0,7.0,2000,1500,4,0,0,0); -- NM only

INSERT INTO `mob_skill` VALUES (1449,371,1172,'Stampede',0,7.0,2000,1500,4,0,0,0);

-- Colibri
INSERT INTO `mob_skill` VALUES (1443,72,1176,'Pecking_Flurry',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1444,72,1177,'Snatch_Morsel',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1445,72,1178,'Feather_Tickle',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (?,?,?,'Wisecrack',1,15.0,2000,1500,4,0,0,0); -- Certain NM only

-- Imps
INSERT INTO `mob_skill` VALUES (1455,165,1180,'Frenetic_Rip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1453,165,1181,'Abrasive_Tantara',1,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1454,165,1182,'Deafening_Tantara',1,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1747,?,?,'Grating_Tantara',1,10.0,2000,1500,4,0,0,0); -- Used by NM
-- INSERT INTO `mob_skill` VALUES (1748,?,?,'Stifling_Tantara',1,10.0,2000,1500,4,0,0,0); -- Used by NM

INSERT INTO `mob_skill` VALUES (1455,166,1180,'Frenetic_Rip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1453,166,1181,'Abrasive_Tantara',1,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1454,166,1182,'Deafening_Tantara',1,10.0,2000,1500,4,0,0,0);

-- Puks
INSERT INTO `mob_skill` VALUES (1467,198,1198,'Ill_Wind',1,15.0,2000,1500,4,0,0,0); -- Only used by Puks in Mamook,Besieged,and NMs: Vulpangue,Nis Puk,Nguruvilu,Seps ,Phantom Puk,Waugyl
INSERT INTO `mob_skill` VALUES (1466,198,1197,'Zephyr_Mantle',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1465,198,1196,'Obfuscate',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1464,198,1195,'Wind_Shear',1,10.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (1462,198,1194,'Crosswind',4,10.0,2000,1500,4,0,0,3);

-- INSERT INTO `mob_skill` VALUES (1468,?,1199,'White_Wind',1,10.0,2000,1500,1,0,0,0); -- Certain NM only

-- Qutrub
INSERT INTO `mob_skill` VALUES (1522,203,1205,'Spinal_Cleave',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1523,203,1206,'Mangle',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1524,203,1207,'Leaping_Cleave',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1525,203,1208,'Hex_Palm',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1526,203,1209,'Animating_Wail',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1527,203,1210,'Fortifying_Wail',0,7.0,2000,1500,1,0,0,0);

INSERT INTO `mob_skill` VALUES (1522,204,1205,'Spinal_Cleave',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1523,204,1206,'Mangle',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1524,204,1207,'Leaping_Cleave',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1525,204,1208,'Hex_Palm',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1526,204,1209,'Animating_Wail',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1527,204,1210,'Fortifying_Wail',0,7.0,2000,1500,1,0,0,0);

INSERT INTO `mob_skill` VALUES (1522,205,1205,'Spinal_Cleave',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1523,205,1206,'Mangle',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1524,205,1207,'Leaping_Cleave',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1525,205,1208,'Hex_Palm',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1526,205,1209,'Animating_Wail',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1527,205,1210,'Fortifying_Wail',0,7.0,2000,1500,1,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1528,?,1211,'Unblest_Jambiya',1,15.0,2000,1500,4,0,0,0); -- Certain NM only
-- INSERT INTO `mob_skill` VALUES (2634,?,2025,'Gen'ei_Ryodan',1,15,2000,2000,4,0,0,0); -- Unique to Dimgruzub only @ certain % HP or below

-- Flan
INSERT INTO `mob_skill` VALUES (1565,112,1283,'Amplification',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1566,112,1284,'Boiling_Point',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1568,112,1286,'Amorphic_spikes',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1570,112,1288,'Synergism',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1571,112,1289,'Metastasis',4,10.0,2000,1500,4,0,0,0); -- lack of info online as to who uses this move.

-- INSERT INTO `mob_skill` VALUES (1567,?,1285,'Xenoglossia',0,7.0,2000,1500,1,0,0,0); -- Certain NMs only
-- INSERT INTO `mob_skill` VALUES (1569,?,1287,'Amorphic_scythe',4,10.0,2000,1500,4,0,0,0); -- Custards and Immortal Flan only

-- Flan (Custards)
-- INSERT INTO `mob_skill` VALUES (1569,?,1287,'Amorphic_scythe',4,10.0,2000,1500,4,0,0,0); -- Custards and Immortal Flan only

-- Wamouracampa
INSERT INTO `mob_skill` VALUES (1559,254,1290,'Amber_scutum',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1560,254,1291,'Vitriolic_spray',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1561,254,1292,'Thermal_Pulse',1,12.5,2000,1000,4,0,0,0); -- Open form only
INSERT INTO `mob_skill` VALUES (1562,254,1293,'Cannonball',0,20,2000,1000,4,0,0,0); -- Curled form only
INSERT INTO `mob_skill` VALUES (1563,254,1294,'Heat_barrier',0,7.0,2000,1000,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1564,254,1295,'Vitriolic_shower',4,10.0,2000,1000,4,0,0,0); -- No page on any wiki for this move??? Seems to be NM only.

-- Wamoura
INSERT INTO `mob_skill` VALUES (1695,253,1345,'Magma_fan',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1696,253,1346,'Erratic_flutter',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1697,253,1347,'Proboscis',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1698,253,1348,'Erosion_dust',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1699,253,1349,'Exuviation',0,7.0,2000,1000,1,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1700,253,1350,'Fire_break',0,7.0,2000,1000,4,0,0,0); -- NM only

-- Gears
INSERT INTO `mob_skill` VALUES (1791,120,1388,'Antigravity',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1787,120,1390,'Artificial_Gravity',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1789,120,1378,'Rail_Cannon',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1785,120,1376,'Restoral',0,7.0,2000,1500,2,0,0,0);

-- Gear (single)
-- INSERT INTO `mob_skill` VALUES (1791,119,1388,'Antigravity',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1787,119,1390,'Artificial_Gravity',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1789,119,1378,'Rail_Cannon',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1785,119,1376,'Restoral',0,7.0,2000,1500,2,0,0,0)


-- Ramparts
-- INSERT INTO `mob_skill` VALUES (1780,209,?,'Astral_Gate',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1778,209,?,'Reinforcements',0,7.0,2000,4000,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1777,209,?,'Choke_Chain',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1776,209,?,'Roller_Chain',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1779,209,?,'Biomagnet',0,30.0,2000,1500,4,0,0,0);

-- Chariots
INSERT INTO `mob_skill` VALUES (1798,63,1407,'Diffusion_ray',4,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1799,63,1408,'Intertia_stream',1,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1800,63,1399,'Discharge',1,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1801,63,1401,'Mortal_revolution',1,15.0,2000,1000,4,0,0,1); -- Certain NMs only
INSERT INTO `mob_skill` VALUES (1802,63,1400,'Homing_missile',2,20.0,2000,1000,4,0,0,0); -- Certain NMs only
INSERT INTO `mob_skill` VALUES (1803,63,1402,'Discoid',4,10.0,2000,1000,4,0,0,0); -- Certain NMs only
INSERT INTO `mob_skill` VALUES (1804,63,1403,'Brainjack',0,10.0,2000,1000,4,0,0,0); -- Only used by Long-Armed Chariot and Long-Horned Chariot.

-- Wivre
INSERT INTO `mob_skill` VALUES (1843,257,1437,'Batterhorn',4,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1844,257,1436,'Clobber',4,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1845,257,1434,'Demoralizing_Roar',1,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1846,257,1435,'Boiling_Blood',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1847,257,1439,'Granite_Skin',0,7.0,2000,1000,1,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1848,?,?,'Crippling_Slam',4,16.0,2000,1000,4,0,0,0); -- Certain NM only

-- Ladybugs
INSERT INTO `mob_skill` VALUES (1925,170,1579,'Spiral_Spin',4,10.0,2000,1000,4,0,0,0); -- Daytime only
INSERT INTO `mob_skill` VALUES (1924,170,1578,'Nepenthean_Hum',1,10.0,2000,1000,4,0,0,0); -- Daytime only
INSERT INTO `mob_skill` VALUES (1923,170,1577,'Noisome_Powder',1,10.0,2000,1000,4,0,0,0); -- Daytime only
INSERT INTO `mob_skill` VALUES (1922,170,1576,'Sudden_Lunge',0,7.0,2000,1000,4,0,0,3);

-- Ladybugs (NM)
INSERT INTO `mob_skill` VALUES (1925,390,1579,'Spiral_Spin',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1924,390,1578,'Nepenthean_Hum',1,10.0,2000,1000,4,0,0,0); -- Daytime only
INSERT INTO `mob_skill` VALUES (1923,390,1577,'Noisome_Powder',1,10.0,2000,1000,4,0,0,0); -- Daytime only
INSERT INTO `mob_skill` VALUES (1922,390,1576,'Sudden_Lunge',0,7.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1926,390,1580,'Spiral_burst',0,7.0,2000,1000,4,0,0,0); -- Daytime only | Skogs Fru / Vadleany only?

-- Pixie
INSERT INTO `mob_skill` VALUES (1937,195,1581,'Zephyr_Arrow',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1938,195,1582,'Lethe_Arrows',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1939,195,1583,'Spring_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1940,195,1584,'Summer_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1941,195,1585,'Autumn_Breeze',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1942,195,1586,'Winter_Breeze',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1943,195,1587,'Cyclonic_Turmoil',1,15.0,2000,1500,4,0,0,5);
INSERT INTO `mob_skill` VALUES (1944,195,1588,'Cyclonic_Torrent',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2262,?,?,'Norn_Arrows',0,15.0,2000,1500,4,0,0,0); -- Certain NM Only
-- INSERT INTO `mob_skill` VALUES (2438,?,?,'Cyclonic_Blight',1,15.0,2000,1500,4,0,0,0); -- Certain NM Only

-- Gnole
INSERT INTO `mob_skill` VALUES (1914,132,1589,'Fevered_Pitch',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1915,132,1590,'Call_of_the_Moon_up',1,25.0,2000,1500,4,0,0,0); -- standing up
INSERT INTO `mob_skill` VALUES (1916,132,1591,'Call_of_the_Moon_down',1,25.0,2000,1500,4,0,0,0); -- on 4 legs
INSERT INTO `mob_skill` VALUES (1917,132,1592,'Plenilune_Embrace_up',0,15.0,2000,1500,1,0,0,0); -- standing up
INSERT INTO `mob_skill` VALUES (1918,132,1593,'Plenilune_Embrace_down',0,15.0,2000,1500,1,0,0,0); -- 4 legs
INSERT INTO `mob_skill` VALUES (1919,132,1594,'Nox_blast',0,7.0,2000,1000,4,0,0,3); -- standing only
INSERT INTO `mob_skill` VALUES (1920,132,1595,'Asuran_claws',0,7.0,2000,1000,4,0,0,0); -- standing only

-- INSERT INTO `mob_skill` VALUES (1921,0,1596,'Cacophony',0,7.0,2000,1000,1,0,0,0); -- standing up - NMs only

-- Djinn
INSERT INTO `mob_skill` VALUES (1960,82,1597,'Nocturnal_Combustion',1,20.0,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1962,82,1599,'Penumbral_Impact',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1961,82,1598,'Berserk',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1963,82,1600,'Dark_Wave',1,10.0,2000,1000,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1964,?,1601,'Tartarean_storm',1,20.0,2000,1000,4,0,0,0); -- only Chhir Batti nm

-- Ghrah
INSERT INTO `mob_skill` VALUES (1185,122,1065,'Actinic_Burst',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1186,122,1066,'Core_Meltdown',1,15.0,2000,4000,4,0,0,0); -- occurs very rarely. lets say a 5% chance.
INSERT INTO `mob_skill` VALUES (1187,122,1061,'Hexidiscs',4,10.0,2000,1500,4,0,0,0); -- only used in ball form
INSERT INTO `mob_skill` VALUES (1188,122,1062,'Vorpal_Blade',0,7.0,2000,1500,4,0,0,0); -- only used in human form
INSERT INTO `mob_skill` VALUES (1189,122,1063,'Damnation_Dive',4,10.0,2000,1500,4,0,0,0); -- only used in bird form.  Logged on Eo'ghrah. theres a version that supposedly has knockback?
INSERT INTO `mob_skill` VALUES (1190,122,1064,'Sickle_Slash',0,7.0,2000,1500,4,0,0,0); -- only used in spider form.

-- Kf'Ghrah
INSERT INTO `mob_skill` VALUES (1187,123,1061,'Hexidiscs',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1185,123,1065,'Actinic_Burst',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1189,123,1063,'Damnation_Dive',4,10.0,2000,1500,4,0,0,0); -- only used in bird form.  Logged on Eo'ghrah. theres a version that supposedly has knockback?
INSERT INTO `mob_skill` VALUES (1190,123,1064,'Sickle_Slash',0,7.0,2000,1500,4,0,0,0); -- only used in spider form.

-- Jailer of Fortitude
INSERT INTO `mob_skill` VALUES (1188,124,1062,'Vorpal_Blade',0,7.0,2000,1500,4,0,0,0); -- only used in human form
INSERT INTO `mob_skill` VALUES (1185,124,1065,'Actinic_Burst',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (438,124,432,'Invincible',0,7.0,2000,0,1,2,0,0);

-- Euvhi
INSERT INTO `mob_skill` VALUES (1194,109,1067,'Viscid_Nectar',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1196,109,1068,'Axial_Bloom',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1191,109,1070,'Vertical_Cleave',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1192,109,1071,'Efflorescent_Foetor',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1193,109,1072,'Stupor_Spores',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1195,109,1073,'Morning_Glory',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1197,109,1069,'Nutrient_Aborption',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (435,109,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Zdei - T-Sight aggro @ 15  yalms.
INSERT INTO `mob_skill` VALUES (1207,272,1074,'Reactor_Cool',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1209,272,1076,'Optic_Induration',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1210,272,1077,'Static_Filament',4,10.0,2000,1000,4,0,0,0); -- bar form only
INSERT INTO `mob_skill` VALUES (1211,272,1078,'Decayed_Filament',4,8.0,2000,1000,4,0,0,0); -- bar form only
INSERT INTO `mob_skill` VALUES (1212,272,1079,'Reactor_Overheat',4,10.0,2000,1000,4,0,0,0); -- ring form only
INSERT INTO `mob_skill` VALUES (1213,272,1080,'Reactor_Overload',1,8.0,2000,1000,4,0,0,0); -- ring form only
INSERT INTO `mob_skill` VALUES (474,272,432,'Meikyo_Shisui',0,7.0,2000,0,1,2,0,0);

-- Yovra
INSERT INTO `mob_skill` VALUES (1114,271,1022,'Vitriolic_Barrage',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1115,271,1023,'Primal_Drill',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1116,271,1024,'Concussive_Oscillation',1,15.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (1117,271,1025,'Ion_Shower',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1118,271,1026,'Torrential_Torment',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1119,271,1027,'Asthenic_Fog',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1120,271,1028,'Luminous_Drape',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1121,271,1029,'Fluorescence',0,7.0,2000,1500,1,0,0,0);

-- Aern H2H fam 3 nin mnk
INSERT INTO `mob_skill` VALUES (1122,3,1010,'Wing_Thrust',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1123,3,1011,'Auroral_Wind',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1124,3,1012,'Impact_Stream',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1125,3,1013,'Depuration',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1126,3,1014,'Crystaline_Cocoon',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1131,3,1017,'Sideswipe',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (434,3,434,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);

-- Aern Axe type fam 443 rng war bst
INSERT INTO `mob_skill` VALUES (1122,443,1010,'Wing_Thrust',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1123,443,1011,'Auroral_Wind',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1124,443,1012,'Impact_Stream',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1125,443,1013,'Depuration',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1126,443,1014,'Crystaline_Cocoon',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1129,443,1020,'Biotic_Boomerang',1,15.0,2000,2000,4,0,0,0);


-- Aern dagger type blm thief bard
INSERT INTO `mob_skill` VALUES (1122,442,1010,'Wing_Thrust',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1123,442,1011,'Auroral_Wind',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1124,442,1012,'Impact_Stream',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1125,442,1013,'Depuration',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1126,442,1014,'Crystaline_Cocoon',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1128,442,1019,'Disseverment',0,7.0,2000,2000,4,0,0,0);

-- Aern sword type rdm pld drk
INSERT INTO `mob_skill` VALUES (1122,441,1010,'Wing_Thrust',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1123,441,1011,'Auroral_Wind',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1124,441,1012,'Impact_Stream',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1125,441,1013,'Depuration',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1126,441,1014,'Crystaline_Cocoon',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1127,441,1018,'Glacier_Splitter',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,441,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (436,441,436,'Chainspell',0,7.0,2000,0,1,2,0,0);


-- Aern polearm type sam drg
INSERT INTO `mob_skill` VALUES (1122,440,1010,'Wing_Thrust',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1123,440,1011,'Auroral_Wind',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1124,440,1012,'Impact_Stream',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1125,440,1013,'Depuration',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1126,440,1014,'Crystaline_Cocoon',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1130,440,1021,'Medusa_Javelin',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (476,440,432,'Ix_Call_Wyvern',0,7.0,2000,0,1,2,0,0);


-- Aern staff type smn whm
INSERT INTO `mob_skill` VALUES (1122,439,1010,'Wing_Thrust',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1123,439,1011,'Auroral_Wind',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1124,439,1012,'Impact_Stream',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1125,439,1013,'Depuration',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1126,439,1014,'Crystaline_Cocoon',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (433,439,433,'Benediction',1,20.0,2000,0,1,2,0,0);




-- Phuabo
INSERT INTO `mob_skill` VALUES (1097,194,1004,'Aerial_Collision',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1101,194,1008,'Tidal_Dive',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1098,194,1005,'Vapor_Spray',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1099,194,1006,'Spine_Lash',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1100,194,1007,'Voiceless_Storm',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1102,194,1009,'Plasma_Charge',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (432,194,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Xzomit
INSERT INTO `mob_skill` VALUES (1091,269,998,'Dual_Strike',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1092,269,999,'Syphon_Discharge',1,15.0,2000,1000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (1093,269,1000,'Mantle_Pierce',0,7.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1094,269,1001,'Ink_Cloud',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1095,269,1002,'Molluscous_Mutation',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1096,269,1003,'Saline_Coat',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (475,269,18,'Mijin_Gakure', 1, 20.0, 2000, 0, 4, 2, 0, 0);

-- Hpemde
INSERT INTO `mob_skill` VALUES (1109,144,1043,'Tail_thrust',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1110,144,1044,'Temporal_Shift',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1111,144,1031,'Sinuate_rush',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1112,144,1030,'Rapid_molt',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1113,144,1045,'Ichor_stream',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (437,144,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);


-- Trolls (light-armored model)
-- INSERT INTO `mob_skill` VALUES (1485,246,1230,'Potent_Lunge',0,7.0,2000,1500,4,0,0,3);
-- INSERT INTO `mob_skill` VALUES (1486,246,1231,'Overthrow',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1487,246,1232,'Rock_Smash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1488,246,1233,'Diamondhide',1,16.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1489,246,1234,'Enervation',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1490,246,1235,'Quake_Stomp',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1492,246,1237,'Zarbzan',2,15.0,2000,1500,4,0,0,0); -- Troll ranger only. Gun attack WS.
-- INSERT INTO `mob_skill` VALUES (1493,246,1238,'Healing_Stomp',1,16.0,2000,1500,1,0,0,0); -- NM only

-- Trolls (heavy-armored model)
-- INSERT INTO `mob_skill` VALUES (1638,?,1241,'Potent Lunge',0,7.0,2000,1500,4,0,0,3);
-- INSERT INTO `mob_skill` VALUES (1639,?,1242,'Overthrow',0,7.0,2000,1500,4,0,0,5);
-- INSERT INTO `mob_skill` VALUES (1640,?,1243,'Rock_Smash',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1641,?,1244,'Diamondhide',1,16.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1642,?,1245,'Enervation',1,18.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1643,?,1246,'Quake_Stomp',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1644,?,1247,'Healing_Stomp',1,16.0,2000,1500,1,0,0,0); -- NM only

-- Trolls (Destroyers [huge warhammer wielders w/ masks])
-- INSERT INTO `mob_skill` VALUES (1819,?,1416,'Overthrow',0,7.0,2000,1500,4,0,0,5);
-- INSERT INTO `mob_skill` VALUES (1820,?,1417,'Rock_Smash',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1821,?,1418,'Diamondhide',1,16.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1822,?,1419,'Enervation',1,18.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1823,?,1420,'Potent Lunge',0,7.0,2000,1500,4,0,0,3);
-- INSERT INTO `mob_skill` VALUES (1824,?,1421,'Quake_Stomp',0,7.0,2000,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1825,?,1422,'Hammer-Go-Round',1,15.0,2000,1500,4,0,0,5);
-- INSERT INTO `mob_skill` VALUES (1826,?,1423,'Hammerblow',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1827,?,1424,'Drop_Hammer',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1828,?,1425,'Seismohammer',0,7.0,2000,1500,4,0,0,0);

-- Automatons (PUP ver.)

-- Harlequin Frame
INSERT INTO `mob_skill` VALUES (1687,363,1306,'Slap_Stick',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1811,363,1406,'Knockout',0,7.0,2000,1500,4,0,145,0);
INSERT INTO `mob_skill` VALUES (2045,363,1488,'Magic_Mortar',0,10.0,2000,1500,4,0,225,0);
INSERT INTO `mob_skill` VALUES (1689,363,1219,'Provoke',0,7.0,2000,1500,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (1691,363,438,'Flashbulb',0,7.0,2000,1500,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (1692,363,439,'Mana_Converter',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (1765,363,438,'Eraser',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (1812,363,439,'Economizer',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2489,363,432,'Heat_Capacitor',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2491,363,439,'Disruptor',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2522,363,432,'Reactive_Shield',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2523,363,435,'Shock_Absorber',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2524,363,434,'Replicator',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2683,363,2111,'Mighty_Strikes',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2684,363,2112,'Invincible',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2685,363,2113,'Eagle_Eye_Shot',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2686,363,2114,'Chainspell',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2687,363,2115,'Benediction',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2688,363,2116,'Manafont',0,7.0,2000,1500,1,0,-1,0);

-- Valoredge Frame
INSERT INTO `mob_skill` VALUES (1688,364,1307,'Shield_Bash',0,7.0,2000,1500,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (1684,364,1304,'Chimera_Ripper',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1685,364,1305,'String_Clipper',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1809,364,1404,'Cannibal_Blade',0,15.0,2000,1500,4,0,150,0);
INSERT INTO `mob_skill` VALUES (2043,364,1486,'Bone_Crusher',0,7.0,2000,1500,4,0,245,0);
INSERT INTO `mob_skill` VALUES (2487,364,1509,'String_Shredder',0,7.0,2000,1500,4,0,324,0);
INSERT INTO `mob_skill` VALUES (1689,364,1219,'Provoke',0,7.0,2000,1500,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (1691,364,438,'Flashbulb',0,7.0,2000,1500,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (1692,364,439,'Mana_Converter',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (1765,364,438,'Eraser',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (1812,364,439,'Economizer',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2489,364,432,'Heat_Capacitor',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2491,364,439,'Disruptor',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2522,364,432,'Reactive_Shield',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2523,364,435,'Shock_Absorber',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2524,364,434,'Replicator',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2683,364,2111,'Mighty_Strikes',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2684,364,2112,'Invincible',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2685,364,2113,'Eagle_Eye_Shot',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2686,364,2114,'Chainspell',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2687,364,2115,'Benediction',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2688,364,2116,'Manafont',0,7.0,2000,1500,1,0,-1,0);

-- Sharpshot Frame
INSERT INTO `mob_skill` VALUES (1686,365,1303,'Arcuballista',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1810,365,1405,'Daze',0,15.0,2000,1500,4,0,150,0);
INSERT INTO `mob_skill` VALUES (2044,365,1487,'Armor_Piercer',0,15.0,2000,1500,4,0,245,0);
INSERT INTO `mob_skill` VALUES (2488,365,1510,'Armor_Shatterer',0,7.0,2000,1500,4,0,324,0);
INSERT INTO `mob_skill` VALUES (1689,365,1219,'Provoke',0,7.0,2000,1500,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (1691,365,438,'Flashbulb',0,7.0,2000,1500,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (1692,365,439,'Mana_Converter',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (1765,365,438,'Eraser',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (1812,365,439,'Economizer',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2489,365,432,'Heat_Capacitor',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2490,365,16,'Barrage_Turbine',0,25.0,2000,0,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (2491,365,439,'Disruptor',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2522,365,432,'Reactive_Shield',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2523,365,435,'Shock_Absorber',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2524,365,434,'Replicator',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2683,365,2111,'Mighty_Strikes',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2684,365,2112,'Invincible',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2685,365,2113,'Eagle_Eye_Shot',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2686,365,2114,'Chainspell',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2687,365,2115,'Benediction',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2688,365,2116,'Manafont',0,7.0,2000,1500,1,0,-1,0);

-- Stormwaker Frame
INSERT INTO `mob_skill` VALUES (1687,366,1306,'Slap_Stick',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1811,366,1406,'Knockout',0,7.0,2000,1500,4,0,145,0);
INSERT INTO `mob_skill` VALUES (2045,366,1488,'Magic_Mortar',0,10.0,2000,1500,4,0,225,0);
INSERT INTO `mob_skill` VALUES (1689,366,1219,'Provoke',0,7.0,2000,1500,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (1691,366,438,'Flashbulb',0,7.0,2000,1500,4,0,-1,0);
INSERT INTO `mob_skill` VALUES (1692,366,439,'Mana_Converter',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (1765,366,438,'Eraser',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (1812,366,439,'Economizer',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2489,366,432,'Heat_Capacitor',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2491,366,439,'Disruptor',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2522,366,432,'Reactive_Shield',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2523,366,435,'Shock_Absorber',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2524,366,434,'Replicator',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2683,366,2111,'Mighty_Strikes',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2684,366,2112,'Invincible',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2685,366,2113,'Eagle_Eye_Shot',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2686,366,2114,'Chainspell',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2687,366,2115,'Benediction',0,7.0,2000,1500,1,0,-1,0);
INSERT INTO `mob_skill` VALUES (2688,366,2116,'Manafont',0,7.0,2000,1500,1,0,-1,0);

-- Lamiae
INSERT INTO `mob_skill` VALUES (1496,171,1184,'Gusting_Gouge',0,7.0,2000,1500,4,0,0,0); -- One Hand Weapon Wielding Only. *Needs Script*
INSERT INTO `mob_skill` VALUES (1497,171,1185,'Hysteric_Barrage',0,7.0,2000,1500,4,0,0,0); -- Hand to Hand / Weapon Broken Only.
INSERT INTO `mob_skill` VALUES (1673,171,1278,'Pole_Swing',0,7,2000,1500,4,0,0,0); -- Staff Wielding Only. *Needs Script*
INSERT INTO `mob_skill` VALUES (1505,171,1192,'Arrow_Deluge',1,15,2000,1500,4,0,0,0); -- Bow Wielding Only. *Needs Script*
INSERT INTO `mob_skill` VALUES (1674,171,1279,'Tidal_Slash',4,10,2000,1500,4,0,0,0); -- Polearm Wielding Only. *Needs Script*
INSERT INTO `mob_skill` VALUES (1498,171,1188,'Dukkeripen',1,15,2000,2000,4,0,0,0); -- COR Only. AOE Paralyze Version. *Needs Script*
INSERT INTO `mob_skill` VALUES (1499,171,1187,'Dukkeripen',1,15,2000,2000,4,0,0,0); -- COR Only. ? Version.  *Needs Script*
INSERT INTO `mob_skill` VALUES (1500,171,1186,'Dukkeripen',0,7.0,2000,2000,1,0,0,0); -- COR Only. Self-Healing Version.  *Needs Script*
INSERT INTO `mob_skill` VALUES (1501,171,1189,'Dukkeripen',1,15,2000,2000,4,0,0,0); -- COR Only. ? Version.  *Needs Script*
INSERT INTO `mob_skill` VALUES (1502,171,1190,'Tail_Slap',4,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1503,171,1191,'Hypnotic_Sway',0,10,2000,2000,4,0,0,0);


-- MEDUSA
-- Why are we giving medusa's abilities to ALL lamia? Thats what happens when using same family ID for both!
INSERT INTO `mob_skill` VALUES (1557,171,1334,'Calcifying_Deluge',2,15,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1558,171,1339,'Gorgon_Dance',1,15,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1556,171,1337,'Pinning_Shot',2,15,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1553,171,1335,'Shadow_Thrust',0,10,2000,2000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1555,171,1340,'reinforcement',1,15,2000,2000,4,0,0,0);
-- or 1338
-- INSERT INTO `mob_skill` VALUES (1502,171,1336,'Tail_Slap',4,10.0,2000,1500,4,0,0,3);
-- 1340 1341 call for help reinforcement by adds or maybe drawn in. 1338 is an


-- INSERT INTO `mob_skill` VALUES (?,469,1330,'Belly_Dance',0,10,2000,2000,4,0,0,0);  -- Lamia NM only

-- Merrow
INSERT INTO `mob_skill` VALUES (1515,182,1258,'Tail_Slap',4,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1516,182,1259,'Torrent',0,10,2000,2000,4,0,0,0); -- *Needs Script*

-- INSERT INTO `mob_skill` VALUES (1519,?,?,'Rising_Swell',0,10,2000,2000,4,0,0,0);  -- Merrow NM only

-- Poroggos
INSERT INTO `mob_skill` VALUES (1701,196,1359,'Frog_Song',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1702,196,1360,'Magic_Hammer',0,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1703,196,1361,'Water_Bomb',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1704,196,1362,'Frog_Cheer',0,7.0,2000,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES (1705,196,1363,'Providence',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1706,196,1364,'Frog_Chorus',1,10.0,2000,2000,4,0,0,0); -- NMs only

-- Vampyr
INSERT INTO `mob_skill` VALUES (1850,252,1449,'Bloodrake',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1851,252,1450,'Decollation',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1852,252,1451,'Nosferatus_kiss',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1853,252,1452,'Heliovoid',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1854,252,1454,'Wings_of_Gehenna',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1855,252,1454,'Eternal_damnation',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1856,252,1452,'Nocturnal_Servitude',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2132,252,1451,'Dirty_breath',4,15.0,2000,1000,4,0,0,0);

INSERT INTO `mob_skill` VALUES (2278,252,1450,'Minax_glare',4,15.0,2000,1000,4,0,0,0); -- Lord Ruthven,Soaring Strigoi and Shadowbreath only.

-- Dvergar
INSERT INTO `mob_skill` VALUES (1857,90,1456,'Hellsnap',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1858,90,1460,'Hellclap',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1859,90,1457,'Cackle',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1860,90,1462,'Necrobane',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1861,90,1461,'Necropurge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1862,90,1458,'Bilgestorm',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1863,90,1459,'Thundris_shriek',1,15.0,2000,1000,4,0,0,0);

-- Pandemonium Lamps (91)
INSERT INTO `mob_skill` VALUES (1789,91,1373,'PL_Rail_Cannon',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1785,91,1376,'PL_Restoral',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1666,91,1266,'PL_Somersault_Kick',0,7.0,2000,1000,4,0,0,4);
INSERT INTO `mob_skill` VALUES (1667,91,1267,'PL_Firespit',0,30.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1674,91,1279,'PL_Tidal_Slash',4,10,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1502,91,1190,'PL_Tail_Slap',4,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1503,91,1191,'PL_Hypnotic_Sway',0,10,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1487,91,1232,'PL_Rock_Smash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1489,91,1234,'PL_Enervation',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1490,91,1235,'PL_Quake_Stomp',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (389,91,389,'PL_Body_Slam',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (390,91,390,'PL_Heavy_Stomp',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (391,91,391,'PL_Chaos_Blade',4,9.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (392,91,392,'PL_Petro_Eyes',4,9.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1467,91,1198,'PL_Ill_Wind',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1464,91,1195,'PL_Wind_Shear',1,10.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (1462,91,1194,'PL_Crosswind',4,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (338,91,880,'PL_Vulcanian_Impact',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (340,91,882,'PL_Hellstorm',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1857,91,1456,'PL_Hellsnap',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1858,91,1460,'PL_Hellclap',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1860,91,1462,'PL_Necrobane',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1861,91,1461,'PL_Necropurge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1863,91,1459,'PL_Thundris_shriek',1,15.0,2000,1000,4,0,0,0);

-- Pandemonium Warden (316)
INSERT INTO `mob_skill` VALUES (1801,316,1401,'PW_Mortal_revolution',1,15.0,2000,1000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (1802,316,1400,'PW_Homing_missile',2,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1803,316,1402,'PW_Discoid',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1804,316,1403,'PW_Brainjack',0,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1541,316,1147,'PW_Rushing_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1542,316,1147,'PW_Decussate',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1543,316,1156,'PW_Tyranic_Blare',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1482,316,1156,'PW_Groundburst',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1557,316,1334,'PW_Calcifying_Deluge',2,15,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1558,316,1339,'PW_Gorgon_Dance',1,15,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1556,316,1337,'PW_Pinning_Shot',2,15,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1553,316,1335,'PW_Shadow_Thrust',0,10,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1546,316,1351,'PW_Sledgehammer',4,12,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1547,316,1352,'PW_Head_Snatch',0,7,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1548,316,1353,'PW_Haymaker',4,12,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1551,316,1356,'PW_Pleiades_Ray',1,10,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1529,316,1223,'PW_Lava_Spit',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1531,316,1225,'PW_Scorching_Lash',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1534,316,1228,'PW_Gates_of_Hades',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1572,316,1308,'PW_Pyric_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1573,316,1319,'PW_Polar_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1574,316,1309,'PW_Polar_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1575,316,1318,'PW_Pyric_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1579,316,1311,'PW_Serpentine_Tail',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1125,316,1312,'PW_Nerve_Gas',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1769,316,1369,'PW_Dreadstorm',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1770,316,1381,'PW_Fossilizing_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1772,316,1386,'PW_Fulmination',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1766,316,1367,'PW_Tenebrous_Mist',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1767,316,1368,'PW_Thunderstrike',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1768,316,1371,'PW_Tourbillion',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1857,316,1456,'PW_Hellsnap',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1858,316,1460,'PW_Hellclap',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1860,316,1462,'PW_Necrobane',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1861,316,1461,'PW_Necropurge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1862,316,1458,'PW_Bilgestorm',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1863,316,1459,'PW_Thundris_shriek',1,15.0,2000,1000,4,0,0,0);

-- Peistes
INSERT INTO `mob_skill` VALUES (1896,192,1543,'Aqua_Fortis',1,15,2000,2000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1897,192,1544,'Regurgitation',0,7.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1898,192,1545,'Delta_Thrust',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1899,192,1546,'Torpefying_Charge',1,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1900,192,1547,'Grim_Glower',4,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1901,?,1547,'Calcifiying_Mist',1,15.0,2000,1500,4,0,0,0); -- Only used by certain NMs.

-- Peistes (Sibilus Subspecies)
-- INSERT INTO `mob_skill` VALUES (?,?,?,'Oppressive_Gaze',1,15.0,2000,1500,4,0,0,0); -- Sibilus subspecies only.

-- Gnat
INSERT INTO `mob_skill` VALUES (1902,131,1567,'Insipid_Nip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1903,131,1568,'Pandemic_Nip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1904,131,1569,'Bombilation',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1905,131,1570,'Cimicine_Discharge',0,10.0,2000,1000,4,0,0,0);

INSERT INTO `mob_skill` VALUES (1906,436,1571,'Emetic_Discharge',0,7.0,2000,1000,4,0,0,0); -- Only used by Bloodlapper and Brummbar.

-- Limule
INSERT INTO `mob_skill` VALUES (2308,173,1796,'Blazing_Bound',1,21.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2309,173,1797,'Molting_Burst',0,7.0,2000,1500,4,0,0,0); -- Only used by light-element Ephemeral Limules and Vetehinen

-- Clionid
INSERT INTO `mob_skill` VALUES (2307,65,1795,'Rime_Spray',4,15.0,2000,1500,4,0,0,0); -- ice element only
INSERT INTO `mob_skill` VALUES (2306,65,1794,'Acrid_Stream',4,8.0,2000,1500,4,0,0,0);

-- Murex
INSERT INTO `mob_skill` VALUES (2373,187,1829,'Benthic_Typhoon',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2374,187,1830,'Pelagic_Tempest',4,10.0,2000,1500,4,0,0,0); -- used instead of Benthic Typhoon for Thunder-based Ephemeral Murex.

-- Amoebans
INSERT INTO `mob_skill` VALUES (2375,5,1831,'Osmosis',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2376,5,1832,'Vacuole_Discharge',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2377,5,?,'Nucleic_Implosion',1,15.0,2000,1500,4,0,0,0); -- Only used by earth-element Ephemeral Amoebans.)

-- Hippogryphs -- Need Scripts
INSERT INTO `mob_skill` VALUES (324,140,914,'Fantod',0,7,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (323,140,913,'Choke_Breath',4,10,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (322,140,912,'Nihility_Song',1,12.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (320,140,910,'Back_Heel',0,7,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (2572,140,911,'Jettatura',4,10,2000,3000,4,0,0,0);

-- Hippogryphs (NM) -- Need Scripts
INSERT INTO `mob_skill` VALUES (324,141,914,'Fantod',0,7,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (323,141,913,'Choke_Breath',4,10,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (322,141,912,'Nihility_Song',1,15,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (320,141,910,'Back_Heel',0,7,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (1074,141,910,'Hoof_Volley',0,7,2000,3000,4,0,0,6); -- Only used by NM's and Grauberg S hippos
INSERT INTO `mob_skill` VALUES (2572,141,911,'Jettatura',4,10,2000,3000,4,0,0,0);

-- Qiqirn -- Need Scripts
INSERT INTO `mob_skill` VALUES (1469,199,1200,'Kibosh',0,7,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1470,199,1201,'Cutpurse',4,10,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1471,199,1202,'Sandspray',4,7,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1472,199,1203,'Faze',0,7,2000,1500,4,0,0,0);

-- Siege Turrets
-- INSERT INTO `mob_skill` VALUES (2038,?,1616,'Basilisk_Cannon',1,?,2000,?,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2039,?,?,'Beaked_Bomber',1,?,2000,?,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2032,?,?,'Heavy_Artillery',1,?,2000,?,4,0,0,0);

-- Acroliths
-- INSERT INTO `mob_skill` VALUES (1814,?,1411,'Dismemberment',0,7.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1815,?,1412,'Dire_straight',0,7.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1816,?,1413,'Earth_shatter',1,15.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1817,?,1414,'Sinker_drill',0,7.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1818,?,1415,'Detonating_grip',0,7.0,2000,1000,4,0,0,0);


-- Gabbrath (check nakual achuka)


-- Apian Beasts


-- Bztavians (check colkhab)



-- Yggdreants (check yumcax)



-- Botuli (check botulus rex)


-- Waktza (check nakual achuka)


-- Corpselights (91)
INSERT INTO `mob_skill` VALUES (2255,91,1463,'Corpse_Breath',0,10.0,2000,1500,4,0,0,0);


-- Zilant (check yilbegan)


-- Tubes


-- Elementals
-- INSERT INTO `mob_skill` VALUES (2479,?,?,'Searing_Tempest',1,15.0,2000,1500,4,0,0,0); -- Baelfyr NMs only
-- INSERT INTO `mob_skill` VALUES (2480,?,?,'Blinding_Fulgor',1,15.0,2000,1500,4,0,0,0); -- Baelfyr NMs only

-- Moogles
-- INSERT INTO `mob_skill` VALUES (2207,?,?,'Flowerpot',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2205,?,?,'Mog_Bomb',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2206,?,?,'Mog_Shrapnel',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2211,?,?,'Crystalline_Flare',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2210,?,?,'Washtub',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2209,?,?,'Bill_Toss',4,10.0,2000,1500,4,0,0,0); -- Riko Kupenreich only

-- Rafflesia regular mob
INSERT INTO `mob_skill` VALUES (1911,207,1553,'Bloody_Caress',0,7.0,2000,1500,4,0,0,0); -- noncharmed vers.?
INSERT INTO `mob_skill` VALUES (1910,207,1552,'Floral_Bouquet',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1909,207,1551,'Rotten_Stench',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1908,207,1550,'Viscid_Emission',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1907,207,1549,'Seedspray',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1912,207,1554,'Bloody_Caress',0,7.0,2000,1500,4,0,0,0); -- charmed vers.?

-- INSERT INTO `mob_skill` VALUES (1913,?,1555,'Soothing_Aroma',0,7.0,2000,1500,4,0,0,0); -- certain nm only

-- Pet Wyvern
-- mob wyverns use custom skill list
INSERT INTO `mob_skill` VALUES (638,193,128,'healing_breath_i',0,10.0,2000,2000,2,0,0,0);
INSERT INTO `mob_skill` VALUES (639,193,129,'healing_breath_ii',0,10.0,2000,2000,2,0,0,0);
INSERT INTO `mob_skill` VALUES (640,193,130,'healing_breath_iii',0,10.0,2000,2000,2,0,0,0);
INSERT INTO `mob_skill` VALUES (641,193,134,'remove_poison',0,10.0,2000,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES (642,193,132,'remove_blindness',0,10.0,2000,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES (643,193,133,'remove_paralysis',0,10.0,2000,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES (644,193,134,'flame_breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (645,193,135,'frost_breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (646,193,136,'gust_breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (647,193,137,'sand_breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (648,193,138,'lightning_breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (649,193,139,'hydro_breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (440,193,432,'Soul_Voice',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,193,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- --------------------------------------
-- ACP specific mobs
-- --------------------------------------

-- Seed Mandragora
INSERT INTO `mob_skill` VALUES (2154,406,2410,'Demonic_Flower',1,15.0,2000,1500,4,0,0,0);

-- Seed Orc
INSERT INTO `mob_skill` VALUES (349,407,349,'Aerial_Wheel',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (350,407,350,'Shoulder_Attack',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (351,407,351,'Slam_Dunk',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (352,407,352,'Arm_Block',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (353,407,353,'Battle_Dance',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (377,407,354,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2155,407,2411,'Phantasmal_Dance',1,15.0,2000,1500,4,0,0,15); -- Wiki says knockback is larger than the skill range.

-- Seed Quadav
INSERT INTO `mob_skill` VALUES (355,408,355,'Ore_Toss',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (356,408,356,'Head_Butt',0,7.0,2000,2000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (357,408,357,'Shell_Bash',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (358,408,358,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (377,408,354,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2156,408,2412,'Thunderous_Yowl',1,20.0,2000,1500,4,0,0,0);

-- Seed Yagudo
INSERT INTO `mob_skill` VALUES (361,409,361,'Feather_Storm',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (362,409,362,'Double_Kick',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (363,409,363,'Parry',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (364,409,364,'Sweep',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (377,409,354,'Howl',1,20.0,2000,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES (2157,409,2413,'Feather_Maelstrom',0,7.0,2000,1500,4,0,0,0);

-- Seed Goblin
INSERT INTO `mob_skill` VALUES (334,410,334,'Goblin_Rush',0,6.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (335,410,335,'Bomb_Toss',2,8,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2158,410,2414,'Saucepan',4,7.0,2000,1500,4,0,0,0);

-- Seed Crystal
-- melee move 1494
-- INSERT INTO `mob_skill` VALUES (2160,411,1495,'Seed of Deception',0,0.0,0000,0000,0,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2161,411,1496,'Seed of Deference',0,0.0,0000,0000,0,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2162,411,1497,'Seed of Nihility',0,0.0,0000,0000,0,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2163,411,1498,'Seed of Judgment',0,0.0,0000,0000,0,0,0,0);

-- Seed Thrall
-- Family ID: 412
-- Uses players model and equipment, uses weaponskills matching cloned weapontype.

-- --------------------------------------
-- NM / HNM
-- --------------------------------------

-- Zeid + shadows
INSERT INTO `mob_skill` VALUES (723,480,682,'Power_Slash',0,10,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (724,480,683,'Freeze_Bite',0,10,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (725,480,684,'GroundStrike',0,10,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (726,480,671,'Abyssal_Drain',0,10,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (727,480,672,'Abyssal_strike',0,10,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,480,439,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);

-- zeid 2 phase 2 only
INSERT INTO `mob_skill` VALUES (728,480,708,'Summonshadows',0,10,3000,0,4,0,0,0);

-- Volker
INSERT INTO `mob_skill` VALUES (717,482,679,'red_lotus_blade',0,7,2500,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (718,482,680,'Spirits_Within',0,7,2500,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (719,482,681,'Vorpal_Blade',0,7,2500,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (720,482,673,'Berserk-Ruf',1,15,2000,200,1,0,0,0);

-- Trion
INSERT INTO `mob_skill` VALUES (715,483,669,'Royal_Bash',2,10,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (716,483,670,'Royal_savior-protect',1,15,2000,200,1,0,0,0);
INSERT INTO `mob_skill` VALUES (712,483,676,'red_lotus_blade',0,7,2500,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (713,483,677,'Flat_blade',0,7,2500,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (714,483,678,'Savage_blade',0,7,2500,1500,4,0,0,0);

-- Ajido Marujido
INSERT INTO `mob_skill` VALUES (714,481,674,'Warp_in',0,7,900,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (715,481,675,'Warp_out',0,7,900,0,1,0,0,0);



-- Kam'lanaut
INSERT INTO `mob_skill` VALUES (567,351,495,'Fire_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (568,351,496,'Frost_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (569,351,497,'Wind_Blade2',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (570,351,498,'Earth_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (571,351,499,'Lightning_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (572,351,500,'Water_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (573,351,501,'Great_Wheel',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (574,351,502,'Light_Blade',0,30.0,2000,1500,4,0,0,0);

-- Ark Angel EV
INSERT INTO `mob_skill` VALUES (677,352,635,'Dominion_Slash',2,10,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (678,352,638,'Shield_Strike',4,7,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (686,352,642,'Spirits_Within',0,7,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (687,352,643,'Vorpal_Blade',0,7,2000,0,4,0,0,0);

-- Ark Angel GK
INSERT INTO `mob_skill` VALUES (681,353,637,'Dragonfall',1,7,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (690,353,648,'Tachi_Yukikaze',0,7,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (691,353,649,'Tachi_Gekko',0,7,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (692,353,650,'Tachi_Kasha',0,7,2000,0,4,0,0,0);

-- Ark Angel HM
INSERT INTO `mob_skill` VALUES (675,354,633,'Cross_Reaver',4,7,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (682,354,640,'Circle_Blade',1,7,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (683,354,641,'Swift_Blade',0,7,2000,0,4,0,0,0);

-- Ark Angel MR
INSERT INTO `mob_skill` VALUES (676,355,634,'Havoc_Spiral',1,7,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (684,355,644,'Rampage',0,7,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (685,355,645,'Calamity',0,7,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (454,355,438,'Charm',0,18.0,2000,0,4,0,0,0);

-- Ark Angel TT
INSERT INTO `mob_skill` VALUES (679,356,636,'Amon_Drive',2,15.0,2000,500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (680,394,639,'Ark_Guardian_Tarutaru',0,22.0,500,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (688,356,646,'Spinning_Scythe',1,7,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (689,356,647,'Guillotine',0,7,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (706,394,663,'Tarutaru_Warp_II',0,22.0,500,0,1,0,0,0);

-- Cerberuses
INSERT INTO `mob_skill` VALUES (1529,62,1223,'Lava_Spit',1,10.0,2000,1500,4,0,0,0); -- ~400 dmg
INSERT INTO `mob_skill` VALUES (1530,62,1224,'Sulfurous_Breath',0,7.0,2000,1500,4,0,0,0); -- ~500 dmg
INSERT INTO `mob_skill` VALUES (1531,62,1225,'Scorching_Lash',1,20.0,2000,1500,4,0,0,0); -- ~900 dmg
INSERT INTO `mob_skill` VALUES (1532,62,1226,'Ululation',1,20.0,2000,1500,4,0,0,0); -- Paralyze
INSERT INTO `mob_skill` VALUES (1533,62,1227,'Magma_Hoplon',0,7.0,2000,1500,1,0,0,0); -- Stoneskin + Blaze Spike
INSERT INTO `mob_skill` VALUES (1534,62,1228,'Gates_of_Hades',1,20.0,2000,3000,4,0,0,0); -- ~950 dmg + 20hp/tick

-- Cerberuses (Orthrus Subspecies)
-- INSERT INTO `mob_skill` VALUES (1534,62,1228,'Acheron_Flame',1,20.0,2000,1500,4,0,0,0); -- Stronger version of Gates of Hades.

-- Diabolos (Darkness Named)
-- TODO: Need scripts.
-- INSERT INTO `mob_skill` VALUES (1647,35,915,'Camisado',0,7,2000,0,4,0,0,3);
-- INSERT INTO `mob_skill` VALUES (1649,35,916,'Noctoshield',1,7,2000,0,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1650,35,917,'Ultimate_Terror',1,7,2000,0,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1652,35,918,'Nightmare',1,30,2000,0,4,0,0,0);

-- Diabolos (Waking Dreams)
-- TODO: Need scripts.
-- INSERT INTO `mob_skill` VALUES (1647,378,915,'Camisado',0,7,2000,0,4,0,0,3);
-- INSERT INTO `mob_skill` VALUES (1648,378,1126,'Somnolence',0,25,2000,0,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1649,378,916,'Noctoshield',1,7,2000,0,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1650,378,917,'Ultimate_Terror',1,7,2000,0,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1651,378,1127,'Dream_Shroud',1,7,2000,0,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1652,378,918,'Nightmare',1,30,2000,0,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1653,378,1128,'Cacodemonia',1,7,2000,0,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1654,378,1129,'Nether_Blast',0,25,2000,0,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1655,378,1125,'Ruinous_Omen',1,30,2000,0,4,0,0,0);

-- Gurfurlur the Menacing
INSERT INTO `mob_skill` VALUES (1546,326,1351,'Sledgehammer',4,12,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1547,326,1352,'Head_Snatch',0,7,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1548,326,1353,'Haymaker',4,12,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1549,326,1354,'Incessant_Fists',0,7,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1550,326,1355,'Arcane_Stomp',1,25,2000,0,1,0,0,3); -- corected ? to 1
INSERT INTO `mob_skill` VALUES (1551,326,1356,'Pleiades_Ray',1,10,2000,0,4,0,0,3);

-- Gulool Ja Ja (Mamool Ja Warrior Type)
-- NOTES: Unsure if his weapon can be broken or not.
-- INSERT INTO `mob_skill` VALUES (1541,?,1147,'Rushing_Slash',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1542,?,?,'Decussate',1,16.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1543,?,?,'Tyranic_Blare',1,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1544,?,?,'Miasma',1,16.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1545,?,?,'Vorpal_Wheel',0,7.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1482,?,1156,'Groundburst',0,7.0,2000,1500,4,0,0,0);

-- Hydra
INSERT INTO `mob_skill` VALUES (1572,164,1308,'Pyric_Blast',4,15.0,2000,1500,4,0,0,0); -- Only used when the third head (right) is alive
INSERT INTO `mob_skill` VALUES (1573,164,1319,'Polar_Bulwark',0,7.0,2000,1500,1,0,0,0); -- Only used when the second head (left) is alive
INSERT INTO `mob_skill` VALUES (1574,164,1309,'Polar_Blast',4,15.0,2000,1500,4,0,0,0); -- Only used when the second head (left) is alive
INSERT INTO `mob_skill` VALUES (1575,164,1318,'Pyric_Bulwark',0,7.0,2000,1500,1,0,0,0); -- Only used when the third head (right) is alive
INSERT INTO `mob_skill` VALUES (1576,164,1313,'Barofield',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1578,164,1310,'Trembling',1,5.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1579,164,1311,'Serpentine_Tail',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1580,164,1312,'Nerve_Gas',1,10.0,2000,1500,4,0,0,0);

-- Avatar - Odin
-- INSERT INTO `mob_skill` VALUES (2300,41,1444,'Ofnir',1,10.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2301,41,1446,'Valfodr',1,10.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2302,41,1441,'Yggr',1,10.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2303,41,1442,'Gagnrath',1,10.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2304,41,1445,'Sangetall',1,10.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2305,41,1443,'Geirrothr',1,10.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1870,41,1447,'Zantetsuken',1,10.0,2000,1000,4,0,0,0);

-- Khimaira
INSERT INTO `mob_skill` VALUES (1769,168,1369,'Dreadstorm',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1770,168,1381,'Fossilizing_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1772,168,1386,'Fulmination',1,40.0,2000,1500,4,0,0,0); -- only at < 37% strong paralyze
INSERT INTO `mob_skill` VALUES (1771,168,1382,'Plague_Swipe',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1766,168,1367,'Tenebrous_Mist',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1767,168,1368,'Thunderstrike',1,13.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1768,168,1371,'Tourbillion',1,13.0,2000,1500,4,0,0,0); -- Need a system to lower wings with crits.  Commented out for now.
-- INSERT INTO `mob_skill` VALUES (2442,168,?,'Lithic_Breath',1,13.0,2000,1500,4,0,0,0);

-- King Vinegaroon
INSERT INTO `mob_skill` VALUES (463,274,94,'Critical_Bite',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (466,274,98,'Venom_Storm',1,15.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (467,274,99,'Earthbreaker',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (467,274,99,'Earthbreaker_Custom',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (464,274,95,'Venom_Sting',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (97,274,97,'Death_Scissors',0,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (98,274,98,'Wild_Rage',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (99,274,99,'Earth_Pounder',1,15.0,2000,1500,4,0,0,0);

-- Ouryu
-- Ochre_Blast_alt is maybe aerial auto attack
-- INSERT INTO `mob_skill` VALUES (1041,259,966,'Ochre_Blast_alt',0,23.0,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1042,259,966,'Ochre_Blast_alt',0,18.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1043,259,653,'Typhoon_Wing',1,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1044,259,654,'Spike_Flail',1,23.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1045,259,965,'Geotic_Breath',4,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1046,259,656,'Touchdown',1,6.0,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1047,259,967,'Ochre_Blast',1,23.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1048,259,658,'Bai_Wing',1,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1049,259,659,'Absolute_Terror',1,18.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1050,259,660,'Horrid_Roar_3',0,18.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (438,259,432,'Invincible',0,18.0,2000,0,1,0,30,0);

-- Fafnir
INSERT INTO `mob_skill` VALUES (695,260,653,'Hurricane_Wing',1,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (696,260,654,'Spike_Flail',1,23.0,2000,2000,4,0,0,0); -- only if a player is behind fafnir
INSERT INTO `mob_skill` VALUES (697,260,655,'Dragon_Breath',4,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (701,260,659,'Absolute_Terror',0,18.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (702,260,660,'Horrid_Roar_1',0,18.0,4000,1500,4,0,0,0);

-- Cynoprosopi
INSERT INTO `mob_skill` VALUES (695,261,653,'Hurricane_Wing',1,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (696,261,654,'Spike_Flail',1,23.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (697,261,655,'Dragon_Breath',4,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (702,261,660,'Horrid_Roar_1',0,18.0,4000,1500,4,0,0,0);

-- Wyrm
INSERT INTO `mob_skill` VALUES (695,262,653,'Hurricane_Wing',1,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (696,262,654,'Spike_Flail',1,23.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (697,262,655,'Dragon_Breath',4,18.0,2000,1500,4,0,0,0);

-- Nidhogg
INSERT INTO `mob_skill` VALUES (695,263,653,'Hurricane_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (696,263,654,'Spike_Flail',1,23.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (697,263,655,'Dragon_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (701,263,659,'Absolute_Terror',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (702,263,660,'Horrid_Roar_2',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (700,263,432,'Super_Buff',0,18.0,2000,0,1,0,0,0);

-- Vrtra
INSERT INTO `mob_skill` VALUES (1053,391,653,'Cyclone_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1054,391,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1055,391,968,'Sable_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1059,391,659,'Absolute_Terror',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1060,391,660,'Horrid_Roar_3',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (454,391,438,'Charm',0,18.0,2000,0,4,0,0,0);

-- Jormungand
INSERT INTO `mob_skill` VALUES (1031,392,963,'Sleet_Blast_alt',0,23.0,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1032,392,963,'Sleet_Blast_alt',0,18.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1033,392,653,'Gregale_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1034,392,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1035,392,962,'Glacial_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1036,392,656,'Touchdown',1,6.0,2000,0,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1037,392,964,'Sleet_Blast',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1038,392,658,'Gregale_Wing_Air',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1039,392,659,'Absolute_Terror',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1040,392,660,'Horrid_Roar_3',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (439,392,432,'Blood_Weapon',0,18.0,2000,0,1,0,30,0);

-- Tiamat
-- INSERT INTO `mob_skill` VALUES (1021,393,651,'Inferno_Blast_alt',0,23.0,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1022,393,652,'Inferno_Blast_alt',0,18.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1023,393,653,'Tebbad_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1024,393,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1025,393,655,'Fiery_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1026,393,656,'Touchdown',1,6.0,2000,0,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1027,393,657,'Inferno_Blast',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1028,393,658,'Tebbad_Wing_Air',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1029,393,659,'Absolute_Terror',0,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1030,393,660,'Horrid_Roar_3',0,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (432,393,432,'Mighty_Strikes',0,18.0,2000,0,1,0,30,0);

-- Faust
INSERT INTO `mob_skill` VALUES (283,367,283,'Typhoon',1,7.0,2000,1500,4,0,0,1);

-- Despot
INSERT INTO `mob_skill` VALUES (280,368,280,'Panzerfaust',0,7.0,2000,1500,4,0,0,0);

-- --------------------------------------
-- MAAT
-- --------------------------------------

INSERT INTO `mob_skill` VALUES (772,335,729,'Tackle',0,7.0,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (777,335,734,'Dragon_Kick',0,10.0,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (778,335,735,'Asuran_Fists',0,7.0,2000,0,4,0,0,0);

-- --------------------------------------
-- AVATAR
-- --------------------------------------

-- Fenrir
INSERT INTO `mob_skill` VALUES (575,36,513,'moonlit_charge',0,10.0,512,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (576,36,514,'crescent_fang',0,10.0,513,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (577,36,515,'lunar_cry',0,10.0,514,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (578,36,516,'ecliptic_growl',1,10.0,516,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (579,36,517,'lunar_roar',1,10.0,515,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (580,36,518,'eclipse_bite',0,10.0,518,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (581,36,519,'ecliptic_howl',1,10.0,517,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (582,36,550,'lunar_bay',0,10.0,519,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (583,36,521,'howling_moon',1,10.0,520,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (577,325,515,'Lunar_Cry',0,10.0,514,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (579,325,517,'Lunar_Roar',1,30.0,515,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (580,325,518,'Eclipse_Bite',0,10.0,518,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (583,325,521,'Howling_Moon',1,30.0,520,1500,4,0,0,0);

-- Pet - Fenrir
INSERT INTO `mob_skill` VALUES (575,381,16,'moonlit_charge',0,10.0,512,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (576,381,17,'crescent_fang',0,10.0,513,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (577,381,18,'lunar_cry',0,10.0,514,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (578,381,19,'ecliptic_growl',1,10.0,516,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (579,381,20,'lunar_roar',1,10.0,515,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (580,381,21,'eclipse_bite',0,10.0,518,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (581,381,22,'ecliptic_howl',1,10.0,517,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (583,381,24,'howling_moon',1,10.0,520,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (582,381,25,'lunar_bay',0,10.0,519,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (677,381,25,'heavenward_howl',0,10.0,519,3000,4,0,0,0);

-- Ifrit
INSERT INTO `mob_skill` VALUES (584,38,526,'punch',0,10.0,528,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (585,38,527,'fire_ii',0,10.0,529,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (586,38,528,'burning_strike',0,10.0,530,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (587,38,529,'double_punch',0,10.0,531,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (588,38,530,'crimson_howl',1,10.0,532,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (589,38,531,'fire_iv',0,10.0,533,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (590,38,532,'flaming_crush',0,10.0,534,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (591,38,533,'meteor_strike',0,10.0,535,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (592,38,534,'inferno',1,10.0,536,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (589,322,531,'Fire_IV',0,10.0,533,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (590,322,532,'Flaming_Crush',0,10.0,534,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (591,322,533,'Meteor_Strike',0,10.0,535,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (592,322,534,'Inferno',1,10.0,536,1500,4,0,0,0);

-- Pet - Ifrit
INSERT INTO `mob_skill` VALUES (584,383,32,'punch',0,10.0,528,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (585,383,33,'fire_ii',0,10.0,529,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (586,383,34,'burning_strike',0,10.0,530,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (587,383,35,'double_punch',0,10.0,531,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (588,383,36,'crimson_howl',1,10.0,532,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (589,383,37,'fire_iv',0,10.0,533,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (590,383,38,'flaming_crush',0,10.0,534,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (591,383,39,'meteor_strike',0,10.0,535,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (592,383,40,'inferno',1,10.0,536,3000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (592,383,41,'inferno_howl',1,10.0,536,3000,4,0,0,0);

-- Titan
INSERT INTO `mob_skill` VALUES (593,45,539,'rock_throw',0,12.0,544,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (594,45,540,'stone_ii',0,10.0,545,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (595,45,541,'rock_buster',0,10.0,546,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (596,45,542,'megalith_throw',0,17.0,547,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (597,45,543,'earthen_ward',1,10.0,548,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (598,45,544,'stone_iv',0,10.0,549,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (599,45,545,'mountain_buster',0,10.0,550,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (600,45,546,'geocrush',0,10.0,551,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (601,45,547,'earthen_fury',1,10.0,552,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (597,321,543,'Earthen_Ward',1,10.0,548,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (598,321,544,'Stone_IV',0,10.0,549,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (599,321,545,'Mountain_Buster',0,10.0,550,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (600,321,546,'Geocrush',0,10.0,551,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (601,321,547,'Earthen_Fury',1,10.0,552,1500,4,0,0,0);

-- Pet - Titan
INSERT INTO `mob_skill` VALUES (593,388,48,'rock_throw',0,12.0,544,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (594,388,49,'stone_ii',0,10.0,545,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (595,388,50,'rock_buster',0,10.0,546,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (596,388,51,'megalith_throw',0,17.0,547,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (597,388,52,'earthen_ward',1,10.0,548,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (598,388,53,'stone_iv',0,10.0,549,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (599,388,54,'mountain_buster',0,10.0,550,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (600,388,55,'geocrush',0,10.0,551,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (601,388,56,'earthen_fury',1,10.0,552,3000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (601,388,57,'earthen_armor',1,10.0,552,3000,4,0,0,0);

-- Leviathan
INSERT INTO `mob_skill` VALUES (602,40,552,'barracuda_dive',0,10.0,560,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (603,40,553,'water_ii',0,10.0,561,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (604,40,554,'tail_whip',0,10.0,562,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (605,40,555,'spring_water',1,10.0,563,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (606,40,556,'slowga',1,10.0,564,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (607,40,557,'water_iv',0,20.0,565,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (608,40,558,'spinning_dive',0,10.0,566,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (609,40,559,'grand_fall',0,10.0,567,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (610,40,560,'tidal_wave',1,20.0,568,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (605,323,555,'Spring_Water',1,10.0,563,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (607,323,557,'Water_IV',0,20.0,565,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (608,323,558,'Spinning_Dive',0,10.0,566,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (609,323,559,'Grand_Fall',0,10.0,567,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (610,323,560,'Tidal_Wave',1,20.0,568,1500,4,0,0,0);

-- Pet - Leviathan
INSERT INTO `mob_skill` VALUES (602,384,64,'barracuda_dive',0,10.0,560,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (603,384,65,'water_ii',0,10.0,561,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (604,384,66,'tail_whip',0,10.0,562,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (605,384,67,'spring_water',1,10.0,563,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (606,384,68,'slowga',1,10.0,564,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (607,384,69,'water_iv',0,20.0,565,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (608,384,70,'spinning_dive',0,10.0,566,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (609,384,71,'grand_fall',0,10.0,567,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (610,384,72,'tidal_wave',1,20.0,568,3000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (610,384,73,'tidal_roar',1,20.0,568,3000,4,0,0,0);

-- Garuda
INSERT INTO `mob_skill` VALUES (611,37,565,'claw',0,10.0,576,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (612,37,566,'aero_ii',0,10.0,577,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (613,37,569,'whispering_wind',1,10.0,578,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (614,37,568,'hastega',1,10.0,579,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (615,37,567,'aerial_armor',1,10.0,580,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (616,37,570,'aero_iv',0,10.0,581,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (617,37,571,'predator_claws',0,10.0,582,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (618,37,572,'wind_blade',0,10.0,583,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (619,37,573,'aerial_blast',1,10.0,584,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (616,324,570,'Aero_IV',0,10.0,581,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (617,324,571,'Predator_Claws',0,10.0,582,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (618,324,572,'Wind_Blade',0,10.0,583,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (619,324,573,'Aerial_Blast',1,10.0,584,1500,4,0,0,0);

-- Pet - Garuda
INSERT INTO `mob_skill` VALUES (611,382,80,'claw',0,10.0,576,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (612,382,81,'aero_ii',0,10.0,577,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (613,382,82,'whispering_wind',1,10.0,578,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (614,382,83,'hastega',1,10.0,579,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (615,382,84,'aerial_armor',1,10.0,580,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (616,382,85,'aero_iv',0,10.0,581,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (617,382,86,'predator_claws',0,10.0,582,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (618,382,87,'wind_blade',0,10.0,583,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (619,382,88,'aerial_blast',1,10.0,584,3000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (619,382,89,'fleet_wind',1,10.0,584,3000,4,0,0,0);

-- Shiva
INSERT INTO `mob_skill` VALUES (620,44,578,'axe_kick',0,10.0,592,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (621,44,579,'blizzard_ii',0,10.0,593,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (622,44,580,'frost_armor',1,10.0,594,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (623,44,581,'sleepga',1,10.0,595,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (624,44,582,'double_slap',0,10.0,596,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (625,44,583,'blizzard_iv',0,10.0,597,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (626,44,584,'rush',0,10.0,598,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (627,44,585,'heavenly_strike',0,10.0,599,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (628,44,586,'diamond_dust',1,10.0,600,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (625,319,583,'Blizzard_IV',0,10.0,597,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (626,319,584,'Rush',0,10.0,598,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (627,319,585,'Heavenly_Strike',0,10.0,599,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (628,319,586,'Diamond_Dust',1,10.0,600,1500,4,0,0,0);

-- Pet - Shiva
INSERT INTO `mob_skill` VALUES (620,387,96,'axe_kick',0,10.0,592,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (621,387,97,'blizzard_ii',0,10.0,593,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (622,387,98,'frost_armor',1,10.0,594,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (623,387,99,'sleepga',1,10.0,595,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (624,387,100,'double_slap',0,10.0,596,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (625,387,101,'blizzard_iv',0,10.0,597,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (626,387,102,'rush',0,10.0,598,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (627,387,103,'heavenly_strike',0,10.0,599,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (628,387,104,'diamond_dust',1,10.0,600,3000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (628,387,105,'diamond_storm',1,10.0,600,3000,4,0,0,0);

-- Ramuh
INSERT INTO `mob_skill` VALUES (629,43,591,'shock_strike',0,10.0,608,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (630,43,592,'thunder_ii',0,10.0,609,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (631,43,593,'rolling_thunder',1,10.0,610,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (632,43,594,'thunderspark',1,10.0,611,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (633,43,595,'lightning_armor',1,10.0,612,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (634,43,596,'thunder_iv',0,10.0,613,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (635,43,597,'chaotic_strike',0,10.0,614,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (636,43,598,'thunderstorm',0,10.0,615,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (637,43,599,'judgment_bolt',1,10.0,616,1500,4,0,0,0);

INSERT INTO `mob_skill` VALUES (634,320,596,'Thunder_IV',0,10.0,613,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (635,320,597,'Chaotic_Strike',0,10.0,614,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (636,320,598,'Thunderstorm',0,10.0,615,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (637,320,599,'Judgment_Bolt',1,10.0,616,1500,4,0,0,0);

-- Pet - Ramuh
INSERT INTO `mob_skill` VALUES (629,386,112,'shock_strike',0,10.0,608,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (630,386,113,'thunder_ii',0,10.0,609,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (631,386,114,'rolling_thunder',1,10.0,610,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (632,386,115,'thunderspark',1,10.0,611,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (633,386,116,'lightning_armor',1,10.0,612,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (634,386,117,'thunder_iv',0,10.0,613,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (635,386,118,'chaotic_strike',0,10.0,614,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (636,386,119,'thunderstorm',0,10.0,615,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (637,386,120,'judgment_bolt',1,10.0,616,3000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (637,386,121,'shock_squall',1,10.0,616,500,4,0,0,0);

-- Carbuncle
INSERT INTO `mob_skill` VALUES (650,34,605,'healing_ruby',0,10.0,496,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES (651,34,606,'poison_nails',0,10.0,497,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (652,34,607,'shining_ruby',1,10.0,498,1500,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (653,34,608,'glittering_ruby',1,10.0,499,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (654,34,609,'meteorite',0,10.0,500,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (655,34,610,'healing_ruby_ii',1,10.0,501,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (656,34,611,'searing_light',1,10.0,502,1500,4,0,0,0);

-- Pet Carbuncle
INSERT INTO `mob_skill` VALUES (650,379,0,'healing_ruby',0,10.0,496,3000,2,0,0,0);
INSERT INTO `mob_skill` VALUES (651,379,1,'poison_nails',0,10.0,497,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (652,379,2,'shining_ruby',1,10.0,498,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (653,379,3,'glittering_ruby',1,10.0,499,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (654,379,4,'meteorite',0,10.0,500,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (655,379,5,'healing_ruby_ii',1,10.0,501,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (656,379,6,'searing_light',1,10.0,502,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (658,379,7,'holy_mist',1,10.0,503,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (659,379,8,'soothing_ruby',1,10.0,504,3000,4,0,0,0);

-- Pet - Diabolos
INSERT INTO `mob_skill` VALUES (1647,380,141,'Camisado',0,10.0,640,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1648,380,142,'Somnolence',0,10.0,641,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1649,380,143,'Noctoshield',1,10.0,644,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1650,380,144,'Ultimate_Terror',1,10.0,643,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1651,380,145,'Dream_Shroud',1,10.0,645,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1652,380,146,'nightmare',1,10.0,642,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1654,380,148,'Nether_Blast',0,10.0,646,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1655,380,149,'Ruinous_Omen',1,30,2000,3000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1655,380,324,'Pavor_Nocturnus',0,30,2000,3000,4,0,0,0);

-- Pet - Odin
INSERT INTO `mob_skill` VALUES (1870,385,151,'Zantetsuken',4,10.0,2000,1000,4,0,0,0);

-- Pet - Alexander
INSERT INTO `mob_skill` VALUES (1887,389,152,'Perfect_defense',1,18.0,2000,1000,1,0,0,0);

-- pet - Cait Sith
-- -373 from polutils
INSERT INTO `mob_skill` VALUES (2192,1204,9,'Regal_scratch',1,18.0,505,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2193,1204,10,'Mewing_lullaby',1,18.0,506,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2194,1204,11,'Eerie_eye',1,18.0,507,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2196,1204,12,'Level_?_Holy',1,18.0,508,3000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (664,1204,13,'Raise_II',1,18.0,509,3000,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (665,1204,14,'Reraise II',1,18.0,510,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2195,1204,15,'Altanas_Favor',1,18.0,511,3000,4,0,0,0);


-- Soulflayers
INSERT INTO `mob_skill` VALUES (1707,233,1327,'Mind_Blast',4,10.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1708,233,1328,'Immortal_Mind',0,7.0,2000,1000,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1709,233,1329,'Immortal_Shield',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1710,233,1330,'Mind_Purge',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1711,233,1331,'Tribulation',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1712,233,1332,'Immortal_Anathema',1,15.0,2000,1000,4,0,0,0);

-- Orobons
INSERT INTO `mob_skill` VALUES (1439,191,1166,'Hypnic_Lamp',1,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1438,191,1165,'Vile_Belch',1,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1441,191,1168,'Seaspray',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1440,191,1167,'Seismic_Tail',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1437,191,1164,'Gnash',0,7.0,2000,1000,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (1442,?,1169,'Leeching_Current',1,15.0,2000,1000,4,0,0,0); -- Certain NM only
-- INSERT INTO `mob_skill` VALUES (1721,?,0,'Deathgnash',0,7.0,2000,1000,4,0,0,0); -- Certain NM only
-- INSERT INTO `mob_skill` VALUES (1722,?,0,'Abominable_Belch',1,18.0,2000,1000,4,0,0,0); -- Certain NM only
-- INSERT INTO `mob_skill` VALUES (2383,?,0,'Mayhem_Lantern',1,18.0,2000,1000,4,0,0,0); -- Certain NM only

-- --------------------------------------
-- ZNM
-- --------------------------------------

-- Vulpangue (286)
INSERT INTO `mob_skill` VALUES (1467,286,1198,'Ill_Wind',1,15.0,2000,1500,4,0,0,0); -- Only used by Puks in Mamook,Besieged,and NMs: Vulpangue,Nis Puk,Nguruvilu,Seps ,Phantom Puk,Waugyl
INSERT INTO `mob_skill` VALUES (1466,286,1197,'Zephyr_Mantle',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1465,286,1196,'Obfuscate',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1464,286,1195,'Wind_Shear',1,10.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (1462,286,1194,'Crosswind',4,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1468,286,1199,'White_Wind',1,10.0,2000,1500,1,0,0,0);

-- Chamrosh (287)
INSERT INTO `mob_skill` VALUES (1445,287,1178,'Feather_Tickle',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1444,287,1177,'Snatch_Morsel',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1443,287,1176,'Pecking_Flurry',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1446,287,1177,'Wisecrack',1,10.0,2000,1500,4,0,0,0);

-- Cheese Hoarder Gigiroon (288) - Qiqirn
INSERT INTO `mob_skill` VALUES (1469,288,1200,'Kibosh',0,7,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1470,199,1201,'Cutpurse',4,10,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1471,288,1202,'Sandspray',4,7,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1472,288,1203,'Faze',0,7,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1474,288,1203,'Deadeye',1,18,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2103,288,1200,'Strap_Cutter',0,7,2000,1500,4,0,0,0);

-- Brass Borer (289)
INSERT INTO `mob_skill` VALUES (1559,289,1290,'Amber_scutum',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1560,289,1291,'Vitriolic_spray',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1561,289,1292,'Thermal_Pulse',1,12.5,2000,1000,4,0,0,0); -- Open form only
INSERT INTO `mob_skill` VALUES (1562,289,1293,'Cannonball',0,20,2000,1000,4,0,0,0); -- Curled form only
INSERT INTO `mob_skill` VALUES (1563,289,1294,'Heat_barrier',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1564,289,1295,'Vitriolic_shower',4,10.0,2000,1000,4,0,0,0);

-- Claret (290)
INSERT INTO `mob_skill` VALUES (176,290,176,'Fluid_Toss',0,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (175,290,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (177,290,176,'Digest',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1061,290,175,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1063,290,175,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0);

-- Ob (291)
INSERT INTO `mob_skill` VALUES (1684,291,1304,'Chimera_Ripper_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1685,291,1305,'String_Clipper',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1809,291,1404,'Cannibal_Blade',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2043,291,1486,'Bone_Crusher',0,7.0,2000,1500,4,0,0,0);

-- Velionis (292)
INSERT INTO `mob_skill` VALUES (222,292,222,'Hell_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (223,292,223,'Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (228,292,228,'Black_Cloud',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (229,292,229,'Blood_Saber',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1539,292,222,'Malediction',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (900,292,229,'Marrow Drain',0,7.0,2000,1500,4,0,0,0); -- Yes?  No?
-- INSERT INTO `mob_skill` VALUES (0,292,228,'Dereliction',1,20.0,2000,1500,4,0,0,0); -- Yes?  No?

-- Lil'Apkallu (294)
INSERT INTO `mob_skill` VALUES (1460,294,1162,'Frigid_Shuffle',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1459,294,1161,'Beak_Lunge',0,7.0,2000,1500,4,0,0,5);
INSERT INTO `mob_skill` VALUES (1457,294,1159,'Yawn',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1458,294,1160,'Wing_Slap',0,7.0,2000,1500,4,0,0,0);

-- Iriz Ima (295)
INSERT INTO `mob_skill` VALUES (1447,295,1170,'Barrier_Tusk',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1451,295,1174,'Voracious_Trunk',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1450,295,1173,'Flailing_Trunk',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1449,295,1172,'Stampede',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1448,295,1171,'Onrush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1452,295,1175,'Proboscis_Shower',0,7.0,2000,1500,2,0,0,0);

-- Lividroot Amooshah (296)
INSERT INTO `mob_skill` VALUES (60,296,60,'Impale',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (61,296,61,'Vampiric_Lash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (62,296,62,'Vampiric_Root',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (63,296,63,'Bad_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (64,296,64,'Sweet_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1076,296,63,'Extremely_Bad_Breath',4,7.0,2000,1500,4,0,0,0);

-- Iriri Samariri (297)
INSERT INTO `mob_skill` VALUES (1703,297,1361,'Water_Bomb',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1702,297,1360,'Magic_Hammer',0,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1704,297,1362,'Frog_Cheer',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1706,295,1364,'Frog_Chorus',1,10.0,2000,1500,4,0,0,0);

-- Anantaboga (298)
INSERT INTO `mob_skill` VALUES (388,298,388,'Wind_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (389,298,389,'Body_Slam',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (390,298,390,'Heavy_Stomp_Custom',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (391,298,389,'Chaos_Blade_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (392,298,390,'Petro_Eyes',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (386,298,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (387,298,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (394,298,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (395,298,395,'Lodesong',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1536,298,395,'Nullsong',1,15.0,2000,1500,4,0,0,0);

-- Dextrose (299)
INSERT INTO `mob_skill` VALUES (1565,299,1283,'Amplification',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1566,299,1284,'Boiling_Point',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1568,299,1286,'Amorphic_spikes',0,7.0,2000,1500,4,0,0,0); -- uses this move as a counter to weaponskills instantly against the person who used the WS. Leaving it out for now.
INSERT INTO `mob_skill` VALUES (1570,299,1288,'Synergism',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1567,299,1285,'Xenoglossia',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1569,299,1287,'Amorphic_scythe',4,10.0,2000,1500,4,0,0,0); -- Custards and Immortal Flan only

-- Reacton (300)
INSERT INTO `mob_skill` VALUES (253,300,253,'Self-Destruct',1,20.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (254,300,254,'Berserk',0,7.0,2000,1500,1,0,0,0);

-- Verdelet (301)
INSERT INTO `mob_skill` VALUES (1455,301,1180,'Frenetic_Rip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1453,301,1181,'Abrasive_Tantara',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1454,301,1182,'Deafening_Tantara',1,10.0,2000,1500,4,0,0,0);

-- Wulgaru (302)
INSERT INTO `mob_skill` VALUES (1814,302,1411,'Dismemberment',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1815,302,1412,'Dire_straight',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1816,302,1413,'Earth_shatter',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1817,302,1414,'Sinker_drill',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1818,302,1415,'Detonating_grip',0,7.0,2000,1000,4,0,0,0);

-- Zareehkl the Jubilant (303)
INSERT INTO `mob_skill` VALUES (1522,303,1205,'Spinal_Cleave',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1523,303,1206,'Mangle',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1524,303,1207,'Leaping_Cleave',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1525,303,1208,'Hex_Palm',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1526,303,1209,'Animating_Wail',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1527,303,1210,'Fortifying_Wail',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1528,303,1211,'Unblest_Jambiya',1,15.0,2000,1500,4,0,0,0);

-- Armed Gears (304)
INSERT INTO `mob_skill` VALUES (1791,304,1388,'Antigravity',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1787,304,1390,'Artificial_Gravity',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1789,304,1373,'Rail_Cannon',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1785,304,1376,'Restoral',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1808,304,1372,'Heavy_Armature',0,7.0,2000,1500,1,0,0,0); -- Armed Gears only

-- Gotoh Zha the Redolent (305) -- Mamool Ja Sage Type
INSERT INTO `mob_skill` VALUES (1664,305,1264,'Rushing_Drub',0,7.0,2000,1500,4,0,0,0); -- Staff Wielders Only.
INSERT INTO `mob_skill` VALUES (1665,305,1265,'Forceful_Blow',0,7.0,2000,1000,4,0,0,0); -- Hand to Hand Only.
INSERT INTO `mob_skill` VALUES (1666,305,1266,'Somersault_Kick',0,7.0,2000,1000,4,0,0,4);
INSERT INTO `mob_skill` VALUES (1667,305,1267,'Firespit',0,30.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1668,305,1268,'Warm-Up',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1669,305,1269,'Stave_Toss',0,7.0,2000,1000,1,0,0,0); -- Linked with Staff
INSERT INTO `mob_skill` VALUES (1670,305,1270,'Groundburst',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (433,305,432,'Benediction',1,20.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,305,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Dea (306)
INSERT INTO `mob_skill` VALUES (1843,306,1437,'Batterhorn',4,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1844,306,1436,'Clobber',4,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1845,306,1434,'Demoralizing_Roar',1,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1846,306,1435,'Boiling_Blood',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1847,306,1439,'Granite_Skin',0,7.0,2000,1000,1,0,0,0);

-- Achamoth (307)
INSERT INTO `mob_skill` VALUES (1695,307,1345,'Magma_fan',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1696,307,1346,'Erratic_flutter',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1697,307,1347,'Proboscis',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1698,307,1348,'Erosion_dust',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1699,307,1349,'Exuviation',0,7.0,2000,1000,1,0,0,0);

-- Khromasoul Bhurborlor (308)
INSERT INTO `mob_skill` VALUES (1487,308,1232,'Rock_Smash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1488,308,1233,'Diamondhide',1,16.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1489,308,1234,'Enervation',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1490,308,1235,'Quake_Stomp',0,7.0,2000,1500,1,0,0,0);

-- Nosferatu (309)
INSERT INTO `mob_skill` VALUES (1850,309,1450,'Bloodrake',0,6.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1851,309,1451,'Decollation',0,6.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1852,309,1452,'Nosferatus_Kiss',0,6.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1853,309,1453,'Heliovoid',0,6.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1854,309,1454,'Wings_of_Gehenna',0,6.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1855,309,1455,'Eternal_Damnation',0,6.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1856,309,1452,'Nocturnal_Servitude',0,6.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2132,309,1451,'Dirty_breath',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2278,309,1450,'Minax_glare',4,15.0,2000,1000,4,0,0,0);

-- Experimental Lamia (310)
INSERT INTO `mob_skill` VALUES (1496,310,1184,'Gusting_Gouge',0,7.0,2000,1500,4,0,0,0); -- One Hand Weapon Wielding Only. *Needs Script*
INSERT INTO `mob_skill` VALUES (1497,310,1185,'Hysteric_Barrage',0,7.0,2000,1500,4,0,0,0); -- Hand to Hand / Weapon Broken Only.
INSERT INTO `mob_skill` VALUES (1673,310,1278,'Pole_Swing',0,7,2000,1500,4,0,0,0); -- Staff Wielding Only. *Needs Script*
INSERT INTO `mob_skill` VALUES (1505,310,1192,'Arrow_Deluge',1,15,2000,1500,4,0,0,0); -- Bow Wielding Only. *Needs Script*
INSERT INTO `mob_skill` VALUES (1674,310,1279,'Tidal_Slash',4,10,2000,1500,4,0,0,0); -- Polearm Wielding Only. *Needs Script*
INSERT INTO `mob_skill` VALUES (1498,310,1188,'Dukkeripen',1,15,2000,2000,4,0,0,0); -- COR Only. AOE Paralyze Version. *Needs Script*
INSERT INTO `mob_skill` VALUES (1499,310,1187,'Dukkeripen',1,15,2000,2000,4,0,0,0); -- COR Only. ? Version.  *Needs Script*
INSERT INTO `mob_skill` VALUES (1500,310,1186,'Dukkeripen',0,7.0,2000,2000,1,0,0,0); -- COR Only. Self-Healing Version.  *Needs Script*
INSERT INTO `mob_skill` VALUES (1501,310,1189,'Dukkeripen',1,15,2000,2000,4,0,0,0); -- COR Only. ? Version.  *Needs Script*
INSERT INTO `mob_skill` VALUES (1502,310,1190,'Tail_Slap',4,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1503,310,1191,'Hypnotic_Sway',0,10,2000,2000,4,0,0,0);

-- Mahjlaef the Paintorn (311)
INSERT INTO `mob_skill` VALUES (1707,311,1327,'Mind_Blast',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1708,311,1328,'Immortal_Mind',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1709,311,1329,'Immortal_Shield',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1710,311,1330,'Mind_Purge',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1711,311,1331,'Tribulation',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1712,311,1332,'Immortal_Anathema',1,15.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (0,311,0,'Reprobation',1,18.0,2000,1500,4,0,0,0); -- Only by NM

-- Nuhn (312)
INSERT INTO `mob_skill` VALUES (1439,312,1166,'Hypnic_Lamp',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1438,312,1165,'Vile_Belch',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1441,312,1168,'Seaspray',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1440,312,1167,'Seismic_Tail',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1437,312,1164,'Gnash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1442,312,1166,'Leeching_Current',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1721,312,1164,'Deathgnash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1722,312,1165,'Abominable_Belch',1,18.0,2000,1500,4,0,0,0);

-- Tinnin (313)
INSERT INTO `mob_skill` VALUES (1572,313,1308,'Pyric_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1573,313,1319,'Polar_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1574,313,1309,'Polar_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1575,313,1318,'Pyric_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1576,313,1313,'Barofield',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1578,313,1310,'Trembling',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1579,313,1311,'Serpentine_Tail',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1580,313,1312,'Nerve_Gas',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,313,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);


-- Sarameya (314)
INSERT INTO `mob_skill` VALUES (1529,314,1223,'Lava_Spit',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1530,314,1224,'Sulfurous_Breath',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1531,314,1225,'Scorching_Lash',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1532,314,1226,'Ululation',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1533,314,1227,'Magma_Hoplon',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1534,314,1228,'Gates_of_Hades',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,314,432,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Tyger (315)
INSERT INTO `mob_skill` VALUES (1769,315,1369,'Dreadstorm',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1770,315,1381,'Fossilizing_Breath',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1772,315,1386,'Fulmination',1,32.0,2000,1500,4,0,0,0); -- only at < 50% strong paralyze
INSERT INTO `mob_skill` VALUES (1771,315,1382,'Plague_Swipe',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1766,315,1367,'Tenebrous_Mist',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1767,315,1368,'Thunderstrike',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1768,315,1371,'Tourbillion',1,18.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (432,315,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0); -- No mention of this on any wiki. Commenting it out for now.


-- Shinryu (475)
-- Wings out -- 0
INSERT INTO `mob_skill` VALUES (2394,475,1861,'Shinryu0_Right',0,7.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2395,475,1862,'Shinryu0_Left',0,7.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2396,475,1863,'Shinryu0_Right_2',1,7.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2397,475,1864,'Shinryu0_Left_2',1,7.0,3000,0,4,16,0,0);
-- INSERT INTO `mob_skill` VALUES (2398,475,1865,'Shinryu_Attack_Tail_1',0,7.0,3000,2000,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2399,475,1866,'Shinryu_Attack_Tail_2',0,7.0,3000,2000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2400,475,1867,'Shinryu0_Tail_Stun',0,7.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2408,475,1868,'Cosmic_Breath',4,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2409,475,1869,'Cataclysmic_Vortex',1,15.0,4000,5000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2411,475,1870,'Mighty_Guard',0,7.0,3000,2000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2412,475,1871,'Atomic_ray',1,20.0,4000,1500,4,0,0,0); -- 66% and below
INSERT INTO `mob_skill` VALUES (2414,475,1872,'Protostar',1,20.0,5000,3500,4,0,0,0); -- 33% and below

-- Wings in -- 1
INSERT INTO `mob_skill` VALUES (2401,475,1873,'Shinryu1_Right',0,7.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2402,475,1874,'Shinryu1_Left',0,7.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2403,475,1875,'Shinryu1_Right_2',1,7.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2404,475,1876,'Shinryu1_Left_2',1,7.0,3000,0,4,16,0,0);
-- INSERT INTO `mob_skill` VALUES (2405,475,1877,'Shinryu_Attack_Tail_1',0,7.0,3000,2000,1,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2406,475,1878,'Shinryu_Attack_Tail_2',0,7.0,3000,2000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2407,475,1879,'Shinryu1_Tail_Stun',0,7.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2452,475,1880,'Cosmic_Breath',4,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2453,475,1881,'Cataclysmic_Vortex',1,15.0,4000,5000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2410,475,1882,'Gyre_Charge',1,15.0,4000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2413,475,1883,'Darkmatter',1,20.0,4000,1500,4,0,0,0); -- 66% and below
INSERT INTO `mob_skill` VALUES (2415,475,1884,'Supernova',1,20.0,5000,3500,4,0,0,0); -- 33% and below

-- Absoulute Virtue  (329)
INSERT INTO `mob_skill` VALUES (1127,329,1018,'Glacier_Splitter',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1126,329,1014,'Crystaline_Cocoon',0,6.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1125,329,1013,'Depuration',0,6.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1130,329,1021,'Medusa_Javelin',0,6.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1124,329,1016,'Impact_Stream',1,10.0,2000,1500,12,0,0,0);
INSERT INTO `mob_skill` VALUES (1123,329,1011,'Auroral_Wind',1,10.0,2000,1500,12,0,0,0);
INSERT INTO `mob_skill` VALUES (1122,329,1020,'Wing_Thrust',1,10.0,2000,1500,12,0,0,0);
INSERT INTO `mob_skill` VALUES (1121,329,1013,'Fluorescence',0,6.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,329,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (434,329,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (433,329,432,'Benediction',1,20.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,329,432,'Manafont',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (436,329,432,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (437,329,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (438,329,432,'Invincible',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (439,329,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (484,329,432,'Familiar',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (440,329,432,'Soul_Voice',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (479,329,20,'Eagle_Eye_Shot',0,25.0,2000,0,4,2,0,0);
INSERT INTO `mob_skill` VALUES (474,329,432,'Meikyo_Shisui',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (475,329,18,'Mijin_Gakure',1,20.0,2000,0,4,2,0,0);
-- INSERT INTO `mob_skill` VALUES (476,329,432,'Call_Wyvern',0,7.0,2000,0,1,2,0,0); -- Doesn't work yet, worked around in onMobFight for now.

-- exoplates
INSERT INTO `mob_skill` VALUES (734,236,691,'Gaea_Stream_Eta',0,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (735,236,692,'Uranos_Cascade_Eta',2,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (736,236,693,'Cronos_Sling_Eta',4,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (737,236,694,'Phase_Shift_1',1,30.0,5000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (738,236,695,'Gaea_Stream_Theta',0,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (739,236,696,'Uranos_Cascade_Theta',2,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (740,236,697,'Cronos_Sling_Theta',4,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (741,236,698,'Phase_Shift_2',1,30.0,5000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (742,236,699,'Gaea_Stream_Lambda',0,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (743,236,700,'Uranos_Cascade_Lambda',2,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (744,236,701,'Cronos_Sling_Lambda',4,15.0,4000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (745,236,702,'Phase_Shift_3',1,30.0,5000,1500,4,0,0,0);

-- eald narche
INSERT INTO `mob_skill` VALUES (729,394,686,'Stellar_burst',2,7.0,5000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (730,394,687,'Vortex',2,20.0,5000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (750,394,707,'Omega_javelin',0,15.0,4000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (732,394,689,'Eald2_Warp_In',0,22.0,500,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (733,394,690,'Eald2_Warp_Out',0,22.0,500,0,1,0,0,0);

-- Avatar Ixon
-- INSERT INTO `mob_skill` VALUES (2078,39,1612,'Wrath_of_Zeus',1,10.0,2000,1500,12,0,0,0);

-- -------------------------------------------------------------------------------
-- NOTE: all skills 700+ are special skill lists given to NMs / special families
-- -------------------------------------------------------------------------------

-- Demonic_Tiphia NOT SURE WHATS UP WITH THIS POOLS DOES NOT POINT HERE
INSERT INTO `mob_skill` VALUES (80,700,80,'Final_Sting',0,7.0,2000,1500,4,0,35,0);
INSERT INTO `mob_skill` VALUES (79,700,79,'Pollen',0,7.0,2000,1500,1,0,40,0);
INSERT INTO `mob_skill` VALUES (78,700,78,'Sharp_Sting',0,10.0,2000,1500,4,0,0,0);

-- Cactrot_Rapido  NOT SURE WHATS UP WITH THIS POOLS DOES NOT POINT HERE
INSERT INTO `mob_skill` VALUES (68,703,68,'Photosynthesis',0,7.0,2000,1500,1,0,0,0); -- daytime only
INSERT INTO `mob_skill` VALUES (66,703,66,'1000_Needles',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (65,703,65,'Needleshot',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (864,703,66,'10000_Needles',1,10.0,2000,1500,4,0,0,0);

-- mob wyvern  NOT SURE WHATS UP WITH THIS POOLS DOES NOT POINT HERE
INSERT INTO `mob_skill` VALUES (644,704,627,'Wyvern_Flame_Breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (645,704,628,'Wyvern_Frost_Breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (646,704,629,'Wyvern_Gust_Breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (647,704,630,'Wyvern_Sand_Breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (648,704,631,'Wyvern_Lightning_Breath',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (649,704,632,'Wyvern_Hydro_Breath',0,10.0,2000,1500,4,0,0,0);

-- Quadav NM (Dynamis)
INSERT INTO `mob_skill` VALUES (819,705,1557,'Ore_Toss',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (820,705,1558,'Head_Butt',0,7.0,2000,2000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (821,705,1559,'Shell_Bash',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (822,705,1560,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (823,705,1561,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (824,705,742,'The_Wrath_of_GuDha',1,15.0,2000,2000,4,0,0,7); -- Used only by named Dynamis Quadav NM's and Wings of the Goddess NMs. Possibly exclusive.


-- Biotechnological Weapons
INSERT INTO `mob_skill` VALUES (1278,54,1090,'Guided_Missile',2,5.0,2000,1500,4,0,0,0); --
-- INSERT INTO `mob_skill` VALUES (982,54,928,'Target_Analysis',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1277,54,1089,'Pile_Pitch',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1271,54,1086,'Laser_Shower',2,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1270,54,1085,'Colossal_Blow',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1269,54,1090,'Guided_Missile_II',2,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1272,54,1087,'Floodlight',2,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1273,54,1088,'Hyper_Pulse',4,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1274,54,1089,'Stun_Cannon',2,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1003,54,944,'Wire_Cutter',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1004,54,945,'Antimatter',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1005,54,946,'Equalizer',2,10.0,2000,1500,4,1,0,0);
INSERT INTO `mob_skill` VALUES (1006,54,947,'Flame_Thrower',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1007,54,948,'Cryo_Jet',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1008,54,949,'Turbofan',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1009,54,950,'Smoke_Discharger',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1010,54,951,'High-Tension_Discharger',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1011,54,952,'Hydro_Canon',4,10.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1012,54,953,'Nuclear_Waste',2,15.0,2000,1500,4,0,0,0); -- : 15' AoE lower all resistances,followed by one of:
INSERT INTO `mob_skill` VALUES (1013,54,954,'Chemical_Bomb',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1265,54,1081,'Armor_Buster',2,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1266,54,1082,'Energy_Screen',0,10,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1267,54,1083,'Mana_Screen',0,10,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1268,54,1084,'Dissipation',2,20.0,2000,1500,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (?,54,?,'Citadel_Buster',1,20.0,2000,30000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (?,54,?,'Ion_Efflux',4,10.0,2000,2000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (?,54,?,'Rear_Lasers',1,20.0,2000,2000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1281,54,?,'Discharger',0,7.0,2000,2000,1,0,0,0);

-- Belladona
INSERT INTO `mob_skill` VALUES (2624,453,2016,'Night_stalker',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2625,453,2017,'Atropine_spore',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2626,453,2018,'Frond_fatale',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2627,453,2019,'Full_bloom',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2628,453,2020,'Deracinator',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2629,453,2021,'Beautiful_death',1,18.0,2000,1000,4,0,0,0);

-- Bahamut
INSERT INTO `mob_skill` VALUES (1286,449,1133,'Trample',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1287,449,1134,'Tempest_wing',0,25.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (1288,449,1139,'Touchdown',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1289,449,1135,'Sweeping_ Flail',1,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1290,449,1140,'Prodigious_spike',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1291,449,1141,'Impulsion',1,15.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (1292,449,1143,'Absolute_terror',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1293,449,1142,'Horrible_roar',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1295,449,1136,'Megaflare',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1296,449,1137,'Gigaflare',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1297,449,1138,'Teraflare',1,30.0,2000,1500,4,0,0,0);

-- Prishe
INSERT INTO `mob_skill` VALUES (1229,476,1091,'Hundred_Fists',0,7.0,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1230,476,1092,'Benediction',1,7.0,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1231,476,1093,'Prishe_Item_1',0,7.0,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1232,476,1094,'Prishe_Item_2',0,7.0,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1233,476,1095,'Nullifying_Dropkick',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1234,476,1096,'Auroral_Uppercut',0,7.0,2000,1500,4,0,0,0);

-- Promathia phase 1
INSERT INTO `mob_skill` VALUES (1235,134,1100,'Chains_of_Apathy',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1236,134,1101,'Chains_of_Arrogance',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1237,134,1102,'Chains_of_Cowardice',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1238,134,1103,'Chains_of_Rage',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1239,134,1104,'Chains_of_Envy',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1240,134,1105,'Malevolent_blessing',4,10.0,2000,1500,4,8,0,7);
INSERT INTO `mob_skill` VALUES (1241,134,1106,'Pestilent_penance',4,10.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1242,134,1107,'Empty_salvation',1,25.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1243,134,1108,'Infernal_deliverance',1,15.0,2000,1500,4,8,0,0);

-- Promathia phase 2
INSERT INTO `mob_skill` VALUES (1244,478,1109,'Malevolent_blessing',4,10.0,2000,1500,4,8,0,7);
INSERT INTO `mob_skill` VALUES (1245,478,1110,'Pestilent_penance',4,10.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1246,478,1111,'Empty_salvation',1,25.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1247,478,1112,'Infernal_deliverance',1,15.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1248,478,1113,'Wheel_of_Impregnability',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1249,478,1114,'Bastion_of_Twilight',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1250,478,1115,'Winds_of_oblivion',1,15.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1251,478,1116,'Seal_of_quiescence',1,15.0,2000,1500,4,8,0,0);

-- Selh'teus
INSERT INTO `mob_skill` VALUES (1252,477,1099,'Luminous_Lance',0,20.0,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1253,477,1097,'Rejuvenation',1,10.0,2000,0,1,8,0,0);
INSERT INTO `mob_skill` VALUES (1254,477,1098,'Revelation',0,20.0,2000,0,4,0,0,0);

-- Tenzen
-- ranged @ 1033 1034
INSERT INTO `mob_skill` VALUES (1134,7500,1036,'Amatsu_torimai',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1135,7500,1037,'Amatsu_kazakiri',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1136,7500,1038,'Amatsu_yukiarashi',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1137,7500,1039,'Amatsu_tsukioboro',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1138,7500,1040,'Amatsu_anaikusa',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1139,7500,1041,'Amatsu_tsukikage',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1141,7500,1042,'Oisoya',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1142,7500,1032,'noname',0,15.0,2000,1500,1,0,0,0); -- riceball eating
INSERT INTO `mob_skill` VALUES (1143,7500,1035,'noname2',0,15.0,2000,1500,4,0,0,0); -- cosmic elucidation

-- Lady Lilith
-- personal special melee 1840 1841 1842
INSERT INTO `mob_skill` VALUES (2419,473,1843,'Dark_thorn',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2420,473,1844,'Petaline_tempest',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2421,473,1845,'Durance_whip',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2422,473,1846,'Subjugating_slash',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2423,473,1847,'Fatal_allure',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2424,473,1848,'Moonlight_Veil',1,18.0,2000,1000,4,0,0,0);

-- Lilith ascendant
-- 1849 special melee?
INSERT INTO `mob_skill` VALUES (2428,472,1850,'Dark_Flare',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2429,472,1851,'Dark_Freeze',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2430,472,1852,'Dark_Tornado',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2431,472,1853,'Dark_Quake',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2432,472,1854,'Dark_Burst',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2433,472,1855,'Dark_Flood',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2434,472,1856,'Dark_Moon',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2435,472,1857,'Dark_Sun',1,18.0,2000,1000,4,0,0,0);

-- Monoceros
INSERT INTO `mob_skill` VALUES (2078,39,1640,'Wrath_of_zeus',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2079,39,1639,'Lightning_spear',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2080,39,1642,'Acheron_kick',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2081,39,1653,'Damsel_memento',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2082,39,1641,'Rampant_stance',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2113,39,1652,'Scintillant_lance',4,10.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1286,39,?,'Trample',1,15.0,2000,1000,4,0,0,0);

-- Monoceros (Alicorn Subspecies)
-- INSERT INTO `mob_skill` VALUES (2114,?,1650,'Grace_of_Hera',0,7.0,2000,1000,1,0,0,0); -- Alicorn Subspecies only

-- Slugs
INSERT INTO `mob_skill` VALUES (1927,231,1572,'Fuscous_ooze',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1928,231,1573,'Purulent_ooze',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1929,231,1574,'Corrosive_ooze',1,15.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (1930,???,1575,'Mucilaginous_ooze',1,15.0,2000,1000,4,0,0,0); -- Certain NM only

-- Sandworms
INSERT INTO `mob_skill` VALUES (1931,215,1537,'Dustvoid',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1932,215,1538,'Slaverous_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1933,215,1539,'Aeolian_Void',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1934,214,1540,'Extreme_Purgation',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1935,214,1541,'Desiccation',0,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1936,214,1542,'Doomvoid',1,30.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2348,214,1538,'Gorge',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2349,214,1540,'Disgorge',4,15.0,2000,1000,4,0,0,0);

-- Caturae
INSERT INTO `mob_skill` VALUES (2310,450,1786,'Diabolic_claw',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2311,450,1787,'Stygian_cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2312,450,1788,'Deathly_diminuendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2313,450,1789,'Hellish_crescendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2314,450,1790,'Afflicting_gaze',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2315,450,1791,'Stygian_sphere',0,9.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2316,450,1792,'Malign_invocation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2317,450,1793,'Shadow_wreck',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2378,450,1810,'Interference',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2379,450,1811,'Dark_arrivisme',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2381,450,1813,'Besiegers_bane',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2436,450,1812,'Royal_decree',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2444,450,1982,'Enthrall',1,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2380,450,1983,'Banneret_charge',1,30.0,2000,1000,4,0,0,0);

-- Amphipteres
INSERT INTO `mob_skill` VALUES (2171,6,1705,'Tail_lash',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2172,6,1706,'Bloody_beak',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2173,6,1707,'Feral_peck',0,9.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2175,6,1709,'Reaving_wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2176,6,1710,'Storm_wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2177,6,1711,'Calamitous_wind',1,15.0,2000,1000,4,0,0,0);

INSERT INTO `mob_skill` VALUES (2174,6,1708,'Warped_wail',1,15.0,2000,1000,4,0,0,0); -- Certain NM only

-- Iron Giants
INSERT INTO `mob_skill` VALUES (2361,350,1815,'Ironclad_Meele_Stomp',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2362,350,1816,'Ironclad_Meele_Lateral',1,12.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2360,350,1814,'Ironclad_Meele_Vertical',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2363,350,1817,'Turbine_cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2364,350,1818,'Seismic_impact',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2365,350,1819,'Incinerator',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2366,350,1820,'Arm_canon',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2367,350,1821,'Ballistic_kick',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2368,350,1822,'Scapula_beam',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2369,350,1823,'Eradicator',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2370,350,1824,'Auger_Smash',0,9.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2371,350,1825,'Area_Bombardment',4,12.0,2000,1000,4,0,0,0);
-- 1814 1815 1816 are melee attacks with additional effect

-- Mantids
INSERT INTO `mob_skill` VALUES (2595,340,1923,'Slicing_Sickle',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2596,340,1926,'Raptorial_Claw',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2597,340,1927,'Phlegm_Expulsion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2598,340,1928,'Macerating_Bile',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2499,340,1929,'Preying_Posture',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2600,340,1924,'Dead_Prophet ',4,10.0,8000,1000,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2630,?,1925,'Exorender',4,12.0,2000,1000,4,0,0,0); -- Only used by Tsui Goab

-- Ruszors
INSERT INTO `mob_skill` VALUES (2179,211,1697,'Severing_Fang',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2180,211,1698,'Sub-zero_Smash',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2181,211,1699,'Aqua_Blast',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2182,211,1700,'Frozen_Mist',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2183,211,1701,'Hydro_Wave',1,18.0,2000,1000,4,0,0,0);

-- Gargouilles
INSERT INTO `mob_skill` VALUES (2165,118,1682,'Dark_orb',1,15.0,2000,1000,4,0,0,0); -- Flying only.
INSERT INTO `mob_skill` VALUES (2166,118,1678,'Dark_mist',1,14.0,2000,1000,4,0,0,0); -- Flying Only.
INSERT INTO `mob_skill` VALUES (2167,118,1680,'Triumphant_roar',0,7.0,2000,1000,1,0,0,0); -- Standing Only.
INSERT INTO `mob_skill` VALUES (2168,118,1681,'Terror_eye',4,10.0,2000,1000,4,0,0,0); -- Standing Only.
INSERT INTO `mob_skill` VALUES (2169,118,1679,'Bloody_claw',0,7.0,2000,1000,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2170,?,1683,'Shadow_burst',1,15.0,2000,1000,4,0,0,0); -- Certain NM only

-- Harpeia
INSERT INTO `mob_skill` VALUES (2469,471,1912,'Rending_talons',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2470,471,1913,'Shrieking_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2471,471,1914,'Wings_of_woe',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2472,471,1915,'Wings_of_agony',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2473,471,1916,'Typhoean_rage',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2474,471,1917,'Ravenous_wail',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2502,471,1915,'Kaleidoscopic_Fury',1,15.0,2000,1000,4,0,0,0);

-- Pteraketos
INSERT INTO `mob_skill` VALUES (2620,451,2012,'Thar_she_blows',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2619,451,2010,'Waterspout',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2618,451,2011,'Angry_seas',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2617,451,2009,'Blowhole_blast',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2616,451,2008,'Depht_charge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2615,451,2007,'Baleen_gurge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2614,451,2006,'Caudal_capacitor',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2613,451,2005,'Deep_sea_dirge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2612,451,2004,'Echolocation',1,18.0,2000,1000,4,0,0,0);

-- Naraka
INSERT INTO `mob_skill` VALUES (2465,472,1907,'Raksha_vengeance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2464,472,1906,'Raksha_illusion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2463,472,1905,'Raksha_Judgment',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2462,472,1904,'Raksha_stance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2461,472,1902,'Yaksha_bliss',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2460,472,1903,'Yaksha_oblivion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2459,472,1901,'Yaksha_damnation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2458,472,1900,'Yaksha_stance',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2555,472,?,'Yamas_jugement',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2501,472,?,'Sakra_storm',1,18.0,2000,1000,4,0,0,0);

-- Gallu
INSERT INTO `mob_skill` VALUES (2528,467,1956,'Diluvial_wakes',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2529,467,1957,'Kurugi_collapse',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2530,467,1958,'Searing_halitus',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2531,467,1959,'Divesting_gale',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2532,467,1960,'Bolt_of_perdition',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2533,467,1961,'Crippling_rime',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2534,467,1962,'Oblivions_mantle',1,15.0,2000,1000,4,0,0,0);

-- Shadow Lord (Fiat Lux)
INSERT INTO `mob_skill` VALUES (2289,466,1755,'Doom_arc',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2288,466,1754,'Soma_wall',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2287,466,1753,'Spawn_shadow',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2286,466,1752,'Blighting_blitz',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2285,466,1751,'Cross_smash',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2284,466,1750,'Umbral_orb',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2283,466,1749,'Implosion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2282,466,1748,'Spell_wall',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2281,466,1747,'Cruel_slash',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2280,466,1746,'Boon_void',1,18.0,2000,1000,4,0,0,0);

-- Provenance Watcher (100-50% no wings,50-31 2 wings,<31 4 wings)
-- special melee 2049 2050 2051 2052 2053 2054 2055
INSERT INTO `mob_skill` VALUES (2583,462,2056,'Prismatic_Breath',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2584,462,2057,'Acicular_Brand',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2585,462,2058,'Orogenesis',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2586,462,2059,'Phason_Beam',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2587,462,2060,'Diffractive_Break',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2588,462,2061,'Euhedral_Swat',1,18.0,2000,1000,4,0,0,0);

-- special melee wing out 2062 2063 2064 2065 2066 2067 2068

INSERT INTO `mob_skill` VALUES (2596,462,2069,'Prismatic_Breath',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2597,462,2070,'Acicular_Brand',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2598,462,2071,'Orogenesis',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2259,462,2072,'Phason_Beam',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2600,462,2073,'Diffractive_Break',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2601,462,2074,'Euhedral_Swat',1,18.0,2000,1000,4,0,0,0);

-- HP <50%
INSERT INTO `mob_skill` VALUES (2602,462,2075,'Crystallite_Shower',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2603,462,2076,'Graviton_Crux',1,18.0,2000,1000,4,0,0,0);
-- HP <30%
INSERT INTO `mob_skill` VALUES (2604,462,2077,'Crystal_Bolide',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2605,462,2078,'Fragor_maximus',1,18.0,2000,1000,4,0,0,0);
-- SOA
-- Chapulli normal & nm

INSERT INTO `mob_skill` VALUES (2689,339,2167,'Natures_meditation',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2690,339,2168,'Sensilla_blades',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2691,339,2169,'Tegmina_buffet',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2692,339,2170,'Sanguinary_slash',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2693,339,2171,'Sanguinary_slash',1,18.0,2000,1000,4,0,0,0);

-- Yilbegan
INSERT INTO `mob_skill` VALUES (2263,470,1756,'Dexter_Wing',1,18.0,2000,1000,4,0,0,2);
INSERT INTO `mob_skill` VALUES (2264,470,1757,'Sinister_Wing',1,18.0,2000,1000,4,0,0,2);
INSERT INTO `mob_skill` VALUES (2265,470,1758,'Chaos_blast',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2266,470,1759,'Abyssic_buster',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2267,470,1760,'Dancing_tail',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2268,470,1761,'Dancing_tailv2',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2269,470,1762,'Chilling_roar',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2270,470,1763,'Chilling_roarv2',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2271,470,1764,'Soul_douse',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2272,470,1765,'Soul_dousev2',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2273,470,1766,'Dark_star',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2274,470,1767,'Dark_starV2',1,18.0,2000,1000,4,0,0,0);


-- CAIT SITH
INSERT INTO `mob_skill` VALUES (2192,60,1686,'Regal_scratch',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2193,60,1687,'Mewing_lullaby',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2194,60,1688,'Eerie_eye',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2195,60,1689,'Divine_favor',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2196,60,1690,'Level-1-Holy',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2197,60,1691,'Level-2-Holy',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2198,60,1692,'Level-3-Holy',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2199,60,1693,'Level-4-Holy',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2200,60,1694,'Level-5-Holy',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2201,60,1695,'Level-6-Holy',1,18.0,2000,1000,4,0,0,0);


-- Mumor

-- INSERT INTO `mob_skill` VALUES (2643,???,2037,'Sining_Summer_samba',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2644,???,2038,'Lovely_Miracle_Waltz',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2645,???,2039,'Neo_Crystal_Jig',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2646,???,2040,'Super_Crusher_jig',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2647,???,2041,'Eternal_Vana_Illusion',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2648,???,2042,'Final_Eternal_Heart',1,18.0,2000,1000,4,0,0,0);


-- Riko Kupenreich
-- normal melee 1503 bomb toss
-- INSERT INTO `mob_skill` VALUES (2209,???,1502,'Bill_toss',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2210,???,1504,'Washtub',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2211,???,1505,'Crystalline_flare',1,18.0,2000,1000,4,0,0,0);

-- Moogle Henchman

-- INSERT INTO `mob_skill` VALUES (2207,???,1499,'Flowerpot',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2206,???,1500,'Mog_shrapnel',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2205,???,1501,'Mog_bomb',1,18.0,2000,1000,4,0,0,0);


-- Lilisette
INSERT INTO `mob_skill` VALUES (2191,484,1717,'Vivifying_waltz',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2190,484,1716,'Rousing_samba',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2189,484,1713,'Whirling_edge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2188,484,1712,'Dancers_fury',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2187,484,1715,'Sensual_dance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2186,484,1714,'Thorned_dance',1,18.0,2000,1000,4,0,0,0);

-- Atomos
-- need right model?
-- INSERT INTO `mob_skill` VALUES (2202,???,1718,'Soul_Vacuum',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2003,???,1719,'Soul_Infusion',1,18.0,2000,1000,4,0,0,0);


-- SOA

-- Twitherym
INSERT INTO `mob_skill` VALUES (2694,338,2203,'Tempestuous_Upheaval',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2695,338,2204,'Slicendice',0,25.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2696,338,2205,'Blackout',1,18.0,2000,1000,4,0,0,0);

-- Umbrils
INSERT INTO `mob_skill` VALUES (2714,468,2185,'Paralysing_triad',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2715,468,2186,'Crepuscular_Grasp',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2716,468,2187,'Necrotic_brume',4,15.0,2000,1000,4,0,0,0);

-- Acuex
INSERT INTO `mob_skill` VALUES (2718,345,2189,'Foul_waters',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2719,345,2190,'Pestilent_brume',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2720,345,2191,'Deadening_haze',1,18.0,2000,1000,4,0,0,0);

-- Maroliths
INSERT INTO `mob_skill` VALUES (2671,347,2086,'Metamorphic_Blast',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2672,347,2087,'Enervating_grasp',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2673,347,2088,'Orogenic_storm',1,14.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2674,347,2089,'Subduction',1,15.0,2000,1000,4,0,0,0);

-- INSERT INTO `mob_skill` VALUES (2675,?,2090,'Tectonic_shift',1,15.0,2000,1000,4,0,0,0); -- Certain NM only

-- Craklaws
INSERT INTO `mob_skill` VALUES (2701,344,2180,'Impenetrable_carapace',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2702,344,2181,'Rending_Deluge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2703,344,2182,'Sundering_Snip',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2704,344,2183,'Viscid_Spindrift',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2705,344,2184,'Riptide_Eupnea',1,18.0,2000,1000,4,0,0,0);

-- Raaz
INSERT INTO `mob_skill` VALUES (2892,458,2274,'noname',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2893,458,2275,'Dazing_Discord',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2894,458,2276,'Steaming_Rage',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2895,458,2277,'noname',1,18.0,2000,1000,4,0,0,0);

-- Yztarg

-- melee special 2091 2092 2093

INSERT INTO `mob_skill` VALUES (2666,459,2094,'Soulshattering_Roar',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2667,459,2095,'Calcifying_Claw',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2668,459,2096,'Divesting_Stampede',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2669,459,2097,'Bonebreaking_Barrage',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2670,459,2098,'Beastruction',1,18.0,2000,1000,4,0,0,0);

-- Matamata
-- melee special 2121,2122,2123 all aoe
INSERT INTO `mob_skill` VALUES (2709,348,2124,'Cranial_Thrust',4,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2710,348,2125,'Tail_Thwack',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2711,348,2126,'Embalming_Earth',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2712,348,2127,'Scalding_Breath',4,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2713,348,2128,'Debilitating_Spout',1,18.0,2000,1000,4,0,0,0);

-- Heartwing
INSERT INTO `mob_skill` VALUES (2727,343,2117,'Ancestral_Banishment',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2728,343,2118,'Heartfelt_Aura',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2729,343,2119,'Impairing_Glister',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2730,343,2120,'Crippling_Gleam',1,18.0,2000,1000,4,0,0,0);

-- Leafkin
INSERT INTO `mob_skill` VALUES (2722,455,2162,'Consecration',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2723,455,2163,'Sacred_Caper',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2724,455,2164,'Phototrophic_Blessing',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2725,455,2165,'Phototrophic_Wrath',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2726,455,2166,'Deific_gambol',1,18.0,2000,1000,4,0,0,0);

-- Tulfaires
INSERT INTO `mob_skill` VALUES (2807,454,2233,'Molting_Plumage',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2808,454,2234,'Pentapeck',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2809,454,2235,'Swooping_Frenzy',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2810,454,2236,'From_the_skies',1,18.0,2000,1000,4,0,0,0);

-- Velkk
INSERT INTO `mob_skill` VALUES (2732,342,2155,'Glutinous_Dart',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2733,342,2156,'Death_Spin',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2734,342,2157,'Velkkan_Pygmachia',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2735,342,2158,'Saurian_Slide',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2736,342,2159,'Jungle_Wallop',1,18.0,2000,1000,4,0,0,0);

-- Panopts
INSERT INTO `mob_skill` VALUES (2774,463,2099,'Retinal_glare',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2775,463,2100,'Sylvan_Slumber',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2776,463,2101,'Crushing_Gaze',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2777,463,2102,'Vaskania',1,18.0,2000,1000,4,0,0,0);

-- Snapweeds
INSERT INTO `mob_skill` VALUES (2841,464,2172,'Stink_Bomb',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2842,464,2173,'Stink_Bomb',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2843,464,2174,'Nectarous_Deluge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2845,464,2175,'Nepenthic_Plunge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2846,464,2176,'Infaunal_Flop',1,18.0,2000,1000,4,0,0,0);



-- Dullahan

INSERT INTO `mob_skill` VALUES (2962,447,2299,'Villainous_Rebuke',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2963,447,2300,'Stygian_Release',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2964,447,2301,'Infernal_Bulwark',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2965,447,2302,'Atramentous_Libations',1,18.0,2000,1000,4,0,0,0);
-- 2303 probably nm dullahan move

-- Fluturini
INSERT INTO `mob_skill` VALUES (2896,448,2289,'Shining_salvo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2897,448,2290,'Palling_salvo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2898,448,2291,'Cathartic_Caper',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2899,448,2292,'Bewailing_wake',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2900,448,2293,'Flight_of_the_Fluttyries',1,18.0,2000,1000,4,0,0,0);


-- -----------------------------------------------------------
-- Naakuals
-- -----------------------------------------------------------

-- Rockfins
-- 2193,2194,2195 special melee
INSERT INTO `mob_skill` VALUES (2755,452,2196,'Protolithic_puncture',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2756,452,2197,'Aquatic_lance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2757,452,2198,'Pelagic_cleaver',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2758,452,2199,'Carcharian_verve',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2759,452,2200,'Tidal_Guillotine',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2760,452,2201,'Marine_Mayhem',1,28.0,2000,6000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,452,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (434,452,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);

-- Kumhau
-- melee special 2258 2259 2260
INSERT INTO `mob_skill` VALUES (2878,457,2258,'Kumhau_Left',1,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2879,457,2259,'Kumhau_Right',1,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2880,457,2260,'Kumhau_Bite',0,10.0,3000,0,4,16,0,4);
INSERT INTO `mob_skill` VALUES (2881,457,2261,'Polar_Roar',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2882,457,2262,'Brain_Freeze',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2883,457,2263,'Biting_Abrogation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2884,457,2264,'Permafrost_Requiem',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2885,457,2265,'Glacial_Tomb',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2886,457,2266,'Glassy_Nova',1,26.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (438,457,432,'Invincible',0,7.0,2000,0,1,2,0,0);

-- Colkhab
-- melee special 2133 / 2134 / 2135(aoe melee attack)
INSERT INTO `mob_skill` VALUES (2743,456,2133,'Colkhab_Bite',0,10.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2744,456,2134,'Colkhab_Slash',1,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2745,456,2135,'Colkhab_Stinger',1,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2746,456,2136,'Colkhab_Mandibular_Lashing',0,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2747,456,2137,'Colkhab_Vespine_Hurricane',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2748,456,2138,'Colkhab_Stinger_volley',4,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2749,456,2139,'Colkhab_Droning_Whirlwind',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2750,456,2140,'Colkhab_Incisive_Denouement',0,18.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2751,456,2141,'Colkhab_Incisive_Apotheosis',4,18.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (432,456,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (474,456,432,'Meikyo_Shisui',0,7.0,2000,0,1,2,0,0);

-- Achuka
-- special melee 2142 2143 2144
INSERT INTO `mob_skill` VALUES (2761,461,2142,'Achuka_Bite',0,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2762,461,2143,'Achuka_Charge',0,10.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2763,461,2144,'Achuka_Spin',1,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2764,461,2145,'Blistering_Roar',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2765,461,2146,'Searing_Serration',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2766,461,2147,'Volcanic_Stasis',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2767,461,2148,'Tyrannical_Blow',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2768,461,2149,'Batholithic_Shell',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2769,461,2150,'Pyroclastic_Surge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2770,461,2151,'Incinerating_Lahar',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,461,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Hurkan
-- special melee 2214 2215 2216
INSERT INTO `mob_skill` VALUES (2816,460,2214,'Hurkan_AoE',0,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2814,460,2215,'Hurkan_Dive',1,10.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2815,460,2216,'Hurkan_Single',0,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2817,460,2218,'Crashing_Thunder',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2818,460,2218,'Reverberating_Cry',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2819,460,2219,'Brownout',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2820,460,2220,'Reverse_Current',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2821,460,2221,'Sparkstorm',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2822,460,2222,'Static_Prison',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,460,432,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (439,460,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);

-- Yumcax
-- special melee anims 2202 2203 2204
INSERT INTO `mob_skill` VALUES (2801,465,2205,'Root_of_the_problem',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2802,465,2206,'Potted_Plant',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2803,465,2207,'Uproot',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2804,465,2208,'Canopierce',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2805,465,2209,'Firefly_Fandango',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2806,465,2210,'Tiiimbeeer',1,18.0,2000,1000,4,0,0,0);

-- Arciela

-- INSERT INTO `mob_skill` VALUES (2825,486,2247,'',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2825,486,2248,'',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2825,486,2249,'',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2825,486,2250,'',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2825,486,2251,'',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2825,486,2252,'',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2825,486,2253,'',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2825,486,2254,'',1,18.0,2000,1000,4,0,0,0);


-- Gramk-Droog Velkk Boss
-- special melee 2223 2224 2225
-- INSERT INTO `mob_skill` VALUES (2825,???,2226,'Velkan_Ambush',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2826,???,2227,'Galumph',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2827,???,2228,'Coming_through',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2828,???,2229,'Merciless_mauling',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2829,???,2230,'Croctastrophy',1,18.0,2000,1000,4,0,0,0);
-- INSERT INTO `mob_skill` VALUES (2831,???,2231,'Battle_Trance',1,18.0,2000,1000,1,0,0,0);


-- Xol (Balamor boss) -- animated model 0x0000460a not 0x0000ba06
-- melee ranged attack 2343 2344 2345 2346
INSERT INTO `mob_skill` VALUES (3047,490,2347,'Feast_of_Arrows',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3048,490,2348,'Cruel_Joke',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3049,490,2349,'Regurgitated_Swarm',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3050,490,2350,'Setting_the_Stage',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3051,490,2351,'Last_Laugh',1,18.0,2000,1000,4,0,0,0);

-- Morimar/Noble Warrior animated model 0x00006f0a not 0x0000ba05
-- special melee 2332 2333 2334
INSERT INTO `mob_skill` VALUES (2904,491,2335,'Vehement_Resolution',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2905,491,2336,'Camaraderie_oft_the_crevasse',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2906,491,2337,'Into_the_light',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2907,491,2338,'Arduous_decision',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2908,491,2339,'12_blades_of_remorse',1,18.0,2000,1000,4,0,0,0);

-- Darrcuiln model 0x0000660a not cs one 0x0000b00a
-- special melee 2320 horn  2321 claw  2322 howl
INSERT INTO `mob_skill` VALUES (2909,489,2320,'Darrcuiln_Charge',0,10.0,3000,0,4,16,0,4);
INSERT INTO `mob_skill` VALUES (2910,489,2321,'Darrcuiln_Claw',1,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2911,489,2322,'Darrcuiln_Howl',1,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2912,489,2323,'Aurous_Charge',0,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2913,489,2324,'Howling_Gust',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2914,489,2325,'Righteous_Rasp',0,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2915,489,2326,'Starward_Yowl',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2916,489,2327,'Stalking_Prey',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (437,489,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);

-- Ashrakk
-- melee 2369 2370 2371 2372
INSERT INTO `mob_skill` VALUES (3107,493,2373,'Tearing_Gust',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3108,493,2374,'Concussive_Shock',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3109,493,2375,'Chokehold',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3110,493,2376,'Zap',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3111,493,2377,'Shrieking_Gale',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3112,493,2378,'Undulating_Shockwave',1,18.0,2000,1000,4,0,0,0);


-- Xol
-- Dhokmak melee 2379 2380 2381
INSERT INTO `mob_skill` VALUES (3116,492,2382,'Cesspool',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3117,492,2383,'Fetid_Eddies',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3118,492,2384,'Nullifying_rain',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3119,492,2385,'Noyade',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3120,492,2386,'Clobering_wave',1,18.0,2000,1000,4,0,0,0);

-- Theodor
-- Melee 2387 2388 2389
INSERT INTO `mob_skill` VALUES (3124,488,2390,'Start_From_Scratch',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3125,488,2391,'Frenzied_Thrust',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3126,488,2392,'Sinners_Coss',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3127,488,2393,'Open_Coffin',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3128,488,2394,'Ravenous_Assault',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3129,488,2395,'Hemocladis',1,18.0,2000,1000,4,0,0,0);


-- Hades V1
-- melee 2396 2397 2398
INSERT INTO `mob_skill` VALUES (3133,485,2399,'Fulminous_Smash',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3134,485,2400,'Flaming_Kick',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3135,485,2401,'Icy_Grasp',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3136,485,2402,'Flash_Flood',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3137,485,2403,'Eroding_Flesh',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3138,485,2404,'Vivisection',1,18.0,2000,1000,4,0,0,0);

-- Hades V2
-- Melee 2405 2406 2407 2408
INSERT INTO `mob_skill` VALUES (3143,487,2409,'Impudence',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3144,487,2410,'Incessant_Void',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3145,487,2411,'Tenbrous_Grip',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3146,487,2412,'Demon_Fire',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3147,487,2413,'Frozen_Blood',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3148,487,2414,'Blast_Of_Reticence',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3149,487,2415,'Ensepulcher',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3150,487,2416,'Ceaseless_Surge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3151,487,2417,'Torrential_Pain',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3152,487,2418,'Eternal_Misery',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3153,487,2419,'Crippling_Agony',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3154,487,2420,'Bane_Of_Tartarus',1,18.0,2000,1000,4,0,0,0);

-- Static mobs unique attack
INSERT INTO `mob_skill` VALUES (3000,349,2153,'animationfungus',1,18.0,2000,1000,4,0,0,0);

-- Alastor Antlion
INSERT INTO `mob_skill` VALUES (21, 357, 811, 'Venom_Spray', 4, 10.0, 2000, 1000, 4, 0, 0, 0);
INSERT INTO `mob_skill` VALUES (20, 357, 810, 'Sand_Pit', 0, 7.0, 2000, 1000, 4, 0, 0, 0);
INSERT INTO `mob_skill` VALUES (19, 357, 809, 'Sand_Blast', 1, 8.0, 2000, 1000, 4, 0, 0, 0);
INSERT INTO `mob_skill` VALUES (23, 357, 813, 'Mandibular_Bite', 0, 7.0, 2000, 1500, 4, 0, 0, 0);

-- Ix'Aern (MNK) and his minions
-- INSERT INTO `mob_skill` VALUES (3155,3,434,'Ix_aern_mnk',0,7.0,2000,0,1,2,0,0); -- WTF is this???
-- INSERT INTO `mob_skill` VALUES (3156,3,436,'Qn_aern_rdm',0,7.0,2000,0,1,2,0,0); -- ??
-- INSERT INTO `mob_skill` VALUES (3157,3,433,'Qn_aern_whm',1,20.0,2000,0,1,2,0,0); -- ??

-- Sekhmet
INSERT INTO `mob_skill` VALUES (3158,494,396,'Blaster',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3159,494,397,'Chaotic_Eye',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3160,494,291,'Charged_Whisker',1,12.5,2000,1500,4,0,0,0);

-- -------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------- All Custom Below ------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------------------------

-- Cirein-croin (1506)
INSERT INTO `mob_skill` VALUES (1439,1506,1166,'Hypnic_Lamp',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1438,1506,1165,'Vile_Belch',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1441,1506,1168,'Seaspray',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1440,1506,1167,'Seismic_Tail',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1437,1506,1164,'Gnash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1442,1506,1166,'Leeching_Current',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1721,1506,1164,'Deathgnash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2383,1506,1166,'Mayhem_Lantern',1,18.0,2000,1000,4,0,0,0);

-- Pantokrator
INSERT INTO `mob_skill` VALUES (1278,1500,1090,'Guided_Missile_Pantokrator',2,5.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1277,1500,1089,'Pile_Pitch_Pantokrator',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1271,1500,1086,'Laser_Shower_Pantokrator',2,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1269,1500,1090,'Guided_Missile_II_Pantokrator',2,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1273,1500,1088,'Hyper_Pulse_Pantokrator',4,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1274,1500,1089,'Stun_Cannon_Pantokrator',2,20.0,2000,1500,4,0,0,0);

-- Blazing Eruca
INSERT INTO `mob_skill` VALUES (90,1501,90,'Cocoon',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (88,1501,88,'Sticky_Thread',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1535,1501,386,'Incinerate',4,10.0,2000,1500,4,0,0,0);

-- Eccentric Eve
INSERT INTO `mob_skill` VALUES (63,1503,63,'EE_Bad_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (470,1503,1213,'EE_Drain_Whip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2318,1503,60,'EE_Thousand Spears',4,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1076,1503,63,'EE_Extremely_Bad_Breath',4,15.0,2000,1500,4,0,0,0); -- used only by Evil Oscar,Cirrate Christelle,Lividroot Amooshah,Eccentric Eve and Melancholic Moira.
INSERT INTO `mob_skill` VALUES (2319,1503,63,'Tainting_Breath',4,10.0,2000,1500,4,0,0,0);

-- Glaviod
INSERT INTO `mob_skill` VALUES (1931,1504,1537,'Dustvoid',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1932,1504,1538,'Slaverous_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1933,1504,1539,'Aeolian_Void',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1934,1504,1540,'Extreme_Purgation',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1935,1504,1541,'Desiccation',0,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1936,1504,1542,'Doomvoid',1,30.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2348,1504,1538,'Gorge',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2349,1504,1542,'Disgorge',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1504,432,'Blood_Weapon', 0, 7.0, 2000, 0, 1, 2, 0, 0);

-- Briareus
INSERT INTO `mob_skill` VALUES (406,1505,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (407,1505,407,'Ice_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (408,1505,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (409,1505,409,'Grand_Slam_Custom',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (410,1505,410,'Power_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (411,1505,411,'Power_Attack_Weapon',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2111,1505,411,'Moribund_Hack',1,15.0,2000,1500,4,0,0,0);    -- Certain NM only
INSERT INTO `mob_skill` VALUES (2322,1505,410,'Colossal_Slam',1,15.0,2000,1500,4,0,0,0); -- Certain NM only
INSERT INTO `mob_skill` VALUES (2320,1505,411,'Mercurial_Strike',1,15.0,2000,1500,4,0,0,0); -- Certain NM only
INSERT INTO `mob_skill` VALUES (474,1505,432,'Meikyo_Shisui', 0, 7.0, 2000, 0, 1, 2, 0, 0);

-- Odin Prime (1630)
INSERT INTO `mob_skill` VALUES (2300,1630,1444,'Ofnir',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2301,1630,1446,'Valfodr',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2302,1630,1441,'Yggr',1,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2303,1630,1442,'Gagnrath',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2304,1630,1445,'Sangetall',1,30.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2305,1630,1443,'Geirrothr',1,20.0,4000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1870,1630,1447,'Zantetsuken',1,20.0,10000,1000,4,0,0,0);

-- Alexander (1631)
INSERT INTO `mob_skill` VALUES (1885,1631,1465,'Radiant_Sacrament',1,18.0,2000,1000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (1886,1631,1471,'Mega_Holy',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1887,1631,1467,'Perfect_Defense',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1888,1631,1470,'Divine_Spear',1,18.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1889,1631,1466,'Gospel_Of_The_Lost',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1890,1631,1469,'Void_Of_Repentance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1891,1631,1468,'Divine_Jugement',1,30.0,4000,1000,4,0,0,1);

-- pet - Cait Sith
-- -373 from polutils
INSERT INTO `mob_skill` VALUES (2192,1754,9,'Regal_scratch',1,18.0,505,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2193,1754,10,'Mewing_lullaby',1,18.0,506,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2194,1754,11,'Eerie_eye',1,18.0,507,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2196,1754,12,'Level_?_Holy',1,18.0,508,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (664,1754,13,'Raise_II',1,18.0,509,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (665,1754,14,'Reraise II',1,18.0,510,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2195,1754,15,'Altanas_Favor',1,18.0,511,3000,4,0,0,0);

-- Sedna
INSERT INTO `mob_skill` VALUES (2179,1502,1697,'Severing_Fang',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2181,1502,1699,'Aqua_Blast',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2182,1502,1700,'Frozen_Mist',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2183,1502,1701,'Hydro_Wave',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2184,1502,1702,'Ice_Guillotine',1,18.0,2000,1000,4,0,0,0); -- Scylla Only
INSERT INTO `mob_skill` VALUES (2185,1502,1703,'Aqua_Cannon',1,18.0,2000,1000,4,0,0,0); -- Exclusive to Scylla? Replaces Aqua Blast
INSERT INTO `mob_skill` VALUES (2180,1502,1698,'Sub-zero_Smash',1,18.0,2000,1000,4,0,0,0);

-- Bakka 1507
INSERT INTO `mob_skill` VALUES(1455,1507,1180,'Frenetic_Rip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1747,1507,1182,'Grating_Tantara',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1748,1507,1182,'Stifling_Tantara',1,10.0,2000,1500,4,0,0,0);

-- Balaur 1508
INSERT INTO `mob_skill` VALUES(566,1508,494,'Chaos_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(563,1508,491,'Blizzard_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(564,1508,492,'Thunder_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1966,1508,491,'Hurricane_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(560,1508,488,'Fang_Rush_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(558,1508,486,'Deadly_Drive_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(562,1508,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);

-- Fistule (1509)
INSERT INTO `mob_skill` VALUES(2294,1509,177,'Dissolve',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2258,1509,177,'Cytokinesis',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2296,1509,175,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2295,1509,176,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0);

-- Kukulkan 1510
INSERT INTO `mob_skill` VALUES (1896,1510,1543,'Aqua_Fortis',1,15,2000,2000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1897,1510,1544,'Regurgitation',0,7.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1898,1510,1545,'Delta_Thrust',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1899,1510,1546,'Torpefying_Charge',1,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1900,1510,1547,'Grim_Glower',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2136,1510,1547,'Oppressive_Gaze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1901,1510,1547,'Calcifiying_Mist',1,15.0,2000,1500,4,0,0,0);

-- Turul 1511
INSERT INTO `mob_skill` VALUES (2171,1511,1705,'Tail_lash',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2172,1511,1706,'Bloody_beak',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2173,1511,1707,'Feral_peck',0,9.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2175,1511,1709,'Reaving_wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2176,1511,1710,'Storm_wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2177,1511,1711,'Calamitous_wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2174,1511,1708,'Warped_wail',1,15.0,2000,1000,4,0,0,0);

-- Ovni 1512
INSERT INTO `mob_skill` VALUES (1114,1512,1022,'Vitriolic_Barrage',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1115,1512,1023,'Primal_Drill_Custom',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1116,1512,1024,'Concussive_Oscillation',1,15.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (1117,1512,1025,'Ion_Shower',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1118,1512,1026,'Torrential_Torment',1,15.0,2000,1500,4,0,0,0);

-- Hadhayosh 1513
INSERT INTO `mob_skill` VALUES(2135,1513,373,'Amnesic_Blast',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(378,1513,378,'Meteor',2,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(372,1513,372,'Wild_Horn',4,10.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(373,1513,373,'Thunderbolt',1,40.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(376,1513,376,'Flame_Armor',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(377,1513,377,'Howl',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(2330,1513,378,'Ecliptic_Meteor',1,30.0,2000,1500,4,0,0,0);

-- Carabosse 1514
INSERT INTO `mob_skill` VALUES (1937,1514,1581,'Zephyr_Arrow',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1938,1514,1582,'Lethe_Arrows',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1939,1514,1583,'Spring_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1940,1514,1584,'Summer_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1941,1514,1585,'Autumn_Breeze',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1942,1514,1586,'Winter_Breeze',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1943,1514,1587,'Cyclonic_Turmoil',1,15.0,2000,1500,4,0,0,5);
INSERT INTO `mob_skill` VALUES (1944,1514,1588,'Cyclonic_Torrent',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (433,1514,432,'Benediction', 1, 20.0, 2000, 0, 1, 2, 0, 0);

-- Mictlantecuhtli 1515
INSERT INTO `mob_skill` VALUES(274,1515,1070,'Final_Retribution',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(275,1515,901,'Silence_Seal',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(276,1515,902,'Envoutement',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(277,1515,903,'Danse_Macabre',0,10.0,2000,2000,4,0,0,0);

-- Iratham (1516)
INSERT INTO `mob_skill` VALUES (2310,1516,1786,'Diabolic_Claw',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2311,1516,1787,'Stygian_Cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2312,1516,1788,'Deathly_Diminuendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2313,1516,1789,'Hellish_Crescendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2314,1516,1790,'Afflicting_Gaze',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2315,1516,1791,'Stygian_Sphere',0,9.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2316,1516,1792,'Malign_Invocation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2317,1516,1793,'Shadow_wreck',1,18.0,2000,1000,4,0,0,0);

-- Lacovie (1517)
INSERT INTO `mob_skill` VALUES(548,1517,476,'Tortoise_Song',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(549,1517,477,'Head_Butt_Turtle',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(550,1517,478,'Tortoise_Stomp_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(551,1517,479,'Harden_Shell',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(552,1517,480,'Earth_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2329,1517,478,'Tetsudo_Tremor',0,7.0,2000,1500,4,0,0,0);

-- Chloris (1518)
INSERT INTO `mob_skill` VALUES(434,1518,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES(2131,1518,50,'Fatal_Scream',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(50,1518,50,'Scream',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1954,1518,45,'Petal_Pirouette',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(44,1518,44,'Head_Butt',0,7.0,1500,1500,4,0,0,0);

-- Amhuluk (1519)
INSERT INTO `mob_skill` VALUES(2171,1519,1705,'Tail_Lash',0,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2172,1519,1706,'Bloody_Beak',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2173,1519,1707,'Feral_Peck',0,9.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2175,1519,1709,'Reaving_Wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2176,1519,1710,'Storm_Wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2177,1519,1711,'Calamitous_Wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2174,1519,1708,'Warped_Wail',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2386,1519,1711,'Vermillion_Wind',1,15.0,2000,1000,4,0,0,0);

-- Sobek (1520)
INSERT INTO `mob_skill` VALUES(127,1520,820,'Tusk',0,7.0,2000,2000,4,0,0,2);
INSERT INTO `mob_skill` VALUES(130,1520,823,'Awful_Eye',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(131,1520,824,'Heavy_Bellow',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2387,1520,820,'Tyrant_Tusk',4,15.0,2000,1500,4,0,0,0);

-- Heqet (1521)
INSERT INTO `mob_skill` VALUES(1702,1521,1360,'Magic_Hammer',0,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1703,1521,1361,'Water_Bomb',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1704,1521,1362,'Frog_Cheer',0,7.0,2000,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES(1705,1521,1363,'Providence',0,7.0,2000,1500,1,0,0,0);

-- Pascerpot (1522)
INSERT INTO `mob_skill` VALUES(90,1522,90,'Cocoon',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(89,1522,89,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(88,1522,88,'Sticky_Thread',4,12.0,2000,1500,4,0,0,0);

-- Ironclad Executioner (1523)
INSERT INTO `mob_skill` VALUES (2361,1523,1815,'Ironclad_Meele_Stomp',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2362,1523,1816,'Ironclad_Meele_Lateral',1,12.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2360,1523,1814,'Ironclad_Meele_Vertical',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2363,1523,1817,'Turbine_Cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2364,1523,1818,'Seismic_Impact',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2365,1523,1819,'Incinerator',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2366,1523,1820,'Arm_Cannon',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2367,1523,1821,'Ballistic_kick',4,12.0,2000,1000,4,0,0,0);

-- Lord Varney (1524)
INSERT INTO `mob_skill` VALUES (1850,1524,1449,'Bloodrake',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1851,1524,1450,'Decollation',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1852,1524,1451,'Nosferatus_kiss',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1853,1524,1452,'Heliovoid',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1854,1524,1454,'Wings_of_Gehenna',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1855,1524,1454,'Eternal_Damnation',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1856,1524,1452,'Nocturnal_Servitude',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2132,1524,1451,'Dirty_Breath',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2278,1524,1450,'Minax_Glare',4,15.0,2000,1000,4,0,0,0);

-- Bukhis (1525)
INSERT INTO `mob_skill` VALUES(242,1525,851,'Triclip_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2384,1525,852,'Ruinous_Scythe',4,10.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES(246,1525,855,'Mortal_Ray',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2277,1525,855,'Lithic_Ray',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1104,1525,855,'Apocalyptic_Ray',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2133,1525,851,'Lethal_Triclip',1,15.0,2000,1500,4,0,0,0);

-- Sippoy (1526)
INSERT INTO `mob_skill` VALUES (2311,1526,1787,'Stygian_cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2313,1526,1789,'Hellish_crescendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2315,1526,1791,'Stygian_sphere',0,9.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2316,1526,1792,'Malign_invocation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2378,1526,1810,'Interference',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2379,1526,1811,'Dark_arrivisme',1,18.0,2000,1000,4,0,0,0);

-- Aggressor Antilion (1527)
INSERT INTO `mob_skill` VALUES(19,1527,809,'Sand_Blast',1,8.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(21,1527,811,'Venom_Spray',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(23,1527,813,'Mandibular_Bite',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2261,1527,809,'Quake_Blast',1,15.0,2000,1500,4,0,0,0);

-- Amun (1528)
INSERT INTO `mob_skill` VALUES(183,1528,183,'Petro_Gaze',4,10.0,2000,3500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(184,1528,184,'Catharsis',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(181,1528,181,'Death_Ray',0,7.0,2000,1500,4,0,0,0);

-- Itzpapaloti (1529)
INSERT INTO `mob_skill` VALUES (1695,1529,1345,'Magma_Fan',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1696,1529,1346,'Erratic_Flutter',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1697,1529,1347,'Proboscis',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1698,1529,1348,'Erosion_Dust',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1699,1529,1349,'Exuviation',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1700,1529,1350,'Fire_Break',0,7.0,2000,1000,4,0,0,0);

-- Ironclad Cleaver (1530)
INSERT INTO `mob_skill` VALUES (2361,1530,1815,'Ironclad_Meele_Stomp',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2362,1530,1816,'Ironclad_Meele_Lateral',1,12.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2360,1530,1814,'Ironclad_Meele_Vertical',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2363,1530,1817,'Turbine_cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2364,1530,1818,'Seismic_impact',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2365,1530,1819,'Incinerator',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2366,1530,1820,'Arm_canon',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2367,1530,1821,'Ballistic_kick',4,12.0,2000,1000,4,0,0,0);

-- Smok (1531)
INSERT INTO `mob_skill` VALUES(1023,1531,653,'Tebbad_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1024,1531,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1025,1531,655,'Fiery_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1026,1531,656,'Touchdown',1,6.0,2000,0,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1027,1531,657,'Inferno_Blast',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1028,1531,658,'Tebbad_Wing_Air',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1029,1531,659,'Absolute_Terror',0,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1030,1531,660,'Horrid_Roar_3',0,18.0,2000,1500,4,8,0,0);

-- Titlacauan (1532)
INSERT INTO `mob_skill` VALUES(276,1532,902,'Envoutement',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(277,1532,903,'Danse_Macabre',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2382,1532,900,'Hadal_Summons',1,15.0,2000,1500,4,0,0,0);

-- Warbler (1533)
INSERT INTO `mob_skill` VALUES (1902,1533,1567,'Insipid_Nip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1903,1533,1568,'Pandemic_Nip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1904,1533,1569,'Bombilation',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1905,1533,1570,'Cimicine_Discharge',0,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1906,1533,1571,'Emetic_Discharge',0,7.0,2000,1000,4,0,0,0);

-- Audumbla (1534)
INSERT INTO `mob_skill` VALUES(237,1534,846,'Rampant_Gnaw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(238,1534,847,'Big_Horn_Custom',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES(239,1534,848,'Snort',4,12.5,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES(240,1534,849,'Rabid_Dance',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(241,1534,850,'Lowing',1,15.0,2000,2500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1108,1534,848,'Mighty_Snort',4,12.5,2000,1500,4,0,0,0);

-- Apademak (1536)
INSERT INTO `mob_skill` VALUES(1769,1536,1369,'Dreadstorm',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1770,1536,1381,'Fossilizing_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1772,1536,1386,'Fulmination',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1771,1536,1382,'Plague_Swipe',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1766,1536,1367,'Tenebrous_Mist',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1767,1536,1368,'Thunderstrike',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1768,1536,1371,'Tourbillion',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2442,1536,1381,'Lithic_Breath',1,13.0,2000,1500,4,0,0,0);

-- Awahondo (1535)
INSERT INTO `mob_skill` VALUES(434,1535,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES(106,1535,830,'Double_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(107,1535,831,'Grapple',4,12.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(108,1535,832,'Filamented_Hold',4,12.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(109,1535,833,'Spinning_Top',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2443,1535,833,'Tarsal_Slam',4,10.0,2000,1500,4,0,0,0);

-- Dhorme Khimaira (1537)
INSERT INTO `mob_skill` VALUES(1769,1537,1369,'Dreadstorm',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1770,1537,1381,'Fossilizing_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1772,1537,1386,'Fulmination',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1771,1537,1382,'Plague_Swipe',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1766,1537,1367,'Tenebrous_Mist',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1767,1537,1368,'Thunderstrike',1,13.0,2000,1500,4,0,0,0);

-- Indrik (1554)
INSERT INTO `mob_skill` VALUES (2078,1554,1640,'Wrath_of_zeus',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2079,1554,1639,'Lightning_spear',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2080,1554,1642,'Acheron_kick',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2081,1554,1653,'Damsel_memento',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2082,1554,1641,'Rampant_stance',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2113,1554,1652,'Scintillant_lance',4,10.0,2000,1000,4,0,0,0);

-- Isgebind (1538)
INSERT INTO `mob_skill` VALUES(1031,1538,963,'Sleet_Blast_alt',0,23.0,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1032,1538,963,'Sleet_Blast_alt',0,18.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES(1033,1538,653,'Gregale_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1034,1538,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1035,1538,962,'Glacial_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1036,1538,656,'Touchdown',1,6.0,2000,0,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1037,1538,964,'Sleet_Blast',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1038,1538,653,'Gregale_Wing_Air',1,30.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(1039,1538,659,'Absolute_Terror',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1040,1538,660,'Horrid_Roar_3',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(439,1538,432,'Blood_Weapon',0,18.0,2000,0,1,0,30,0);

-- Yaguarogui (1539)
INSERT INTO `mob_skill` VALUES(14,1539,14,'Roar',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(15,1539,15,'Razor_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(17,1539,17,'Claw_Cyclone',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1951,1539,0,'Disorienting_Waul',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1084,1539,17,'Crossthrash',4,10.0,2000,1500,4,0,0,0);

-- Amarok (1540)
INSERT INTO `mob_skill` VALUES (1529,1540,1223,'Lava_Spit',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1530,1540,1224,'Sulfurous_Breath',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1531,1540,1225,'Scorching_Lash',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1532,1540,1226,'Ululation',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1533,1540,1227,'Magma_Hoplon',0,7.0,2000,1500,1,0,0,0);

-- Ansherekh (1541)
INSERT INTO `mob_skill` VALUES(14,1541,14,'Roar',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(15,1541,15,'Razor_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(17,1541,17,'Claw_Cyclone',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1084,1541,17,'Crossthrash',4,10.0,2000,1500,4,0,0,0);

-- Bennu (1542)
INSERT INTO `mob_skill` VALUES(666,1542,143,'Blind_Vortex',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(667,1542,144,'Giga_Scream',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(668,1542,145,'Dread_Dive',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES(144,1542,144,'Triple_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(145,1542,145,'Gliding_Spike',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(147,1542,147,'Stormwind',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2447,1542,147,'Dread_Wind',1,15.0,2000,1500,4,0,0,0);

-- Dragua (1543)
INSERT INTO `mob_skill` VALUES(2446,1543,653,'Terra_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1024,1543,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1152,1543,655,'Geotic_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1026,1543,656,'Touchdown',1,6.0,2000,0,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1027,1543,657,'Inferno_Blast',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1028,1543,658,'Tebbad_Wing_Air',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1029,1543,659,'Absolute_Terror',0,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1030,1543,660,'Horrid_Roar_3',0,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1043,1543,653,'Typhoon_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(438,1543,432,'Invincible',0,7.0,2000,0,1,2,0,0);

-- Cuijattender (1544)
INSERT INTO `mob_skill` VALUES(65,1544,65,'Needleshot',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(66,1544,66,'10000_Needles',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(68,1544,68,'Photosynthesis',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(1370,1544,66,'4000_Needles',1,10.0,2000,1500,4,0,0,0);

-- Hazhdiha (1545)
INSERT INTO `mob_skill` VALUES(388,1545,388,'Wind_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(389,1545,389,'Body_Slam',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(390,1545,390,'Heavy_Stomp',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(391,1545,389,'Chaos_Blade_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(392,1545,390,'Petro_Eyes',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(386,1545,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(387,1545,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(394,1545,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(395,1545,395,'Lodesong',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1536,1545,395,'Nullsong',1,15.0,2000,1500,4,0,0,0);

-- Orthrus (1546)
INSERT INTO `mob_skill` VALUES(1529,1546,1223,'Lava_Spit',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1530,1546,1224,'Sulfurous_Breath',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1531,1546,1225,'Scorching_Lash',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1532,1546,1226,'Ululation',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1533,1546,1227,'Magma_Hoplon',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(1534,1546,1228,'Acheron_Flame',1,20.0,2000,1500,4,0,0,0);

-- Quzelum (1547)
INSERT INTO `mob_skill` VALUES(666,1547,143,'Blind_Vortex',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(667,1547,144,'Giga_Scream',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(668,1547,145,'Dread_Dive',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES(144,1547,144,'Triple_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(145,1547,145,'Gliding_Spike',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(147,1547,147,'Stormwind',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2447,1547,147,'Dread_Wind',1,15.0,2000,1500,4,0,0,0);

-- Alfard (1548)
INSERT INTO `mob_skill` VALUES (1572,1548,1308,'Pyric_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1573,1548,1319,'Polar_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1574,1548,1309,'Polar_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1575,1548,1318,'Pyric_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1576,1548,1313,'Barofield',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1578,1548,1310,'Trembling',1,5.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1579,1548,1311,'Serpentine_Tail',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1580,1548,1312,'Nerve_Gas',1,10.0,2000,1500,4,0,0,0);

-- Amphitrite (1550)
INSERT INTO `mob_skill` VALUES(1315,1550,861,'Gas_Shell',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1317,1550,863,'Palsynyxis',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1319,1550,865,'Suctorial_Tentacle',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1318,1550,864,'Painful_Whip',0,7.0,2000,1500,4,0,0,0);

-- Azdaja (1551)
INSERT INTO `mob_skill` VALUES(1053,1551,653,'Cyclone_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1054,1551,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1055,1551,968,'Sable_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1059,1551,659,'Absolute_Terror',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(1060,1551,660,'Horrid_Roar_3',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES(2441,1551,659,'Infinate_Terror',0,18.0,4000,1500,4,8,0,0);

-- Ningishzida (1549)
INSERT INTO `mob_skill` VALUES (1572,1549,1308,'Pyric_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1573,1549,1319,'Polar_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1574,1549,1309,'Polar_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1575,1549,1318,'Pyric_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1576,1549,1313,'Barofield',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1578,1549,1310,'Trembling',1,5.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1579,1549,1311,'Serpentine_Tail',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1580,1549,1312,'Nerve_Gas',1,10.0,2000,1500,4,0,0,0);

-- Raja (1552)
INSERT INTO `mob_skill` VALUES (2310,1552,1786,'Diabolic_Claw',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2311,1552,1787,'Stygian_Cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2312,1552,1788,'Deathly_Diminuendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2313,1552,1789,'Hellish_Crescendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2314,1552,1790,'Afflicting_Gaze',4,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2315,1552,1791,'Stygian_Sphere',0,9.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2316,1552,1792,'Malign_Invocation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2317,1552,1793,'Shadow_Wreck',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2378,1552,1810,'Interference',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2379,1552,1811,'Dark_Arrivisme',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2381,1552,1813,'Besiegers_Bane',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2436,1552,1812,'Royal_Decree',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2444,1552,1982,'Enthrall',1,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2380,1552,1983,'Banneret_Charge',1,30.0,2000,1000,4,0,0,0);

-- Xibalba (1553)
INSERT INTO `mob_skill` VALUES (222,1553,222,'Hell_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (223,1553,223,'Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (228,1553,228,'Black_Cloud',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (229,1553,229,'Blood_Saber',1,15.0,2000,1500,4,0,0,0);

-- Megalobugard (1556)
INSERT INTO `mob_skill` VALUES(127,1556,820,'Tusk',0,7.0,2000,2000,4,0,0,2);
INSERT INTO `mob_skill` VALUES(130,1556,823,'Awful_Eye',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(131,1556,824,'Heavy_Bellow',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2387,1556,820,'Tyrant_Tusk',4,15.0,2000,1500,4,0,0,0);

-- Intulo (1559)
INSERT INTO `mob_skill` VALUES (259,1559,814,'Toxic_Spit',0,9.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (260,1559,815,'Geist_Wall',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (261,1559,816,'Numbing_Noise',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (262,1559,817,'Nimble_Snap',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (263,1559,818,'Cyclotail',1,10.0,2000,1500,4,0,0,0);

-- Keeper of Haildom (1560)
INSERT INTO `mob_skill` VALUES (325,1560,325,'Blow',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (327,1560,327,'Beatdown',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (328,1560,328,'Uppercut',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (330,1560,330,'Blank_Gaze',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (331,1560,331,'Antiphase',1,15.0,2000,1500,4,0,0,0);

-- Dune Widow (1558)
INSERT INTO `mob_skill` VALUES (554,1558,482,'Sickle_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (555,1558,483,'Acid_Spray',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (556,1558,484,'Spider_Web',1,15.0,2000,1500,4,0,0,0);

-- Seww the Squidlimbed (1561)
INSERT INTO `mob_skill` VALUES (515,1561,443,'Hydro_Ball',4,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (521,1561,449,'Hydro_Shot',0,10.0,2000,3000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (524,1561,452,'Spinning_Fin',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (518,1561,446,'Bubble_Armor',0,7.0,2000,1500,1,0,0,0);

-- Mischievous Micholas (1563)
INSERT INTO `mob_skill` VALUES (38,1563,38,'Eye_Scratch',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (32,1563,32,'Vicious_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (34,1563,34,'Spinning_Claw',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (39,1563,39,'Magic_Fruit',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (35,1563,35,'Claw_Storm',0,7.0,2000,1500,4,0,0,0); -- 7hp/tick
INSERT INTO `mob_skill` VALUES (33,1563,33,'Stone_Throw',0,25.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (36,1563,36,'Blank_Gaze_Dispel',0,16.0,2000,2000,4,0,0,0);

-- Ash Dragon (1557)
INSERT INTO `mob_skill` VALUES(388,1557,388,'Wind_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(389,1557,389,'Body_Slam',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(390,1557,390,'Heavy_Stomp',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(391,1557,389,'Chaos_Blade_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(392,1557,390,'Petro_Eyes',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(386,1557,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(387,1557,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(394,1557,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(395,1557,395,'Lodesong',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1536,1557,395,'Nullsong',1,15.0,2000,1500,4,0,0,0);

-- Juggler Hecatomb (1562)
INSERT INTO `mob_skill` VALUES (257,1562,257,'Smite_of_Rage',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (258,1562,258,'Whirl_of_Rage',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1303,1562,258,'Flurry_of_Rage',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1302,1562,257,'Smite_of_Fury',0,7.0,2000,1500,4,0,0,0);


-- Gulool Ja Ja (1555)
INSERT INTO `mob_skill` VALUES (1541,1555,1147,'Rushing_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1542,1555,1147,'Decussate',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1543,1555,1156,'Tyranic_Blare',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1544,1555,1156,'Miasma',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1545,1555,1147,'Vorpal_Wheel',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1482,1555,1156,'Groundburst',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1475,1555,1149,'Forceful_Blow',0,7.0,2000,1000,4,0,0,0); -- Hand to Hand Only / After Weapon Break
INSERT INTO `mob_skill` VALUES (1476,1555,1150,'Somersault_Kick',0,7.0,2000,1000,4,0,0,4);
INSERT INTO `mob_skill` VALUES (1477,1555,1151,'Firespit',0,25.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1478,1555,1152,'Warm-Up',0,7.0,2000,1000,1,0,0,0);

-- Tzee_Xicu_the_Manifest (1564)
INSERT INTO `mob_skill` VALUES (361,1564,361,'Feather_Storm',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (377,1564,354,'Howl',1,20.0,2000,1500,2,0,0,0);
INSERT INTO `mob_skill` VALUES (362,1564,362,'Double_Kick',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (363,1564,363,'Parry',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (364,1564,364,'Sweep',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2157,1564,1565,'Feather_Maelstrom',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2014,1564,362,'Shirahadori',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1680,1564,1565,'Shibaraku',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2013,1564,1565,'Kamaitachi',1,15.0,2000,1500,4,0,0,0);

-- Overlord_Bakgodek (1565)
INSERT INTO `mob_skill` VALUES (377,1565,354,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2155,1565,353,'Phantasmal_Dance',1,15.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2007,1565,1626,'Tornado_Edge',4,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2008,1565,350,'Shoulder_Charge',4,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (353,1565,353,'Battle_Dance',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (352,1565,352,'Arm_Block',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (351,1565,351,'Slam_Dunk',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (349,1565,349,'Aerial_Wheel',0,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (350,1565,350,'Shoulder_Attack',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (810,1565,740,'Fanatic_Dance',1,10.0,2000,2000,4,0,0,0);

-- Za_Dha_Adamantking (1585)
INSERT INTO `mob_skill` VALUES (355,1585,355,'Ore_Toss',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (377,1585,354,'Howl',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (356,1585,356,'Head_Butt',0,7.0,2000,2000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (357,1585,357,'Shell_Bash',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (358,1585,358,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2156,1585,742,'Thunderous_Yowl',1,15.0,2000,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1977,1585,1608,'Diamond_Shell',0,7.0,2000,3000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1978,1585,1609,'Ore_Lob',2,15.0,2000,1500,4,0,0,0);

-- Lord_of_Onzozo (1566)
INSERT INTO `mob_skill` VALUES (202,1566,202,'Ink_Jet',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (203,1566,203,'Hard_Membrane',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (204,1566,204,'Cross_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (205,1566,205,'Regeneration',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (206,1566,206,'Maelstrom',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (207,1566,207,'Whirlwind',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (200,1566,200,'Tentacle',0,7.0,2000,1500,4,0,0,0);

-- Guivre (1567)
INSERT INTO `mob_skill` VALUES(566,1567,494,'Chaos_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(563,1567,491,'Blizzard_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(564,1567,492,'Thunder_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1966,1567,491,'Hurricane_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(560,1567,488,'Fang_Rush_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(558,1567,486,'Deadly_Drive_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(562,1567,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);

-- Biast (1568)
INSERT INTO `mob_skill` VALUES(388,1568,388,'Wind_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(389,1568,389,'Body_Slam',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(390,1568,390,'Heavy_Stomp',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(391,1568,389,'Chaos_Blade_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(392,1568,390,'Petro_Eyes',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(386,1568,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(387,1568,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(394,1568,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);

-- Duke_Haborym (1569)
INSERT INTO `mob_skill` VALUES (303,1569,303,'Soul_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (304,1569,304,'Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (307,1569,307,'Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (892,1569,311,'Condemnation',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (893,1569,313,'Quadrastrike_Custom',0,7.0,2000,1500,4,0,0,0);

-- Ophion (1570)
INSERT INTO `mob_skill` VALUES (406,1570,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (407,1570,407,'Ice_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (408,1570,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (409,1570,409,'Grand_Slam',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (410,1570,410,'Power_Attack',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (411,1570,411,'Power_Attack_Weapon',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2111,1570,411,'Moribund_Hack',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2322,1570,410,'Colossal_Slam',1,15.0,2000,1500,4,0,0,0);

-- Sozu_Rogberry (1571)
INSERT INTO `mob_skill` VALUES (527,1571,455,'Words_of_Bane',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (528,1571,456,'Sigh',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (529,1571,457,'Light_of_Penance',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (530,1571,458,'Lateral_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (531,1571,459,'Vertical_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (532,1571,460,'Throat_Stab',0,3.4,2000,3500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (664,1571,503,'Everyones_Grudge',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (665,1571,504,'Everyones_Rancor',0,7.0,2000,1500,4,0,0,0);

-- Tyrannic_Tunnok (1572)
INSERT INTO `mob_skill` VALUES (463,1572,94,'Critical_Bite',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (465,1572,97,'Stasis',0,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (466,1572,98,'Venom_Storm',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (467,1572,99,'Earthbreaker_Custom',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (464,1572,95,'Venom_Sting',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (461,1572,92,'Venom_Breath',4,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (94,1572,94,'Mandible_Bite',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (97,1572,97,'Death_Scissors',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (98,1572,98,'Wild_Rage',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (99,1572,99,'Earth_Pounder',1,15.0,2000,1500,4,0,0,0);

-- Bonnacon (1573)
INSERT INTO `mob_skill` VALUES(237,1573,846,'Rampant_Gnaw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(238,1573,847,'Big_Horn_Custom',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES(239,1573,848,'Snort',4,12.5,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES(240,1573,849,'Rabid_Dance',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(241,1573,850,'Lowing',1,15.0,2000,2500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1108,1573,848,'Mighty_Snort',4,12.5,2000,1500,4,0,0,0);

-- Namtar (1574)
INSERT INTO `mob_skill` VALUES (222,1574,222,'Hell_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (223,1574,223,'Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (228,1574,228,'Black_Cloud',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (229,1574,229,'Blood_Saber',1,15.0,2000,1500,4,0,0,0);

-- Baobhan_Sith (1575)
INSERT INTO `mob_skill` VALUES (220,1575,220,'Curse',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (218,1575,218,'Fear_Touch',0,7.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (219,1575,219,'Terror_Touch',0,7.0,3000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (217,1575,217,'Ectosmash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (221,1575,221,'Dark_Sphere',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (216,1575,216,'Grave_Reel',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1538,1575,217,'Perdition',0,10.0,2000,1500,4,0,0,0);

-- Taxim (1576)
INSERT INTO `mob_skill` VALUES (222,1576,222,'Hell_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (223,1576,223,'Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (228,1576,228,'Black_Cloud',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (229,1576,229,'Blood_Saber',1,15.0,2000,1500,4,0,0,0);

-- Vouivre (1578)
INSERT INTO `mob_skill` VALUES(566,1578,494,'Chaos_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(563,1578,491,'Blizzard_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(564,1578,492,'Thunder_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1966,1578,491,'Hurricane_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(560,1578,488,'Fang_Rush_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(558,1578,486,'Deadly_Drive_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(562,1578,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);

-- Unut (1579)
INSERT INTO `mob_skill` VALUES (1,1579,1,'Foot_Kick',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2,1579,2,'Dust_Cloud',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3,1579,3,'Whirl_Claws',1,5.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (67,1579,37,'Wild_Carrot',0,20.0,2000,1500,1,0,0,0);

-- Viscount_Morax (1580)
INSERT INTO `mob_skill` VALUES (303,1580,303,'Soul_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (304,1580,304,'Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (307,1580,307,'Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (892,1580,311,'Condemnation',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2116,1580,307,'Hellborn_Yawp',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (893,1580,313,'Quadrastrike_Custom',0,7.0,2000,1500,4,0,0,0);

-- Friar_Rush (1581)
INSERT INTO `mob_skill` VALUES (254,1581,254,'Berserk',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (338,1581,880,'Vulcanian_Impact',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (340,1581,882,'Hellstorm',1,15.0,2000,1500,4,0,0,0);

-- Bluberry_Bulge (1582)
INSERT INTO `mob_skill` VALUES (175,1582,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (176,1582,176,'Fluid_Toss',0,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (177,1582,177,'Digest',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2258,1582,177,'Cytokinesis',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2296,1582,175,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2295,1582,175,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0);

-- Triarius_XXV (1583)
INSERT INTO `mob_skill` VALUES (535,1583,463,'Magnetite_Cloud',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (536,1583,464,'Sandstorm',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (540,1583,468,'Jamming_Wave',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (537,1583,465,'Sand_Veil',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (538,1583,466,'Sand_Shield',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (534,1583,462,'Shoulder_Slam',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (539,1583,467,'Sand_Trap',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (533,1583,461,'Spikeball',0,13.5,2000,1500,4,0,0,0);

-- Hedjedjet (1584)
INSERT INTO `mob_skill` VALUES (1965,1584,97,'Hell_Scissors',0,7.0,2000,3500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (463,1584,94,'Critical_Bite',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (466,1584,98,'Venom_Storm',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (467,1584,99,'Earthbreaker_Custom',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (461,1584,92,'Venom_Breath',4,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (94,1584,94,'Mandible_Bite',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (97,1584,97,'Death_Scissors',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (98,1584,98,'Wild_Rage',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (99,1584,99,'Earth_Pounder',1,15.0,2000,1500,4,0,0,0);

-- Alky (1586)
INSERT INTO `mob_skill` VALUES (406,1586,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (408,1586,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (410,1586,410,'Power_Attack_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2111,1586,411,'Moribund_Hack',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2322,1586,410,'Colossal_Slam',1,15.0,2000,1500,4,0,0,0);

-- Stroper Chyme (1587)
INSERT INTO `mob_skill` VALUES (175,1587,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (176,1587,176,'Fluid_Toss',0,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (177,1587,177,'Digest',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2258,1587,177,'Cytokinesis',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2296,1587,175,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2295,1587,175,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0);

-- Lofty_Ferromantoise (1592)
INSERT INTO `mob_skill` VALUES (548,1592,476,'Tortoise_Song',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (549,1592,477,'Head_Butt_Turtle',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (550,1592,478,'Tortoise_Stomp_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (551,1592,479,'Harden_Shell',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (552,1592,480,'Earth_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2329,1592,478,'Tetsudo_Tremor',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,1592,432,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,1592,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Lofty_Elasmoth 1591
INSERT INTO `mob_skill` VALUES (2135,1591,373,'Amnesic_Blast',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (372,1591,372,'Wild_Horn',4,10.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (373,1591,373,'Thunderbolt',1,40.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (376,1591,376,'Flame_Armor',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2330,1591,378,'Ecliptic_Meteor',1,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1591,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (432,1591,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Lofty_Zilant 1588
INSERT INTO `mob_skill` VALUES (2264,1588,1757,'Sinister_Wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2265,1588,1758,'Chaos_blast',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2267,1588,1760,'Dancing_tail',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2269,1588,1762,'Chilling_roar',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2271,1588,1764,'Soul_douse',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2273,1588,1766,'Dark_star',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1588,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (432,1588,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Lofty_Harpeia 1589
INSERT INTO `mob_skill` VALUES (2469,1589,1912,'Rending_talons',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2470,1589,1913,'Shrieking_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2471,1589,1914,'Wings_of_woe',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2472,1589,1915,'Wings_of_agony',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2474,1589,1917,'Ravenous_wail',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,1589,432,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,1589,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Lofty_Wyrm (1593)
INSERT INTO `mob_skill` VALUES (438,1593,432,'Invincible',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (432,1593,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (1031,1593,963,'Sleet_Blast_alt',0,23.0,2000,0,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1032,1593,963,'Sleet_Blast_alt',0,18.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1033,1593,653,'Gregale_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1034,1593,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1035,1593,962,'Glacial_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1036,1593,656,'Touchdown',1,6.0,2000,0,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1037,1593,964,'Sleet_Blast',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1038,1593,653,'Gregale_Wing_Air',1,30.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1039,1593,659,'Absolute_Terror',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1040,1593,660,'Horrid_Roar_3',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (439,1593,432,'Blood_Weapon',0,18.0,2000,0,1,0,30,0);

-- Lofty_Behemoth 1590
INSERT INTO `mob_skill` VALUES (373,1590,373,'Thunderbolt',1,40.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (374,1590,374,'Kick_Out',4,10.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (375,1590,375,'Shock_Wave',4,7.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (376,1590,376,'Flame_Armor',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (378,1590,378,'Meteor',2,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2135,1590,373,'Amnesic_Blast',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,1590,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Lofty_Adamantoise 1594
INSERT INTO `mob_skill` VALUES (548,1594,476,'Tortoise_Song',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (549,1594,477,'Head_Butt_Turtle',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (550,1594,478,'Tortoise_Stomp_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (552,1594,480,'Earth_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (553,1594,481,'Aqua_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (438,1594,432,'Invincible',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (436,1594,432,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Mired Cerberus
INSERT INTO `mob_skill` VALUES (1529,1603,1223,'Lava_Spit',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1530,1603,1224,'Sulfurous_Breath',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1531,1603,1225,'Scorching_Lash',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1532,1603,1226,'Ululation',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1533,1603,1227,'Magma_Hoplon',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1534,1603,1228,'Gates_of_Hades',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1603,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (432,1603,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Mired Khimaira
INSERT INTO `mob_skill` VALUES (1769,1604,1369,'Dreadstorm',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1770,1604,1381,'Fossilizing_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1772,1604,1386,'Fulmination',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1771,1604,1382,'Plague_Swipe',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1766,1604,1367,'Tenebrous_Mist',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1767,1604,1368,'Thunderstrike',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (438,1604,432,'Invincible',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (436,1604,432,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Mired Hydra
INSERT INTO `mob_skill` VALUES (1572,1605,1308,'Pyric_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1573,1605,1319,'Polar_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1574,1605,1309,'Polar_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1575,1605,1318,'Pyric_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1576,1605,1313,'Barofield',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1578,1605,1310,'Trembling',1,5.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1579,1605,1311,'Serpentine_Tail',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1580,1605,1312,'Nerve_Gas',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,1605,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Mired Orthrus
INSERT INTO `mob_skill` VALUES(1529,1606,1223,'Lava_Spit',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1530,1606,1224,'Sulfurous_Breath',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1531,1606,1225,'Scorching_Lash',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1532,1606,1226,'Ululation',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1533,1606,1227,'Magma_Hoplon',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(1534,1606,1228,'Acheron_Flame',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1606,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);

-- Mired Khrysokhimaira
INSERT INTO `mob_skill` VALUES(1769,1607,1369,'Dreadstorm',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1770,1607,1381,'Fossilizing_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1772,1607,1386,'Fulmination',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1771,1607,1382,'Plague_Swipe',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1766,1607,1367,'Tenebrous_Mist',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1767,1607,1368,'Thunderstrike',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1768,1607,1371,'Tourbillion',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2442,1607,1381,'Lithic_Breath',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1607,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (438,1607,432,'Invincible',0,7.0,2000,0,1,2,0,0);

-- Mired Alfard
INSERT INTO `mob_skill` VALUES (1572,1608,1308,'Pyric_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1573,1608,1319,'Polar_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1574,1608,1309,'Polar_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1575,1608,1318,'Pyric_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1576,1608,1313,'Barofield',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1578,1608,1310,'Trembling',1,5.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1579,1608,1311,'Serpentine_Tail',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1580,1608,1312,'Nerve_Gas',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (437,1608,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (432,1608,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Mired Mantis
INSERT INTO `mob_skill` VALUES (2495,1609,1923,'Slicing_Sickle',4,12.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2496,1609,1926,'Raptorial_Claw',1,15.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2497,1609,1927,'Phlegm_Expulsion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2498,1609,1928,'Macerating_Bile',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2500,1609,1924,'Death_Prophet',1,10.0,8000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,1609,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (434,1609,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);

-- Soaring Corse
INSERT INTO `mob_skill` VALUES (274,1610,900,'Memento_Mori',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (275,1610,901,'Silence_Seal',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (276,1610,902,'Envoutement',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (277,1610,903,'Danse_Macabre',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (435,1610,432,'Manafont',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (439,1610,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);

-- Soaring Dvergar
INSERT INTO `mob_skill` VALUES (1857,1611,1456,'Hellsnap',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1859,1611,1457,'Cackle',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1861,1611,1461,'Necropurge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1863,1611,1459,'Thundris_shriek',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (435,1611,432,'Manafont',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (436,1611,432,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Soaring Vampyr
INSERT INTO `mob_skill` VALUES (1850,1612,1449,'Bloodrake',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1852,1612,1451,'Nosferatus_kiss',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1854,1612,1454,'Wings_of_Gehenna',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1856,1612,1452,'Nocturnal_Servitude',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1612,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);

-- Soaring Kumakatok
INSERT INTO `mob_skill` VALUES (274,1613,900,'Memento_Mori',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (275,1613,901,'Silence_Seal',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (276,1613,902,'Envoutement',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (277,1613,903,'Danse_Macabre',0,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (435,1613,432,'Manafont',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (436,1613,432,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Soaring Dweorg
INSERT INTO `mob_skill` VALUES (1857,1614,1456,'Hellsnap',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1858,1614,1460,'Hellclap',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1859,1614,1457,'Cackle',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1860,1614,1462,'Necrobane',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1861,1614,1461,'Necropurge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1862,1614,1458,'Bilgestorm',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1863,1614,1459,'Thundris_shriek',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (435,1614,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Soaring Strigoi
INSERT INTO `mob_skill` VALUES (1852,1615,1451,'Nosferatus_kiss',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1854,1615,1454,'Wings_of_Gehenna',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2132,1615,1451,'Dirty_Breath',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2278,1615,1450,'Minax_Glare',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1615,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,1615,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Soaring Naraka
INSERT INTO `mob_skill` VALUES (2465,1616,1907,'Raksha_Vengeance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2464,1616,1906,'Raksha_Illusion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2463,1616,1905,'Raksha_Judgment',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2461,1616,1902,'Yaksha_Bliss',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2460,1616,1903,'Yaksha_Oblivion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2459,1616,1901,'Yaksha_Damnation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (435,1616,432,'Manafont',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (474,1616,432,'Meikyo_Shisui',0,7.0,2000,0,1,2,0,0);

-- Veiled_Amphiptere (1617)
INSERT INTO `mob_skill` VALUES (2171,1617,1705,'Tail_lash',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2172,1617,1706,'Bloody_beak',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2173,1617,1707,'Feral_peck',0,9.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2175,1617,1709,'Reaving_wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2176,1617,1710,'Storm_wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2177,1617,1711,'Calamitous_wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (435,1617,432,'Manafont',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (436,1617,432,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Veiled_Ixion (1618)
INSERT INTO `mob_skill` VALUES (2079,1618,1639,'Lightning_spear',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2080,1618,1642,'Acheron_kick',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2082,1618,1641,'Rampant_stance',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2113,1618,1652,'Scintillant_lance',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (437,1618,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (432,1618,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Veiled_Sandworm (1619)
INSERT INTO `mob_skill` VALUES (1931,1619,1537,'Dustvoid',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1932,1619,1538,'Slaverous_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1933,1619,1539,'Aeolian_Void',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1934,1619,1540,'Extreme_Purgation',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2348,1619,1538,'Gorge',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2349,1619,1542,'Disgorge',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1619,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,1619,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Veiled_Sanguiptere (1620)
INSERT INTO `mob_skill` VALUES(2171,1620,1705,'Tail_Lash',0,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2172,1620,1706,'Bloody_Beak',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2173,1620,1707,'Feral_Peck',0,9.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2175,1620,1709,'Reaving_Wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2176,1620,1710,'Storm_Wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2177,1620,1711,'Calamitous_Wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2174,1620,1708,'Warped_Wail',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2386,1620,1711,'Vermillion_Wind',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (434,1620,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (436,1620,432,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Veiled_Alicorn (1621)
INSERT INTO `mob_skill` VALUES (2078,1621,1640,'Wrath_of_zeus',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2079,1621,1639,'Lightning_spear',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2080,1621,1642,'Acheron_kick',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2081,1621,1653,'Damsel_memento',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2082,1621,1641,'Rampant_stance',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2113,1621,1652,'Scintillant_lance',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (437,1621,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (432,1621,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Veiled_Gigaworm (1622)
INSERT INTO `mob_skill` VALUES (1931,1622,1537,'Dustvoid',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1932,1622,1538,'Slaverous_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1933,1622,1539,'Aeolian_Void',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1934,1622,1540,'Extreme_Purgation',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1935,1622,1541,'Desiccation',0,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1936,1622,1542,'Doomvoid',1,30.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2348,1622,1538,'Gorge',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2349,1622,1542,'Disgorge',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,1622,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,1622,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Veiled_Ironclad (1623)
INSERT INTO `mob_skill` VALUES (2361,1623,1815,'Ironclad_Meele_Stomp',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2362,1623,1816,'Ironclad_Meele_Lateral',1,12.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2360,1623,1814,'Ironclad_Meele_Vertical',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2363,1623,1817,'Turbine_cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2364,1623,1818,'Seismic_impact',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2365,1623,1819,'Incinerator',1,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2366,1623,1820,'Arm_canon',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2367,1623,1821,'Ballistic_kick',1,12.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2368,1623,1822,'Scapula_beam',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2370,1623,1824,'Auger_Smash',4,9.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2371,1623,1825,'Area_Bombardment',1,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (434,1623,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (432,1623,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Paramount Gallu -- 1955 radial, 1954 frontal cone, 1953 trip
INSERT INTO `mob_skill` VALUES (2525,1624,1953,'Gallu_Triple',4,10.0,2000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2526,1624,1954,'Gallu_Frontal',1,10.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2527,1624,1955,'Gallu_Radial',1,10.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2528,1624,1956,'Diluvial_wakes',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2529,1624,1957,'Kurugi_collapse',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2530,1624,1958,'Searing_halitus',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2531,1624,1959,'Divesting_gale',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2532,1624,1960,'Bolt_of_perdition',1,15.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2533,1624,1961,'Crippling_rime',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2534,1624,1962,'Oblivions_mantle',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1624,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,1624,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Paramount Botulus (1625)
INSERT INTO `mob_skill` VALUES (2542,1625,1968,'Gnash_N_Guttle',4,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2543,1625,1973,'Sloughy_Sputum',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2544,1625,1972,'Chymous_Reek',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2545,1625,1969,'Rancid_Reflux',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2546,1625,1971,'Crowning_Flatus',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2547,1625,1974,'Slimy_Proposal',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2548,1625,1970,'Just_Desserts',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,1625,432,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,1625,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Paramount_Harpeia (1626)
INSERT INTO `mob_skill` VALUES (2469,1626,1912,'Rending_talons',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2470,1626,1913,'Shrieking_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2471,1626,1914,'Wings_of_woe',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2472,1626,1915,'Wings_of_agony',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2474,1626,1917,'Ravenous_wail',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,1626,432,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (433,1626,432,'Benediction',1,20.0,2000,0,1,2,0,0);

-- Paramount Mantis (1627)
INSERT INTO `mob_skill` VALUES (2495,1627,1923,'Slicing_Sickle',4,12.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2496,1627,1926,'Raptorial_Claw',1,15.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2497,1627,1927,'Phlegm_Expulsion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2498,1627,1928,'Macerating_Bile',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2500,1627,1924,'Death_Prophet',1,10.0,8000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (434,1627,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);

-- Paramount Naraka (1628)
INSERT INTO `mob_skill` VALUES (2465,1628,1907,'Raksha_Vengeance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2464,1628,1906,'Raksha_Illusion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2463,1628,1905,'Raksha_Judgment',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2461,1628,1902,'Yaksha_Bliss',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2460,1628,1903,'Yaksha_Oblivion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2459,1628,1901,'Yaksha_Damnation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (474,1628,432,'Meikyo_Shisui',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (435,1628,432,'Manafont',0,7.0,2000,0,1,2,0,0);

-- Paramount_Ironclad (1629)
INSERT INTO `mob_skill` VALUES (2361,1629,1815,'Ironclad_Meele_Stomp',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2362,1629,1816,'Ironclad_Meele_Lateral',1,12.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2360,1629,1814,'Ironclad_Meele_Vertical',0,12.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2363,1629,1817,'Turbine_cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2364,1629,1818,'Seismic_impact',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2365,1629,1819,'Incinerator',1,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2366,1629,1820,'Arm_canon',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2367,1629,1821,'Ballistic_kick',1,12.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2368,1629,1822,'Scapula_beam',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2370,1629,1824,'Auger_Smash',4,9.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2371,1629,1825,'Area_Bombardment',1,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,1629,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (434,1629,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);

-- Tchakka
-- 2193,2194,2195 special melee
INSERT INTO `mob_skill` VALUES (2620,1632,2194,'Tchakka_Single',0,10.0,3000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2621,1632,2193,'Tchakka_AoE',0,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2752,1632,2195,'Tchakka_Spin',1,10.0,3000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2755,1632,2196,'Protolithic_Puncture',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2756,1632,2197,'Aquatic_Lance',0,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2757,1632,2198,'Pelagic_Cleaver',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2759,1632,2200,'Tidal_Guillotine',0,18.0,2000,6000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2760,1632,2201,'Marine_Mayhem',1,28.0,2000,6000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2758,1632,2199,'Carcharian_verve',1,18.0,2000,1000,1,0,0,0);

-- Ravenous Craklaw (1634)
INSERT INTO `mob_skill` VALUES (2701,1634,2180,'Cracklaw_Impenetrable_carapace',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2702,1634,2181,'Cracklaw_Rending_Deluge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2703,1634,2182,'Cracklaw_Sundering_Snip',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2704,1634,2183,'Cracklaw_Viscid_Spindrift',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2705,1634,2184,'Cracklaw_Riptide_Eupnea',1,18.0,2000,1000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (432,1634,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (439,1634,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);

-- Tefenet of Courel NM
INSERT INTO `mob_skill` VALUES (396,1635,396,'Blaster',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (397,1635,397,'Chaotic_Eye',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (224,1635,288,'Petrifactive_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (226,1635,290,'Pounce',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (227,1635,291,'Charged_Whisker',1,12.5,2000,1500,4,0,0,0);

-- Resheph (1636)
INSERT INTO `mob_skill` VALUES (474,1636,432,'Meikyo_Shisui',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES(106,1636,830,'Resheph_Double_Claw',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES(107,1636,831,'Resheph_Grapple',0,12.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(109,1636,833,'Resheph_Spinning_Top',1,15.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES(2443,1636,833,'Resheph_Tarsal_Slam',1,15.0,2000,1500,4,0,0,1);

-- Konjac (1637)
INSERT INTO `mob_skill` VALUES (432,1637,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (175,1637,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (176,1637,176,'Fluid_Toss',0,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (177,1637,177,'Digest',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2258,1637,177,'Cytokinesis',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2296,1637,175,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2295,1637,175,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0);

-- Martinet (1638)
INSERT INTO `mob_skill` VALUES (432,1638,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (279,1638,279,'Martinet_Blitzstrahl',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (280,1638,280,'Panzerfaust',0,7.0,2000,1500,4,0,0,0);

-- Warabouc (1639)
INSERT INTO `mob_skill` VALUES (432,1639,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (127,1639,820,'Tusk',0,7.0,2000,2000,4,0,0,2);
INSERT INTO `mob_skill` VALUES (129,1639,822,'Bone_Crunch',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (130,1639,823,'Awful_Eye',4,10.0,2000,1500,4,0,0,0);

-- Sargas (1640)
INSERT INTO `mob_skill` VALUES (432,1640,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (466,1640,98,'Venom_Storm',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (461,1640,92,'Venom_Breath',4,20.0,2000,1500,4,0,0,0);

-- Nargun (1641)
INSERT INTO `mob_skill` VALUES (432,1641,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (421,1641,421,'Nargun_Thunder_Break',1,25.0,2000,1500,4,0,0,0);

-- Chary Apkallu (1642)
INSERT INTO `mob_skill` VALUES (434,1642,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (1457,1642,1159,'Yawn',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1458,1642,1160,'Wing_Slap',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1459,1642,1161,'Beak_Lunge',0,7.0,2000,1500,4,0,0,0);

-- Sword Sorcerer Solisoq (1643)
INSERT INTO `mob_skill` VALUES (436,1643,432,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (832,1643,334,'Goblin_Rush',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (825,1643,743,'Frypan',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (826,1643,744,'Smokebomb',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (828,1643,746,'Crispy_Candle',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (830,1643,748,'Paralysis_Shower',4,10.0,2000,1500,4,0,0,0);

-- Chelicerata (1644)
INSERT INTO `mob_skill` VALUES (437,1644,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);

-- Tegime (1645)
INSERT INTO `mob_skill` VALUES (475,1645,18,'Mijin_Gakure',1,20.0,2000,0,4,2,0,0);
INSERT INTO `mob_skill` VALUES (188,1645,188,'Big_Scissors',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (187,1645,187,'Bubble_Curtain',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (186,1645,186,'Tegmine_Bubble_Shower',1,12.0,2000,1500,4,0,0,0);

-- Harvestman (1646)
INSERT INTO `mob_skill` VALUES (439,1646,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (554,1646,482,'Sickle_Slash',0,7.0,2000,1500,4,0,0,0);

-- Citadel pipistrelles (1647)
INSERT INTO `mob_skill` VALUES (437,1647,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (901,1647,339,'Slipstream',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (902,1647,340,'Turbulence',1,16.0,2000,1500,4,0,0,0);

-- Laelaps (1648)
INSERT INTO `mob_skill` VALUES (432,1648,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (212,1648,212,'Dirty_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (213,1648,213,'Shadow_Claw',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (214,1648,214,'Methane_Breath',4,12.0,2000,1500,4,0,0,0);

-- Zmey Gorynych (1649)
INSERT INTO `mob_skill` VALUES (437,1649,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (118,1649,118,'Ripper_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (120,1649,120,'Foul_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (123,1649,123,'Zmey_Chomp_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (124,1649,124,'Scythe_Tail',0,7.0,2000,1500,4,0,0,1);

-- Atkorkamuy (1650)
INSERT INTO `mob_skill` VALUES (434,1650,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (207,1650,207,'Whirlwind',1,15.0,2000,1500,4,0,0,0);

-- Muq Shabeel (1651)
INSERT INTO `mob_skill` VALUES (432,1651,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (224,1651,288,'Petrifactive_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (226,1651,290,'Pounce',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (227,1651,291,'Charged_Whisker',1,12.5,2000,1500,4,0,0,0);

-- Frost Flambeau (1652)
INSERT INTO `mob_skill` VALUES (436,1652,432,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Skvader (1653)
INSERT INTO `mob_skill` VALUES (433,1653,432,'Benediction',1,20.0,2000,0,1,2,0,0);

-- Canal Moocher (1654)
INSERT INTO `mob_skill` VALUES (432,1654,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (160,1654,160,'Sand_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (161,1654,161,'Drainkiss',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (167,1654,167,'Brain_Drain',0,7.0,2000,1500,4,0,0,0);

-- Jenglot (1655)
INSERT INTO `mob_skill` VALUES (433,1655,432,'Benediction',1,20.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (279,1655,279,'Martinet_Blitzstrahl',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (280,1655,280,'Panzerfaust',0,7.0,2000,1500,4,0,0,0);

-- Croque-Mitaine (1656)
INSERT INTO `mob_skill` VALUES (437,1656,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (327,1656,327,'Beatdown',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (328,1656,328,'Uppercut',0,7.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (330,1656,330,'Blank_Gaze',0,7.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (331,1656,331,'Antiphase',1,15.0,2000,1500,4,0,0,0);

-- Aqrabuamelu (1657)
INSERT INTO `mob_skill` VALUES (432,1657,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (466,1657,98,'Venom_Storm',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (461,1657,92,'Venom_Breath',4,20.0,2000,1500,4,0,0,0);

-- Sabotender Corrido (1658)
INSERT INTO `mob_skill` VALUES (434,1658,432,'Hundred_Fists',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (65,1658,65,'Needleshot',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (66,1658,66,'1000_Needles',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (68,1658,68,'Photosynthesis',0,7.0,2000,1500,1,0,0,0);

-- Abatwa (1659)
INSERT INTO `mob_skill` VALUES (432,1659,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (429,1659,429,'Sprout_Spin',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (430,1659,430,'Slumber_Powder',1,10.0,2000,1500,4,0,0,0);

-- Venomfang (1660)
INSERT INTO `mob_skill` VALUES (437,1660,432,'Perfect_Dodge',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (118,1660,118,'Ripper_Fang',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (120,1660,120,'Foul_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (123,1660,123,'Zmey_Chomp_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (124,1660,124,'Scythe_Tail',0,7.0,2000,1500,4,0,0,1);

-- Pandemonium Lamps (1661)

INSERT INTO `mob_skill` VALUES (1789,1661,1373,'PL_Rail_Cannon',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1785,1661,1376,'PL_Restoral',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1666,1661,1266,'PL_Somersault_Kick',0,7.0,2000,1000,4,0,0,4);
INSERT INTO `mob_skill` VALUES (1667,1661,1267,'PL_Firespit',0,30.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1674,1661,1279,'PL_Tidal_Slash',4,10,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1502,1661,1190,'PL_Tail_Slap',4,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1503,1661,1191,'PL_Hypnotic_Sway',0,10,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1487,1661,1232,'PL_Rock_Smash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1489,1661,1234,'PL_Enervation',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1490,1661,1235,'PL_Quake_Stomp',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (389,1661,389,'PL_Body_Slam',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (390,1661,390,'PL_Heavy_Stomp',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (391,1661,391,'PL_Chaos_Blade',4,9.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (392,1661,392,'PL_Petro_Eyes',4,9.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1467,1661,1198,'PL_Ill_Wind',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1464,1661,1195,'PL_Wind_Shear',1,10.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (1462,1661,1194,'PL_Crosswind',4,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (338,1661,880,'PL_Vulcanian_Impact',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (340,1661,882,'PL_Hellstorm',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1857,1661,1456,'PL_Hellsnap',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1858,1661,1460,'PL_Hellclap',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1860,1661,1462,'PL_Necrobane',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1861,1661,1461,'PL_Necropurge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1863,1661,1459,'PL_Thundris_shriek',1,15.0,2000,1000,4,0,0,0);

-- Pandemonium Warden (1662)
INSERT INTO `mob_skill` VALUES (1801,1662,1401,'PW_Mortal_revolution',1,15.0,2000,1000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (1802,1662,1400,'PW_Homing_missile',2,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1803,1662,1402,'PW_Discoid',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1804,1662,1403,'PW_Brainjack',0,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1541,1662,1147,'PW_Rushing_Slash',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1542,1662,1147,'PW_Decussate',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1543,1662,1156,'PW_Tyranic_Blare',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1482,1662,1156,'PW_Groundburst',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1557,1662,1334,'PW_Calcifying_Deluge',2,15,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1558,1662,1339,'PW_Gorgon_Dance',1,15,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1556,1662,1337,'PW_Pinning_Shot',2,15,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1553,1662,1335,'PW_Shadow_Thrust',0,10,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1546,1662,1351,'PW_Sledgehammer',4,12,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1547,1662,1352,'PW_Head_Snatch',0,7,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1548,1662,1353,'PW_Haymaker',4,12,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1551,1662,1356,'PW_Pleiades_Ray',1,10,2000,0,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1529,1662,1223,'PW_Lava_Spit',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1531,1662,1225,'PW_Scorching_Lash',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1534,1662,1228,'PW_Gates_of_Hades',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1572,1662,1308,'PW_Pyric_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1573,1662,1319,'PW_Polar_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1574,1662,1309,'PW_Polar_Blast',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1575,1662,1318,'PW_Pyric_Bulwark',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1579,1662,1311,'PW_Serpentine_Tail',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1580,1662,1312,'PW_Nerve_Gas',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1769,1662,1369,'PW_Dreadstorm',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1770,1662,1381,'PW_Fossilizing_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1772,1662,1386,'PW_Fulmination',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1766,1662,1367,'PW_Tenebrous_Mist',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1767,1662,1368,'PW_Thunderstrike',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1768,1662,1371,'PW_Tourbillion',1,13.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1857,1662,1456,'PW_Hellsnap',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1858,1662,1460,'PW_Hellclap',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1860,1662,1462,'PW_Necrobane',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1861,1662,1461,'PW_Necropurge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1862,1662,1458,'PW_Bilgestorm',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1863,1662,1459,'PW_Thundris_shriek',1,15.0,2000,1000,4,0,0,0);

-- Sallow_Seymour (1663)
INSERT INTO `mob_skill` VALUES (170,1663,170,'SS_Sandspin',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (171,1663,171,'SS_Tremors',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2389,1663,171,'Mud_Stream',1,12.0,2000,1500,4,0,0,0); -- need correct animation

-- Ushumgal (1664)
INSERT INTO `mob_skill` VALUES (1896,1664,1543,'VW_Aqua_Fortis',1,15,2000,2000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1897,1664,1544,'VW_Regurgitation',0,7.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1898,1664,1545,'VW_Delta_Thrust',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1899,1664,1546,'VW_Torpefying_Charge',1,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1900,1664,1547,'VW_Grim_Glower',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1901,1664,1547,'VW_Calcifiying_Mist',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2136,1664,1547,'VW_Oppressive_Gaze',1,15.0,2000,1500,4,0,0,0);

-- Sarimanok (1665)
INSERT INTO `mob_skill` VALUES (1467,1665,1198,'VW_Ill_Wind',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1466,1665,1197,'Zephyr_Mantle',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1465,1665,1196,'VW_Obfuscate',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1464,1665,1195,'VW_Wind_Shear',1,10.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (1462,1665,1194,'VW_Crosswind',4,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1468,1665,1199,'VW_White_Wind',1,10.0,2000,1500,4,0,0,3);

-- Cottus (1666)
INSERT INTO `mob_skill` VALUES (2111,1666,411,'VW_Moribund_Hack',1,15.0,3000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2322,1666,410,'VW_Colossal_Slam',1,15.0,4000,1500,4,0,0,7); -- need correct animation
INSERT INTO `mob_skill` VALUES (2320,1666,411,'VW_Mercurial_Strike',1,15.0,2000,1500,4,0,0,0); -- need correct animation
INSERT INTO `mob_skill` VALUES (474,1666,432,'Meikyo_Shisui', 0, 7.0, 2000, 0, 1, 2, 0, 0);
INSERT INTO `mob_skill` VALUES (1380,1666,402,'VW_Trebuchet',1,15.0,2000,1500,4,0,0,3); -- need correct animation

-- Virvatuli (1667)
INSERT INTO `mob_skill` VALUES (2255,1667,1463,'NM_Corpse_Breath',1,10.0,2000,1500,4,0,0,0);

-- Pancimanci (1668)
INSERT INTO `mob_skill` VALUES(2131,1668,50,'VW_Fatal_Scream',1,20.0,2000,1500,4,0,0,0); -- need correct animation
INSERT INTO `mob_skill` VALUES(50,1668,50,'Scream_VW',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1954,1668,45,'Petal_Pirouette',1,15.0,2000,1500,4,0,0,0); -- need correct animation
INSERT INTO `mob_skill` VALUES(45,1668,45,'VW_Dream_Flower',1,20.0,2000,1500,4,0,0,0);

-- Lorbulcrub (1669)
INSERT INTO `mob_skill` VALUES(2294,1669,177,'VW_Dissolve',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (175,1669,175,'VW_Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (177,1669,176,'VW_Digest',4,10.0,2000,1500,4,0,0,0);

-- Krabimanjaro (1670)
INSERT INTO `mob_skill` VALUES (187,1670,187,'Bubble_Curtain',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (186,1670,186,'VW_Bubble_Shower',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (189,1670,189,'Scissor_Guard',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2257,1670,188,'VW_Mega_Scissors',1,10.0,2000,1500,4,0,0,2); -- need correct animation
INSERT INTO `mob_skill` VALUES (2256,1670,186,'VW_Venom_Shower',1,20.0,2000,1500,4,0,0,0); -- need correct animation

-- Ogbunabali (1671)
INSERT INTO `mob_skill` VALUES (19,1671,809,'VW_Sand_Blast',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (21,1671,811,'VW_Venom_Spray',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (23,1671,813,'VW_Mandibular_Bite',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2261,1671,809,'VW_Quake_Blast',1,20.0,2000,1500,4,0,0,0); -- need correct animation
INSERT INTO `mob_skill` VALUES (2260,1671,813,'VW_Gravitic_Horn',1,20.0,3000,1500,4,0,0,3); -- need correct animation

-- Murk-Veined_Baneberry (1672)
INSERT INTO `mob_skill` VALUES (527,1672,455,'Words_of_Bane',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (529,1672,457,'Light_of_Penance',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (530,1672,458,'VW_Lateral_Slash',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (531,1672,459,'VW_Vertical_Slash',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (532,1672,460,'Throat_Stab',0,3.4,3000,3500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (665,1672,504,'VW_Everyones_Rancor',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2137,1672,455,'Ritual_Bind',1,15.0,2000,1500,4,0,0,0); -- need correct animation

-- Melancholic_Moira (1673)
INSERT INTO `mob_skill` VALUES (63,1673,63,'EE_Bad_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (470,1673,1213,'EE_Drain_Whip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2318,1673,60,'EE_Thousand Spears',4,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1076,1673,63,'EE_Extremely_Bad_Breath',4,15.0,6000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2319,1673,63,'Tainting_Breath',4,10.0,2000,1500,4,0,0,0);

-- Belphoebe (1674)
INSERT INTO `mob_skill` VALUES (1939,1674,1583,'VW_Spring_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1940,1674,1584,'VW_Summer_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1941,1674,1585,'VW_Autumn_Breeze',1,15.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1942,1674,1586,'VW_Winter_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1943,1674,1587,'VW_Cyclonic_Turmoil',1,15.0,2000,1500,4,0,0,5);
INSERT INTO `mob_skill` VALUES (2262,1674,1582,'VW_Norn_Arrows',1,20.0,2000,1500,4,0,0,3);

-- Kholomodumo (1675)
INSERT INTO `mob_skill` VALUES (2135,1675,373,'VW_Amnesic_Blast',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (372,1675,372,'VW_Wild_Horn',4,10.0,2000,1500,4,8,0,3);
INSERT INTO `mob_skill` VALUES (373,1675,373,'VW_Thunderbolt',1,40.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (2134,1675,376,'Accursed_Armor',0,30.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (377,1675,377,'Howl',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2330,1675,378,'VW_Ecliptic_Meteor',1,30.0,2000,1500,4,0,0,0);

-- Lord_Asag (1676)
INSERT INTO `mob_skill` VALUES (1850,1676,1449,'VW_Bloodrake',0,7.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1852,1676,1451,'VW_Nosferatus_kiss',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1854,1676,1454,'VW_Wings_of_Gehenna',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1856,1676,1452,'Nocturnal_Servitude',4,10.0,2000,1000,4,0,0,0);

-- Akupara (1677)
INSERT INTO `mob_skill` VALUES (548,1677,476,'VW_Tortoise_Song',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (550,1677,478,'VW_Tortoise_Stomp',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (552,1677,480,'VW_Earth_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2329,1677,478,'VW_Tetsudo_Tremor',0,7.0,2000,1500,4,0,0,3);

-- Celaeno (1678)
INSERT INTO `mob_skill` VALUES (1849,1678,1861,'Celaeno_Melee',0,9.5,2000,0,4,16,0,2);
INSERT INTO `mob_skill` VALUES (1850,1678,1915,'Celaeno_Melee_AoE',1,9.5,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2469,1678,1912,'Rending_talons',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2470,1678,1913,'Shrieking_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2471,1678,1914,'Wings_of_woe',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2472,1678,1915,'Wings_of_agony',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2473,1678,1916,'Typhoean_rage',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2474,1678,1917,'Ravenous_wail',1,15.0,2000,1000,4,0,0,0);

-- Hahava (1679)
INSERT INTO `mob_skill` VALUES (2465,1679,1907,'Raksha_vengeance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2464,1679,1906,'Raksha_illusion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2463,1679,1905,'Raksha_Judgment',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2462,1679,1904,'Raksha_stance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2461,1679,1902,'Yaksha_bliss',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2460,1679,1903,'Yaksha_oblivion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2459,1679,1901,'Yaksha_damnation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2458,1679,1900,'Yaksha_stance',1,18.0,2000,1000,4,0,0,0);

-- Voidwrought (1680)
INSERT INTO `mob_skill` VALUES (2361,1680,1815,'VW_Ironclad_Stomp',0,12.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2362,1680,1816,'VW_Ironclad_Lateral',1,12.0,2000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2360,1680,1814,'VW_Ironclad_Vertical',0,12.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2363,1680,1817,'Turbine_cyclone',1,18.0,2000,1000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (2364,1680,1818,'Seismic_impact',1,18.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2365,1680,1819,'Incinerator',1,12.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2366,1680,1820,'Arm_canon',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2367,1680,1821,'Ballistic_kick',1,12.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2368,1680,1822,'Scapula_beam',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2369,1680,1823,'Eradicator',1,18.0,2000,1000,4,0,0,0);

-- Goji (1681)
INSERT INTO `mob_skill` VALUES (2165,1681,1682,'VW_Dark_orb',1,20.0,2000,1000,4,0,0,0); -- Flying only.
INSERT INTO `mob_skill` VALUES (2166,1681,1678,'VW_Dark_mist',1,20.0,2000,1000,4,0,0,0); -- Flying Only.
INSERT INTO `mob_skill` VALUES (2167,1681,1680,'VW_Triumphant_roar',0,7.0,2000,1000,1,0,0,0); -- Standing Only.
INSERT INTO `mob_skill` VALUES (2168,1681,1681,'VW_Terror_eye',4,20.0,2000,1000,4,0,0,0); -- Standing Only.
INSERT INTO `mob_skill` VALUES (2169,1681,1679,'VW_Bloody_claw',0,15.0,2000,1000,4,0,0,3);

-- Gugalanna (1682)
INSERT INTO `mob_skill` VALUES(2384,1682,852,'VW_Ruinous_Scythe',1,20.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES(2277,1682,855,'VW_Lithic_Ray',1,20.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1104,1682,855,'VW_Apocalyptic_Ray',4,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2133,1682,851,'VW_Lethal_Triclip',1,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (244,1682,853,'VW_Mow',1,15.0,2000,1500,4,0,0,0);

-- Yatagarasu (1683)
INSERT INTO `mob_skill` VALUES(666,1683,143,'VW_Blind_Vortex',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(667,1683,144,'VW_Giga_Scream',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(668,1683,145,'VW_Dread_Dive',1,15.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES(145,1683,145,'VW_Gliding_Spike',1,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES(2447,1683,147,'VW_Dread_Wind',1,20.0,2000,1500,4,0,0,0);

-- Agathos (1684)
INSERT INTO `mob_skill` VALUES(2175,1684,1709,'VW_Reaving_Wind',1,20.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES(2177,1684,1711,'VW_Calamitous_Wind',1,20.0,2000,1000,4,0,0,7);
INSERT INTO `mob_skill` VALUES(2174,1684,1708,'VW_Warped_Wail',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2386,1684,1711,'VW_Vermillion_Wind',1,20.0,2000,1000,4,0,0,2);

-- Cherufe (1685)
INSERT INTO `mob_skill` VALUES (1843,1685,1437,'VW_Batterhorn',4,20.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1844,1685,1436,'VW_Clobber',4,20.0,2000,1000,4,0,0,2);
INSERT INTO `mob_skill` VALUES (1845,1685,1434,'VW_Demoralizing_Roar',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1847,1685,1439,'VW_Granite_Skin',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1848,1685,1436,'VW_Crippling_Slam',1,20.0,2000,1000,4,0,0,7);

-- Taweret (1686)
INSERT INTO `mob_skill` VALUES(127,1686,820,'VW_Tusk',0,15.0,2000,2000,4,0,0,2);
INSERT INTO `mob_skill` VALUES(130,1686,823,'VW_Awful_Eye',4,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(131,1686,824,'VW_Heavy_Bellow',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2387,1686,820,'VW_Tyrant_Tusk',4,15.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (129,1686,822,'VW_Bone_Crunch',0,15.0,2000,2000,4,0,0,0);

-- Roly_Poly (1687)
INSERT INTO `mob_skill` VALUES (1565,1687,1283,'VW_Amplification',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1566,1687,1283,'VW_Boiling_Point',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1570,1687,1285,'VW_Synergism',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1569,1687,1287,'VW_Amorphic_scythe',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1568,1687,1286,'VW_Amorphic_spikes',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2515,1687,1284,'Gush_o_Goo',1,20.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2521,1687,432,'Benediction',1,20.0,2000,0,1,2,0,0);

-- Laidly_Laurence (1688)
INSERT INTO `mob_skill` VALUES (1934,1688,1540,'VW_Extreme_Purgation',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2348,1688,1538,'VW_Gorge',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2349,1688,1542,'VW_Disgorge',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (432,1688,432,'Mighty_Strikes',0,7.0,2000,0,1,2,0,0);

-- Mellonia (1689)
INSERT INTO `mob_skill` VALUES (1902,1689,1567,'VW_Insipid_Nip',0,15.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (1903,1689,1568,'VW_Pandemic_Nip',0,15.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (1904,1689,1569,'Bombilation',1,25.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1905,1689,1570,'VW_Cimicine_Discharge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1906,1689,1571,'VW_Emetic_Discharge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2514,1689,1569,'Booming_Bombilation',1,20.0,2000,1500,4,0,0,4);
INSERT INTO `mob_skill` VALUES (436,1689,436,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Kalos_Eunomia (1690)
INSERT INTO `mob_skill` VALUES (1695,1690,1345,'VW_Magma_Fan',4,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1696,1690,1346,'VW_Erratic_Flutter',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1697,1690,1347,'VW_Proboscis',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1698,1690,1348,'VW_Erosion_Dust',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1699,1690,1349,'VW_Exuviation',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1700,1690,1350,'VW_Fire_Break',0,20.0,2000,1000,4,0,0,7);

-- Nympha_Eunomia (1691)
INSERT INTO `mob_skill` VALUES (1559,1691,1290,'VW_Amber_scutum',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1560,1691,1291,'VW_Vitriolic_spray',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1561,1691,1292,'VW_Thermal_Pulse',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1562,1691,1293,'VW_Cannonball',0,7.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1563,1691,1294,'VW_Heat_barrier',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1564,1691,1295,'VW_Vitriolic_shower',4,10.0,2000,1000,4,0,0,0);

-- Gasha (1692)
INSERT INTO `mob_skill` VALUES (222,1692,1910,'VW_Hell_Slash',0,15.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (223,1692,223,'VW_Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (229,1692,1911,'VW_Blood_Saber',1,25.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2511,1692,1905,'Crepuscle_Blade',1,20.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (474,1692,432,'Meikyo_Shisui',0,7.0,2000,0,1,2,0,0);

-- Giltine (1693)
INSERT INTO `mob_skill` VALUES (275,1693,901,'VW_Silence_Seal',1,25.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (276,1693,902,'VW_Envoutement',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (274,1693,1987,'VW_Final_Retribution',1,20.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2382,1693,1992,'VW_Hadal_Summons',1,25.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1073,1693,903,'Gala_Macabre',1,10.0,2000,2000,4,0,0,0);

-- Kaggen (1694)
INSERT INTO `mob_skill` VALUES (2360,1694,1922,'Mantis_Melee',0,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2361,1694,1923,'Mantis_Melee2',1,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2362,1694,1924,'Mantis_Melee_Jump',1,15.0,2000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2495,1694,1923,'VW_Slicing_Sickle',4,20.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2496,1694,1926,'VW_Raptorial_Claw',1,15.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2497,1694,1927,'VW_Phlegm_Expulsion',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2498,1694,1928,'VW_Macerating_Bile',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2500,1694,1924,'Death_Prophet',1,10.0,8000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2499,1694,1929,'Preying_Posture',0,7.0,2000,1000,1,0,0,0);

-- Akvan (1695)
INSERT INTO `mob_skill` VALUES (292,1695,292,'VW_Blindeye',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (293,1695,293,'VW_Eyes_On_Me',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (301,1695,301,'VW_Level_5_Petrify',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2512,1695,292,'Deathly_Glare',0,20.0,6000,3000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (299,1695,299,'Magic_Barrier',0,7.0,2000,1500,1,0,0,0);

-- Pil (1696)
INSERT INTO `mob_skill` VALUES (2316,1696,1792,'VW_Malign_invocation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2436,1696,1812,'VW_Royal_decree',1,18.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2519,1696,1791,'Tabbiyaa_Gambit',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2520,1696,1811,'Shah_Mat',1,30.0,4000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2518,1696,1812,'Flank_Opening',1,25.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2444,1696,1982,'Enthrall',1,10.0,2000,1000,4,0,0,0);

-- Lancing_Lamorak (1697)
INSERT INTO `mob_skill` VALUES (82,1697,82,'VW_Power_Attack_Beetle',4,30.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (83,1697,83,'VW_Hi-Freq_Field',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (84,1697,84,'VW_Rhino_Attack',0,7.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (85,1697,85,'VW_Rhino_Guard',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2567,1697,84,'Rhinowrecker',1,20.0,2000,1500,4,0,0,7);

-- Bhishani (1698)
INSERT INTO `mob_skill` VALUES (1939,1698,1583,'VW_Spring_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1940,1698,1584,'VW_Summer_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1941,1698,1585,'VW_Autumn_Breeze',1,15.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1942,1698,1586,'VW_Winter_Breeze',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1943,1698,1587,'VW_Cyclonic_Turmoil',1,25.0,2000,1500,4,0,0,5);
INSERT INTO `mob_skill` VALUES (2262,1698,1582,'VW_Norn_Arrows',1,20.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2566,1698,1587,'Eldritch_Wind',1,30.0,2000,1500,4,0,0,3);

-- RwNwPrtMHrw (1699)
INSERT INTO `mob_skill` VALUES (2570,1699,1657,'Exponential_Burst',1,20.0,8000,1000,4,0,0,7);
INSERT INTO `mob_skill` VALUES (436,1699,436,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Stachysaurus (1700)
INSERT INTO `mob_skill` VALUES (1843,1700,1437,'VW_Batterhorn',4,16.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1844,1700,1436,'VW_Clobber',4,26.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1845,1700,1434,'VW_Demoralizing_Roar',1,16.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1846,1700,1435,'Boiling_Blood',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1847,1700,1439,'VW_Granite_Skin',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1848,1700,1436,'Crippling_Slam',4,30.0,2000,1000,4,0,0,7);

-- GwynnApnudd (1701)
INSERT INTO `mob_skill` VALUES (2255,1701,1463,'VW_Corpse_Breath',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2569,1701,1463,'Louring_Skies',1,30.0,2000,1500,4,0,0,0);

-- Smierc (1702)
INSERT INTO `mob_skill` VALUES (222,1702,1910,'VW_Hell_Slash',0,15.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (223,1702,223,'VW_Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (229,1702,1911,'VW_Blood_Saber',0,25.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2568,1702,1465,'Cloudscourge',1,30.0,2000,1500,4,0,0,7);

-- Gaunab (1703)
INSERT INTO `mob_skill` VALUES (2360,1703,1922,'Mantis_Melee',1,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2361,1703,1923,'Mantis_Melee2',0,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2362,1703,1924,'Mantis_Melee_Jump',1,15.0,2000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2495,1703,1923,'VW_Slicing_Sickle',4,18.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2496,1703,1926,'VW_Raptorial_Claw',1,15.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2497,1703,1927,'VW_Phlegm_Expulsion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2498,1703,1928,'VW_Macerating_Bile',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2500,1703,1924,'Death_Prophet',1,15.0,8000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2499,1703,1929,'Preying_Posture',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2553,1703,1926,'Immolating_Claw',1,25.0,2000,1000,4,0,0,3);

-- Ocythoe (1704)
INSERT INTO `mob_skill` VALUES (2469,1704,1912,'VW_Rending_talons',0,15.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2470,1704,1913,'VW_Shrieking_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2471,1704,1914,'VW_Wings_of_woe',1,20.0,2000,1000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (2472,1704,1915,'VW_Wings_of_agony',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2474,1704,1917,'VW_Ravenous_wail',1,30.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,1704,432,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (433,1704,432,'Benediction',1,20.0,2000,0,1,2,0,0);

-- Kalasutrax (1705)
INSERT INTO `mob_skill` VALUES (2465,1705,1907,'VW_Raksha_Vengeance',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2464,1705,1906,'VW_Raksha_Illusion',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2463,1705,1905,'VW_Raksha_Judgment',1,20.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2462,1705,1904,'VW_Raksha_Stance',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2554,1705,1901,'Yamas_Jugement',1,25.0,2000,1000,4,0,0,5);

-- Ig-Alima (1706)
INSERT INTO `mob_skill` VALUES (2525,1706,1953,'VW_Gallu_Triple',4,10.0,2000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2526,1706,1954,'VW_Gallu_Frontal',1,10.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2527,1706,1955,'VW_Gallu_Radial',1,10.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2528,1706,1956,'VW_Diluvial_wakes',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2529,1706,1957,'VW_Kurugi_collapse',1,25.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2530,1706,1958,'VW_Searing_halitus',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2531,1706,1959,'VW_Divesting_gale',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2532,1706,1960,'VW_Bolt_of_perdition',1,20.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2533,1706,1961,'VW_Crippling_rime',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2534,1706,1962,'VW_Oblivions_mantle',1,25.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (439,1706,432,'Blood_Weapon',0,7.0,2000,0,1,2,0,0);

-- Botulus_Rex (1707)
INSERT INTO `mob_skill` VALUES (2525,1707,1964,'Botulus_Melee_Front',0,10.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2526,1707,1965,'Botulus_Melee_Left',1,10.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2527,1707,1966,'Botulus_Melee_Right',1,10.0,2000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2528,1707,1967,'Botulus_Melee_Back',1,10.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2542,1707,1968,'VW_Gnash_N_Guttle',4,20.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2543,1707,1973,'VW_Sloughy_Sputum',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2544,1707,1972,'VW_Chymous_Reek',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2545,1707,1969,'VW_Rancid_Reflux',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2546,1707,1971,'VW_Crowning_Flatus',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2547,1707,1974,'VW_Slimy_Proposal',1,20.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2548,1707,1970,'VW_Just_Desserts',1,20.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,1707,432,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Holy_Moly (1708)
INSERT INTO `mob_skill` VALUES (1910,1708,1552,'VW_Floral_Bouquet',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1908,1708,1550,'VW_Viscid_Emission',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1912,1708,1554,'VW_Bloody_Caress',0,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1913,1708,1555,'Soothing_Aroma',1,10.0,2000,1500,4,0,0,0);

-- Moly (1709)
INSERT INTO `mob_skill` VALUES (1910,1709,1552,'VW_Floral_Bouquet',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1907,1709,1549,'VW_Seedspray',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1909,1709,1551,'VW_Rotten_Stench',1,15.0,2000,1500,4,0,0,0);

-- Neith (1710)
INSERT INTO `mob_skill` VALUES(108,1710,832,'VW_Filamented_Hold',4,12.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(109,1710,833,'Resheph_Spinning_Top',1,15.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES(2443,1710,833,'Resheph_Tarsal_Slam',1,15.0,2000,1500,4,0,0,1);

-- Neiths_Bobbin (1711)
INSERT INTO `mob_skill` VALUES (554,1711,482,'VW_Sickle_Slash',0,7.0,2000,1500,4,0,0,0);

-- Ildebrann (1712)
INSERT INTO `mob_skill` VALUES (1021,1712,651,'VW_Inferno_Blast_alt2',1,23.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1022,1712,652,'VW_Inferno_Blast_alt',0,18.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1023,1712,653,'VW_Tebbad_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1024,1712,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,3);
INSERT INTO `mob_skill` VALUES (1025,1712,655,'Fiery_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1026,1712,656,'Touchdown',1,30.0,2000,0,4,8,0,1);
INSERT INTO `mob_skill` VALUES (1027,1712,657,'VW_Inferno_Blast',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1028,1712,658,'VW_Tebbad_Wing_Air',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1029,1712,659,'Absolute_Terror',0,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1030,1712,660,'Horrid_Roar_3',1,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (432,1712,432,'Mighty_Strikes',0,18.0,2000,0,1,0,30,0);

-- Hraun_Dragon (1713)
INSERT INTO `mob_skill` VALUES(388,1713,388,'VW_Wind_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(389,1713,389,'Body_Slam',1,10.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES(390,1713,390,'VW_Heavy_Stomp',1,10.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES(391,1713,389,'Chaos_Blade_Custom',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(392,1713,390,'Petro_Eyes',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(386,1713,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(387,1713,387,'VW_Poison_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(394,1713,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES(395,1713,395,'Lodesong',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1536,1713,395,'Nullsong',1,15.0,2000,1500,4,0,0,0);

-- Sabotender_Campeador (1714)
INSERT INTO `mob_skill` VALUES (66,1714,66,'1000_Needles',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1369,1714,66,'2000_Needles',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1370,1714,66,'4000_Needles',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (864,1714,66,'10000_Needles',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (3611,1714,66,'QM3_Needles',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2505,1714,68,'Chupa_Blossom',1,10.0,2000,1500,4,0,0,0);

-- Sabotender_Mercenario (1715)
INSERT INTO `mob_skill` VALUES (66,1715,66,'1000_Needles',1,15.0,2000,1500,4,0,0,0);

-- Malleator_Maurrok (1716)
INSERT INTO `mob_skill` VALUES (1965,1716,97,'Hell_Scissors',0,7.0,2000,3500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (465,1716,97,'Stasis',0,9.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (466,1716,98,'Venom_Storm',1,40.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (467,1716,99,'Earthbreaker',1,20.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (98,1716,98,'VW_Wild_Rage',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (99,1716,99,'VW_Earth_Pounder',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2503,1716,99,'Telsonic_Tempest',1,40.0,2000,1500,4,0,0,0);

-- Peon_Pounder (1717)
INSERT INTO `mob_skill` VALUES (98,1717,98,'VW_Wild_Rage',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (99,1717,99,'VW_Earth_Pounder',1,15.0,2000,1500,4,0,0,0);

-- Tangaroa (1718)
INSERT INTO `mob_skill` VALUES (1315,1718,861,'VW_Gas_Shell',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1316,1718,862,'VW_Venom_Shell',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1317,1718,863,'Palsynyxis',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1318,1718,864,'VW_Painful_Whip',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1319,1718,865,'Suctorial_Tentacle',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2437,1718,861,'Virulent_Haze',1,7.0,2000,1500,4,0,0,0);

-- Koura (1719)
INSERT INTO `mob_skill` VALUES (187,1719,187,'Bubble_Curtain',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (186,1719,186,'VW_Bubble_Shower',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (189,1719,189,'Scissor_Guard',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2257,1719,188,'VW_Mega_Scissors',1,10.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (2256,1719,186,'VW_Venom_Shower',1,20.0,2000,1500,4,0,0,0);

-- Pekapeka (1720)
INSERT INTO `mob_skill` VALUES (202,1720,202,'Ink_Jet',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (204,1720,204,'VW_Cross_Attack',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (206,1720,206,'VW_Maelstrom',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (207,1720,207,'VW_Whirlwind',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (200,1720,200,'VW_Tentacle',0,7.0,2000,1500,4,0,0,0);

-- Moki (1721)
INSERT INTO `mob_skill` VALUES (195,1721,195,'VW_Splash_Breath',4,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (197,1721,197,'VW_Water_Wall',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (194,1721,194,'VW_Aqua_Ball',2,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (385,1721,973,'VW_Recoil_Dive',4,10.0,2000,1500,4,0,0,0);


-- Cath_Palug (1722)
INSERT INTO `mob_skill` VALUES (396,1722,396,'VW_Blaster',0,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (397,1722,397,'Chaotic_Eye',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (224,1722,288,'Petrifactive_Breath',4,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (226,1722,290,'VW_Pounce',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (227,1722,291,'VW_Charged_Whisker',1,15.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2504,1722,397,'Preternatural_Glare',4,15.0,2000,1500,4,0,0,0);

-- Grwnan (1723)
INSERT INTO `mob_skill` VALUES (227,1723,291,'VW_Charged_Whisker',1,12.5,2000,1500,4,0,0,0);

-- Modron (1724)
INSERT INTO `mob_skill` VALUES (72,1724,72,'VW_Drill_Branch',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (73,1724,73,'VW_Pinecone_Bomb',1,23.5,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (75,1724,75,'VW_Leafstorm',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (76,1724,76,'Entangle',0,7.0,2000,1500,4,0,0,0);

-- Modrons_Druid (1725)
INSERT INTO `mob_skill` VALUES (527,1725,455,'Words_of_Bane',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (529,1725,457,'Light_of_Penance',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (530,1725,458,'VW_Lateral_Slash',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (531,1725,459,'VW_Vertical_Slash',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (532,1725,460,'Throat_Stab',0,3.4,3000,3500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (665,1725,504,'VW_Everyones_Rancor',1,7.0,2000,1500,4,0,0,0);

-- Mimic_Mage (1726)
INSERT INTO `mob_skill` VALUES (332,1726,107,'VW_Death_Trap',1,30.0,2000,2000,4,0,0,0);

-- Mimic_Jester (1727)
INSERT INTO `mob_skill` VALUES (332,1727,107,'VW_Death_Trap',1,30.0,2000,2000,4,0,0,0);

-- Mimic_King (1728)
INSERT INTO `mob_skill` VALUES (332,1728,107,'VW_Death_Trap',1,30.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2324,1728,1657,'Pandoras_Curse',1,15.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2325,1728,1657,'Pandoras_Gift',1,12.0,2000,2000,4,0,0,3);

-- Aello (1729)
INSERT INTO `mob_skill` VALUES (2469,1729,1912,'Rending_talons',0,7.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2470,1729,1913,'Shrieking_gale',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2472,1729,1915,'Wings_of_agony',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2473,1729,1916,'Typhoean_rage',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2502,1729,1915,'Kaleidoscopic_Fury',1,20.0,2000,1000,4,0,0,0);

-- Aello_Handmaiden (1730)
INSERT INTO `mob_skill` VALUES (1937,1730,1581,'Zephyr_Arrow',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1938,1730,1582,'Lethe_Arrows',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1944,1730,1588,'Cyclonic_Torrent',1,15.0,2000,1500,4,0,0,0);

-- Xuan_Wu (1731)
INSERT INTO `mob_skill` VALUES (549,1731,477,'Head_Butt_Turtle',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (550,1731,478,'Tortoise_Stomp_Custom',0,15.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (551,1731,479,'Harden_Shell',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (552,1731,480,'VW_Earth_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (553,1731,481,'VW_Aqua_Breath',4,15.0,2000,1500,4,0,0,0);

-- Zhu_Que (1732)
INSERT INTO `mob_skill` VALUES (143,1732,143,'Scratch',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (144,1732,144,'Triple_Attack',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (145,1732,145,'Gliding_Spike',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (146,1732,146,'Feather_Barrier',0,12.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (147,1732,147,'VW_Stormwind',1,15.0,2000,1500,4,0,0,0);

-- Qing_Long (1733)
INSERT INTO `mob_skill` VALUES (558,1733,486,'Deadly_Drive_Custom',0,10.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (559,1733,487,'Wind_Wall',0,12.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (560,1733,488,'Fang_Rush',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (561,1733,489,'VW_Dread_Shriek',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (562,1733,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (565,1733,493,'Radiant_Breath',4,15.0,2000,1500,4,0,0,0);

-- Bai_Hu (1734)
INSERT INTO `mob_skill` VALUES (14,1734,14,'VW_Roar',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (15,1734,15,'VW_Razor_Fang',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (17,1734,17,'VW_Claw_Cyclone',4,15.0,2000,1500,4,0,0,0);

-- Qilin (1735)
INSERT INTO `mob_skill` VALUES (541,1735,469,'Deadly_Hold',0,7.0,2000,1800,4,0,0,7);
INSERT INTO `mob_skill` VALUES (542,1735,470,'Tail_Swing',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (543,1735,471,'Tail_Smash',0,7.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (544,1735,472,'Heat_Breath',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (546,1735,474,'VW_Great_Sandstorm',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (547,1735,475,'VW_Great_Whirlwind',4,12.0,2000,1500,4,0,0,0);

-- Trna (1736)
INSERT INTO `mob_skill` VALUES (222,1736,1910,'VW_Hell_Slash',0,15.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (223,1736,223,'VW_Horror_Cloud',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (229,1736,1911,'VW_Blood_Saber',0,25.0,2000,1500,4,0,0,0);

-- Bisa (1737)
INSERT INTO `mob_skill` VALUES (222,1737,1910,'VW_Hell_Slash',0,15.0,2000,1500,4,0,0,7);
INSERT INTO `mob_skill` VALUES (223,1737,223,'VW_Horror_Cloud',1,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (229,1737,1911,'VW_Blood_Saber',0,25.0,2000,1500,4,0,0,0);

-- Uptala (1738)
INSERT INTO `mob_skill` VALUES (2461,1738,1902,'Uptala_Yaksha_bliss',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2460,1738,1903,'Uptala_Yaksha_oblivion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2459,1738,1901,'Uptala_Yaksha_damnation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2458,1738,1900,'Uptala_Yaksha_stance',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2501,1738,1903,'Sakra_storm',1,18.0,2000,1000,4,0,0,3);

-- Fjalar (1739)
INSERT INTO `mob_skill` VALUES (1857,1739,1456,'VW_Hellsnap',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1858,1739,1460,'VW_Hellclap',4,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1859,1739,1457,'VW_Cackle',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1860,1739,1462,'VW_Necrobane',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1861,1739,1461,'VW_Necropurge',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1862,1739,1458,'VW_Bilgestorm',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1863,1739,1459,'VW_Thundris_shriek',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2557,1739,1459,'Dunur_Strike',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2556,1739,1994,'Bilfrost_Squall',1,25.0,2000,1000,4,0,0,0);

-- Bloody_Skull (1740)
INSERT INTO `mob_skill` VALUES (2255,1740,1463,'VW_Corpse_Breath',1,15.0,2000,1500,4,0,0,0);

-- Abununnu (1741)
INSERT INTO `mob_skill` VALUES (303,1741,303,'VW_Soul_Drain',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (304,1741,304,'VW_Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (307,1741,307,'VW_Demonic_Howl',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (892,1741,311,'VW_Condemnation',4,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2116,1741,1960,'Hellborn_Yawp',4,15.0,2000,1500,4,0,0,0); -- animation / script
INSERT INTO `mob_skill` VALUES (2565,1741,1997,'Accurst_Spear',1,20.0,2000,1500,4,0,0,0); -- animation / script

-- Gloam_Servitor_Melee (1742)
INSERT INTO `mob_skill` VALUES (303,1742,303,'VW_Soul_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (304,1742,304,'VW_Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (307,1742,307,'VW_Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (892,1742,311,'VW_Condemnation',4,10.0,2000,1500,4,0,0,0);

-- Gloam_Servitor_Mage (1743)
INSERT INTO `mob_skill` VALUES (303,1743,303,'VW_Soul_Drain',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (304,1743,304,'VW_Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (307,1743,307,'VW_Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (892,1743,311,'VW_Condemnation',4,10.0,2000,1500,4,0,0,0);

-- Tsui-Goab (1744)
INSERT INTO `mob_skill` VALUES (2360,1744,1922,'Mantis_Melee',0,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2361,1744,1923,'Mantis_Melee2',1,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2362,1744,1924,'Mantis_Melee_Jump',1,15.0,2000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2495,1744,1923,'VW_Slicing_Sickle',4,18.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2496,1744,1926,'VW_Raptorial_Claw',1,15.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2497,1744,1927,'VW_Phlegm_Expulsion',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2498,1744,1928,'VW_Macerating_Bile',1,20.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2500,1744,1924,'Death_Prophet',1,15.0,8000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2499,1744,1929,'Preying_Posture',0,7.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2553,1744,1926,'Immolating_Claw',1,25.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2630,1744,1925,'Exorender',4,22.0,2000,1000,4,0,0,0);

-- Bloodswiller_Fly (1745)
INSERT INTO `mob_skill` VALUES (62,1745,401,'VW_Somersault',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (403,1745,403,'VW_Cursed_Sphere',2,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (404,1745,404,'VW_Venom',0,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1368,1745,1992,'Debilitating_Drone',1,17.0,2000,1500,4,0,0,0);

-- Isarukitsck (1746)
INSERT INTO `mob_skill` VALUES (1460,1746,1162,'VW_Frigid_Shuffle',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1459,1746,1161,'VW_Beak_Lunge',0,7.0,2000,1500,4,0,0,5);
INSERT INTO `mob_skill` VALUES (1457,1746,1159,'VW_Yawn',1,18.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1458,1746,1160,'VW_Wing_Slap',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2563,1746,1680,'Whiteout',1,18.0,2000,1500,4,0,0,0);

-- Little_Wingman (1747)
INSERT INTO `mob_skill` VALUES (1457,1747,1159,'VW_Yawn',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1459,1747,1161,'VW_Beak_Lunge',0,7.0,2000,1500,4,0,0,0);

-- Bismark (1748)
INSERT INTO `mob_skill` VALUES (2606,1748,1999,'Bismark_Front',4,7.0,2000,0,4,16,0,1);
INSERT INTO `mob_skill` VALUES (2607,1748,2000,'Bismark_Side_1',1,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2608,1748,2001,'Bismark_Side_2',1,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2610,1748,2003,'Bismark_Tail',1,10.0,2000,0,4,16,0,1);
INSERT INTO `mob_skill` VALUES (2620,1748,2012,'Thar_She_Blows',1,10.0,8000,5000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2619,1748,2010,'Waterspout',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2618,1748,2011,'Angry_Seas',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2617,1748,2009,'Blowhole_Blast',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2616,1748,2008,'Depht_Charge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2615,1748,2007,'Baleen_Gurge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2614,1748,2006,'Caudal_Capacitor',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2613,1748,2005,'Deep_Sea_Dirge',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2612,1748,2004,'Echolocation',1,20.0,2000,1000,4,0,0,0);

-- Primordial_Pugil (1749)
INSERT INTO `mob_skill` VALUES (385,1749,973,'VW_Recoil_Dive',0,10.0,2000,1500,4,0,0,0);

-- Vrtra
INSERT INTO `mob_skill` VALUES (1053,1751,653,'Cyclone_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1054,1751,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1055,1751,968,'Sable_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1059,1751,659,'Absolute_Terror',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1060,1751,660,'Horrid_Roar_3',1,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (439,1751,432,'Blood_Weapon',0,18.0,2000,0,1,0,30,0);
INSERT INTO `mob_skill` VALUES (432,1751,432,'Mighty_Strikes',0,18.0,2000,0,1,0,30,0);

-- Jormungand
INSERT INTO `mob_skill` VALUES (1031,1752,963,'Sleet_Blast_alt2',0,23.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1032,1752,963,'Sleet_Blast_alt',1,18.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1033,1752,653,'Gregale_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1034,1752,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,3);
INSERT INTO `mob_skill` VALUES (1035,1752,962,'Glacial_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1036,1752,656,'Touchdown',1,18.0,2000,0,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1037,1752,964,'Sleet_Blast',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1038,1752,653,'Gregale_Wing_Air',1,30.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1039,1752,659,'Absolute_Terror',0,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1040,1752,660,'Horrid_Roar_3',1,18.0,4000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (439,1752,432,'Blood_Weapon',0,18.0,2000,0,1,0,30,0);

-- Tiamat
INSERT INTO `mob_skill` VALUES (1021,1750,651,'Inferno_Blast_alt2',1,23.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1022,1750,652,'Inferno_Blast_alt',0,18.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (1023,1750,653,'Tebbad_Wing',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1024,1750,654,'Spike_Flail',1,23.0,2000,2000,4,8,0,3);
INSERT INTO `mob_skill` VALUES (1025,1750,655,'Fiery_Breath',4,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1026,1750,656,'Touchdown',1,18.0,2000,0,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1027,1750,657,'Inferno_Blast',1,23.0,2000,2000,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1028,1750,658,'Tebbad_Wing_Air',1,30.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1029,1750,659,'Absolute_Terror',0,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (1030,1750,660,'Horrid_Roar_3',1,18.0,2000,1500,4,8,0,0);
INSERT INTO `mob_skill` VALUES (432,1750,432,'Mighty_Strikes',0,18.0,2000,0,1,0,30,0);

-- Bahamut
INSERT INTO `mob_skill` VALUES (1286,1753,1133,'Trample',0,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1287,1753,1134,'Tempest_wing',1,25.0,2000,1500,4,0,0,2);
INSERT INTO `mob_skill` VALUES (1288,1753,1139,'Bahamut_Touchdown',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1289,1753,1135,'Sweeping_Flail',1,15.0,2000,1500,4,0,0,3);
INSERT INTO `mob_skill` VALUES (1290,1753,1140,'Prodigious_spike',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1291,1753,1141,'Impulsion',1,15.0,2000,1500,4,0,0,1);
INSERT INTO `mob_skill` VALUES (1292,1753,1143,'Absolute_terror',0,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1293,1753,1142,'Horrible_roar',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1295,1753,1136,'Megaflare',1,19.5,2000,2500,4,0,0,0.25);
INSERT INTO `mob_skill` VALUES (1296,1753,1137,'Gigaflare',1,20.5,2000,3300,4,0,0,0.25);
INSERT INTO `mob_skill` VALUES (1297,1753,1138,'Teraflare',1,30.0,2000,5400,4,0,0,0.4);
INSERT INTO `mob_skill` VALUES (436,1753,436,'Chainspell',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (438,1753,438,'Invincible',0,7.0,2000,0,1,2,0,0);
INSERT INTO `mob_skill` VALUES (3009,1753,432,'Elemental_Sforzo',0,7.0,2000,0,1,2,0,0);


-- Dimgruzub (1755)
INSERT INTO `mob_skill` VALUES (1522,1755,1205,'VW_Spinal_Cleave',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1523,1755,1206,'VW_Mangle',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1524,1755,1207,'VW_Leaping_Cleave',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1525,1755,1208,'VW_Hex_Palm',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1526,1755,1209,'VW_Animating_Wail',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2108,1755,1211,'Unblest_Jambiya',1,15.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2634,1755,2025,'Genei_Ryodan',1,20.0,2000,1500,4,0,0,3);

-- Assassins_Apprentice (1756)
INSERT INTO `mob_skill` VALUES (1522,1756,1205,'VW_Spinal_Cleave',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1524,1756,1207,'VW_Leaping_Cleave',0,7.0,2000,1500,4,0,0,0);

-- Brekekex (1757)
INSERT INTO `mob_skill` VALUES (1703,1757,1361,'VW_Water_Bomb',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1702,1757,1360,'Magic_Hammer',0,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1704,1757,1362,'Frog_Cheer',0,7.0,2000,1500,1,0,0,0);
INSERT INTO `mob_skill` VALUES (1706,1757,1364,'Frog_Chorus',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2633,1757,1905,'Usurping_Scepter',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,1757,436,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Chorus_toad (1758)
INSERT INTO `mob_skill` VALUES (1703,1758,1361,'VW_Water_Bomb',1,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1702,1758,1360,'Magic_Hammer',0,16.0,2000,1500,4,0,0,0);

-- Yalungur (1759)
INSERT INTO `mob_skill` VALUES (1445,1759,1178,'Feather_Tickle',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1444,1759,1177,'Snatch_Morsel',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1443,1759,1176,'VW_Pecking_Flurry',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1446,1759,1177,'Wisecrack',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2631,1759,2028,'Tropic_Tenor',1,15.0,2000,1500,4,0,0,3);

-- Predatory_Colibri (1760)
INSERT INTO `mob_skill` VALUES (1445,1760,1178,'Feather_Tickle',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1444,1760,1177,'Snatch_Morsel',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1443,1760,1176,'VW_Pecking_Flurry',0,7.0,2000,1500,4,0,0,0);

-- Vanasarvik (1761)
INSERT INTO `mob_skill` VALUES(1455,1761,1180,'VW_Frenetic_Rip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1747,1761,1182,'VW_Grating_Tantara',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(1748,1761,1182,'VW_Stifling_Tantara',1,10.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES(2632,1761,1985,'Dark_Recital',1,15.0,2000,1500,4,0,0,1);

-- Elder_Imp (1762)
INSERT INTO `mob_skill` VALUES (1455,1762,1180,'VW_Frenetic_Rip',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1453,1762,1181,'Abrasive_Tantara',1,10.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1454,1762,1182,'Deafening_Tantara',1,10.0,2000,1500,4,0,0,0);

-- Morta (1763)
INSERT INTO `mob_skill` VALUES (2525,1763,2013,'Morta_Single',0,10.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2526,1763,2014,'Morta_Frontal',4,10.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2527,1763,2015,'Morta_Radial',1,10.0,2000,0,4,16,0,3);
INSERT INTO `mob_skill` VALUES (2624,1763,2016,'Night_stalker',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2625,1763,2017,'Atropine_spore',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2626,1763,2018,'Frond_fatale',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2627,1763,2019,'Full_bloom',1,18.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2628,1763,2020,'Deracinator',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2629,1763,2021,'Beautiful_death',1,15.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (436,1763,436,'Chainspell',0,7.0,2000,0,1,2,0,0);

-- Pil (1765)
INSERT INTO `mob_skill` VALUES (2316,1765,1792,'VW_Malign_invocation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2436,1765,1812,'VW_Royal_decree',1,18.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2519,1765,1791,'Tabbiyaa_Gambit',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2520,1765,1811,'Shah_Mat',1,30.0,4000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2518,1765,1812,'Flank_Opening',1,25.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2444,1765,1982,'Enthrall',1,10.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2552,1765,1983,'Discordant_Gambit',1,18.0,2000,1000,4,0,0,0);

-- Rukh (1766)
INSERT INTO `mob_skill` VALUES (2519,1766,1791,'Tabbiyaa_Gambit',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2520,1766,1811,'Shah_Mat',1,30.0,4000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2311,1766,1787,'Stygian_Cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2316,1766,1792,'VW_Malign_invocation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2552,1766,1983,'Discordant_Gambit',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2550,1766,1985,'Beleaguerment',1,18.0,2000,1000,4,0,0,1);

-- Asb (1767)
INSERT INTO `mob_skill` VALUES (2519,1767,1791,'Tabbiyaa_Gambit',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2310,1767,1786,'Diabolic_Claw',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2520,1767,1811,'Shah_Mat',1,30.0,4000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2312,1767,1788,'Deathly_Diminuendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2313,1767,1789,'Hellish_Crescendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2551,1767,1981,'Unchivalrous_Stab',1,18.0,2000,1000,4,0,0,3);

-- Sarbaz (1768)
INSERT INTO `mob_skill` VALUES (2519,1768,1791,'Tabbiyaa_Gambit',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2311,1768,1787,'Stygian_Cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2316,1768,1792,'VW_Malign_invocation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2552,1768,1983,'Discordant_Gambit',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2549,1768,2022,'Pawns_Penumbra',1,18.0,2000,1000,4,0,0,1);

-- Wazir (1769)
INSERT INTO `mob_skill` VALUES (2519,1769,1791,'Tabbiyaa_Gambit',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2312,1769,1788,'Deathly_Diminuendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2310,1769,1786,'Diabolic_Claw',0,7.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2311,1769,1787,'Stygian_Cyclone',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2316,1769,1792,'VW_Malign_invocation',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2313,1769,1789,'Hellish_Crescendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2520,1769,1811,'Shah_Mat',1,30.0,4000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2552,1769,1983,'Discordant_Gambit',1,18.0,2000,1000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (2650,1769,1992,'False_Promises',1,18.0,2000,1000,4,0,0,0);

-- Shah (1770)
INSERT INTO `mob_skill` VALUES (2519,1770,1791,'Tabbiyaa_Gambit',0,10.0,2000,1000,1,0,0,0);
INSERT INTO `mob_skill` VALUES (2520,1770,1811,'Shah_Mat',1,30.0,4000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2312,1770,1788,'Deathly_Diminuendo',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2518,1770,1812,'Flank_Opening',1,25.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2550,1770,1985,'Beleaguerment',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2649,1770,1982,'Shahs_Decree',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2551,1770,1981,'Unchivalrous_Stab',1,18.0,2000,1000,4,0,0,3);
INSERT INTO `mob_skill` VALUES (2549,1770,2022,'Pawns_Penumbra',1,18.0,2000,1000,4,0,0,1);


-- Provenance Watcher  (1771) (100-50% no wings,50-31 2 wings,<31 4 wings)
INSERT INTO `mob_skill` VALUES (2140,1771,2049,'Watcher_Front',4,7.0,2000,0,4,16,0,1);
INSERT INTO `mob_skill` VALUES (2141,1771,2050,'Watcher_Side_1',1,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2142,1771,2051,'Watcher_Side_2',0,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2143,1771,2052,'Watcher_Tail',1,10.0,2000,0,4,16,0,1);
INSERT INTO `mob_skill` VALUES (2144,1771,2053,'Watcher_Front_2',0,7.0,2000,0,4,16,0,1);
INSERT INTO `mob_skill` VALUES (2145,1771,2054,'Watcher_Side_3',4,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2146,1771,2055,'Watcher_Side_4',0,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2583,1771,2056,'Prismatic_Breath',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2584,1771,2057,'Acicular_Brand',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2585,1771,2058,'Orogenesis',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2586,1771,2059,'Phason_Beam',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2587,1771,2060,'Diffractive_Break',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2588,1771,2061,'Euhedral_Swat',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2242,1771,2062,'Alt_Watcher_Front',4,7.0,2000,0,4,16,0,1);
INSERT INTO `mob_skill` VALUES (2243,1771,2063,'Alt_Watcher_Side_1',1,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2244,1771,2064,'Alt_Watcher_Side_2',0,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2245,1771,2065,'Alt_Watcher_Tail',1,10.0,2000,0,4,16,0,1);
INSERT INTO `mob_skill` VALUES (2246,1771,2066,'Alt_Watcher_Front_2',0,7.0,2000,0,4,16,0,1);
INSERT INTO `mob_skill` VALUES (2247,1771,2067,'Alt_Watcher_Side_3',4,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2248,1771,2068,'Alt_Watcher_Side_4',0,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2596,1771,2069,'Prismatic_Breath_Wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2597,1771,2070,'Acicular_Brand_Wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2598,1771,2071,'Orogenesis_Wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2259,1771,2072,'Phason_Beam_Wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2600,1771,2073,'Diffractive_Break_Wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2601,1771,2074,'Euhedral_Swat_Wing',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2602,1771,2075,'Crystallite_Shower',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2603,1771,2076,'Graviton_Crux',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2604,1771,2077,'Crystal_Bolide',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2605,1771,2078,'Fragor_maximus',1,18.0,2000,1000,4,0,0,0);

-- Ravishing_Rafflesia (1214)
INSERT INTO `mob_skill` VALUES (1912,1764,1554,'VW_Bloody_Caress',0,10.0,2000,1500,4,0,0,3);

-- Umagrhk
INSERT INTO `mob_skill` VALUES (2140,1773,2093,'Umagrhk_Triple',4,7.0,2000,0,4,16,0,1);
INSERT INTO `mob_skill` VALUES (2141,1773,2091,'Umagrhk_Front1',1,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2142,1773,2092,'Umagrhk_Front2',0,7.0,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (2666,1773,2094,'Soulshattering_Roar',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2667,1773,2095,'Calcifying_Claw',1,18.0,2000,1000,4,0,0,1);
INSERT INTO `mob_skill` VALUES (2668,1773,2096,'Divesting_Stampede',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2669,1773,2097,'Bonebreaking_Barrage',1,18.0,2000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (2670,1773,2098,'Beastruction',1,18.0,2000,1000,4,0,0,7);

-- The Jumping Crab
INSERT INTO `mob_skill` VALUES (44,6665,431,'Crab_Head_Butt',0,9.5,2000,1000,4,0,0,2); -- Stun, Grav, Slow, knockback
INSERT INTO `mob_skill` VALUES (186,6665,186,'Tegmine_Bubble_Shower',1,12.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (187,6665,187,'Bubble_Curtain',1,8.0,2000,2500,1,0,0,0); -- Shell -50% magic damage taken
INSERT INTO `mob_skill` VALUES (189,6665,189,'Scissor_Guard',0,7.0,2000,1500,1,0,0,0); -- +100% defense boost
INSERT INTO `mob_skill` VALUES (192,6665,192,'Metallic_Body',0,7.0,2000,1500,1,0,0,0); -- 25HP Stoneskin
INSERT INTO `mob_skill` VALUES (198,6665,198,'Water_Shield',0,7.0,2000,1500,1,0,0,0); -- Eva boost
INSERT INTO `mob_skill` VALUES (462,6665,440,'Crab_Jump_1',0,9.5,2000,0,4,0,0,0); -- W/Spirit Surge: Reduce targets DEF
INSERT INTO `mob_skill` VALUES (477,6665,441,'Crab_Jump_2',0,9.5,2000,0,4,0,0,0); -- W/Spirit Surge: Reduce targets TP
INSERT INTO `mob_skill` VALUES (513,6665,513,'Crab_Flying_Punch',4,10.0,2000,1500,4,0,0,10); -- Heavy DMG+Knockback, only use during Spirit Surge or Elemental Sforzo
INSERT INTO `mob_skill` VALUES (518,6665,446,'Bubble_Armor',0,7.0,2000,1500,1,0,0,0); -- Shell -50% magic damage taken
INSERT INTO `mob_skill` VALUES (768,6665,706,'SuperDuperJump',0,7,900,0,1,0,0,0); -- Only used during depop
INSERT INTO `mob_skill` VALUES (808,6665,442,'Crab_Jump_3',0,9.5,2000,0,4,0,0,0); -- W/Spirit Surge: Hate Reset
INSERT INTO `mob_skill` VALUES (1181,6665,767,'Crab_Jump_4',1,8.0,2000,1000,4,0,0,0); -- AoE dmg (only triggered with Draw In)
INSERT INTO `mob_skill` VALUES (1637,6665,432,'Crab_Spirit_Surge',0,7.0,2000,0,1,2,0,0); -- It's a bird! It's a plane! No its super crab!
INSERT INTO `mob_skill` VALUES (1703,6665,1361,'Water_Bomb',1,16.0,2000,1500,4,0,0,0); -- AoE Silence
INSERT INTO `mob_skill` VALUES (2257,6665,188,'Mega_Scissors',4,10.0,2000,1500,4,0,0,0); -- Bigger than Big Scissors o.o;
INSERT INTO `mob_skill` VALUES (3009,6665,432,'Elemental_Sforzo',0,7.0,2000,0,1,2,0,0); -- RUN 2hr (Magic Immunity)

-- SlenderMan
INSERT INTO `mob_skill` VALUES (190,6666,190,'Slendy_Dimensional_Death',0,7.0,2000,0,4,1,0,0);
INSERT INTO `mob_skill` VALUES (200,6666,61,'Slendy_Tentacle',0,7.0,1200,600,4,0,0,0);
INSERT INTO `mob_skill` VALUES (249,6666,249,'Netherspikes',4,10.0,2000,0,4,1,0,0); -- Animates incorrectly
INSERT INTO `mob_skill` VALUES (332,6666,107,'Slendy_Death_Trap',1,30.0,2000,2000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (943,6666,801,'Slendy_Gate_of_Tartarus',0,7.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1424,6666,392,'Predatory_Glare',4,16.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (437,6666,432,'Perfect_Dodge',0,7.0,2000,0,1,2,45,0);
INSERT INTO `mob_skill` VALUES (439,6666,432,'Blood_Weapon',0,7.0,2000,0,1,2,45,0);
INSERT INTO `mob_skill` VALUES (475,6666,18,'Mijin_Gakure',1,20.0,2000,0,4,2,0,0);
-- INSERT INTO `mob_skill` VALUES (728,263,708,'Summon_Proxies',0,18.0,2000,0,1,2,0,0);

-- Mars
INSERT INTO `mob_skill` VALUES (253,7600,1088,'Aegis_Schism',0,7.0,2000,0,4,1,0,0);
INSERT INTO `mob_skill` VALUES (567,7600,495,'Fire_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (568,7600,496,'Frost_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (569,7600,497,'Wind_Blade2',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (570,7600,498,'Earth_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (571,7600,499,'Lightning_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (572,7600,500,'Water_Blade',0,7,2000,0,1,0,0,0);
INSERT INTO `mob_skill` VALUES (573,7600,501,'Mars_Great_Wheel',1,7.0,1200,900,4,0,0,11);
INSERT INTO `mob_skill` VALUES (432,7600,2111,'Mighty_Strikes',0,7.0,2000,0,1,2,75,0);
INSERT INTO `mob_skill` VALUES (439,7600,432,'Blood_Weapon',0,7.0,2000,0,1,2,75,0);

-- Minerva
INSERT INTO `mob_skill` VALUES (1849,7777,1861,'Minerva_Melee_Special',0,9.5,2000,0,4,16,0,0);
INSERT INTO `mob_skill` VALUES (574,7777,1015,'Minerva_Light_Blade',0,30.0,2000,1500,4,0,0,0); -- Grants/Restores EnLight
INSERT INTO `mob_skill` VALUES (729,7777,1750,'Minerva_Stellar_burst',2,7.0,5000,1000,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1130,7777,1021,'Minerva_Medusa_Javelin',0,6.0,2000,1500,4,0,0,0);
INSERT INTO `mob_skill` VALUES (1123,7777,1011,'Minerva_Auroral_Wind',1,10.0,2000,1500,12,0,0,0); -- Grants/Restores Light spikes
INSERT INTO `mob_skill` VALUES (1252,7777,1581,'Minerva_Luminous_Lance',0,20.0,2000,1500,4,0,0,0); -- Grants/Restores EnLight
INSERT INTO `mob_skill` VALUES (1885,7777,1465,'Minerva_Radiant_sacrament',1,18.0,2000,1200,4,0,0,0); -- Grants/Restores Light spikes
INSERT INTO `mob_skill` VALUES (1886,7777,1471,'Minerva_Mega_holy',1,18.0,2000,1000,4,0,0,0); -- need script
INSERT INTO `mob_skill` VALUES (1888,7777,1581,'Minerva_Divine_spear',1,18.0,2000,1500,4,0,0,0); -- Grants/Restores EnLight
INSERT INTO `mob_skill` VALUES (1891,7777,1468,'Minerva_Divine_Jugement',1,10.0,600,1500,4,0,0,0); -- need script
INSERT INTO `mob_skill` VALUES (2078,7777,1854,'Minerva_Wrath_of_zeus',4,10.0,2000,1000,4,0,0,0); -- Grants/Restores Shock spikes and EnThunder
INSERT INTO `mob_skill` VALUES (2079,7777,1581,'Minerva_Lightning_spear',4,10.0,2000,1000,4,0,0,0); -- need script
INSERT INTO `mob_skill` VALUES (2114,7777,1465,'Minerva_Grace_of_Hera',0,7.0,2000,1000,1,0,0,0); -- Grants/Restores Light spikes
INSERT INTO `mob_skill` VALUES (2434,7777,1856,'Dark_Moon',1,18.0,2000,1000,4,0,0,0); -- need script
INSERT INTO `mob_skill` VALUES (2435,7777,1857,'Dark_Sun',1,18.0,2000,1000,4,0,0,0); -- need script
INSERT INTO `mob_skill` VALUES (435,7777,2116,'Manafont',0,7.0,2000,0,1,2,90,0);
INSERT INTO `mob_skill` VALUES (436,7777,2114,'Chainspell',0,7.0,2000,0,1,2,90,0);
INSERT INTO `mob_skill` VALUES (438,7777,1092,'Invincible',0,7.0,2000,0,1,2,60,0);
INSERT INTO `mob_skill` VALUES (2102,7777,1091,'Tabula_Rasa_Custom',0,7.0,2000,0,1,2,90,0);
INSERT INTO `mob_skill` VALUES (1231,7777,1849,'Minerva_Ambrosia',0,7.0,2000,0,1,2,0,0);

-- Thinking of placing a new entry right here? DO NOT. Scroll your butt up past Slendy!
