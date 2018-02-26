-- ---------------------------------------------------------------------------
-- This file list drops that are scripted, so that the website
-- can properly display these items like ordinary drops.
-- This should contain ONLY table structure followed by INSERT statements.
-- ---------------------------------------------------------------------------
DROP TABLE IF EXISTS `mob_droplist_scripted`;
CREATE TABLE `mob_droplist_scripted` (
  `dropId` smallint(5) unsigned NOT NULL,
  `dropType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupRate` smallint(4) unsigned NOT NULL DEFAULT '1000',
  `itemId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemRate` smallint(4) unsigned NOT NULL DEFAULT '0',
  KEY `dropId` (`dropId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=9;

-- Example:
-- Name_of_MOB
-- INSERT INTO `mob_droplist_scripted` VALUES (dropId,type,itemId,rate); -- Item Name

-- Absolute Virtue
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27580,70); -- Adoulin Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27582,70); -- Weather Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27584,70); -- Renaye Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27586,70); -- Haverton Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27588,70); -- Vocane Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27590,50); -- Shneddick Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27581,50); -- Woltaris Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27583,50); -- Janniston Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27585,50); -- Gorney Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27587,50); -- Karieyh Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27589,50); -- Thurandaut Ring
INSERT INTO `mob_droplist_scripted` VALUES (4,0,0,1000,27591,50); -- Orvail Ring

-- Aspidochelone
INSERT INTO `mob_droplist_scripted` VALUES (195,0,0,1000,20618,66); -- Sandung
INSERT INTO `mob_droplist_scripted` VALUES (195,0,0,1000,10948,33); -- Carver's Torque
INSERT INTO `mob_droplist_scripted` VALUES (195,0,0,1000,1525,901); -- Adamantoise Shell 
INSERT INTO `mob_droplist_scripted` VALUES (195,0,0,1000,908,901); -- Adamantoise Egg 

-- Cerberus
INSERT INTO `mob_droplist_scripted` VALUES (502,0,0,1000,10954,33); -- Alchemist's Torque
INSERT INTO `mob_droplist_scripted` VALUES (502,0,0,1000,21228,66); -- Falubeza
INSERT INTO `mob_droplist_scripted` VALUES (502,0,0,1000,4023,901); -- Snowsteel Ore
INSERT INTO `mob_droplist_scripted` VALUES (502,0,0,1000,4023,901); -- Snowsteel Ore

-- Fafnir
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,867,250); -- Dragon Scales
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,903,250); -- Dragon Talon
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,1133,250); -- Dragon Blood
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,1321,250); -- Earthen Abjuration Hands
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,1326,250); -- Aquarian Abjuration Hands
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,1328,250); -- Aquarian Abjuration Feet
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,1339,250); -- Neptunal Abjuration Head
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,4272,250); -- Dragon Meat
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,4486,125); -- Dragon Heart
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,13914,375); -- Aegishjalmr
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,14075,375); -- Andvaranauts
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,16555,60); -- Ridill
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,16942,250); -- Balmung
INSERT INTO `mob_droplist_scripted` VALUES (918,0,0,1000,17653,300); -- Hrotti

-- Gulool Ja Ja
INSERT INTO `mob_droplist_scripted` VALUES (1607,0,0,1000,10955,33); -- Culinarian's Torque
INSERT INTO `mob_droplist_scripted` VALUES (1607,0,0,1000,20861,66); -- Qalgwer
INSERT INTO `mob_droplist_scripted` VALUES (1607,0,0,1000,4023,901); -- Snowsteel Ore
INSERT INTO `mob_droplist_scripted` VALUES (1607,0,0,1000,4023,901); -- Snowsteel Ore

-- Gurfurlur the Menacing
INSERT INTO `mob_droplist_scripted` VALUES (1609,0,0,1000,10950,33); -- Culinarian's Torque
INSERT INTO `mob_droplist_scripted` VALUES (1609,0,0,1000,21256,66); -- illapa
INSERT INTO `mob_droplist_scripted` VALUES (1609,0,0,1000,4023,901); -- Snowsteel Ore
INSERT INTO `mob_droplist_scripted` VALUES (1609,0,0,1000,4023,901); -- Snowsteel Ore

-- Khimaira
INSERT INTO `mob_droplist_scripted` VALUES (1893,0,0,1000,4023,901); -- Snowsteel Ore
INSERT INTO `mob_droplist_scripted` VALUES (1893,0,0,1000,4023,901); -- Snowsteel Ore
INSERT INTO `mob_droplist_scripted` VALUES (1893,0,0,1000,10953,33); -- Boneworker's Torque
INSERT INTO `mob_droplist_scripted` VALUES (1893,0,0,1000,20827,66); -- Kerehcatl

-- King Behemoth
INSERT INTO `mob_droplist_scripted` VALUES (1936,0,0,1000,860,934); -- Behemoth Hide
INSERT INTO `mob_droplist_scripted` VALUES (1936,0,0,1000,860,934); -- Behemoth Hide
INSERT INTO `mob_droplist_scripted` VALUES (1936,0,0,1000,883,934); -- Behemoth Horn
INSERT INTO `mob_droplist_scripted` VALUES (1936,0,0,1000,20963,66); -- Falubeza

-- Kutharei
INSERT INTO `mob_droplist_scripted` VALUES (1972,0,0,1000,21051,100); -- Shichishito +1
INSERT INTO `mob_droplist_scripted` VALUES (1972,0,0,1000,20634,100); -- Leisilonu +1
INSERT INTO `mob_droplist_scripted` VALUES (1972,0,0,1000,20961,100); -- Qatsunoci +1
INSERT INTO `mob_droplist_scripted` VALUES (1972,0,0,1000,20915,100); -- Iizamal +1
INSERT INTO `mob_droplist_scripted` VALUES (1972,0,0,1000,21236,100); -- Bocluamni +1

-- Lord of Onzozo
INSERT INTO `mob_droplist_scripted` VALUES (2079,0,0,1000,17440,100); -- Kraken Club
INSERT INTO `mob_droplist_scripted` VALUES (2079,0,0,1000,18852,30); -- Octave Club
INSERT INTO `mob_droplist_scripted` VALUES (2079,0,0,1000,17030,870); -- Great Club

-- Medusa
INSERT INTO `mob_droplist_scripted` VALUES (2237,0,0,1000,10951,33); -- Weaver's Torque
INSERT INTO `mob_droplist_scripted` VALUES (2237,0,0,1000,4023,901); -- Snowsteel Ore
INSERT INTO `mob_droplist_scripted` VALUES (2237,0,0,1000,4023,901);
INSERT INTO `mob_droplist_scripted` VALUES (2237,0,0,1000,20905,66); -- Tajabit

-- Nidhogg
INSERT INTO `mob_droplist_scripted` VALUES (2425,0,0,1000,20738,66); --  Buramenk'ah
INSERT INTO `mob_droplist_scripted` VALUES (2425,0,0,1000,10949,33); --  Smithy's Torque
INSERT INTO `mob_droplist_scripted` VALUES (2425,0,0,1000,4486,901); --  Dragon Heart
INSERT INTO `mob_droplist_scripted` VALUES (2425,0,0,1000,4272,901); --  Dragon Meat
INSERT INTO `mob_droplist_scripted` VALUES (2425,0,0,1000,903,901); --  Dragon Talon

-- Raja
INSERT INTO `mob_droplist_scripted` VALUES (2920,0,0,1000,21195,100); -- Uffrat +1
INSERT INTO `mob_droplist_scripted` VALUES (2920,0,0,1000,20870,100); -- Iclamar +1
INSERT INTO `mob_droplist_scripted` VALUES (2920,0,0,1000,21194,100); -- Lehbrailg +1
INSERT INTO `mob_droplist_scripted` VALUES (2920,0,0,1000,21004,100); -- Kannakiri +1
INSERT INTO `mob_droplist_scripted` VALUES (2920,0,0,1000,20824,100); -- Faizzeer +1

-- Rani
INSERT INTO `mob_droplist_scripted` VALUES (2925,0,0,1000,20736,100); -- Iztaasu +1
INSERT INTO `mob_droplist_scripted` VALUES (2925,0,0,1000,21126,100); -- Aedold +1
INSERT INTO `mob_droplist_scripted` VALUES (2925,0,0,1000,20546,100); -- Ninzas +1
INSERT INTO `mob_droplist_scripted` VALUES (2925,0,0,1000,21286,100); -- Hgafircian +1
INSERT INTO `mob_droplist_scripted` VALUES (2925,0,0,1000,21051,100); -- Shichishito +1

-- Sippoy
INSERT INTO `mob_droplist_scripted` VALUES (3210,0,0,1000,20961,100); -- Qatsunoci +1
INSERT INTO `mob_droplist_scripted` VALUES (3210,0,0,1000,20915,100); -- Iizamal +1
INSERT INTO `mob_droplist_scripted` VALUES (3210,0,0,1000,21236,100); -- Bocluamni +1
INSERT INTO `mob_droplist_scripted` VALUES (3210,0,0,1000,20775,100); -- Crobaci +1
INSERT INTO `mob_droplist_scripted` VALUES (3210,0,0,1000,21195,100); -- Uffrat +1

-- Taisaijin
INSERT INTO `mob_droplist_scripted` VALUES (3430,0,0,1000,4717,850); -- Refresh
INSERT INTO `mob_droplist_scripted` VALUES (3430,0,0,1000,4850,150); -- Refresh II

-- Yaanei
INSERT INTO `mob_droplist_scripted` VALUES (4207,0,0,1000,21236,76); -- Bocluamni +1
INSERT INTO `mob_droplist_scripted` VALUES (4207,0,0,1000,20775,76); -- Crobaci +1
INSERT INTO `mob_droplist_scripted` VALUES (4207,0,0,1000,21195,76); -- Uffrat +1
INSERT INTO `mob_droplist_scripted` VALUES (4207,0,0,1000,20870,76); -- Iclamar +1
INSERT INTO `mob_droplist_scripted` VALUES (4207,0,0,1000,21194,76); -- Lehbrailg +1

-- Kirin
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,21176,100); -- Ngqoqwanb
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,21052,100); -- Tsurumaru
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,20997,100); -- Raimitsukane
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,20762,100); -- Ukudyoni 
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,20616,100); -- Ipetam
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,28612,100); -- Buquwik Cape
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,28610,100); -- Ik Cape
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,28613,100); -- Kayapa Cape
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,28611,100); -- Tuilha Cape
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,28615,100); -- Toro Cape
INSERT INTO `mob_droplist_scripted` VALUES (4372,0,0,1000,28614,100); -- Iximulew Cape

-- Ix'Aern (DRK)
INSERT INTO `mob_droplist_scripted` VALUES (4397,0,0,1000,1854,800); -- Deed of Moderation
INSERT INTO `mob_droplist_scripted` VALUES (4397,0,0,1000,1902,200); -- Vice of Avarice (Altruistic Cape)

-- Sallow Seymour
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,0,1000,8926,125); -- Fenritear

-- Ushumgal
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,0,1000,8926,125); -- Fenritear

-- Sarimanok
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,0,1000,8926,125); -- Fenritear

-- Cottus
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,0,1000,8926,125); -- Fenritear

-- Virvatuli
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,0,1000,8926,125); -- Fenritear

-- Pancimanci
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,0,1000,8926,125); -- Fenritear

-- Lorbulcrab
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,0,1000,8926,125); -- Fenritear

-- Krabimanjaro
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,0,1000,8926,125); -- Fenritear

-- Obgunabali
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,0,1000,8926,125); -- Fenritear

-- Murk-veined Baneberry
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,0,1000,8926,125); -- Fenritear

-- Melancholic Moira
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,0,1000,8926,125); -- Fenritear

-- Belphoebe
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,0,1000,8926,125); -- Fenritear

-- Kholomodumo
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,0,1000,8926,125); -- Fenritear

-- Lord Asag
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,0,1000,8926,125); -- Fenritear

-- Akupara
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,0,1000,8926,125); -- Fenritear

-- Celaeno
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,0,1000,8926,125); -- Fenritear

-- Hahava
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,0,1000,8926,125); -- Fenritear

-- Voidwrought
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,0,1000,8926,125); -- Fenritear

-- Goji (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,0,1000,8926,125); -- Fenritear

-- Gugalanna (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,0,1000,8926,125); -- Fenritear

-- Yatagarasu (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,0,1000,8926,125); -- Fenritear

-- Agathos (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,0,1000,8926,125); -- Fenritear

-- Cherufe (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,0,1000,8926,125); -- Fenritear

-- Taweret (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,0,1000,8926,125); -- Fenritear

-- Roly Poly (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,0,1000,8926,125); -- Fenritear

-- Laidly Laurence (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,0,1000,8926,125); -- Fenritear

-- Mellonia (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,0,1000,8926,125); -- Fenritear

-- Nympha Eunomia (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,0,1000,8926,125); -- Fenritear

-- Gasha (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,0,1000,8926,125); -- Fenritear

-- Giltine (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,0,1000,8926,125); -- Fenritear

-- Kaggen (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,0,1000,8926,125); -- Fenritear

-- Akvan (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,0,1000,8926,125); -- Fenritear

-- Pil (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,0,1000,8926,125); -- Fenritear

-- Lancing Lamorak (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,0,1000,8926,125); -- Fenritear

-- Bhishani (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,0,1000,8926,125); -- Fenritear

-- Rw Nw Prt M Hrw (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,0,1000,8926,125); -- Fenritear

-- Stachysaurus (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,0,1000,8926,125); -- Fenritear

-- Gwynn ap Nudd (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,0,1000,8926,125); -- Fenritear

-- Smierc (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,0,1000,8926,125); -- Fenritear

-- Gaunab (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,0,1000,8926,125); -- Fenritear

-- Ocythoe (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,0,1000,8926,125); -- Fenritear

-- Kalasutrax (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,0,1000,8926,125); -- Fenritear

-- Ig- (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,0,1000,8926,125); -- Fenritear

-- Botulus Rex (Voidwatch Chapter 2)
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,0,1000,8926,125); -- Fenritear

-- VW Chapter 3 9646-9657 (MOB NAMES DAMMIT!)
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9647,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9648,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9649,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9650,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9651,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9652,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9653,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9654,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9655,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9656,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,0,1000,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9657,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,0,1000,8926,125); -- Fenritear

-- fjalar
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,0,1000,8926,125); -- Fenritear

-- Abununnu
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,0,1000,8926,125); -- Fenritear

-- Tsui-Goab
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,0,1000,8926,125); -- Fenritear

-- Isarukitsck
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,0,1000,8926,125); -- Fenritear

-- Bismark
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,0,1000,8926,125); -- Fenritear

-- Dimgruzub
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,0,1000,8926,125); -- Fenritear

-- Brekekex
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,0,1000,8926,125); -- Fenritear

-- Yalungar
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,0,1000,8926,125); -- Fenritear

-- Vanasarvik
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,0,1000,8926,125); -- Fenritear

-- Morta
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,0,1000,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,0,1000,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,0,1000,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,0,1000,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,0,1000,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,0,1000,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,0,1000,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,0,1000,8926,125); -- Fenritear

-- Iratham
INSERT INTO `mob_droplist_scripted` VALUES (9706,0,0,1000,20634,100); -- Leisilonu +1
INSERT INTO `mob_droplist_scripted` VALUES (9706,0,0,1000,20961,100); -- Qatsunoci +1
INSERT INTO `mob_droplist_scripted` VALUES (9706,0,0,1000,20546,100); -- Ninzas +1
INSERT INTO `mob_droplist_scripted` VALUES (9706,0,0,1000,21286,100); -- Hgafircian +1
INSERT INTO `mob_droplist_scripted` VALUES (9706,0,0,1000,21051,100); -- Shichishito +1

-- Shinryu
INSERT INTO `mob_droplist_scripted` VALUES (9730,0,0,1000,21364, 500); -- Elders Grip    (slot 1 @ 100%)
INSERT INTO `mob_droplist_scripted` VALUES (9730,0,0,1000,3925, 500); -- Tanzenite Jewel (slot 1 @ 100%)
INSERT INTO `mob_droplist_scripted` VALUES (9730,0,0,1000,20858, 50); -- Lightreaver      (slot 2/3/4 @ 8%/5%/2% + TH modifier)
INSERT INTO `mob_droplist_scripted` VALUES (9730,0,0,1000,20991, 50); -- Chidori          (slot 2/3/4 @ 8%/5%/2% + TH modifier)
INSERT INTO `mob_droplist_scripted` VALUES (9730,0,0,1000,21227, 50); -- Hangaku-no-Yumi  (slot 2/3/4 @ 8%/5%/2% + TH modifier)
INSERT INTO `mob_droplist_scripted` VALUES (9730,0,0,1000,21284, 50); -- Vanir_Gun        (slot 2/3/4 @ 8%/5%/2% + TH modifier)
INSERT INTO `mob_droplist_scripted` VALUES (9730,0,0,1000,28155, 50); -- Scuff._Cosciales (slot 2/3/4 @ 8%/5%/2% + TH modifier)
INSERT INTO `mob_droplist_scripted` VALUES (9730,0,0,1000,28287, 50); -- Durgai_Leggings  (slot 2/3/4 @ 8%/5%/2% + TH modifier)
INSERT INTO `mob_droplist_scripted` VALUES (9730,0,0,1000,4692, 50); -- Haste II          (slot 2/3/4 @ 8%/5%/2% + TH modifier)

-- Hydra
INSERT INTO `mob_droplist_scripted` VALUES (9731,0,0,1000,10952,33); -- Tanner's Torque
INSERT INTO `mob_droplist_scripted` VALUES (9731,0,0,1000,20548,66); -- Oatixur
INSERT INTO `mob_droplist_scripted` VALUES (9731,0,0,1000,4023,901); -- Snowsteel Ore
INSERT INTO `mob_droplist_scripted` VALUES (9731,0,0,1000,4023,901); -- Snowsteel Ore
