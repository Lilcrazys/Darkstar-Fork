-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_basic.sql
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

-- INSERT INTO `item_basic` VALUES (itemid,subid,'name','sortname',stackSize,flags,aH,NoSale,BaseSell);
-- New entries below this line, and sorted by itemID please.

REPLACE INTO `item_basic` VALUES (17440,0,'kraken_club','kraken_club',1,34816,0,0,12850); -- K.club removed from AH listing.

-- ------------------------------------------  Relic Reforge 109  ---------------------------------------------
INSERT INTO `item_basic` VALUES (26624,0,'agoge_mask','agoge_mask',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26626,0,'hesychasts_crown','hesychasts_crown',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26628,0,'piety_cap','piety_cap',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26630,0,'archmages_petasos','archmages_petasos',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26632,0,'vitivation_chapeau','vitivation_chapeau',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26634,0,'plunderers_bonnet','plunderers_bonnet',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26636,0,'caballarius_coronet','caballarius_coronet',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26638,0,'fallens_burgeonet','fallens_burgeonet',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26640,0,'ankusa_helm','ankusa_helm',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26642,0,'bihu_roundlet','bihu_roundlet',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26644,0,'arcadian_beret','arcadian_beret',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26646,0,'sakonji_kabuto','sakonji_kabuto',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26648,0,'mochizuki_hatsuburi','mochizuki_hatsuburi',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26650,0,'pteroslaver_armet','pteroslaver_armet',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26652,0,'glyphic_horn','glyphic_horn',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26654,0,'luhlaza_keffiyeh','luhlaza_keffiyeh',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26656,0,'lanuns_tricorne','lanuns_tricorne',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26658,0,'pitre_taj','pitre_taj',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26660,0,'horos_tiara','horos_tiara',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26662,0,'pedagogy_mortarboard','pedagogy_mboard',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26800,0,'agoge_lorica','agoge_lorica',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26802,0,'hesychasts_cyclas','hesychasts_cyclas',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26804,0,'piety_briault','piety_briault',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26806,0,'archmages_coat','archmages_coat',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26808,0,'vitivation_tabard','vitivation_tabard',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26810,0,'plunderers_vest','plunderers_vest',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26812,0,'caballarius_surcoat','caballarius_surcoat',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26814,0,'fallens_cuirass','fallens_cuirass',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26816,0,'ankusa_jackcoat','ankusa_jackcoat',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26818,0,'bihu_justaucorps','bihu_justaucorps',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26820,0,'arcadian_jerkin','arcadian_jerkin',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26822,0,'sakonji_domaru','sakonji_domaru',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26824,0,'mochizuki_chainmail','mochizuki_chainmail',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26826,0,'pteroslaver_mail','pteroslaver_mail',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26828,0,'glyphic_doublet','glyphic_doublet',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26830,0,'luhlaza_jubbah','luhlaza_jubbah',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26832,0,'lanun_frac','lanun_frac',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26834,0,'pitre_tobe','pitre_tobe',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26836,0,'horos_casaque','horos_casaque',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26838,0,'pedagogy_gown','pedagogy_gown',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (10690,0,'agoge_mufflers','agoge_mufflers',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (10691,0,'hesychasts_gloves','hesychasts_gloves',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26980,0,'piety_mitts','piety_mitts',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26982,0,'archmages_gloves','archmages_gloves',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26984,0,'vitivation_gloves','vitivation_gloves',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26986,0,'plunderers_armlets','plunderers_armlets',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26988,0,'caballarius_gauntlets','caballarius_gauntlets',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26990,0,'fallens_gauntlets','fallens_gauntlets',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26992,0,'ankusa_gloves','ankusa_gloves',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26994,0,'bihu_cuffs','bihu_cuffs',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26996,0,'arcadian_bracers','arcadian_bracers',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (26998,0,'sakonji_kote','sakonji_kote',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27000,0,'mochizuki_tekko','mochizuki_tekko',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27002,0,'pteroslaver_finger_gauntlets','pteroslaver_finger_gauntlets',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27004,0,'glyphic_bracers','glyphic_bracers',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27006,0,'luhlaza_bazubands','luhlaza_bazubands',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27008,0,'lanun_gants','lanun_gants',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27010,0,'pitre_dastanas','pitre_dastanas',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27012,0,'horos_bangles','horos_bangles',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27014,0,'pedagogy_bracers','pedagogy_bracers',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27152,0,'agoge_cuisses','agoge_cuisses',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27154,0,'hesychasts_hose','hesychasts_hose',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27156,0,'piety_pantaloons','piety_pantaloons',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27158,0,'archmages_tonban','archmages_tonban',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27160,0,'vitivation_tights','vitivation_tights',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27162,0,'plunderers_culottes','plunderers_culottes',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27164,0,'caballarius_breeches','caballarius_breeches',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27166,0,'fallens_flanchard','fallens_flanchard',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27168,0,'ankusa_trousers','ankusa_trousers',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27170,0,'bihu_cannions','bihu_cannions',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27172,0,'arcadian_braccae','arcadian_braccae',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27174,0,'sakonji_haidate','sakonji_haidate',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27176,0,'mochizuki_hakama','mochizuki_hakama',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27178,0,'pteroslaver_brais','pteroslaver_brais',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27180,0,'glyphic_spats','glyphic_spats',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27182,0,'luhlaza_shalwar','luhlaza_shalwar',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27184,0,'lanun_culottes','lanun_culottes',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27186,0,'pitre_churidars','pitre_churidars',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27188,0,'horos_tights','horos_tights',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27190,0,'pedagogy_pants','pedagogy_pants',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27328,0,'agoge_calligae','agoge_calligae',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27330,0,'hesychasts_gaiters','hesychasts_gaiters',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27332,0,'piety_duckbills','piety_duckbills',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27334,0,'archmages_sabots','archmages_sabots',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27336,0,'vitivation_boots','vitivation_boots',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27338,0,'plunderers_poulaines','plunderers_poulaines',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27340,0,'caballarius_leggings','caballarius_leggings',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27342,0,'fallens_sollerets','fallens_sollerets',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27344,0,'ankusa_gaiters','ankusa_gaiters',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27346,0,'bihu_slippers','bihu_slippers',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27348,0,'arcadian_socks','arcadian_socks',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27350,0,'sakonji_sune-ate','sakonji_sune-ate',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27352,0,'mochizuki_kyahan','mochizuki_kyahan',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27354,0,'pteroslaver_greaves','pteroslaver_greaves',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27356,0,'glyphic_pigaches','glyphic_pigaches',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27358,0,'luhlaza_charuqs','luhlaza_charuqs',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27360,0,'lanun_bottes','lanun_bottes',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27362,0,'pitre_babouches','ptn_babouches',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27364,0,'horos_toe_shoes','horos_shoes',1,63552,99,0,0);
INSERT INTO `item_basic` VALUES (27366,0,'pedagogy_loafers','pedagogy_loafers',1,63552,99,0,0);