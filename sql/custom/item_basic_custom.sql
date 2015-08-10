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

INSERT INTO `item_basic` VALUES (4064,0,'rems_tale_chapter_1','rems_tale_ch_1',12,28736,0,1,0);
INSERT INTO `item_basic` VALUES (4065,0,'rems_tale_chapter_2','rems_tale_ch_2',12,28736,0,1,0);
INSERT INTO `item_basic` VALUES (4066,0,'rems_tale_chapter_3','rems_tale_ch_3',12,28736,0,1,0);
INSERT INTO `item_basic` VALUES (4067,0,'rems_tale_chapter_4','rems_tale_ch_4',12,28736,0,1,0);
INSERT INTO `item_basic` VALUES (4068,0,'rems_tale_chapter_5','rems_tale_ch_5',12,28736,0,1,0);

INSERT INTO `item_basic` VALUES (20540,0,'eminent_baghnakhs','eminent_baghnakhs',1,63552,1,1,0);
INSERT INTO `item_basic` VALUES (20624,0,'eminent_dagger','eminent_dagger',1,63552,2,1,0);
INSERT INTO `item_basic` VALUES (20726,0,'eminent_scimitar','eminent_scimitar',1,63552,3,1,0);
INSERT INTO `item_basic` VALUES (20766,0,'eminent_sword','eminent_sword',1,63552,4,1,0);
INSERT INTO `item_basic` VALUES (20817,0,'eminent_axe','eminent_axe',1,63552,5,1,0);
INSERT INTO `item_basic` VALUES (20865,0,'eminent_voulge','eminent_voulge',1,63552,6,1,0);
INSERT INTO `item_basic` VALUES (20908,0,'eminent_sickle','eminent_sickle',1,63552,7,1,0);
INSERT INTO `item_basic` VALUES (20998,0,'kaitsuburi','kaitsuburi',1,63552,9,1,0);
INSERT INTO `item_basic` VALUES (21044,0,'ichimonji-yofusa','ichimonji-yofusa',1,63552,10,1,0);
INSERT INTO `item_basic` VALUES (21119,0,'eminent_wand','eminent_wand',1,63552,11,1,0);
INSERT INTO `item_basic` VALUES (21182,0,'eminent_staff','eminent_staff',1,63552,12,1,0);
INSERT INTO `item_basic` VALUES (21183,0,'eminent_pole','eminent_pole',1,63552,12,1,0);
INSERT INTO `item_basic` VALUES (21231,0,'eminent_bow','eminent_bow',1,63552,13,1,0);
INSERT INTO `item_basic` VALUES (21251,0,'eminent_crossbow','eminent_crossbow',13,63552,8,1,0);
INSERT INTO `item_basic` VALUES (21281,0,'eminent_gun','eminent_gun',1,63552,13,1,0);
INSERT INTO `item_basic` VALUES (28656,0,'eminent_shield','eminent_shield',1,63552,13,1,0);
INSERT INTO `item_basic` VALUES (21405,0,'eminent_flute','eminent_flute',1,63552,16,1,0);

INSERT INTO `item_basic` VALUES (27740,0,'outrider_mask','outrider_mask',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28029,0,'outrider_mittens','outrider_mittens',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28168,0,'outrider_hose','outrider_hose',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28306,0,'outrider_greaves','outrider_greaves',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (27741,0,'espial_cap','espial_cap',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28030,0,'espial_bracers','espial_bracers',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28169,0,'espial_hose','espial_hose',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28307,0,'espial_socks','espial_socks',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (27742,0,'wayfarer_circlet','wayfarer_circlet',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27883,0,'wayfarer_robe','wayfarer_robe',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28031,0,'wayfarer_cuffs','wayfarer_cuffs',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28170,0,'wayfarer_slops','wayfarer_slops',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28303,0,'wayfarer_clogs','wayfarer_clogs',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (27743,0,'temachtiani_headband','temachtiani_headband',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28032,0,'temachtiani_gloves','temachtiani_gloves',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28171,0,'temachtiani_pants','temachtiani_pants',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28309,0,'temachtiani_boots','temachtiani_boots',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (28549,0,'enlivened_ring','enlivened_ring',1,60480,0,1,0);
INSERT INTO `item_basic` VALUES (28550,0,'vehemence_ring','vehemence_ring',1,60480,0,1,0);
INSERT INTO `item_basic` VALUES (28551,0,'longshot_ring','longshot_ring',1,60480,0,1,0);
INSERT INTO `item_basic` VALUES (28552,0,'fistmele_ring','fistmele_ring',1,60480,0,1,0);
INSERT INTO `item_basic` VALUES (28553,0,'perception_ring','perception_ring',1,60480,0,1,0);
INSERT INTO `item_basic` VALUES (28499,0,'influx_earring','influx_earring',1,60480,0,1,0);
INSERT INTO `item_basic` VALUES (28500,0,'upsurge_earring','upsurge_earring',1,60480,0,1,0);
INSERT INTO `item_basic` VALUES (28501,0,'allegro_earring','allegro_earring',1,60480,0,1,0);
INSERT INTO `item_basic` VALUES (28502,0,'impregnable_earring','impregnable_earring',1,60480,0,1,0);
INSERT INTO `item_basic` VALUES (28504,0,'spellbreaker_earring','spellbreaker_earring',1,60480,0,1,0);

INSERT INTO `item_basic` VALUES (26733,0,'yorium_barbuta','yorium_barbuta',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (26891,0,'yorium_cuirass','yorium_cuirass',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27045,0,'yorium_gauntlets','yorium_gauntlets',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27232,0,'yorium_cuisses','yorium_cuisses',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27402,0,'yorium_sabatons','yorium_sabatons',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (26734,0,'acro_helm','acro_helm',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (26892,0,'acro_surcoat','acro_surcoat',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27046,0,'acro_gauntlets','acro_gauntlets',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27233,0,'acro_breeches','acro_breeches',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27403,0,'acro_leggings','acro_leggings',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (26735,0,'taeon_chapeau','taeon_chapeau',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (26893,0,'taeon_tabard','taeon_tabard',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27047,0,'taeon_gloves','taeon_gloves',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27234,0,'taeon_tights','taeon_tights',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27404,0,'taeon_boots','taeon_boots',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (26736,0,'telchine_cap','telchine_cap',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (26894,0,'telchine_chausable','telchine_chausable',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27048,0,'telchine_gloves','telchine_gloves',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27235,0,'telchine_braconi','telchine_braconi',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27405,0,'telchine_pigaches','telchine_pigaches',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (26737,0,'helios_band','helios_band',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (26895,0,'helios_jacket','helios_jacket',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27049,0,'helios_gloves','helios_gloves',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27236,0,'helios_spats','helios_spats',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27406,0,'helios_boots','helios_boots',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (27711,0,'gorney_morion_+1','gorney_morion_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (27863,0,'gorney_haubert_+1','gorney_haubert_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (28010,0,'gorney_moufles_+1','gorney_moufles_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (28152,0,'goney_brayettes_+1','goney_brayettes_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (28289,0,'gorney_sollerets_+1','gorney_sollerets_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (27712,0,'shneddick_chapeau_+1','shneddick_chapeau_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (27864,0,'shneddick_tabard_+1','shneddick_tabard_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (28011,0,'shneddick_gloves_+1','shneddick_gloves_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (28153,0,'shneddick_tights_+1','shneddick_tights_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (28290,0,'shneddick_boots_+1','shneddick_boots_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (27713,0,'weatherspoon_corona_+1','weather_corona_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (27865,0,'weatherspoon_robe_+1','weatherspoon_robe_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (28012,0,'weatherspoon_cuffs_+1','weather_cuffs_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (28154,0,'weatherspoon_pants_+1','weatherspoon_pants_+1',1,63568,0,1,0);
INSERT INTO `item_basic` VALUES (28291,0,'weatherspoon_souilers_+1','weather_souilers_+1',1,63568,0,1,0);
REPLACE INTO `item_basic` VALUES (28188,0,'gorney_brayettes','gorney_brayettes',1,63568,0,1,0);
REPLACE INTO `item_basic` VALUES (10503,0,'brego_gloves','brego_gloves',1,34816,19,0,0);

INSERT INTO `item_basic` VALUES (21371,0,'ginsen','ginsen',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28428,0,'sailfi_belt_+1','sailfi_belt_+1',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (21419,0,'rigorous+_grip_+1','rigorous+_grip_+1',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (21358,0,'plumose_sachet','plumose_sachet',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28507,0,'gwati_earring','gwati_earring',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28379,0,'mizukage-no-kubikazari','mizukage-no-kubikazari',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27594,0,'annealed_mantle','annealed_mantle',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28493,0,'neritic_earring','neritic_earring',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (21373,0,'sihirik','sihirik',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27505,0,'warders_charm_+1','warders_charm_+1',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28538,0,'lebeche_ring','lebeche_ring',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (21376,0,'inlamvuyeso','inlamvuyeso',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (27563,0,'metamorph_ring_+1','metamorph_ring_+1',1,63552,0,1,0);
INSERT INTO `item_basic` VALUES (28441,0,'ponente_sash','ponente_sash',1,63552,0,1,0);

INSERT INTO `item_basic` VALUES (5103,476,'scroll_of_crusade','crusade',1,34432,28,0,666);
INSERT INTO `item_basic` VALUES (4692,511,'scroll_of_haste_ii','haste_ii',1,34432,28,0,666);
INSERT INTO `item_basic` VALUES (28005,0,'alrunas_gloves_+1','alrunas_gloves_+1',1,63552,19,0,0);

REPLACE INTO `item_basic` VALUES (4049,0,'rusted_coin','rusted_coin',12,29760,0,1,0);



REPLACE INTO `item_basic` VALUES (28478,0,'etiolation_earring','etiolation_earring',1,63552,0,0,0);
REPLACE INTO `item_basic` VALUES (28479,0,'enervating_earring','enervating_earring',1,63552,0,0,0);
REPLACE INTO `item_basic` VALUES (27507,0,'deviant_necklace','deviant_necklace',1,63552,0,0,0);
REPLACE INTO `item_basic` VALUES (28547,0,'merirosvo_ring','merirosvo_ring',1,63552,0,0,0);
