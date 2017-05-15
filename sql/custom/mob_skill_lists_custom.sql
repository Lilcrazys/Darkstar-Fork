-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of mob_skill_lists.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- To remove a DSP entry:
-- DELETE FROM `mob_skill_lists` WHERE skill_list_id = LIST_ID and mob_skill_id = SKILL_ID; -- Skill Name
-- ---------------------------------------------------------------------------
-- NOTE: Any skill like Mighty Strikes being forced in script does not need to be in the mobs skill list to work.
-- PRIMARY KEY (`skill_list_id`,`mob_skill_id`)
-- KEEP IT IN ORDER BY ID!!
-- INSERT INTO `mob_skill_lists` VALUES ('list_name', list_id, skill_id); -- skill name

INSERT INTO `mob_skill_lists` VALUES ('Flan',112,1826); -- Synergism_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Hippogryph',140,579); -- Custom_Choke_Breath (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Hippogryph',140,580); -- Custom_Fantod (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Hippogryph',141,579); -- Custom_Choke_Breath (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Hippogryph',141,580); -- Custom_Fantod (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Lamiae',171,1754); -- Dukkeripen_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Poroggo',196,1962); -- Frog_Chorus_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Rafflesia',207,2167); -- Bloody Caress_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Rampart',209,2034,); -- reinforcement_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Vampyr',252,2112); -- Nocturnal_Servitude_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Vampyr',252,2534); -- Minax_Glare_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Wamouracampa',254,1820); -- Vitriolic_Shower_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Tiger',242,2207); -- Disorienting_Waul_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Chamrosh',287,1702); -- Wisecrack_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Velionis',292,1795); -- Malediction_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('IrizIma',295,1962); -- Frog_Chorus_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('LividrootAmoo',296,1332); -- Extremely_Bad_Breath_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Dextrose',299,1826); -- Synergism_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('GotohZhaTheRe',305,1925); -- Stave_Toss_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Nosferatu',309,2109); -- Heliovoid_Custom_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Nosferatu',309,2111); -- Eternal_Damnation_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Nosferatu',309,2112); -- Nocturnal_Servitude_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Nuhn',312,1693); -- Gnash_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Nuhn',312,1694); -- Vile_Belch_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Nuhn',312,1695); -- Hypnic_Lamp_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Nuhn',312,1696); -- Seismic_Tail_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Nuhn',312,1697); -- Seaspray_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Nuhn',312,1698); -- Leeching_Current_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Nuhn',312,1977); -- Deathgnash_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Nuhn',312,1978); -- Abominable_Belch_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Caturae',450,2700); -- Enthrall_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Harpeia',471,2758); -- Kaleidoscopic_Fury_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Gessho_II',778,2269) -- Kamaitachi_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Alkonost',786,579); -- Choke_Breath_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Balaur_Post_50',791,2222); -- Hurricane_Breath_Custom (has no DSP script)

DELETE FROM `mob_skill_lists` WHERE skill_list_id = 796 and mob_skill_id = 1332; -- Remove Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Eccentric_Eve',796,727); -- Bad_Breath_Custom
DELETE FROM `mob_skill_lists` WHERE skill_list_id = 796 and mob_skill_id = 1332; -- Remove Extremely_Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Eccentric_Eve',796,1610); -- EE_Extremely_Bad_Breath_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Kirtimukha',806,2167); -- Bloody Caress_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Hadhayosh',817,2390); -- Accursed_Armor_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Megantereon',822,2207); -- Disorienting_Waul_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Ovni',824,1374); -- Torrential_Torment_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Treble_Noctules',850,1157); -- Slipstream_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Aggressor_Antlion',855,2517); -- Quake_Blast_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Amun',856,439); -- Petro Gaze (Has DSP Script was disabled)

INSERT INTO `mob_skill_lists` VALUES ('Cirein-croin_pre50',889,1978); -- Abominable_Belch_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Cirein-croin_pre50',889,2639); -- Mayhem_Lantern_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Cirein-croin_post50',890,1977); -- Deathgnash_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Cirein-croin_post50',890,1978); -- Abominable_Belch_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Cirein-croin_post50',890,2639); -- Mayhem_Lantern_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Minax_Bugard',901,2643); -- Tyrant_Tusk_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Sobek',906,2643); -- Tyrant_Tusk_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Rakshas',926,1340); -- Crossthrash (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Rakshas',926,2207); -- Disorienting_Waul_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Bennu',933,2703); -- Dread_Wind_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Dragua',938,2702); -- Terra_Wing_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Hedjedjet',941,2221); -- Hell_Scissors_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Orthrus_post_50',945,2701); -- Acheron_Flame_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Rani',947,2700); -- Enthrall_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Waugyl',952,1724); -- White_Wind_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Audumbla',955,1364); -- Mighty_Snort_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Chillwing_Hwitti_Post_50',959,2003); -- Grating_Tantara_Custom (has no DSP script)
INSERT INTO `mob_skill_lists` VALUES ('Chillwing_Hwitti_Post_50',959,2004); -- Stifling_Tantra_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Veri_Selen',973,2222); -- Hurricane_Breath_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Yaguarogui_group_1',974,2207); -- Disorienting_Waul_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Yaguarogui_group_2',975,1340); -- Crossthrash_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Azdaja',979,2697); -- Infinite_Terror_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Bomblix_Flamefinger',980,1119); -- Frag_Bomb_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Minaruja',990,819); -- Blizzard_Breath (has DSP script but seems disabled)
INSERT INTO `mob_skill_lists` VALUES ('Minaruja',990,2222); -- Hurricane_Breath_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('Flame_Skimmer',997,1624); -- Debilitating_Drone_Custom (has no DSP script)

INSERT INTO `mob_skill_lists` VALUES ('JormungandWyrm',392,1287);

-- Aggressor_Antlion
INSERT INTO `mob_skill_lists` VALUES ('Aggressor_Antlion',855,2517); -- quake blast (has no DSP script)

-- Blazing_Eruca
INSERT INTO `mob_skill_lists` VALUES ('Blazing_Eruca',858,1791); -- incinerate (has no DSP script)

-- Abyssea Skills above this line only

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',5000,2520); -- Sinister_Wing
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',5000,2521); -- Chaos_blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',5000,2523); -- Dancing_tail
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',5000,2525); -- Chilling_roar
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',5000,2527); -- Soul_douse
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',5000,2529); -- Dark_star

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',5001,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',5001,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',5001,2727); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',5001,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',5001,2730); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',5002,629); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',5002,630); -- Kick_Out
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',5002,631); -- Shock_Wave
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',5002,632); -- Flame_Armor
-- INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',5002,????); -- Meteor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',5002,2391); -- Amnesic_Blast

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',5003,628); -- Wild_Horn
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',5003,629); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',5003,632); -- Flame_Armor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',5003,2586); -- Ecliptic_Meteor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',5003,2391); -- Amnesic_Blast

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',5004,804); -- Tortoise Song
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',5004,805); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',5004,806); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',5004,807); -- Harden_Shell
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',5004,808); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',5004,2585); -- Tetsudo_Tremor

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',5005,1287); -- Sleet_Blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',5005,1289); -- Gregale_Wing
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',5005,1290); -- Spike_Flail
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',5005,1291); -- Glacial_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',5005,1292); -- Touchdown
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',5005,1294); -- Gregale_Wing_Air
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',5005,1295); -- Absolute_Terror

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',5006,804); -- Tortoise_Song
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',5006,805); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',5006,806); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',5006,808); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',5006,809); -- Aqua_Breath

INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',5007,1785); -- Lava_Spit
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',5007,1786); -- Sulfurous_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',5007,1787); -- Scorching_Lash
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',5007,1788); -- Ululation
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',5007,1789); -- Magma_Hoplon
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',5007,1790); -- Gates_of_Hades

INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',5008,2022); -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',5008,2023); -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',5008,2025); -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',5008,2026); -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',5008,2027); -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',5008,2028); -- Fulmination

INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',5009,1828); -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',5009,1829); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',5009,1830); -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',5009,1831); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',5009,1832); -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',5009,1834); -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',5009,1835); -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',5009,1836); -- Nerve_Gas

INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',5010,1785); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',5010,1786); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',5010,1787); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',5010,1788); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',5010,1789); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',5010,2701); -- Acheron_Flame

INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',5011,2022); -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',5011,2023); -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',5011,2025); -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',5011,2026); -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',5011,2027); -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',5011,2028); -- Fulmination
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',5011,2698); -- Lithic_Breath

INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',5012,1828); -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',5012,1829); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',5012,1830); -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',5012,1831); -- Pyric_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',5012,1832); -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',5012,1834); -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',5012,1835); -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',5012,1836); -- Nerve_Gas

INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',5013,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',5013,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',5013,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',5013,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',5013,2756); -- Dead_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',5014,530); -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',5014,531); -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',5014,532); -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',5014,533); -- Danse_Macabre

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',5015,2113); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',5015,2115); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',5015,2117); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',5015,2119); -- Thundris_shriek

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',5016,2106); -- Bloodrake
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',5016,2108); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',5016,2110); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',5016,2112); -- Nocturnal_Servitude

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',5017,530); -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',5017,531); -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',5017,532); -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',5017,533); -- Danse_Macabre

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',5018,2113); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',5018,2114); -- Hellclap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',5018,2115); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',5018,2116); -- Necrobane
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',5018,2117); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',5018,2118); -- Bilgestorm
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',5018,2119); -- Thundris_shriek

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',5019,2108); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',5019,2110); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',5019,2388); -- Dirty_Breath
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',5019,2534); -- Minax_Glare

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',5020,2715); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',5020,2716); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',5020,2717); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',5020,2719); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',5020,2720); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',5020,2721); -- Raksha_vengeance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',5021,2427); -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',5021,2428); -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',5021,2429); -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',5021,2431); -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',5021,2432); -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',5021,2433); -- Calamitous_wind

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',5022,2335); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',5022,2336); -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',5022,2338); -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',5022,2369); -- Scintillant_lance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',5023,2187); -- Dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',5023,2188); -- Slaverous_gale
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',5023,2189); -- Aeolian_Void
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',5023,2190); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',5023,2604); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',5023,2605); -- Disgorge

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',5024,2427); -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',5024,2428); -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',5024,2429); -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',5024,2430); -- Warped_Wail
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',5024,2431); -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',5024,2432); -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',5024,2433); -- Calamitous_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',5024,2642); -- Vermilion_Wind

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',5025,2334); -- Wrath_of_zeus
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',5025,2335); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',5025,2336); -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',5025,2337); -- Damsel_memento
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',5025,2338); -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',5025,2369); -- Scintillant_lance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',5026,2187); -- Dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',5026,2188); -- Slaverous_gale
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',5026,2189); -- Aeolian_Void
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',5026,2190); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',5026,2191); -- Desiccation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',5026,2192); -- Doomvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',5026,2604); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',5026,2605); -- Disgorge

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',5027,2619); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',5027,2620); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',5027,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',5027,2622); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',5027,2623); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',5027,2624); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',5027,2626); -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',5027,2627); -- Area_Bombardment

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',5028,2784); -- Diluvial_wakes
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',5028,2785); -- Kurugi_collapse
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',5028,2786); -- Searing_halitus
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',5028,2787); -- Divesting_gale
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',5028,2788); -- Bolt_of_perdition
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',5028,2789); -- Crippling_rime
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',5028,2790); -- Oblivions_mantle

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',5029,2798); -- Gnash_n_Guttle
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',5029,2799); -- Sloughy_Sputum
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',5029,2800); -- Chymous_Reek
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',5029,2801); -- Rancid_Reflux
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',5029,2802); -- Crowning_Flatus
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',5029,2803); -- Slimy_Proposal
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',5029,2804); -- Just_Dessert

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',5030,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',5030,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',5030,2727); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',5030,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',5030,2730); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',5031,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',5031,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',5031,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',5031,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',5031,2756); -- Dead_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',5032,2715); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',5032,2716); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',5032,2717); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',5032,2719); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',5032,2720); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',5032,2721); -- Raksha_vengeance

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',5033,2619); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',5033,2620); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',5033,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',5033,2622); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',5033,2623); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',5033,2624); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',5033,2626); -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',5033,2627); -- Area_Bombardment

INSERT INTO `mob_skill_lists` VALUES ('Sallow_Seymour',5034,426); -- SS_Sandspin
INSERT INTO `mob_skill_lists` VALUES ('Sallow_Seymour',5034,427); -- SS_Tremors
INSERT INTO `mob_skill_lists` VALUES ('Sallow_Seymour',5034,2645); -- Mud_Stream -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',5035,2152); -- Aqua_Fortis
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',5035,2153); -- Regurgitation
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',5035,2154); -- Delta_Thrust
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',5035,2155); -- Torpefying_Charge
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',5035,2156); -- Grim_Glower
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',5035,2157); -- Calcifiying_Mist
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',5035,2392); -- Oppressive_Glaze

INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',5036,1718); -- Crosswind
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',5036,1720); -- Wind_Shear
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',5036,1721); -- Obfuscate
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',5036,1722); -- Zephyr_Mantle
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',5036,1723); -- Ill_Wind
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',5036,1724); -- White_Wind

INSERT INTO `mob_skill_lists` VALUES ('Cottus',5037,1636); -- Trebuchet -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Cottus',5037,2367); -- Moribund_Hack
INSERT INTO `mob_skill_lists` VALUES ('Cottus',5037,2576); -- Mercurial_Strike -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Cottus',5037,2578); -- Colossal_Slam -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Virvatuli',5038,2511); -- NM_Corpse_Breath

INSERT INTO `mob_skill_lists` VALUES ('Pancimanci',5039,301); -- Dream_Flower
INSERT INTO `mob_skill_lists` VALUES ('Pancimanci',5039,306); -- Scream_VW
INSERT INTO `mob_skill_lists` VALUES ('Pancimanci',5039,2210); -- Petal_Pirouette -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Pancimanci',5039,1585); -- Dream_Flower -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Lorbulcrub',5040,431); -- Fluid_Spread
INSERT INTO `mob_skill_lists` VALUES ('Lorbulcrub',5040,433); -- Digest
INSERT INTO `mob_skill_lists` VALUES ('Lorbulcrub',5040,2550); -- Dissolve

INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',5041,442); -- Bubble_Shower
INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',5041,443); -- Bubble_Curtain
INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',5041,445); -- Scissor_Guard
INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',5041,2513); -- Mega_Scissors -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',5041,2512); -- Venom_Shower -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',5042,275); -- Sand_Blast
INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',5042,277); -- Venom_Spray
INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',5042,279); -- Mandibular_Bite
INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',5042,2517); -- Quake_Blast -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',5042,2516); -- Gravitic_Horn -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',5043,783); -- Words_of_Bane
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',5043,785); -- Light_of_Penance
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',5043,786); -- Lateral_Slash
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',5043,787); -- Vertical_Slash
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',5043,788); -- Throat_Stab
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',5043,921); -- Everyones_Rancor
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',5043,2393); -- Ritual_Bind -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',5044,319); -- EE_Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',5044,726); -- EE_Drain_Whip
INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',5044,1332); -- EE_Extremely_Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',5044,2574); -- EE_Thousand Spears
INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',5044,2575); -- Tainting_Breath

INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',5045,2195); -- Spring_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',5045,2196); -- Summer_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',5045,2197); -- Autumn_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',5045,2198); -- Winter_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',5045,2199); -- Cyclonic_Turmoil -- BROKEN AS FUCK IN DSP!
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',5045,2518); -- Norn_Arrows

INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',5046,628); -- Wild_Horn
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',5046,629); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',5046,633); -- Howlacc
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',5046,2390); -- Accursed_Armor
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',5046,2391); -- Amnesic_Blast
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',5046,2586); -- Ecliptic_Meteor

INSERT INTO `mob_skill_lists` VALUES ('Lord_Asag',5047,2106); -- Bloodrake
INSERT INTO `mob_skill_lists` VALUES ('Lord_Asag',5047,2108); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Lord_Asag',5047,2110); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Lord_Asag',5047,2112); -- Nocturnal_Servitude

INSERT INTO `mob_skill_lists` VALUES ('Akupara',5048,804); -- Tortoise_Song
INSERT INTO `mob_skill_lists` VALUES ('Akupara',5048,806); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Akupara',5048,808); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Akupara',5048,2585); -- Tetsudo_Tremor

INSERT INTO `mob_skill_lists` VALUES ('Hurkan',5049,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',5049,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',5049,2727); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',5049,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',5049,2729); -- Typhoean_rage
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',5049,2730); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Hahava',5050,2714); -- Yaksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Hahava',5050,2715); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Hahava',5050,2716); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Hahava',5050,2717); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Hahava',5050,2718); -- Raksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Hahava',5050,2719); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Hahava',5050,2720); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Hahava',5050,2721); -- Raksha_vengeance

INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',5051,2619); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',5051,2620); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',5051,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',5051,2622); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',5051,2623); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',5051,2624); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',5051,2625); -- Eradicator

INSERT INTO `mob_skill_lists` VALUES ('Goji',5052,2421); -- Dark_orb
INSERT INTO `mob_skill_lists` VALUES ('Goji',5052,2422); -- Dark_mist
INSERT INTO `mob_skill_lists` VALUES ('Goji',5052,2423); -- Triumphant_roar
INSERT INTO `mob_skill_lists` VALUES ('Goji',5052,2424); -- Terror_eye
INSERT INTO `mob_skill_lists` VALUES ('Goji',5052,2425); -- Bloody_claw

INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',5053,500); -- Mow
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',5053,1360); -- Apocalyptic_Ray
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',5053,2389); -- Lethal_Triclip
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',5053,2533); -- Lithic_Ray
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',5053,2640); -- Ruinous_Scythe

INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',5054,401); -- Gliding_Spike
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',5054,922); -- Blind_Vortex
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',5054,923); -- Giga_Scream
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',5054,924); -- Dread_Dive
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',5054,2703); -- Dread_Wind

INSERT INTO `mob_skill_lists` VALUES ('Agathos',5055,2430); -- Warped_Wail
INSERT INTO `mob_skill_lists` VALUES ('Agathos',5055,2431); -- Reaving_Wind
INSERT INTO `mob_skill_lists` VALUES ('Agathos',5055,2433); -- Calamitous_Wind
INSERT INTO `mob_skill_lists` VALUES ('Agathos',5055,2642); -- Custom_Vermilion_Wind

INSERT INTO `mob_skill_lists` VALUES ('Cherufe',5056,2099); -- Batterhorn
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',5056,2100); -- Clobber
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',5056,2101); -- Demoralizing_Roar
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',5056,2103); -- Granite_Skin
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',5056,2104); -- Crippling_Slam

INSERT INTO `mob_skill_lists` VALUES ('Taweret',5057,383); -- Tusk -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Taweret',5057,385); -- Bone_Crunch -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Taweret',5057,386); -- Awful_Eye -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Taweret',5057,387); -- Heavy_Bellow -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Taweret',5057,2643); -- Tyrant_Tusk

INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',5058,1821); -- Amplification -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',5058,1822); -- Boiling_Point -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',5058,1824); -- Amorphic_spikes -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',5058,1825); -- Amorphic_scythe
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',5058,1826); -- Synergism
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',5058,2771); -- Gush_o_Goo

INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',5059,2190); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',5059,2604); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',5059,2605); -- Disgorge

INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1277); -- Inferno_Blast_alt2
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1278); -- Inferno_Blast_alt -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1279); -- Tebbad_Wing -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1280); -- Spike_Flail -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1281); -- Fiery_Breath -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1282); -- Touchdown -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1283); -- Inferno_Blast -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1284); -- Tebbad_Wing_Air -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1285); -- Absolute_Terror -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',5060,1286); -- Horrid_Roar_3 -- DSP

INSERT INTO `mob_skill_lists` VALUES ('Mellonia',5061,2158); -- Insipid_Nip -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',5061,2159); -- Pandemic_Nip -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',5061,2160); -- Bombilation
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',5061,2161); -- Cimicine_Discharge -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',5061,2162); -- Emetic_Discharge -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',5061,2770); -- Booming_Bombilation

INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',5062,1951); -- Magma_Fan -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',5062,1952); -- Erratic_Flutter
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',5062,1953); -- Proboscis
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',5062,1954); -- Erosion_Dust
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',5062,1955); -- Exuviation -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',5062,1956); -- Fire_Break

INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',5063,1815); -- Amber_scutum -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',5063,1816); -- Vitriolic_spray -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',5063,1817); -- Thermal_Pulse -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',5063,1818); -- Cannonball -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',5063,1819); -- Heat_barrier -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',5063,1820); -- Vitriolic_shower

INSERT INTO `mob_skill_lists` VALUES ('Gasha',5064,478); -- Hell_Slash -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Gasha',5064,479); -- Horror_Cloud -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Gasha',5064,485); -- Blood_Saber -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Gasha',5064,2767); -- Crepuscle_Blade

INSERT INTO `mob_skill_lists` VALUES ('Giltine',5065,1326); -- Final_Retribution
INSERT INTO `mob_skill_lists` VALUES ('Giltine',5065,531); -- Silence_Seal -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Giltine',5065,532); -- Envoutement -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Giltine',5065,1329); -- Gala_Macabre
INSERT INTO `mob_skill_lists` VALUES ('Giltine',5065,2638); -- Hadal_Summons

INSERT INTO `mob_skill_lists` VALUES ('Kaggen',5066,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',5066,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',5066,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',5066,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',5066,2755); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',5066,2756); -- Death_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Akvan',5067,548); -- Blindeye -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Akvan',5067,549); -- Eyes_On_Me -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Akvan',5067,555); -- Magic_Barrier -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Akvan',5067,557); -- Level_5_Petrify -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Akvan',5067,2768); -- Deathly_Glare

INSERT INTO `mob_skill_lists` VALUES ('Pil-VNM',5068,2572); -- Malign_invocation
INSERT INTO `mob_skill_lists` VALUES ('Pil-VNM',5068,2692); -- Royal_decree
INSERT INTO `mob_skill_lists` VALUES ('Pil-VNM',5068,2700); -- Enthrall
INSERT INTO `mob_skill_lists` VALUES ('Pil-VNM',5068,2774); -- Flank_Opening
INSERT INTO `mob_skill_lists` VALUES ('Pil-VNM',5068,2775); -- Tabbiyaa_Gambit
INSERT INTO `mob_skill_lists` VALUES ('Pil-VNM',5068,2776); -- Shah_Mat

INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',5069,338); -- Power_Attack_Beetle -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',5069,339); -- Freq_Field
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',5069,340); -- Rhino_Attack -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',5069,341); -- Rhino_Guard -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',5069,2823); -- Rhinowrecker

INSERT INTO `mob_skill_lists` VALUES ('Bhishani',5070,2195); -- Spring_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',5070,2196); -- Summer_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',5070,2197); -- Autumn_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',5070,2198); -- Winter_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',5070,2199); -- Cyclonic_Turmoil -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',5070,2518); -- Norn_Arrows
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',5070,2822); -- Eldritch_Wind

-- INSERT INTO `mob_skill_lists` VALUES ('RwNwPrtMHrw',5071,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('RwNwPrtMHrw',5071,2826); -- Exponential_Burst

INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',5072,2099); -- Batterhorn
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',5072,2100); -- Clobber
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',5072,2101); -- Demoralizing_Roar
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',5072,2102); -- Boiling_Blood
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',5072,2103); -- Granite_Skin
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',5072,2104); -- Crippling_Slam

INSERT INTO `mob_skill_lists` VALUES ('GwynnApnudd',5073,2511); -- Corpse_Breath
INSERT INTO `mob_skill_lists` VALUES ('GwynnApnudd',5073,2825); -- Louring_Skies

INSERT INTO `mob_skill_lists` VALUES ('Smierc',5074,478); -- Hell_Slash -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Smierc',5074,479); -- Horror_Cloud -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Smierc',5074,485); -- Blood_Saber -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Smierc',5074,2824); -- Cloudscourge

INSERT INTO `mob_skill_lists` VALUES ('Gaunab',5075,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',5075,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',5075,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',5075,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',5075,2755); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',5075,2756); -- Death_Prophet
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',5075,2809); -- Immolating_Claw

INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',5076,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',5076,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',5076,2727); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',5076,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',5076,2730); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',5077,2718); -- Raksha_Stance
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',5077,2719); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',5077,2720); -- Raksha_Illusion
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',5077,2721); -- Raksha_Vengeance
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',5077,2810); -- Yamas_Jugement

INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',5078,2784); -- Diluvial_wakes
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',5078,2785); -- Kurugi_collapse
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',5078,2786); -- Searing_halitus
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',5078,2787); -- Divesting_gale
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',5078,2788); -- Bolt_of_perdition
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',5078,2789); -- Crippling_rime
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',5078,2790); -- Oblivions_mantle

INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',5079,2798); -- Gnash_N_Guttle
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',5079,2799); -- Sloughy_Sputum
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',5079,2800); -- Chymous_Reek
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',5079,2801); -- Rancid_Reflux
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',5079,2802); -- Crowning_Flatus
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',5079,2803); -- Slimy_Proposal
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',5079,2804); -- Just_Desserts

INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',5080,2164); -- Viscid_Emission
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',5080,2166); -- Floral_Bouquet
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',5080,2168); -- Bloody_Caress
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',5080,2169); -- Soothing_Aroma

INSERT INTO `mob_skill_lists` VALUES ('Moly',5081,2163); -- Seedspray
INSERT INTO `mob_skill_lists` VALUES ('Moly',5081,2165); -- Rotten_Stench
INSERT INTO `mob_skill_lists` VALUES ('Moly',5081,2166); -- Floral_Bouquet

INSERT INTO `mob_skill_lists` VALUES ('Neith',5082,364); -- Filamented_Hold
INSERT INTO `mob_skill_lists` VALUES ('Neith',5082,365); -- Resheph_Spinning_Top
-- INSERT INTO `mob_skill_lists` VALUES ('Neith',5082,2699); -- Resheph_Tarsal_Slam -- Needs unmarked on skills_custom.sql

INSERT INTO `mob_skill_lists` VALUES ('Neiths_Bobbin',5083,810); -- Sickle_Slash

INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,642); -- Flame_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,643); -- Poison_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,644); -- Wind_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,645); -- Body_Slam
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,646); -- Heavy_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,647); -- Chaos_Blade
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,648); -- Petro_Eyes
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,650); -- Thornsong
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,651); -- Lodesong
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',5084,1792); -- Nullsong

INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',5085,322); -- 1000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',5085,1120); -- 10000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',5085,1625); -- 2000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',5085,1626); -- 4000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',5085,2761); -- Chupa_Blossom
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',5085,3867); -- QM3_Needles

INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Mercenario',5086,322); -- 1000_Needles

INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',5087,354); -- Wild_Rage
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',5087,355); -- Earth_Pounder
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',5087,721); -- Stasis
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',5087,722); -- Venom_Storm
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',5087,723); -- Earthbreaker
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',5087,221); -- Hell_Scissors
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',5087,2759); -- Telsonic_Tempest

INSERT INTO `mob_skill_lists` VALUES ('Peon_Pounder',5088,354); -- Wild_Rage
INSERT INTO `mob_skill_lists` VALUES ('Peon_Pounder',5088,355); -- Earth_Pounder

INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',5089,1571); -- Gas_Shell
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',5089,1572); -- Venom_Shell
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',5089,1573); -- Palsynyxis
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',5089,1574); -- Painful_Whip
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',5089,1575); -- Suctorial_Tentacle
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',5089,2693); -- Virulent_Haze

INSERT INTO `mob_skill_lists` VALUES ('Koura',5090,442); -- Bubble_Shower
INSERT INTO `mob_skill_lists` VALUES ('Koura',5090,443); -- Bubble_Curtain
INSERT INTO `mob_skill_lists` VALUES ('Koura',5090,445); -- Scissor_Guard
INSERT INTO `mob_skill_lists` VALUES ('Koura',5090,2512); -- Venom_Shower
INSERT INTO `mob_skill_lists` VALUES ('Koura',5090,2513); -- Mega_Scissors

INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',5091,456); -- Tentacle
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',5091,458); -- Ink_Jet
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',5091,460); -- Cross_Attack
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',5091,462); -- Maelstrom
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',5091,463); -- Whirlwind

INSERT INTO `mob_skill_lists` VALUES ('Moki',5092,450); -- Aqua_Ball
INSERT INTO `mob_skill_lists` VALUES ('Moki',5092,451); -- Splash_Breath
INSERT INTO `mob_skill_lists` VALUES ('Moki',5092,453); -- Water_Wall
INSERT INTO `mob_skill_lists` VALUES ('Moki',5092,641); -- Recoil_Dive

INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',5093,480); -- Petrifactive_Breath
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',5093,482); -- Pounce
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',5093,483); -- Charged_Whisker
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',5093,652); -- Blaster
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',5093,653); -- Chaotic_Eye
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',5093,2760); -- Preternatural_Gleam

INSERT INTO `mob_skill_lists` VALUES ('Grwnan',5094,483); -- Charged_Whisker

INSERT INTO `mob_skill_lists` VALUES ('Modron',5095,328); -- Drill_Branch
INSERT INTO `mob_skill_lists` VALUES ('Modron',5095,329); -- Pinecone_Bomb
INSERT INTO `mob_skill_lists` VALUES ('Modron',5095,331); -- Leafstorm
INSERT INTO `mob_skill_lists` VALUES ('Modron',5095,332); -- Entangle

INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',5096,783); -- Words_of_Bane
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',5096,785); -- Light_of_Penance
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',5096,786); -- Lateral_Slash
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',5096,787); -- Vertical_Slash
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',5096,788); -- Throat_Stab
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',5096,921); -- Everyones_Rancor

INSERT INTO `mob_skill_lists` VALUES ('Mimic_Mage',5097,588); -- Death_Trap

-- INSERT INTO `mob_skill_lists` VALUES ('Mimic_Jester',5097,588); -- Death_Trap

INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',5098,618); -- Unfinished previously 332
INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',5098,2580); -- Pandoras_Curse
INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',5098,2581); -- Pandoras_Gift

INSERT INTO `mob_skill_lists` VALUES ('Aello',5099,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Aello',5099,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Aello',5099,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Aello',5099,2729); -- Typhoean_rage
INSERT INTO `mob_skill_lists` VALUES ('Aello',5099,2758); -- Kaleidoscopic_Fury

INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',5100,2193); -- Zephyr_Arrow
INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',5100,2194); -- Lethe_Arrows
INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',5100,2200); -- Cyclonic_Torrent

INSERT INTO `mob_skill_lists` VALUES ('XuanWu',5101,805); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('XuanWu',5101,806); -- Tortoise_Stomp_Custom
INSERT INTO `mob_skill_lists` VALUES ('XuanWu',5101,807); -- Harden_Shell
INSERT INTO `mob_skill_lists` VALUES ('XuanWu',5101,808); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('XuanWu',5101,809); -- Aqua_Breath

INSERT INTO `mob_skill_lists` VALUES ('ZhuQue',5102,399); -- Scratch
INSERT INTO `mob_skill_lists` VALUES ('ZhuQue',5102,400); -- Triple_Attack
INSERT INTO `mob_skill_lists` VALUES ('ZhuQue',5102,401); -- Gliding_Spike
INSERT INTO `mob_skill_lists` VALUES ('ZhuQue',5102,402); -- Feather_Barrier
INSERT INTO `mob_skill_lists` VALUES ('ZhuQue',5102,403); -- Stormwind

INSERT INTO `mob_skill_lists` VALUES ('QingLong',5103,814); -- Deadly_Drive_Custom
INSERT INTO `mob_skill_lists` VALUES ('QingLong',5103,815); -- Wind_Wall
INSERT INTO `mob_skill_lists` VALUES ('QingLong',5103,816); -- Fang_Rush
INSERT INTO `mob_skill_lists` VALUES ('QingLong',5103,817); -- Dread_Shriek
INSERT INTO `mob_skill_lists` VALUES ('QingLong',5103,818); -- Tail_Crush
INSERT INTO `mob_skill_lists` VALUES ('QingLong',5103,821); -- Radiant_Breath

INSERT INTO `mob_skill_lists` VALUES ('BaiHu',5104,270); -- Roar
INSERT INTO `mob_skill_lists` VALUES ('BaiHu',5104,271); -- Razor_Fang
INSERT INTO `mob_skill_lists` VALUES ('BaiHu',5104,273); -- Claw_Cyclone

INSERT INTO `mob_skill_lists` VALUES ('Qilin',5105,797); -- Deadly_Hold
INSERT INTO `mob_skill_lists` VALUES ('Qilin',5105,798); -- Tail_Swing
INSERT INTO `mob_skill_lists` VALUES ('Qilin',5105,799); -- Tail_Smash
INSERT INTO `mob_skill_lists` VALUES ('Qilin',5105,800); -- Heat_Breath
INSERT INTO `mob_skill_lists` VALUES ('Qilin',5105,802); -- Great_Sandstorm
INSERT INTO `mob_skill_lists` VALUES ('Qilin',5105,803); -- Great_Whirlwind

INSERT INTO `mob_skill_lists` VALUES ('Trna',5106,478); -- Hell_Slash
INSERT INTO `mob_skill_lists` VALUES ('Trna',5106,479); -- Horror_Cloud
INSERT INTO `mob_skill_lists` VALUES ('Trna',5106,485); -- Blood_Saber

INSERT INTO `mob_skill_lists` VALUES ('Bisa',5107,478); -- Unfinished -- Previously 222
INSERT INTO `mob_skill_lists` VALUES ('Bisa',5107,479); -- Unfinished -- Previously 223
INSERT INTO `mob_skill_lists` VALUES ('Bisa',5107,485); -- Unfinished -- Previously 229

INSERT INTO `mob_skill_lists` VALUES ('Uptala',5108,2714); -- Uptala_Yaksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Uptala',5108,2715); -- Uptala_Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Uptala',5108,2716); -- Uptala_Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Uptala',5108,2717); -- Uptala_Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Uptala',5108,2757); -- Sakra_storm

INSERT INTO `mob_skill_lists` VALUES ('Fjalar',5109,2113); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',5109,2114); -- Hellclap
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',5109,2115); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',5109,2116); -- Necrobane
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',5109,2117); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',5109,2118); -- Bilgestorm
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',5109,2119); -- Thundris_shriek
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',5109,2812); -- Bilfrost_Squall
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',5109,2813); -- Dunur_Strike

INSERT INTO `mob_skill_lists` VALUES ('Bloody_Skull',5110,2511); -- Corpse_Breath

INSERT INTO `mob_skill_lists` VALUES ('Abununnu',5111,559); -- Soul_Drain
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',5111,560); -- Hecatomb_Wave
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',5111,563); -- Demonic_Howl
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',5111,1148); -- Condemnation
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',5111,2372); -- Hellborn_Yawp
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',5111,2821); -- Accurst_Spear

INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',5112,559); -- Soul_Drain
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',5112,560); -- Hecatomb_Wave
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',5112,563); -- Demonic_Howl
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',5112,1148); -- Condemnation

INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',5113,559); -- Unfinished - Previously 303
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',5113,560); -- Unfinished - Previously 304
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',5113,563); -- Unfinished - Previously 307
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',5113,1148); -- Unfinished - Previously 892

INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',5114,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',5114,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',5114,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',5114,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',5114,2755); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',5114,2756); -- Death_Prophet
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',5114,2809); -- Immolating_Claw
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',5114,2886); -- Exorender

INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',5115,318); -- Somersault
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',5115,659); -- Cursed_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',5115,660); -- Venom
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',5115,1624); -- Debilitating_Drone

INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',5116,1713); -- Yawn
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',5116,1714); -- Wing_Slap
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',5116,1715); -- Beak_Lunge
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',5116,1716); -- Frigid_Shuffle
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',5116,2819); -- Whiteout

INSERT INTO `mob_skill_lists` VALUES ('Little_Wingman',5117,1713); -- Yawn
INSERT INTO `mob_skill_lists` VALUES ('Little_Wingman',5117,1715); -- Beak_Lunge

-- List 4149 in LegionDark is identical to list 451 in Darkstar..
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',5118,2868); -- Echolocation
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',5118,2869); -- Deep_Sea_Dirge
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',5118,2870); -- Caudal_Capacitor
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',5118,2871); -- Baleen_Gurge
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',5118,2872); -- Depht_Charge
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',5118,2873); -- Blowhole_Blast
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',5118,2874); -- Angry_Seas
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',5118,2875); -- Waterspout
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',5118,2876); -- Thar_She_Blows

INSERT INTO `mob_skill_lists` VALUES ('Primordial_Pugil',5119,641); -- Recoil_Dive

INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',5120,1778); -- Spinal_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',5120,1779); -- Mangle
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',5120,1780); -- Leaping_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',5120,1781); -- Hex_Palm
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',5120,1782); -- Animating_Wail
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',5120,1784); -- Unblest_Jambiya
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',5120,2890); -- Genei_Ryodan

INSERT INTO `mob_skill_lists` VALUES ('Assassins_Apprentice',5121,1778); -- Spinal_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Assassins_Apprentice',5121,1780); -- Leaping_Cleave

-- INSERT INTO `mob_skill_lists` VALUES ('Brekekex',5122,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',5122,1958); -- Magic_Hammer
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',5122,1959); -- Water_Bomb
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',5122,1960); -- Frog_Cheer
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',5122,1962); -- Frog_Chorus
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',5122,2889); -- Usurping_Scepter

INSERT INTO `mob_skill_lists` VALUES ('Chorus_toad',5123,1958); -- Magic_Hammer
INSERT INTO `mob_skill_lists` VALUES ('Chorus_toad',5123,1959); -- Water_Bomb

INSERT INTO `mob_skill_lists` VALUES ('Yalungur',5124,1699); -- Pecking_Flurry
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',5124,1700); -- Snatch_Morsel
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',5124,1701); -- Feather_Tickle
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',5124,1702); -- Wisecrack
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',5124,2887); -- Tropic_Tenor

INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',5125,1699); -- Pecking_Flurry
INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',5125,1700); -- Snatch_Morsel
INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',5125,1701); -- Unfinished -- previously 1445

INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',5126,1711); -- Frenetic_Rip
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',5126,2003); -- Grating_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',5126,2004); -- Stifling_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',5126,2888); -- Dark_Recital

INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',5127,1709); -- Abrasive_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',5127,1710); -- Deafening_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',5127,1711); -- Frenetic_Rip

INSERT INTO `mob_skill_lists` VALUES ('Morta',5128,2880); -- Night_stalker
INSERT INTO `mob_skill_lists` VALUES ('Morta',5128,2881); -- Atropine_spore
INSERT INTO `mob_skill_lists` VALUES ('Morta',5128,2882); -- Frond_fatale
INSERT INTO `mob_skill_lists` VALUES ('Morta',5128,2883); -- Full_bloom
INSERT INTO `mob_skill_lists` VALUES ('Morta',5128,2884); -- Deracinator
INSERT INTO `mob_skill_lists` VALUES ('Morta',5128,2885); -- Beautiful_death

-- INSERT INTO `mob_skill_lists` VALUES ('Pil',4160,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Rukh',4161,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Asb',4162,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Sarbaz',4163,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Wazir',4164,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Shah',4165,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Provenance_Watcher',4166,PLACEHOLDER); -- Unfinished

-- ---------------------------------------------------------------------------
-- Begin Melee subs
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4167,2616); -- Iron_Giant_Melee_Vertical
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4167,2617); -- Iron_Giant_Melee_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4167,2618); -- Iron_Giant_Melee_Lateral

INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4168,2781); -- Gallu_Melee_Triple
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4168,2782); -- Gallu_Melee_Frontal
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4168,2783); -- Gallu_Melee_Radial

INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4169,2794); -- Botulus_Melee_Front
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4169,2795); -- Botulus_Melee_Left
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4169,2796); -- Botulus_Melee_Right
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4169,2797); -- Botulus_Melee_Back

INSERT INTO `mob_skill_lists` VALUES ('Harpeia_Melee',4170,2722); -- Harpeia_Melee_Stomp (not used by retail Celaeno)
INSERT INTO `mob_skill_lists` VALUES ('Harpeia_Melee',4170,2723); -- Harpeia_Melee_Slash
INSERT INTO `mob_skill_lists` VALUES ('Harpeia_Melee',4170,2724); -- Harpeia_Melee_Fly

INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4171,2748); -- Mantid_Melee_Double
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4171,2749); -- Mantid_Melee_Slice
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4171,2750); -- Mantid_Melee_Jump

INSERT INTO `mob_skill_lists` VALUES ('Gabbrath_Melee',4172,3017); -- Gabbrath_Melee_Bite
INSERT INTO `mob_skill_lists` VALUES ('Gabbrath_Melee',4172,3018); -- Gabbrath_Melee_Charge
INSERT INTO `mob_skill_lists` VALUES ('Gabbrath_Melee',4172,3019); -- Gabbrath_Melee_Spin

INSERT INTO `mob_skill_lists` VALUES ('Waktza_Melee',4173,3070); -- Waktza_Melee_Gust
INSERT INTO `mob_skill_lists` VALUES ('Waktza_Melee',4173,3071); -- Waktza_Melee_Spin
INSERT INTO `mob_skill_lists` VALUES ('Waktza_Melee',4173,3072); -- Waktza_Melee_Beak

INSERT INTO `mob_skill_lists` VALUES ('Bztavian_Melee',4174,2999); -- Bztavian_Melee_Bite
INSERT INTO `mob_skill_lists` VALUES ('Bztavian_Melee',4174,3000); -- Bztavian_Melee_Slash
INSERT INTO `mob_skill_lists` VALUES ('Bztavian_Melee',4174,3001); -- Bztavian_Melee_Stinger

INSERT INTO `mob_skill_lists` VALUES ('Rockfin_Melee',4175,3008); -- Rockfin_Melee_Bite
INSERT INTO `mob_skill_lists` VALUES ('Rockfin_Melee',4175,3009); -- Rockfin_Melee_Ram
INSERT INTO `mob_skill_lists` VALUES ('Rockfin_Melee',4175,3010); -- Rockfin_Melee_Spin

INSERT INTO `mob_skill_lists` VALUES ('Cehuetzi_Melee',4176,3134); -- Cehuetzi_Melee_Left
INSERT INTO `mob_skill_lists` VALUES ('Cehuetzi_Melee',4176,3135); -- Cehuetzi_Melee_Right
INSERT INTO `mob_skill_lists` VALUES ('Cehuetzi_Melee',4176,3136); -- Cehuetzi_Melee_Bite

INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln_Melee',4177,3165); -- Darrcuiln_Melee_Charge
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln_Melee',4177,3166); -- Darrcuiln_Melee_Claw
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln_Melee',4177,3167); -- Darrcuiln_Melee_Howl


-- INSERT INTO `mob_skill_lists` VALUES ('Belladonna_Melee',LIST_ID_HERE,2877); -- Morta Melee
-- INSERT INTO `mob_skill_lists` VALUES ('Belladonna_Melee',LIST_ID_HERE,2878);
-- INSERT INTO `mob_skill_lists` VALUES ('Belladonna_Melee',LIST_ID_HERE,2879);

-- INSERT INTO `mob_skill_lists` VALUES ('Pteraketos_Melee',LIST_ID_HERE,2864); -- Bismark Melee
-- INSERT INTO `mob_skill_lists` VALUES ('Pteraketos_Melee',LIST_ID_HERE,2865);
-- INSERT INTO `mob_skill_lists` VALUES ('Pteraketos_Melee',LIST_ID_HERE,2866);
-- INSERT INTO `mob_skill_lists` VALUES ('Pteraketos_Melee',LIST_ID_HERE,2867);


-- INSERT INTO `mob_skill_lists` VALUES ('Provenance_Watcher_Melee',LIST_ID_HERE,PLACEHOLDER); -- Provenance Watcher Melee

-- end Melee Subs
-- ---------------------------------------------------------------------------

INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3020); -- Blistering_Roar
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3021); -- Searing_Serration
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3022); -- Volcanic_Stasis
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3023); -- Tyrannical_Blow
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3024); -- Batholit-hic_Shell
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3025); -- Pyroclastic_Surge
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3026); -- Incinerating_Lahar


INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3073); -- Crashing_Thunder
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3074); -- Reverberating_Cry
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3075); -- Brownout
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3076); -- Reverse_Current
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3077); -- Sparkstorm
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3078); -- Static_Prison

INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3168); -- Aurous_Charge
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3169); -- Howling_Gust
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3170); -- Righteous_Rasp
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3171); -- Starward_Yowl
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3172); -- Stalking_Prey

INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3002); -- Mandibular_Lashing
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3003); -- Vespine_Hurricane
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3004); -- Stinger_volley
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3005); -- Droning_Whirlwind
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3006); -- Incisive_Denouement
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3007); -- Incisive_Apotheosis

INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2957); -- Impenetrable_Carapace_Custom
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2958); -- ending_Deluge
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2959); -- undering_Snip
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2960); -- iscid_Spindrift
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2961); -- iptide_Eupnea

INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3011); -- Protolithic_Puncture
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3012); -- Aquatic_Lance
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3013); -- Pelagic_Cleaver
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3015); -- Tidal_Guillotine
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3016); -- Marine_Mayhem
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3014); -- Carcharian_verve

INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3137); -- Polar_Roar
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3138); -- Brain_Freeze
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3139); -- Biting_Abrogation
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3140); -- Permafrost_Requiem
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3141); -- Glacial_Tomb
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3142); -- Glassy_Nova

INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2514); -- Cytokinesis
INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2550); -- Dissolve
INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2551); -- Mucus_Spread
INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2552); -- Epoxy_Spread

INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2567); -- Stygian_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2569); -- Hellish_crescendo
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2571); -- Stygian_sphere
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2572); -- Malign_invocation
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2634); -- Interference
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2635); -- Dark_arrivisme

INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2700); -- Enthrall
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2571); -- Stygian_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2570); -- Afflicting_Gaze 
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2310); -- Diabolic_Claw 
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2566); -- Malign_Invocation
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2634); -- Interference
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2567); -- Stygian_Cyclone 

INSERT INTO `mob_skill_lists` VALUES ('Raja',4213,2567); -- Stygian_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Raja',4213,2571); -- Stygian_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Raja',4213,2566); -- Malign_Invocation
INSERT INTO `mob_skill_lists` VALUES ('Raja',4213,2692); -- Royal_Decree

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Executioner',4215,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Executioner',4215,2622); -- Arm_Cannon

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2619); -- Turbine_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2620); -- Seismic_Impact
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2622); -- Arm_Cannon
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2623); -- Ballistic_Kick
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2624); -- Scapula_Beam

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2619); -- Turbine_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2620); -- Seismic_Impact
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2622); -- Arm_Cannon
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2624); -- Scapula_Beam

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2619); -- Turbine_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2620); -- Seismic_Impact
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2622); -- Arm_Cannon
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2624); -- Scapula_Beam

-- Begin Shinryu_Temp!
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2665); -- Cataclysmic_Vortex
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2667); -- Mighty_Guard
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2668); -- Atomic_ray
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2670); -- Protostar
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2664); -- Cosmic_Breath
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2666); -- Gyre_Charge
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2669); -- Darkmatter
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2671); -- Supernova
-- End Shinryu_Temp!
-- Shinryu needs more work to animate everything properly.
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2650); -- Shinryu0_Right
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2651); -- Shinryu0_Left
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2652); -- Shinryu0_Right_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2653); -- Shinryu0_Left_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2654); -- Shinryu_Attack_Tail_1
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2655); -- Shinryu_Attack_Tail_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2656); -- Shinryu0_Tail_Stun
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2664); -- Cosmic_Breath
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out',4223,2665); -- Cataclysmic_Vortex
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out',4223,2667); -- Mighty_Guard
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out',4223,2668); -- Atomic_ray
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out',4223,2670); -- Protostar
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2657); -- Shinryu1_Right
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2658); -- Shinryu1_Left
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2659); -- Shinryu1_Right_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2660); -- Shinryu1_Left_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2661); -- Shinryu_Attack_Tail_1
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2662); -- Shinryu_Attack_Tail_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2663); -- Shinryu1_Tail_Stun
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2664); -- Cosmic_Breath
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2665); -- Cataclysmic_Vortex
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2666); -- Gyre_Charge
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2669); -- Darkmatter
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2671); -- 

INSERT INTO `mob_skill_lists` VALUES ('Umagrhk',4226,2922); -- Soulshattering Roar
INSERT INTO `mob_skill_lists` VALUES ('Umagrhk',4226,2923); -- Calcifying Claw
INSERT INTO `mob_skill_lists` VALUES ('Umagrhk',4226,2924); -- Divesting Stampede
INSERT INTO `mob_skill_lists` VALUES ('Umagrhk',4226,2925); -- Bonebreaking Barrage
INSERT INTO `mob_skill_lists` VALUES ('Umagrhk',4226,2926); -- Beastruction

-- INSERT INTO `mob_skill_lists` VALUES ('Stroper Chyme',LIST,SKILL); -- Skill Name
-- 175,1587,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
-- 176,1587,176,'Fluid_Toss',0,15.0,2000,1000,4,0,0,0);
-- 177,1587,177,'Digest',0,7.0,2000,1000,4,0,0,0);
-- 2258,1587,177,'Cytokinesis',0,7.0,2000,1500,4,0,0,0);
-- 2296,1587,175,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0);
-- 2295,1587,175,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Megalobugard',LIST,SKILL); -- Skill Name
-- 127,1556,820,'Tusk',0,7.0,2000,2000,4,0,0,2);
-- 130,1556,823,'Awful_Eye',4,10.0,2000,1500,4,0,0,0);
-- 131,1556,824,'Heavy_Bellow',4,10.0,2000,1500,4,0,0,0);
-- 2387,1556,820,'Tyrant_Tusk',4,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Intulo',LIST,SKILL); -- Skill Name
-- 259,1559,814,'Toxic_Spit',0,9.5,2000,1500,4,0,0,0);
-- 260,1559,815,'Geist_Wall',1,10.0,2000,1500,4,0,0,0);
-- 261,1559,816,'Numbing_Noise',4,10.0,2000,1500,4,0,0,0);
-- 262,1559,817,'Nimble_Snap',0,7.0,2000,1500,4,0,0,0);
-- 263,1559,818,'Cyclotail',1,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Keeper_of_Haildom',LIST,SKILL); -- Skill Name
-- 325,1560,325,'Blow',0,7.0,2000,1500,4,0,0,0);
-- 327,1560,327,'Beatdown',0,7.0,2000,1500,4,0,0,0);
-- 328,1560,328,'Uppercut',0,7.0,2000,1500,4,0,0,2);
-- 330,1560,330,'Blank_Gaze',0,7.0,2000,2000,4,0,0,0);
-- 331,1560,331,'Antiphase',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Dune_Widow',LIST,SKILL); -- Skill Name
-- 554,1558,482,'Sickle_Slash',0,7.0,2000,1500,4,0,0,0);
-- 555,1558,483,'Acid_Spray',4,10.0,2000,1500,4,0,0,0);
-- 556,1558,484,'Spider_Web',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Seww_the_Squidlimbed',LIST,SKILL); -- Skill Name
-- 515,1561,443,'Hydro_Ball',4,7.0,2000,1500,4,0,0,0);
-- 521,1561,449,'Hydro_Shot',0,10.0,2000,3000,4,0,0,1);
-- 524,1561,452,'Spinning_Fin',1,10.0,2000,1500,4,0,0,0);
-- 518,1561,446,'Bubble_Armor',0,7.0,2000,1500,1,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Mischievous_Micholas',LIST,SKILL); -- Skill Name
-- 38,1563,38,'Eye_Scratch',0,7.0,2000,1500,4,0,0,0);
-- 32,1563,32,'Vicious_Claw',0,7.0,2000,1500,4,0,0,0);
-- 34,1563,34,'Spinning_Claw',1,15.0,2000,1500,4,0,0,0);
-- 39,1563,39,'Magic_Fruit',0,7.0,2000,1500,1,0,0,0);
-- 35,1563,35,'Claw_Storm',0,7.0,2000,1500,4,0,0,0); -- 7hp/tick
-- 33,1563,33,'Stone_Throw',0,25.0,2000,1500,4,0,0,0);
-- 36,1563,36,'Blank_Gaze_Dispel',0,16.0,2000,2000,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Ash_Dragon',LIST,SKILL); -- Skill Name
-- 388,1557,388,'Wind_Breath',4,10.0,2000,1500,4,0,0,0);
-- 389,1557,389,'Body_Slam',1,10.0,2000,1500,4,0,0,0);
-- 390,1557,390,'Heavy_Stomp',1,10.0,2000,1500,4,0,0,0);
-- 391,1557,389,'Chaos_Blade_Custom',0,7.0,2000,1500,4,0,0,0);
-- 392,1557,390,'Petro_Eyes',0,7.0,2000,1500,4,0,0,0);
-- 386,1557,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
-- 387,1557,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
-- 394,1557,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);
-- 395,1557,395,'Lodesong',1,15.0,2000,1500,4,0,0,0);
-- 1536,1557,395,'Nullsong',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Juggler_Hecatomb',LIST,SKILL); -- Skill Name
-- 257,1562,257,'Smite_of_Rage',0,7.0,2000,1500,4,0,0,0);
-- 258,1562,258,'Whirl_of_Rage',1,10.0,2000,1500,4,0,0,0);
-- 1303,1562,258,'Flurry_of_Rage',0,7.0,2000,1500,4,0,0,0);
-- 1302,1562,257,'Smite_of_Fury',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Gulool_Ja_Ja',LIST,SKILL); -- Skill Name
-- 1541,1555,1147,'Rushing_Slash',0,7.0,2000,1500,4,0,0,0);
-- 1542,1555,1147,'Decussate',1,16.0,2000,1500,4,0,0,0);
-- 1543,1555,1156,'Tyranic_Blare',1,10.0,2000,1500,4,0,0,0);
-- 1544,1555,1156,'Miasma',1,16.0,2000,1500,4,0,0,0);
-- 1545,1555,1147,'Vorpal_Wheel',0,7.0,2000,1500,4,0,0,0);
-- 1482,1555,1156,'Groundburst',0,7.0,2000,1500,4,0,0,0);
-- 1475,1555,1149,'Forceful_Blow',0,7.0,2000,1000,4,0,0,0);
-- 1476,1555,1150,'Somersault_Kick',0,7.0,2000,1000,4,0,0,4);
-- 1477,1555,1151,'Firespit',0,25.0,2000,1000,4,0,0,0);
-- 1478,1555,1152,'Warm-Up',0,7.0,2000,1000,1,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Tzee_Xicu_the_Manifest',LIST,SKILL); -- Skill Name
-- 361,1564,361,'Feather_Storm',0,7.0,2000,1500,4,0,0,0);
-- 377,1564,354,'Howl',1,20.0,2000,1500,2,0,0,0);
-- 362,1564,362,'Double_Kick',0,7.0,2000,1500,4,0,0,1);
-- 363,1564,363,'Parry',0,7.0,2000,1500,1,0,0,0);
-- 364,1564,364,'Sweep',1,10.0,2000,1500,4,0,0,0);
-- 2157,1564,1565,'Feather_Maelstrom',0,15.0,2000,1500,4,0,0,0);
-- 2014,1564,362,'Shirahadori',0,15.0,2000,1500,4,0,0,0);
-- 1680,1564,1565,'Shibaraku',1,10.0,2000,1500,4,0,0,0);
-- 2013,1564,1565,'Kamaitachi',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Overlord_Bakgodek',LIST,SKILL); -- Skill Name
-- 377,1565,354,'Howl',1,20.0,2000,1500,1,0,0,0);
-- 2155,1565,353,'Phantasmal_Dance',1,15.0,2000,2000,4,0,0,0);
-- 2007,1565,1626,'Tornado_Edge',4,10.0,2000,2000,4,0,0,0);
-- 2008,1565,350,'Shoulder_Charge',4,10.0,2000,2000,4,0,0,0);
-- 353,1565,353,'Battle_Dance',1,12.0,2000,1500,4,0,0,0);
-- 352,1565,352,'Arm_Block',0,7.0,2000,1500,1,0,0,0);
-- 351,1565,351,'Slam_Dunk',0,7.0,2000,1500,4,0,0,0);
-- 349,1565,349,'Aerial_Wheel',0,12.0,2000,1500,4,0,0,0);
-- 350,1565,350,'Shoulder_Attack',0,7.0,2000,1500,4,0,0,1);
-- 810,1565,740,'Fanatic_Dance',1,10.0,2000,2000,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Za_Dha_Adamantking',LIST,SKILL); -- Skill Name
-- 355,1585,355,'Ore_Toss',0,10.0,2000,2000,4,0,0,0);
-- 377,1585,354,'Howl',1,20.0,2000,1500,1,0,0,0);
-- 356,1585,356,'Head_Butt',0,7.0,2000,2000,4,0,0,1);
-- 357,1585,357,'Shell_Bash',0,7.0,2000,1000,4,0,0,0);
-- 358,1585,358,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);
-- 2156,1585,742,'Thunderous_Yowl',1,15.0,2000,3000,4,0,0,0);
-- 1977,1585,1608,'Diamond_Shell',0,7.0,2000,3000,1,0,0,0);
-- 1978,1585,1609,'Ore_Lob',2,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Lord_of_Onzozo',LIST,SKILL); -- Skill Name
-- 202,1566,202,'Ink_Jet',4,12.0,2000,1500,4,0,0,0);
-- 203,1566,203,'Hard_Membrane',0,7.0,2000,1500,1,0,0,0);
-- 204,1566,204,'Cross_Attack',0,7.0,2000,1500,4,0,0,0);
-- 205,1566,205,'Regeneration',0,7.0,2000,1500,1,0,0,0);
-- 206,1566,206,'Maelstrom',1,15.0,2000,1500,4,0,0,0);
-- 207,1566,207,'Whirlwind',1,15.0,2000,1500,4,0,0,0);
-- 200,1566,200,'Tentacle',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Guivre',LIST,SKILL); -- Skill Name
-- 566,1567,494,'Chaos_Breath',4,15.0,2000,1500,4,0,0,0);
-- 563,1567,491,'Blizzard_Breath',4,15.0,2000,1500,4,0,0,0);
-- 564,1567,492,'Thunder_Breath',4,15.0,2000,1500,4,0,0,0);
-- 1966,1567,491,'Hurricane_Breath',4,15.0,2000,1500,4,0,0,0);
-- 560,1567,488,'Fang_Rush_Custom',0,7.0,2000,1500,4,0,0,0);
-- 558,1567,486,'Deadly_Drive_Custom',0,7.0,2000,1500,4,0,0,0);
-- 562,1567,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Biast',LIST,SKILL); -- Skill Name
-- 388,1568,388,'Wind_Breath',4,10.0,2000,1500,4,0,0,0);
-- 389,1568,389,'Body_Slam',1,10.0,2000,1500,4,0,0,0);
-- 390,1568,390,'Heavy_Stomp',1,10.0,2000,1500,4,0,0,0);
-- 391,1568,389,'Chaos_Blade_Custom',0,7.0,2000,1500,4,0,0,0);
-- 392,1568,390,'Petro_Eyes',0,7.0,2000,1500,4,0,0,0);
-- 386,1568,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
-- 387,1568,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
-- 394,1568,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Duke_Haborym',LIST,SKILL); -- Skill Name
-- 303,1569,303,'Soul_Drain',0,7.0,2000,1500,4,0,0,0);
-- 304,1569,304,'Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
-- 307,1569,307,'Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
-- 892,1569,311,'Condemnation',4,10.0,2000,1500,4,0,0,0);
-- 893,1569,313,'Quadrastrike_Custom',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Ophion',LIST,SKILL); -- Skill Name
-- 406,1570,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0);
-- 407,1570,407,'Ice_Roar',4,9.0,2000,1500,4,0,0,0);
-- 408,1570,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
-- 409,1570,409,'Grand_Slam',1,15.0,2000,1500,4,0,0,0);
-- 410,1570,410,'Power_Attack',0,7.0,2000,1500,4,0,0,0);
-- 411,1570,411,'Power_Attack_Weapon',0,7.0,2000,1500,4,0,0,0);
-- 2111,1570,411,'Moribund_Hack',1,15.0,2000,1500,4,0,0,0);
-- 2322,1570,410,'Colossal_Slam',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Sozu_Rogberry',LIST,SKILL); -- Skill Name
-- 527,1571,455,'Words_of_Bane',0,7.0,2000,1500,4,0,0,0);
-- 528,1571,456,'Sigh',0,7.0,2000,1500,1,0,0,0);
-- 529,1571,457,'Light_of_Penance',0,7.0,2000,1500,4,0,0,0);
-- 530,1571,458,'Lateral_Slash',0,7.0,2000,1500,4,0,0,0);
-- 531,1571,459,'Vertical_Slash',0,7.0,2000,1500,4,0,0,0);
-- 532,1571,460,'Throat_Stab',0,3.4,2000,3500,4,0,0,0);
-- 664,1571,503,'Everyones_Grudge',0,7.0,2000,1500,4,0,0,0);
-- 665,1571,504,'Everyones_Rancor',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Tyrannic_Tunnok',LIST,SKILL); -- Skill Name
-- 463,1572,94,'Critical_Bite',0,7.0,2000,1500,4,0,0,0);
-- 465,1572,97,'Stasis',0,9.0,2000,1500,4,0,0,0);
-- 466,1572,98,'Venom_Storm',1,40.0,2000,1500,4,0,0,0);
-- 467,1572,99,'Earthbreaker_Custom',1,40.0,2000,1500,4,0,0,0);
-- 464,1572,95,'Venom_Sting',0,10.0,2000,1500,4,0,0,0);
-- 461,1572,92,'Venom_Breath',4,20.0,2000,1500,4,0,0,0);
-- 94,1572,94,'Mandible_Bite',0,7.0,2000,1500,4,0,0,2);
-- 97,1572,97,'Death_Scissors',0,7.0,2000,1500,4,0,0,0);
-- 98,1572,98,'Wild_Rage',1,15.0,2000,1500,4,0,0,0);
-- 99,1572,99,'Earth_Pounder',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Bonnacon',LIST,SKILL); -- Skill Name
-- 237,1573,846,'Rampant_Gnaw',0,7.0,2000,1500,4,0,0,0);
-- 238,1573,847,'Big_Horn_Custom',0,7.0,2000,1500,4,0,0,1);
-- 239,1573,848,'Snort',4,12.5,2000,1500,4,0,0,3);
-- 240,1573,849,'Rabid_Dance',0,7.0,2000,1500,1,0,0,0);
-- 241,1573,850,'Lowing',1,15.0,2000,2500,4,0,0,0);
-- 1108,1573,848,'Mighty_Snort',4,12.5,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Namtar',LIST,SKILL); -- Skill Name
-- 222,1574,222,'Hell_Slash',0,7.0,2000,1500,4,0,0,0);
-- 223,1574,223,'Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
-- 228,1574,228,'Black_Cloud',1,15.0,2000,1500,4,0,0,0);
-- 229,1574,229,'Blood_Saber',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Baobhan_Sith',LIST,SKILL); -- Skill Name
-- 220,1575,220,'Curse',1,15.0,2000,1500,4,0,0,0);
-- 218,1575,218,'Fear_Touch',0,7.0,3000,1500,4,0,0,0);
-- 219,1575,219,'Terror_Touch',0,7.0,3000,1500,4,0,0,0);
-- 217,1575,217,'Ectosmash',0,7.0,2000,1500,4,0,0,0);
-- 221,1575,221,'Dark_Sphere',0,7.0,2000,1500,4,0,0,0);
-- 216,1575,216,'Grave_Reel',1,15.0,2000,1500,4,0,0,0);
-- 1538,1575,217,'Perdition',0,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Taxim',LIST,SKILL); -- Skill Name
-- 222,1576,222,'Hell_Slash',0,7.0,2000,1500,4,0,0,0);
-- 223,1576,223,'Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
-- 228,1576,228,'Black_Cloud',1,15.0,2000,1500,4,0,0,0);
-- 229,1576,229,'Blood_Saber',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Vouivre',LIST,SKILL); -- Skill Name
-- 566,1578,494,'Chaos_Breath',4,15.0,2000,1500,4,0,0,0);
-- 563,1578,491,'Blizzard_Breath',4,15.0,2000,1500,4,0,0,0);
-- 564,1578,492,'Thunder_Breath',4,15.0,2000,1500,4,0,0,0);
-- 1966,1578,491,'Hurricane_Breath',4,15.0,2000,1500,4,0,0,0);
-- 560,1578,488,'Fang_Rush_Custom',0,7.0,2000,1500,4,0,0,0);
-- 558,1578,486,'Deadly_Drive_Custom',0,7.0,2000,1500,4,0,0,0);
-- 562,1578,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Unut',LIST,SKILL); -- Skill Name
-- 1,1579,1,'Foot_Kick',0,7.0,2000,1500,4,0,0,0);
-- 2,1579,2,'Dust_Cloud',4,10.0,2000,1500,4,0,0,0);
-- 3,1579,3,'Whirl_Claws',1,5.0,2000,1500,4,0,0,0);
-- 67,1579,37,'Wild_Carrot',0,20.0,2000,1500,1,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Viscount_Morax',LIST,SKILL); -- Skill Name
-- 303,1580,303,'Soul_Drain',0,7.0,2000,1500,4,0,0,0);
-- 304,1580,304,'Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
-- 307,1580,307,'Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
-- 892,1580,311,'Condemnation',4,10.0,2000,1500,4,0,0,0);
-- 2116,1580,307,'Hellborn_Yawp',4,10.0,2000,1500,4,0,0,0);
-- 893,1580,313,'Quadrastrike_Custom',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Friar_Rush',LIST,SKILL); -- Skill Name
-- 254,1581,254,'Berserk',0,7.0,2000,1500,1,0,0,0);
-- 338,1581,880,'Vulcanian_Impact',0,7.0,2000,1500,4,0,0,0);
-- 340,1581,882,'Hellstorm',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Bluberry_Bulge',LIST,SKILL); -- Skill Name
-- 175,1582,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
-- 176,1582,176,'Fluid_Toss',0,15.0,2000,1000,4,0,0,0);
-- 177,1582,177,'Digest',0,7.0,2000,1000,4,0,0,0);
-- 2258,1582,177,'Cytokinesis',0,7.0,2000,1500,4,0,0,0);
-- 2296,1582,175,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0);
-- 2295,1582,175,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Triarius_XXV',LIST,SKILL); -- Skill Name
-- 535,1583,463,'Magnetite_Cloud',4,10.0,2000,1500,4,0,0,0);
-- 536,1583,464,'Sandstorm',1,10.0,2000,1500,4,0,0,0);
-- 540,1583,468,'Jamming_Wave',1,16.0,2000,1500,4,0,0,0);
-- 537,1583,465,'Sand_Veil',0,7.0,2000,1500,1,0,0,0);
-- 538,1583,466,'Sand_Shield',0,7.0,2000,1500,1,0,0,0);
-- 534,1583,462,'Shoulder_Slam',0,7.0,2000,1500,4,0,0,1);
-- 539,1583,467,'Sand_Trap',1,12.0,2000,1500,4,0,0,0);
-- 533,1583,461,'Spikeball',0,13.5,2000,1500,4,0,0,0);



-- New lines go BEFORE the Unity mobs till you run out of IDs.

-- Begin Unity mobs.
-- INSERT INTO `mob_skill_lists` VALUES ('Bouncing_Bertha',6034,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Hugemaw_Harold',6035,     Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Prickly_Pitriv',6036,     Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Ironhorn_Baldurno',6037,  Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Sleepy_Mabel',6038,       Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Serpopard_Ninlil',6039,   Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Abyssdiver',6040,         Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Immanibugard',6041,       Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Intuila',6042,            Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Jester_Malatrix',6043,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Orcfeltrap',6044,         Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Steamy_Samantha',6045,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Sultry_Samantha',6046,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Sybaritic_Samantha',6047, Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',6048,659); -- Cursed Sphere
-- INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',6048,660); -- Venom
-- INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',6048,1324); -- Debilitating_Drone A
-- INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',6048,1624); -- Debilitating_Drone B
-- INSERT INTO `mob_skill_lists` VALUES ('Cactrot_Veloz',6049,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Emperor_Arthro',6050,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Joyous_Green',6051,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Keeper_of_Heiligtum',6052,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Tiyanak',6053,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Voso',6054,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Warblade_Beak',6055,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Woodland_Mender',6056,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Arke',6057,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Ayapec'6058,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Beist',6059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Coca',6060,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Douma_Weapon',6061,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Katashiro weapon',6062,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('King_Uropygid',6063,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Largantua',6064,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Lumber_Jill',6065,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Mephitas',6066,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Muut',6067,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Muuts_Sacrifice',6068,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Muuts_Hound Warrior',6068,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Specter_Worm',6070,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Strix',6071,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Azrael',6072,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Borealis_Shadow',6073,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Orientalis_Shadow',6074,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Australis_Shadow',6075,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Occidentalis_Shadow',6056,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Camahueto',6057,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Vedrfolnir',6058,PLACEHOLDER); -- Unfinished
-- End Unity mobs

-- Event
-- INSERT INTO `mob_skill_lists` VALUES ('Tatenashi_Armor',6059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Hachiryu_Armor',6059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Hizamaru_Armor',6059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Ubuginu_Armor',6059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Omodaka_Armor',6059,PLACEHOLDER); -- Unfinished

-- Custom
-- INSERT INTO `mob_skill_lists` VALUES ('Benkei',6060,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Druk',6061,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Zomok',6062,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Abzu',6063,PLACEHOLDER); -- Unfinished

INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,300);   -- Head Butt (Stun, Grav, Slow, knockback)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,442);  -- Bubble Shower ( )
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,443);  -- Bubble Curtain (Shell -50% magic damage taken)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,445);  -- Scissor Guard (+100% defense boost)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,448);  -- Metallic Body (25HP Stoneskin)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,454);  -- Water Shield (Eva boost)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,718);  -- Jump (W/Spirit Surge: Reduce targets DEF)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,733);  -- Jump (W/Spirit Surge: Reduce targets TP)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,769);  -- Flying Punch (Heavy DMG+Knockback, only use during Spirit Surge or Elemental Sforzo)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,774);  -- Bubble Armor (Shell -50% magic damage taken)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1024); -- Warp Out (aka SuperDuperJump - Only used during depop)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1064); -- Jump (W/Spirit Surge: Hate Reset)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1437); -- Jump (AoE dmg (only triggered with Draw In)
-- INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1893); -- Spirit Surge (It's a bird! It's a plane! No its suuuuper crab!)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1959); -- Water Bomb (AoE Silence)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,2513); -- Mega Scissors (Bigger than Big Scissors o.o;)
-- INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,3265); -- Elemental Sforzo (RUN 2hr (Magic Immunity)
/* stuff below is temp disabled
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,241); -- Netherspikes
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,249); -- Netherspikes
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,255); -- Dimensional Death
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,456); -- Tentacle
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,332); -- Death Trap
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,943); -- Gate_of_Tartarus
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,1424); -- Predatory Glare
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,1002); -- Summon Proxies
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,243); -- Aegis_Schism
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,251); -- Aegis_Schism
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,823); -- Fire_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,824); -- Frost_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,825); -- Wind_Blade2
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,826); -- Earth_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,827); -- Lightning_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,828); -- Water_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,829); -- Great_Wheel
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,830); -- Light_Blade (Grants/Restores EnLight)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,985); -- Stellar_burst
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1386); -- Medusa_Javelin
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1379); -- Auroral_Wind (Grants/Restores Light spikes)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1508); -- Luminous_Lance (Grants/Restores EnLight)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2141); -- Radiant_sacrament (Grants/Restores Light spikes)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2142); -- Mega_holy
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2144); -- Divine_spear (Grants/Restores EnLight)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2147); -- Divine_Jugement
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2334); -- Wrath_of_zeus (Grants/Restores Shock spikes and EnThunder)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2335); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2370); -- Grace_of_Hera (Grants/Restores Light spikes)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2690); -- Dark_Moon
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2691); -- Dark_Sun
-- INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2358); -- Tabula_Rasa
-- INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1487); -- Ambrosia
INSERT INTO `mob_skill_lists` VALUES ('Minerva_Melee',9778,2105); -- Melee_Special
*/
INSERT INTO `mob_skill_lists` VALUES ('No_Melee',9999,256); -- Used to prevent mob action
-- Thinking of placing a new entry right here? DO NOT. Scroll your butt up past The Jumping Crab!