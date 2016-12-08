-- ---------------------------------------------------------------------------
-- This file list drops that are scripted, so that the website
-- can properly display these items like ordinary drops.
-- This should contain ONLY table structure followed by INSERT statements.
-- ---------------------------------------------------------------------------
DROP TABLE IF EXISTS `mob_droplist_scripted`;
CREATE TABLE `mob_droplist_scripted` (
  `dropId` smallint(5) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `itemId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rate` smallint(4) unsigned NOT NULL DEFAULT '0',
  KEY `dropId` (`dropId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=9;
-- INSERT INTO `mob_droplist_scripted` VALUES (dropId,type,itemId,rate); -- Item Name [Mob Name]

-- Taisaijin
-- INSERT INTO `mob_droplist_scripted` VALUES (3430,0,4717,500); -- Refresh
-- INSERT INTO `mob_droplist_scripted` VALUES (3430,0,4850,500); -- Refresh II

-- -----------
-- Sallow Seymour
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9600,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9600,0,8926,125); -- Fenritear

-- -----------
-- Ushumgal
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9601,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9601,0,8926,125); -- Fenritear

-- -----------
-- Sarimanok
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9602,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9602,0,8926,125); -- Fenritear

-- -----------
-- Cottus
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9603,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9603,0,8926,125); -- Fenritear

-- -----------
-- Virvatuli
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9604,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9604,0,8926,125); -- Fenritear

-- -----------
-- Pancimanci
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9605,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9605,0,8926,125); -- Fenritear

-- -----------
-- Lorbulcrab
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9606,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9606,0,8926,125); -- Fenritear

-- -----------
-- Krabimanjaro
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9607,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9607,0,8926,125); -- Fenritear

-- -----------
-- Obgunabali
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9608,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9608,0,8926,125); -- Fenritear

-- -----------
-- Murk-veined Baneberry
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9609,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9609,0,8926,125); -- Fenritear

-- -----------
-- Melancholic Moira
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9610,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9610,0,8926,125); -- Fenritear

-- -----------
-- Belphoebe
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9611,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9611,0,8926,125); -- Fenritear

-- -----------
-- Kholomodumo
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9612,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9612,0,8926,125); -- Fenritear

-- -----------
-- Lord Asag
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9613,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9613,0,8926,125); -- Fenritear

-- -----------
-- Akupara
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9614,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9614,0,8926,125); -- Fenritear

-- -----------
-- Celaeno
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9615,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9615,0,8926,125); -- Fenritear

-- -----------
-- Hahava
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9616,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9616,0,8926,125); -- Fenritear

-- -----------
-- Voidwrought
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9617,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9617,0,8926,125); -- Fenritear

-- Voidwatch Chapter 2

-- -----------
-- Goji
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9620,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9620,0,8926,125); -- Fenritear

-- -----------
-- Gugalanna
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9621,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9621,0,8926,125); -- Fenritear

-- -----------
-- Yatagarasu
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9622,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9622,0,8926,125); -- Fenritear

-- -----------
-- Agathos
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9623,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9623,0,8926,125); -- Fenritear

-- -----------
-- Cherufe
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9624,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9624,0,8926,125); -- Fenritear

-- -----------
-- Taweret
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9625,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9625,0,8926,125); -- Fenritear

-- -----------
-- Roly Poly
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9626,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9626,0,8926,125); -- Fenritear

-- -----------
-- Laidly Laurence
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9627,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9627,0,8926,125); -- Fenritear

-- -----------
-- Mellonia
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9628,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9628,0,8926,125); -- Fenritear

-- -----------
-- Nympha Eunomia
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9629,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9629,0,8926,125); -- Fenritear

-- -----------
-- Gasha
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9630,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9630,0,8926,125); -- Fenritear

-- -----------
-- Giltine
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9631,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9631,0,8926,125); -- Fenritear

-- -----------
-- Kaggen
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9632,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9632,0,8926,125); -- Fenritear

-- -----------
-- Akvan
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9633,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9633,0,8926,125); -- Fenritear

-- -----------
-- Pil
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9634,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9634,0,8926,125); -- Fenritear

-- -----------
-- Lancing Lamorak
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9635,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9635,0,8926,125); -- Fenritear

-- -----------
-- Bhishani
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9636,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9636,0,8926,125); -- Fenritear

-- -----------
-- Rw Nw Prt M Hrw
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9637,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9637,0,8926,125); -- Fenritear

-- -----------
-- Stachysaurus
-- -----------


INSERT INTO `mob_droplist_scripted` VALUES (9638,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9638,0,8926,125); -- Fenritear

-- -----------
-- Gwynn ap Nudd
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9639,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9639,0,8926,125); -- Fenritear

-- -----------
-- Smierc
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9640,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9640,0,8926,125); -- Fenritear

-- -----------
-- Gaunab
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9641,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9641,0,8926,125); -- Fenritear

-- -----------
-- Ocythoe
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9642,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9642,0,8926,125); -- Fenritear

-- -----------
-- Kalasutrax
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9643,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9643,0,8926,125); -- Fenritear

-- -----------
-- Ig-Alima
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9644,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9644,0,8926,125); -- Fenritear

-- -----------
-- Botulus Rex
-- -----------

INSERT INTO `mob_droplist_scripted` VALUES (9645,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9645,0,8926,125); -- Fenritear

-- VW Chapter 3 9646-9657

INSERT INTO `mob_droplist_scripted` VALUES (9646,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9646,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9647,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9647,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9648,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9648,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9649,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9649,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9650,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9650,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9651,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9651,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9652,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9652,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9653,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9653,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9654,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9654,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9655,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9655,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9656,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9656,0,8926,125); -- Fenritear

INSERT INTO `mob_droplist_scripted` VALUES (9657,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9657,0,8926,125); -- Fenritear

-- fjalar
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9658,0,8926,125); -- Fenritear

-- Abununnu
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9659,0,8926,125); -- Fenritear

-- Tsui-Goab
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9660,0,8926,125); -- Fenritear

-- Isarukitsck
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9661,0,8926,125); -- Fenritear

-- Bismark
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9662,0,8926,125); -- Fenritear

-- Dimgruzub
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9670,0,8926,125); -- Fenritear

-- Brekekex
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9671,0,8926,125); -- Fenritear

-- Yalungar
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9672,0,8926,125); -- Fenritear

-- Vanasarvik
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9673,0,8926,125); -- Fenritear

-- Morta
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,8919,125); -- Ifritear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,8920,125); -- Leviatear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,8921,125); -- Ramutear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,8922,125); -- Garutear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,8923,125); -- Titatear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,8924,125); -- Shivatear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,8925,125); -- Carbutear
INSERT INTO `mob_droplist_scripted` VALUES (9674,0,8926,125); -- Fenritear