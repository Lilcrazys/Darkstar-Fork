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

REPLACE INTO `item_armor` VALUES (18852,'octave_club',99,0,32767,110,0,0,3,0);

REPLACE INTO `item_armor` VALUES (28641,'vespid_mantle',99,0,2473971,0,0,0,32768,0);

INSERT INTO `item_armor` VALUES (20540,'eminent_baghnakhs',99,117,135427,117,0,0,1,0);
INSERT INTO `item_armor` VALUES (20624,'eminent_dagger',99,117,1605625,163,0,0,3,0);
INSERT INTO `item_armor` VALUES (20726,'eminent_scimitar',99,117,34977,258,0,0,3,0);
INSERT INTO `item_armor` VALUES (20766,'eminent_sword',99,117,2097345,70,0,0,1,0);
INSERT INTO `item_armor` VALUES (20817,'eminent_axe',99,117,2098561,82,0,0,3,0);
INSERT INTO `item_armor` VALUES (20865,'eminent_voulge',99,117,2097281,365,0,0,1,0);
INSERT INTO `item_armor` VALUES (20908,'eminent_sickle',99,117,128,393,0,0,1,0);
INSERT INTO `item_armor` VALUES (20998,'kaitsuburi',99,117,4096,394,0,0,3,0);
INSERT INTO `item_armor` VALUES (21044,'ichimonji-yofusa',99,117,2048,144,0,0,1,0);
INSERT INTO `item_armor` VALUES (21119,'eminent_wand',99,117,1622044,230,0,0,3,0);
INSERT INTO `item_armor` VALUES (21182,'eminent_staff',99,117,1590047,341,0,0,1,0);
INSERT INTO `item_armor` VALUES (21183,'eminent_pole',99,117,16384,341,0,0,1,0);
INSERT INTO `item_armor` VALUES (21231,'eminent_bow',99,117,7665,40,0,0,4,0);
INSERT INTO `item_armor` VALUES (21251,'eminent_crossbow',99,117,1185,53,0,0,4,0);
INSERT INTO `item_armor` VALUES (21281,'eminent_gun',99,117,1024,58,0,0,4,0);
INSERT INTO `item_armor` VALUES (28656,'eminent_shield',99,117,193,30,3,0,2,0);
INSERT INTO `item_armor` VALUES (21405,'eminent_flute',99,117,512,69,0,0,4,0);

INSERT INTO `item_armor` VALUES (28549,'enlivened_ring',99,0,4194303,0,0,0,24576,0);
INSERT INTO `item_armor` VALUES (28550,'vehemence_ring',99,0,4194303,0,0,0,24576,0);
INSERT INTO `item_armor` VALUES (28551,'longshot_ring',99,0,4194303,0,0,0,24576,0);
INSERT INTO `item_armor` VALUES (28552,'fistmele_ring',99,0,4194303,0,0,0,24576,0);
INSERT INTO `item_armor` VALUES (28553,'perception_ring',99,0,4194303,0,0,0,24576,0);
INSERT INTO `item_armor` VALUES (28499,'influx_earring',99,0,4194303,0,0,0,6144,0);
INSERT INTO `item_armor` VALUES (28500,'upsurge_earring',99,0,4194303,0,0,0,6144,0);
INSERT INTO `item_armor` VALUES (28501,'allegro_earring',99,0,4194303,0,0,0,6144,0);
INSERT INTO `item_armor` VALUES (28502,'impregnable_earring',99,0,4194303,0,0,0,6144,0);
INSERT INTO `item_armor` VALUES (28504,'spellbreaker_earring',99,0,4194303,0,0,0,6144,0);


INSERT INTO `item_armor` VALUES (27740,'outrider_mask',99,117,6593,5,0,0,16,0);
INSERT INTO `item_armor` VALUES (28029,'outrider_mittens',99,117,6593,5,0,0,64,0);
INSERT INTO `item_armor` VALUES (28168,'outrider_hose',99,117,6593,5,0,0,128,0);
INSERT INTO `item_armor` VALUES (28306,'outrider_greaves',99,117,6593,5,0,0,256,0);

INSERT INTO `item_armor` VALUES (27741,'espial_cap',99,117,3662710,23,0,0,16,0);
INSERT INTO `item_armor` VALUES (28030,'espial_bracers',99,117,3662710,23,0,0,64,0);
INSERT INTO `item_armor` VALUES (28169,'espial_hose',99,117,3662710,23,0,0,128,0);
INSERT INTO `item_armor` VALUES (28307,'espial_socks',99,117,3662710,23,0,0,256,0);

INSERT INTO `item_armor` VALUES (27742,'wayfarer_circlet',99,117,4179646,20,0,0,16,0);
INSERT INTO `item_armor` VALUES (27883,'wayfarer_robe',99,117,4179646,20,0,0,32,0);
INSERT INTO `item_armor` VALUES (28031,'wayfarer_cuffs',99,117,4179646,20,0,0,64,0);
INSERT INTO `item_armor` VALUES (28170,'wayfarer_slops',99,117,4179646,20,0,0,128,0);
INSERT INTO `item_armor` VALUES (28303,'wayfarer_clogs',99,117,4179646,20,0,0,256,0);

INSERT INTO `item_armor` VALUES (27743,'temachtiani_headband',99,105,4194303,102,0,0,16,0);
INSERT INTO `item_armor` VALUES (28032,'temachtiani_gloves',99,105,4194303,102,0,0,64,0);
INSERT INTO `item_armor` VALUES (28171,'temachtiani_pants',99,105,4194303,102,0,0,128,0);
INSERT INTO `item_armor` VALUES (28309,'temachtiani_boots',99,105,4194303,102,0,0,256,0);


INSERT INTO `item_armor` VALUES (26733,'yorium_barbuta',99,119,193,55,0,0,16,0);
INSERT INTO `item_armor` VALUES (26891,'yorium_cuirass',99,119,193,55,0,0,32,0);
INSERT INTO `item_armor` VALUES (27045,'yorium_gauntlets',99,119,193,55,0,0,64,0);
INSERT INTO `item_armor` VALUES (27232,'yorium_cuisses',99,119,193,55,0,0,128,0);
INSERT INTO `item_armor` VALUES (27402,'yorium_sabatons',99,119,193,55,0,0,256,0);

INSERT INTO `item_armor` VALUES (26734,'acro_helm',99,119,10689,325,0,0,16,0);
INSERT INTO `item_armor` VALUES (26892,'acro_surcoat',99,119,10689,325,0,0,32,0);
INSERT INTO `item_armor` VALUES (27046,'acro_gauntlets',99,119,10689,325,0,0,64,0);
INSERT INTO `item_armor` VALUES (27233,'acro_breeches',99,119,10689,325,0,0,128,0);
INSERT INTO `item_armor` VALUES (27403,'acro_leggings',99,119,10689,325,0,0,256,0);

INSERT INTO `item_armor` VALUES (26735,'taeon_chapeau',99,119,2602290,326,0,0,16,0);
INSERT INTO `item_armor` VALUES (26893,'taeon_tabard',99,119,2602290,326,0,0,32,0);
INSERT INTO `item_armor` VALUES (27047,'taeon_gloves',99,119,2602290,326,0,0,64,0);
INSERT INTO `item_armor` VALUES (27234,'taeon_tights',99,119,2602290,326,0,0,128,0);
INSERT INTO `item_armor` VALUES (27404,'taeon_boots',99,119,2602290,326,0,0,256,0);

INSERT INTO `item_armor` VALUES (26736,'telchine_cap',99,119,1622556,143,0,0,16,0);
INSERT INTO `item_armor` VALUES (26894,'telchine_chausable',99,119,1622556,143,0,0,32,0);
INSERT INTO `item_armor` VALUES (27048,'telchine_gloves',99,119,1622556,143,0,0,64,0);
INSERT INTO `item_armor` VALUES (27235,'telchine_braconi',99,119,1622556,143,0,0,128,0);
INSERT INTO `item_armor` VALUES (27405,'telchine_pigaches',99,119,1622556,143,0,0,256,0);

INSERT INTO `item_armor` VALUES (26737,'helios_band',99,119,1622044,327,0,0,16,0);
INSERT INTO `item_armor` VALUES (26895,'helios_jacket',99,119,1622044,327,0,0,32,0);
INSERT INTO `item_armor` VALUES (27049,'helios_gloves',99,119,1622044,327,0,0,64,0);
INSERT INTO `item_armor` VALUES (27236,'helios_spats',99,119,1622044,327,0,0,128,0);
INSERT INTO `item_armor` VALUES (27406,'helios_boots',99,119,1622044,327,0,0,256,0);

INSERT INTO `item_armor` VALUES (27711,'gorney_morion_+1',99,117,10689,354,0,0,16,0);
INSERT INTO `item_armor` VALUES (27863,'gorney_haubert_+1',99,117,10689,354,0,0,32,0);
INSERT INTO `item_armor` VALUES (28010,'gorney_moufles_+1',99,117,10689,354,0,0,64,0);
INSERT INTO `item_armor` VALUES (28152,'gorney_brayettes_+1',99,117,10689,354,0,0,128,0);
INSERT INTO `item_armor` VALUES (28289,'gorney_sollerets_+1',99,117,10689,354,0,0,256,0);

INSERT INTO `item_armor` VALUES (27712,'shneddick_chapeau_+1',99,117,2593826,355,0,0,16,0);
INSERT INTO `item_armor` VALUES (27864,'shneddick_tabard_+1',99,117,2593826,355,0,0,32,0);
INSERT INTO `item_armor` VALUES (28011,'shneddick_gloves_+1',99,117,2593826,355,0,0,64,0);
INSERT INTO `item_armor` VALUES (28153,'shneddick_tights_+1',99,117,2593826,355,0,0,128,0);
INSERT INTO `item_armor` VALUES (28290,'shneddick_boots_+1',99,117,2593826,355,0,0,256,0);

INSERT INTO `item_armor` VALUES (27713,'weathspoon_corona_+1',99,117,3719708,356,0,0,16,0);
INSERT INTO `item_armor` VALUES (27865,'weatherspoon_robe_+1',99,117,3719708,356,0,0,32,0);
INSERT INTO `item_armor` VALUES (28012,'weatherspoon_cuffs_+1',99,117,3719708,356,0,0,64,0);
INSERT INTO `item_armor` VALUES (28154,'weatherspoon_pants_+1',99,117,3719708,356,0,0,128,0);
INSERT INTO `item_armor` VALUES (28291,'weatherspoon_souliers_+1',99,117,3719708,356,0,0,256,0);

INSERT INTO `item_armor` VALUES (21371,'ginsen',99,0,2473971,0,0,0,8,0);
INSERT INTO `item_armor` VALUES (28428,'sailfi_belt_+1',99,0,2473969,0,0,0,1024,0);
INSERT INTO `item_armor` VALUES (21419,'rigorous+_grip_+1',99,0,4194303,0,0,0,2,0);

INSERT INTO `item_armor` VALUES (21358,'plumose_sachet',99,0,4194303,0,0,0,8,0);
INSERT INTO `item_armor` VALUES (28507,'gwati_earring',99,0,4194303,0,0,0,6144,0);
INSERT INTO `item_armor` VALUES (28379,'mizukage-no-kubikazari',99,0,1589788,0,0,0,512,0);
INSERT INTO `item_armor` VALUES (27594,'annealed_mantle',99,0,2473971,0,0,0,32768,0);
INSERT INTO `item_armor` VALUES (28493,'neritic_earring',99,0,4194303,0,0,0,6144,0);
INSERT INTO `item_armor` VALUES (21373,'sihirik',99,0,30639,0,0,0,8,0);
INSERT INTO `item_armor` VALUES (27505,'warders_charm_+1',99,0,4194303,0,0,0,512,0);
INSERT INTO `item_armor` VALUES (28538,'lebeche_ring',99,0,4194303,0,0,0,24576,0);
INSERT INTO `item_armor` VALUES (21376,'inlamvuyeso',99,0,2589730,0,0,0,8,0);
INSERT INTO `item_armor` VALUES (27563,'metamorph_ring_+1',99,0,4194303,0,0,0,24576,0);
INSERT INTO `item_armor` VALUES (28441,'ponente_sash',99,0,66560,0,0,0,1024,0);

REPLACE INTO `item_armor` VALUES (28339,'manibozho_boots',99,110,2593826,350,0,0,256,0);
REPLACE INTO `item_armor` VALUES (28199,'manibozho_brais',99,110,2593826,350,0,0,128,0);
REPLACE INTO `item_armor` VALUES (28058,'manibozho_gloves',99,110,2593826,350,0,0,64,0);
REPLACE INTO `item_armor` VALUES (27918,'manibozho_jerkin',99,110,2593826,350,0,0,32,0);
REPLACE INTO `item_armor` VALUES (27777,'manibozho_beret',99,110,2593826,350,0,0,16,0);

REPLACE INTO `item_armor` VALUES (27410,'hippomenes_socks_+1',99,119,3851870,350,0,0,256,0);
INSERT INTO `item_armor` VALUES (28005,'alrunas_gloves_+1',99,118,66592,223,0,0,64,0);


INSERT INTO `item_armor` VALUES (28478,'etiolation_earring',99,0,4194303,0,0,0,6144,0);
INSERT INTO `item_armor` VALUES (28479,'enervating_earring',99,0,4194303,0,0,0,6144,0);
INSERT INTO `item_armor` VALUES (28483,'cryptic_earring',99,0,4194303,0,0,0,6144,0);
INSERT INTO `item_armor` VALUES (27507,'deviant_necklace',99,0,4194303,0,0,0,512,0);
INSERT INTO `item_armor` VALUES (28547,'merirosvo_ring',99,0,65536,0,0,0,6144,0);

REPLACE INTO `item_armor` VALUES (28200,'bokwus_slops',99,110,1589788,351,0,0,128,0);
REPLACE INTO `item_armor` VALUES (28059,'bokwus_gloves',99,110,1589788,351,0,0,64,0);
REPLACE INTO `item_armor` VALUES (27919,'bokwus_robe',99,110,1589788,351,0,0,32,0);
REPLACE INTO `item_armor` VALUES (27778,'bokwus_circlet',99,110,1589788,351,0,0,16,0);
