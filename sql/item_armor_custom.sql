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

INSERT INTO `item_armor` VALUES ('27580', 'adoulin_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27582', 'weatherspoon_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27584', 'renaye_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27586', 'haverton_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27588', 'vocane_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27590', 'shneddick_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27581', 'woltaris_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27583', 'janniston_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27585', 'gorney_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27587', 'karieyh_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27589', 'thurandaut_ring', '99', '4194303', '0', '0', '0', '24576', '0');
INSERT INTO `item_armor` VALUES ('27591', 'orvail_ring', '99', '4194303', '0', '0', '0', '24576', '0');

-- ------------------------------- AF 109 ----------------------------------------------------
INSERT INTO `item_armor` VALUES ('27663', 'pummelers_mask', '99', '1', '64', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27664', 'anchorites_crown', '99', '2', '66', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27665', 'theophany_cap', '99', '4', '68', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27666', 'spaekonas_petasos', '99', '8', '70', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27667', 'atrophy_chapeau', '99', '16', '72', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27668', 'pillagers_bonnet', '99', '32', '74', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27669', 'reverence_coronet', '99', '64', '76', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27670', 'ignominy_burgeonet', '99', '128', '78', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27671', 'totemic_helm', '99', '256', '80', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27672', 'brioso_roundlet', '54', '512', '82', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27673', 'orion_beret', '99', '1024', '84', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27674', 'wakido_kabuto', '60', '2048', '86', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27675', 'hachiya_hatsuburi', '56', '4096', '88', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27676', 'vishap_armet', '99', '8192', '90', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27677', 'convokers_horn', '99', '16384', '92', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27678', 'assimilators_keffiyeh', '99', '32768', '165', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27679', 'laksamanas_tricorne', '99', '65536', '167', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27680', 'foire_taj', '99', '131072', '169', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27681', 'maxixi_tiara', '99', '262144', '211', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27683', 'academics_mortarboard', '99', '524288', '214', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27807', 'pummelers_lorica', '99', '1', '64', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27808', 'anchorites_cyclas', '99', '2', '66', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27809', 'theophany_briault', '99', '4', '68', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27810', 'spaekonas_coat', '99', '8', '70', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27811', 'atrophy_tabard', '99', '16', '72', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27812', 'pillagers_vest', '99', '32', '74', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27813', 'reverence_surcoat', '99', '64', '76', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27814', 'ignominy_cuirass', '99', '128', '78', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27815', 'totemic_jackcoat', '99', '256', '80', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27816', 'brioso_justaucorps', '99', '512', '82', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27817', 'orion_jerkin', '99', '1024', '84', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27818', 'wakido_domaru', '58', '2048', '86', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27819', 'hachiya_chainmail', '58', '4096', '88', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27820', 'vishap_mail', '99', '8192', '90', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27821', 'convokers_doublet', '99', '16384', '92', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27822', 'assimilators_jubbah', '99', '32768', '165', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27823', 'laksamanas_frac', '99', '65536', '167', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27824', 'foire_tobe', '99', '131072', '169', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27825', 'maxixi_casaque', '99', '262144', '211', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27827', 'academics_gown', '99', '524288', '214', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27943', 'pummelers_mufflers', '99', '1', '64', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27944', 'anchorites_gloves', '99', '2', '66', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27945', 'theophany_mitts', '99', '4', '68', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27946', 'spaekonas_gloves', '99', '8', '70', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27947', 'atrophy_gloves', '99', '16', '72', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27948', 'pillagers_armlets', '99', '32', '74', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27949', 'reverence_gauntlets', '99', '64', '76', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27950', 'ignominy_gauntlets', '99', '128', '78', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27951', 'totemic_gloves', '99', '256', '80', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27952', 'brioso_cuffs', '99', '512', '82', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27953', 'orion_bracers', '99', '1024', '84', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27954', 'wakido_kote', '99', '2048', '86', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27955', 'hachiya_tekko', '99', '4096', '88', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27956', 'vishap_finger_gauntlets', '99', '8192', '90', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27957', 'convokers_bracers', '99', '16384', '92', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27958', 'assimilators_bazubands', '99', '32768', '165', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27959', 'laksamanas_gants', '99', '65536', '167', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27960', 'foire_dastanas', '99', '131072', '169', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27961', 'maxixi_bangles', '99', '262144', '211', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27963', 'academics_bracers', '99', '524288', '214', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('28090', 'pummelers_cuisses', '99', '1', '64', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28091', 'anchorites_hose', '99', '2', '66', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28092', 'theophany_pantaloons', '99', '4', '68', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28093', 'spaekonas_tonban', '99', '8', '70', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28094', 'atrophy_tights', '99', '16', '72', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28095', 'pillagers_culottes', '99', '32', '74', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28096', 'reverence_breeches', '99', '64', '76', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28097', 'ignominy_flanchard', '99', '128', '78', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28098', 'totemic_trousers', '99', '256', '80', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28099', 'brioso_cannions', '99', '512', '82', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28100', 'orion_braccae', '99', '1024', '84', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28101', 'wakido_haidate', '99', '2048', '86', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28102', 'hachiya_hakama', '99', '4096', '88', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28103', 'vishap_brais', '99', '8192', '90', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28104', 'convokers_spats', '99', '16384', '92', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28105', 'assimilators_shalwar', '99', '32768', '165', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28106', 'laksamanas_culottes', '99', '65536', '167', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28107', 'foire_churidars', '99', '131072', '169', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28108', 'maxixi_tights', '99', '262144', '211', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28110', 'academics_pants', '99', '524288', '214', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28223', 'pummelers_calligae', '99', '1', '64', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28224', 'anchorites_gaiters', '99', '2', '66', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28225', 'theophany_duckbills', '99', '4', '68', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28226', 'spaekonas_sabots', '99', '8', '70', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28227', 'atrophy_boots', '99', '16', '72', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28228', 'pillagers_poulaines', '99', '32', '74', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28229', 'reverence_leggings', '99', '64', '76', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28230', 'ignominy_sollerets', '99', '128', '78', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28231', 'totemic_gaiters', '99', '256', '80', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28232', 'brioso_slippers', '99', '512', '82', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28233', 'orion_socks', '99', '1024', '84', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28234', 'wakido_sune-ate', '99', '2048', '86', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28235', 'hachiya_kyahan', '99', '4096', '88', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28236', 'vishap_greaves', '99', '8192', '90', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28237', 'convokers_pigaches', '99', '16384', '92', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28238', 'assimilators_charuqs', '99', '32768', '165', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28239', 'laksamanas_bottes', '99', '65536', '167', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28240', 'foire_babouches', '99', '131072', '169', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28241', 'maxixi_toe_shoes', '99', '262144', '211', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('28243', 'academics_loafers', '99', '524288', '214', '0', '0', '256', '0');

-- sea weapons
REPLACE INTO `item_armor` VALUES ('20636', 'izhiikoh', '99', '525376', '710', '0', '0', '3', '0');
INSERT INTO `item_armor` VALUES ('20809', 'kumbhakarna', '99', '257', '713', '0', '0', '3', '0');
INSERT INTO `item_armor` VALUES ('21169', 'keraunos', '99', '1589788', '720', '0', '0', '1', '0');
INSERT INTO `item_armor` VALUES ('20536', 'tinhaspa', '99', '262643', '134', '0', '0', '1', '0');
INSERT INTO `item_armor` VALUES ('21252', 'one-eyed', '99', '1056', '61', '0', '0', '4', '0');
INSERT INTO `item_armor` VALUES ('20860', 'minos', '99', '2097281', '335', '0', '0', '1', '0');
INSERT INTO `item_armor` VALUES ('20717', 'arendsi_fleuret', '99', '2439161', '250', '0', '0', '3', '0');
INSERT INTO `item_armor` VALUES ('21111', 'bolelabunga', '99', '1622044', '627', '0', '0', '3', '0');
INSERT INTO `item_armor` VALUES ('20763', 'kbiroj', '99', '2097345', '65', '0', '0', '1', '0');
INSERT INTO `item_armor` VALUES ('20904', 'cronus', '99', '128', '201', '0', '0', '1', '0');
INSERT INTO `item_armor` VALUES ('21040', 'shokudaikiri', '99', '2048', '151', '0', '0', '1', '0');
INSERT INTO `item_armor` VALUES ('20954', 'eminent_lance', '99', '10240', '444', '0', '0', '1', '0');
INSERT INTO `item_armor` VALUES ('20994', 'shigi', '99', '4096', '605', '0', '0', '3', '0');
INSERT INTO `item_armor` VALUES ('21229', 'cibitshavore', '99', '3265', '34', '0', '0', '4', '0');

INSERT INTO `item_armor` VALUES ('20857', 'svarga', '99', '1', '714', '0', '0', '1', '0');
INSERT INTO `item_armor` VALUES ('21038', 'senkuto', '99', '2048', '612', '0', '0', '1', '0');


-- empy 109]
INSERT INTO `item_armor` VALUES ('26740', 'boii_mask', '99', '1', '282', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26742', 'bhikku_crown', '99', '2', '283', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26744', 'ebers_cap', '99', '4', '284', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26746', 'wicce_petasos', '99', '8', '285', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26748', 'lethargy_chappel', '99', '16', '286', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26750', 'skulkers_bonnet', '99', '32', '287', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26752', 'chevaliers_armet', '99', '64', '288', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26754', 'heathens_burgeonet', '99', '128', '289', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26756', 'nukumi_cabasset', '99', '256', '290', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26758', 'fili_calot', '99', '512', '291', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26760', 'amini_gapette', '99', '1024', '292', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26762', 'kasuga_kabuto', '99', '2048', '293', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26764', 'hattori_zukin', '99', '4096', '294', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26766', 'peltasts_mezail', '99', '8192', '295', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26768', 'beckoners_horn', '99', '16384', '296', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26770', 'hashishin_kavuk', '99', '32768', '297', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26772', 'chasseurs_tricorne', '99', '65536', '298', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26774', 'karagoz_cappello', '99', '131072', '299', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26776', 'maculele_tiara', '99', '262144', '305', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26778', 'arbatel_bonnet', '99', '524288', '306', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('26898', 'boii_lorica', '99', '1', '282', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26900', 'bhikku_cyclas', '99', '2', '283', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26902', 'ebers_bliaud', '99', '4', '284', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26904', 'wicce_coat', '99', '8', '285', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26906', 'lethargy_sayon', '99', '16', '286', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26908', 'skulkers_vest', '99', '32', '287', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26910', 'chevaliers_cuirass', '99', '64', '288', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26912', 'heathens_cuirass', '99', '128', '289', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26914', 'nukumi_gausape', '99', '256', '290', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26916', 'fili_hongreline', '99', '512', '291', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26918', 'amini_caban', '99', '1024', '292', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26920', 'kasuga_domaru', '99', '2048', '293', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26922', 'hattori_ningi', '99', '4096', '294', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26924', 'peltasts_plackart', '99', '8192', '295', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26926', 'beckoners_doublet', '99', '16384', '296', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26928', 'hashishin_mintan', '99', '32768', '297', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26930', 'chasseurs_frac', '99', '65536', '298', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26932', 'karagoz_farsetto', '99', '131072', '299', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26934', 'maculele_casaque', '99', '262144', '305', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('26936', 'arbatel_gown', '99', '524288', '306', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('27052', 'boii_mufflers', '99', '1', '282', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27054', 'bhikku_gloves', '99', '2', '283', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27056', 'ebers_mitts', '99', '4', '284', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27058', 'wicce_gloves', '99', '8', '285', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27060', 'lethargy_gantherots', '99', '16', '286', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27062', 'skulkers_armlets', '99', '32', '287', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27064', 'chevaliers_gauntlets', '99', '64', '288', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27066', 'heathens_gauntlets', '99', '128', '289', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27068', 'nukumi_manoplas', '99', '256', '290', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27070', 'fili_manchettes', '99', '512', '291', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27072', 'amini_glovelettes', '99', '1024', '292', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27074', 'kasuga_kote', '99', '2048', '293', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27076', 'hattori_tekko', '99', '4096', '294', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27078', 'peltasts_vambraces', '99', '8192', '295', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27080', 'beckoners_bracers', '99', '16384', '296', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27082', 'hashishin_bazubands', '99', '32768', '297', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27084', 'chasseurs_gants', '99', '65536', '298', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27086', 'karagoz_guanti', '99', '131072', '299', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27088', 'maculele_bangles', '99', '262144', '305', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27090', 'arbatel_bracers', '99', '524288', '306', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('27237', 'boii_cuisses', '99', '1', '282', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27239', 'bhikku_hose', '99', '2', '283', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27241', 'ebers_pantaloons', '99', '4', '284', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27243', 'wicce_chausses', '99', '8', '285', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27245', 'lethargy_fuseau', '99', '16', '286', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27247', 'skulkers_culottes', '99', '32', '287', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27249', 'chevaliers_cuisses', '99', '64', '288', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27251', 'heathens_flanchard', '99', '128', '289', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27253', 'nukumi_quijotes', '99', '256', '290', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27255', 'fili_rhingrave', '99', '512', '291', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27257', 'amini_bragues', '99', '1024', '292', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27259', 'kasuga_haidate', '99', '2048', '293', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27261', 'hattori_hakama', '99', '4096', '294', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27263', 'peltasts_cuissots', '99', '8192', '295', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27265', 'beckoners_spats', '99', '16384', '296', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27267', 'hashishin_tayt', '99', '32768', '297', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27269', 'chasseurs_culottes', '99', '65536', '298', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27271', 'karagoz_pantaloni', '99', '131072', '299', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27273', 'maculele_tights', '99', '262144', '305', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27275', 'arbatel_pants', '99', '524288', '306', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('27411', 'boii_calligae', '99', '1', '282', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27413', 'bhikku_gaiters', '99', '2', '283', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27415', 'ebers_duckbills', '99', '4', '284', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27417', 'wicce_sabots', '99', '8', '285', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27419', 'lethargy_houseaux', '99', '16', '286', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27421', 'skulkers_poulaines', '99', '32', '287', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27423', 'chevaliers_sabatons', '99', '64', '288', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27425', 'heathens_sollerets', '99', '128', '289', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27427', 'nukumi_ocreae', '99', '256', '290', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27429', 'fili_cothurnes', '99', '512', '291', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27431', 'amini_bottillons', '99', '1024', '292', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27433', 'kasuga_sune-ate', '99', '2048', '293', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27435', 'hattori_kyahan', '99', '4096', '294', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27437', 'peltasts_schynbalds', '99', '8192', '295', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27439', 'beckoners_pigaches', '99', '16384', '296', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27441', 'hashishin_basmak', '99', '32768', '297', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27443', 'chasseurs_bottes', '99', '65536', '298', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27445', 'karagoz_scarpe', '99', '131072', '299', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27447', 'maculele_toeshoes', '99', '262144', '305', '0', '0', '256', '0');
INSERT INTO `item_armor` VALUES ('27449', 'arbatel_loafers', '99', '524288', '306', '0', '0', '256', '0');

INSERT INTO `item_armor` VALUES ('27752', 'karieyh_morion_+1', '99', '10689', '342', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27863', 'karieyh_haubert_+1', '99', '10689', '342', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('28042', 'karieyh_moufles_+1', '99', '10689', '342', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('28182', 'karieyh_brayette_+1', '99', '10689', '342', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28320', 'karieyh_sollerets_+1', '99', '10689', '342', '0', '0', '256', '0');

INSERT INTO `item_armor` VALUES ('27753', 'thurandaut_chapeau_+1', '99', '2593826', '343', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27896', 'thurandaut_tabard_+1', '99', '2593826', '343', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('28043', 'thurandaut_gloves_+1', '99', '2593826', '343', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('28183', 'thurandaut_tights_+1', '99', '2593826', '343', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28321', 'thurandaut_boots_+1', '99', '2593826', '343', '0', '0', '256', '0');

INSERT INTO `item_armor` VALUES ('27754', 'orvail_corona_+1', '99', '3850780', '344', '0', '0', '16', '0');
INSERT INTO `item_armor` VALUES ('27897', 'orvail_robe_+1', '99', '3850780', '344', '0', '0', '32', '0');
INSERT INTO `item_armor` VALUES ('28044', 'orvail_cuffs_+1', '99', '3850780', '344', '0', '0', '64', '0');
INSERT INTO `item_armor` VALUES ('28184', 'orvail_pants_+1', '99', '3850780', '344', '0', '0', '128', '0');
INSERT INTO `item_armor` VALUES ('28322', 'orvail_souliers_+1', '99', '3850780', '344', '0', '0', '256', '0');