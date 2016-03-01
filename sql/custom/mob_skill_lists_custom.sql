-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of mob_skill_lists.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------
-- NOTE: Any skill like Mighty Strikes being forced in script does not need to be in the mobs skill list to work.
-- PRIMARY KEY (`skill_list_id`,`mob_skill_id`)
-- KEEP IT IN ORDER BY ID!!
-- INSERT INTO `mob_skill_lists` VALUES ('skill_list_name',skill_list_id,mob_skill_id);

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2264); -- Sinister_Wing
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2265); -- Chaos_blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2267); -- Dancing_tail
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2269); -- Chilling_roar
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2271); -- Soul_douse

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2469); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2470); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2471); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2472); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2474); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,373); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,374); -- Kick_Out
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,375); -- Shock_Wave
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,376); -- Flame_Armor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,378); -- Meteor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,2135); -- Amnesic_Blast

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,372); -- Wild_Horn
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,373); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,376); -- Flame_Armor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,2330); -- Ecliptic_Meteor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,2135); -- Amnesic_Blast

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,548); -- Tortoise Song
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,549); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,793); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,551); -- Harden_Shell
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,552); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,2329); -- Tetsudo_Tremor

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1031) -- Sleet_Blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1032) -- Sleet_Blast_alt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1033) -- Gregale_Wing
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1034) -- Spike_Flail
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1035) -- Glacial_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1036) -- Touchdown
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1037) -- Sleet_Blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1038) -- Gregale_Wing_Air
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1039) -- Absolute_Terror

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,548) -- Tortoise_Song
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,549) -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,793) -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,552) -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,553) -- Aqua_Breath

INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1529) -- Lava_Spit
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1530) -- Sulfurous_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1531) -- Scorching_Lash
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1532) -- Ululation
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1533) -- Magma_Hoplon
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1534) -- Gates_of_Hades

INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1766) -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1767) -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1769) -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1770) -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1771) -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1772) -- Fulmination

INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1572) -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1573) -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1574) -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1575) -- Pyric_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1576) -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1578) -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1579) -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1580) -- Nerve_Gas

INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1529) --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1530) --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1531) --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1532) --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1533) --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,2445) -- Acheron_Flame

INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1766) -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1767) -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1769) -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1770) -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1771) -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1772) -- Fulmination
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,2442) -- Lithic_Breath

INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1572) -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1573) -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1574) -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1575) -- Pyric_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1576) -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1578) -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1579) -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1580) -- Nerve_Gas

INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2495) -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2496) -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2497) -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2498) -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2500) -- Dead_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,274) -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,275) -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,276) -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,277) -- Danse_Macabre

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,1857) -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,1859) -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,1861) -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,1863) -- Thundris_shriek

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,1850) -- Bloodrake
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,1852) -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,1854) -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,1856) -- Nocturnal_Servitude

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,274) -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,275) -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,276) -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,277) -- Danse_Macabre

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1857) -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1858) -- Hellclap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1859) -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1860) -- Necrobane
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1861) -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1862) -- Bilgestorm
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1863) -- Thundris_shriek

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,1852) -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,1854) -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,2132) -- Dirty_Breath
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,2278) -- Minax_Glare

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2459) -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2460) -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2461) -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2463) -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2464) -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2465) -- Raksha_vengeance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2171) -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2172) -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2173) -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2175) -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2176) -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2177) -- Calamitous_wind

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2079) -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2080) -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2082) -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2113) -- Scintillant_lance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1931) -- Dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1932) -- Slaverous_gale
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1933) -- Aeolian_Void
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1934) -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2348) -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2349) -- Disgorge

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2171) -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2172) -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2173) -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2174) -- Warped_Wail
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2175) -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2176) -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2177) -- Calamitous_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2386) -- Vermilion_Wind

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2078) -- Wrath_of_zeus
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2079) -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2080) -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2081) -- Damsel_memento
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2082) -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2113) -- Scintillant_lance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1931) -- Dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1932) -- Slaverous_gale
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1933) -- Aeolian_Void
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1934) -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1935) -- Desiccation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1936) -- Doomvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2348) -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2349) -- Disgorge

-- INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2360) -- Ironclad_Meele_Vertical
-- INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2361) -- Ironclad_Meele_Stomp
-- INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2362) -- Ironclad_Meele_Lateral
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2363) -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2364) -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2365) -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2366) -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2367) -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2368) -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2370) -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2371) -- Area_Bombardment

-- INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2525) -- Gallu_Triple
-- INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2526) -- Gallu_Frontal
-- INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2527) -- Gallu_Radial
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2528) -- Diluvial_wakes
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2529) -- Kurugi_collapse
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2530) -- Searing_halitus
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2531) -- Divesting_gale
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2532) -- Bolt_of_perdition
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2533) -- Crippling_rime
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2534) -- Oblivions_mantle

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2542) -- Gnash_n_Guttle
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2543) -- Sloughy_Sputum
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2544) -- Chymous_Reek
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2545) -- Rancid_Reflux
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2546) -- Crowning_Flatus
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2547) -- Slimy_Proposal
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2548) -- Just_Desserts

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2469) -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2470) -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2471) -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2472) -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2474) -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2495) -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2496) -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2497) -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2498) -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2500) -- Dead_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2459) -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2460) -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2461) -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2463) -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2464) -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2465) -- Raksha_vengeance

-- INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2360) -- Ironclad_Meele_Vertical
-- INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2361) -- Ironclad_Meele_Stomp
-- INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2362) -- Ironclad_Meele_Lateral
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2363) -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2364) -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2365) -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2366) -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2367) -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2368) -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2370) -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2371) -- Area_Bombardment

-- INSERT INTO `mob_skill_lists` VALUES ('Bouncing_Bertha',4034,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Hugemaw_Harold',4035,     Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Prickly_Pitriv',4036,     Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Ironhorn_Baldurno',4037,  Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Sleepy_Mabel',4038,       Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Serpopard_Ninlil',4039,   Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Abyssdiver',4040,         Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Immanibugard',4041,       Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Intuila',4042,            Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Jester_Malatrix',4043,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Orcfeltrap',4044,         Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Steamy_Samantha',4045,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Sultry_Samantha',4046,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Sybaritic_Samantha',4047, Wiki info is lacking, currently using DSP ID for normal mob!

INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',4048,659); -- Cursed Sphere
INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',4048,660); -- Venom
INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',4048,1324); -- Debilitating_Drone A
INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',4048,1624); -- Debilitating_Drone B

-- INSERT INTO `mob_skill_lists` VALUES ('Cactrot_Veloz',4049,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Emperor_Arthro',4050,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Joyous_Green',4051,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Keeper_of_Heiligtum',4052,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Tiyanak',4053,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Voso',4054,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Warblade_Beak',4055,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Woodland_Mender',4056,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Arke',4057,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Ayapec'4058,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Beist',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Coca',4060,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Douma_Weapon',4061,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Katashiro weapon',4062,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('King_Uropygid',4063,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Largantua',4064,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Lumber_Jill',4065,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Mephitas',4066,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Muut',4067,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Muuts_Sacrifice',4068,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Muuts_Hound Warrior',4068,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Specter_Worm',4070,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Strix',4071,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Azrael',4072,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Borealis_Shadow',4073,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Orientalis_Shadow',4074,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Australis_Shadow',4075,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Occidentalis_Shadow',4056,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Camahueto',4057,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Vedrfolnir',4058,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Tatenashi_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Hachiryu_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Hizamaru_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Ubuginu_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Omodaka_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Benkei',4060,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Druk',4061,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Zomok',4062,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Abzu',4063,PLACEHOLDER); -- Unfinished

INSERT INTO `mob_skill_lists` VALUES ('Sallow_Seymour',4064,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',4065,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',4066,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Cottus',4067,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Virvatuli',4068,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Pancimanci',4069,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Lorbulcrub',4070,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',4071,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',4072,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',4073,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',4074,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',4075,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',4076,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Lord_Asag',4077,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Akupara',4078,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Celaeno',4079,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Hahava',4080,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4090,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('RwNwPrtMHrw',4101,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('GwynnApnudd',4103,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Neiths_Bobbin',4113,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Mercenario',4116,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Peon_Pounder',4118,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Grwnan',4124,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Mimic_Mage',4127,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Mimic_Jester',4128,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',4129,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',4131,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bloody_Skull',4141,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Melee',4143,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Little_Wingman',4148,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Primordial_Pugil',4150,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Assassins_Apprentice',4152,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Chorus_toad',4154,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Pil',4160,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Rukh',4161,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Asb',4162,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Sarbaz',4163,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Wazir',4164,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Shah',4165,PLACEHOLDER); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Provenance_Watcher',4166,PLACEHOLDER); -- Unfinished

-- New lines go BEFORE the crab till you run out of IDs.
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,44);   -- Head Butt (Stun, Grav, Slow, knockback)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,186);  -- Bubble Shower ( )
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,187);  -- Bubble Curtain (Shell -50% magic damage taken)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,189);  -- Scissor Guard (+100% defense boost)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,192);  -- Metallic Body (25HP Stoneskin)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,198);  -- Water Shield (Eva boost)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,462);  -- Jump (W/Spirit Surge: Reduce targets DEF)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,477);  -- Jump (W/Spirit Surge: Reduce targets TP)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,513);  -- Flying Punch (Heavy DMG+Knockback, only use during Spirit Surge or Elemental Sforzo)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,518);  -- Bubble Armor (Shell -50% magic damage taken)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,768);  -- Warp Out (aka SuperDuperJump - Only used during depop)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,808);  -- Jump (W/Spirit Surge: Hate Reset)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1181); -- Jump (AoE dmg (only triggered with Draw In)
-- INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1637); -- Spirit Surge (It's a bird! It's a plane! No its suuuuper crab!)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1703); -- Water Bomb (AoE Silence)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,2257); -- Mega Scissors (Bigger than Big Scissors o.o;)
-- INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,3009); -- Elemental Sforzo (RUN 2hr (Magic Immunity)
/* stuff below is temp disabled
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,190);
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,200);
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,249);
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,332);
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,943);
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,1424);
-- INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,437);
-- INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,439);
-- INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,475);
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan'9666,72);
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,253);
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,567);
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,568);
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,569);
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,570);
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,571);
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,572);
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,573);
-- INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,432);
-- INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,439);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1849);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,574);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,729);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1130);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1123);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1252);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1885);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1886);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1888);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1891);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2078);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2079);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2114);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2434);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2435);
-- INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,435);
-- INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,436);
-- INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,438);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2102);
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1231);
 */
-- Thinking of placing a new entry right here? DO NOT. Scroll your butt up past The Jumping Crab!