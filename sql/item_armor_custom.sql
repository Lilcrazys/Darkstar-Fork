-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_armor.sql
-- and must be imported/executed AFTER that file
--
-- The primary use of this file is for items DSP doesn't want AT ALL,
-- namely SoA items with item level or +skill properties.
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- INSERT INTO `item_armor` VALUES ('itemId', 'name', 'level', 'jobs', 'MId', 'shieldSize', 'scriptType', 'slot', 'rslot');
-- New entries below this line, and sorted by itemID please.

INSERT INTO `item_armor` VALUES ('21382', 'dosis_tathlum', '99', '4194303', '0', '0', '0', '8', '0');
INSERT INTO `item_armor` VALUES ('21424', 'zuuxowu_grip', '99', '4194303', '0', '0', '0', '2', '0');

-- --------------------------------------  Relic Reforge 109  -----------------------------
INSERT INTO `item_armor` VALUES ('26624', 'agoge_mask', '99', '1', '65', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26626', 'hesychasts_crown', '99', '2', '67', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26628', 'piety_cap', '99', '4', '69', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26630', 'archmages_petasos', '99', '8', '71', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26632', 'vitivation_chapeau', '99', '16', '73', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26634', 'plunderers_bonnet', '99', '32', '75', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26636', 'caballarius_coronet', '99', '64', '77', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26638', 'fallens_burgeonet', '99', '128', '79', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26640', 'ankusa_helm', '99', '256', '81', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26642', 'bihu_roundlet', '99', '512', '83', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26644', 'arcadian_beret', '99', '1024', '85', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26646', 'sakonji_kabuto', '99', '2048', '87', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26648', 'mochizuki_hatsuburi', '99', '4096', '89', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26650', 'pteroslaver_armet', '99', '8192', '91', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26652', 'glyphic_horn', '99', '16384', '93', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26654', 'luhlaza_keffiyeh', '99', '32768', '166', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26656', 'lanuns_tricorne', '99', '65536', '168', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26658', 'pitre_taj', '99', '131072', '170', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26660', 'horos_tiara', '99', '262144', '172', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26662', 'pedagogy_mortarboard', '99', '524288', '174', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26800', 'agoge_lorica', '99', '1', '65', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26802', 'hesychasts_cyclas', '99', '2', '67', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26804', 'piety_briault', '99', '4', '69', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26806', 'archmages_coat', '99', '8', '71', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26808', 'vitivation_tabard', '99', '16', '73', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26810', 'plunderers_vest', '99', '32', '75', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26812', 'caballarius_surcoat', '99', '64', '77', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26814', 'fallens_cuirass', '99', '128', '79', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26816', 'ankusa_jackcoat', '99', '256', '81', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26818', 'bihu_justaucorps', '99', '512', '83', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26820', 'arcadian_jerkin', '99', '1024', '85', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26822', 'sakonji_domaru', '99', '2048', '87', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26824', 'mochizuki_chainmail', '99', '4096', '89', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26826', 'pteroslaver_mail', '99', '8192', '91', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26828', 'glyphic_doublet', '99', '16384', '93', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26830', 'luhlaza_jubbah', '99', '32768', '166', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26832', 'lanun_frac', '99', '65536', '168', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26834', 'pitre_tobe', '99', '131072', '170', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26836', 'horos_casaque', '99', '262144', '172', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26838', 'pedagogy_gown', '99', '524288', '174', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26976', 'agoge_mufflers', '99', '1', '65', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26978', 'hesychasts_gloves', '99', '2', '67', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26980', 'piety_mitts', '99', '4', '69', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26982', 'archmages_gloves', '99', '8', '71', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26984', 'vitivation_gloves', '99', '16', '73', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26986', 'plunderers_armlets', '99', '32', '75', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26988', 'caballarius_gauntlets', '99', '64', '77', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26990', 'fallens_gauntlets', '99', '128', '79', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26992', 'ankusa_gloves', '99', '256', '81', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26994', 'bihu_cuffs', '99', '512', '83', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26996', 'arcadian_bracers', '99', '1024', '85', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('26998', 'sakonji_kote', '99', '2048', '87', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27000', 'mochizuki_tekko', '99', '4096', '89', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27002', 'pteroslaver_finger_gauntlets', '99', '8192', '91', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27004', 'glyphic_bracers', '99', '16384', '93', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27006', 'luhlaza_bazubands', '99', '32768', '166', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27008', 'lanun_gants', '99', '65536', '168', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27010', 'pitre_dastanas', '99', '131072', '170', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27012', 'horos_bangles', '99', '262144', '172', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27014', 'pedagogy_bracers', '99', '524288', '174', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27152', 'agoge_cuisses', '99', '1', '65', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27154', 'hesychasts_hose', '99', '2', '67', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27156', 'piety_pantaloons', '99', '4', '69', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27158', 'archmages_tonban', '99', '8', '71', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27160', 'vitivation_tights', '99', '16', '73', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27162', 'plunderers_culottes', '99', '32', '75', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27164', 'caballarius_breeches', '99', '64', '77', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27166', 'fallens_flanchard', '99', '128', '79', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27168', 'ankusa_trousers', '99', '256', '81', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27170', 'bihu_cannions', '99', '512', '83', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27172', 'arcadian_braccae', '99', '1024', '85', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27174', 'sakonji_haidate', '99', '2048', '87', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27176', 'mochizuki_hakama', '99', '4096', '89', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27178', 'pteroslaver_brais', '99', '8192', '91', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27180', 'glyphic_spats', '99', '16384', '93', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27182', 'luhlaza_shalwar', '99', '32768', '166', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27184', 'lanun_culottes', '99', '65536', '168', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27186', 'pitre_churidars', '99', '131072', '170', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27188', 'horos_tights', '99', '262144', '172', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27190', 'pedagogy_pants', '99', '524288', '174', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27328', 'agoge_calligae', '99', '1', '65', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27330', 'hesychasts_gaiters', '99', '2', '67', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27332', 'piety_duckbills', '99', '4', '69', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27334', 'archmages_sabots', '99', '8', '71', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27336', 'vitivation_boots', '99', '16', '73', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27338', 'plunderers_poulaines', '99', '32', '75', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27340', 'caballarius_leggings', '99', '64', '77', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27342', 'fallens_sollerets', '99', '128', '79', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27344', 'ankusa_gaiters', '99', '256', '81', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27346', 'bihu_slippers', '99', '512', '83', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27348', 'arcadian_socks', '99', '1024', '85', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27350', 'sakonji_sune-ate', '99', '2048', '87', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27352', 'mochizuki_kyahan', '99', '4096', '89', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27354', 'pteroslaver_greaves', '99', '8192', '91', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27356', 'glyphic_pigaches', '99', '16384', '93', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27358', 'luhlaza_charuqs', '99', '32768', '166', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27360', 'lanun_bottes', '99', '65536', '168', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27362', 'pitre_babouches', '99', '131072', '170', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27364', 'horos_toe_shoes', '99', '262144', '172', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27366', 'pedagogy_loafers', '99', '524288', '174', '0', '0', '256', '0');