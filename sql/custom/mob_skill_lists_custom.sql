-- -- -------------------------------------------------------------------------
-- This file adds onto or modifies contents of mob_skill_lists.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- -- -------------------------------------------------------------------------
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

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1031); -- Sleet_Blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1032); -- Sleet_Blast_alt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1033); -- Gregale_Wing
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1034); -- Spike_Flail
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1035); -- Glacial_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1036); -- Touchdown
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1037); -- Sleet_Blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1038); -- Gregale_Wing_Air
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1039); -- Absolute_Terror

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,548); -- Tortoise_Song
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,549); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,793); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,552); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,553); -- Aqua_Breath

INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1529); -- Lava_Spit
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1530); -- Sulfurous_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1531); -- Scorching_Lash
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1532); -- Ululation
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1533); -- Magma_Hoplon
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1534); -- Gates_of_Hades

INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1766); -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1767); -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1769); -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1770); -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1771); -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,1772); -- Fulmination

INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1572); -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1573); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1574); -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1575); -- Pyric_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1576); -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1578); -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1579); -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1580); -- Nerve_Gas

INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1529); -- 
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1530); -- 
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1531); -- 
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1532); -- 
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1533); -- 
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,2445); -- Acheron_Flame

INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1766); -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1767); -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1769); -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1770); -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1771); -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,1772); -- Fulmination
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,2442); -- Lithic_Breath

INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1572); -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1573); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1574); -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1575); -- Pyric_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1576); -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1578); -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1579); -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1580); -- Nerve_Gas

INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2495); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2496); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2497); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2498); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2500); -- Dead_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,274); -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,275); -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,276); -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,277); -- Danse_Macabre

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,1857); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,1859); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,1861); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,1863); -- Thundris_shriek

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,1850); -- Bloodrake
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,1852); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,1854); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,1856); -- Nocturnal_Servitude

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,274); -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,275); -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,276); -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,277); -- Danse_Macabre

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1857); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1858); -- Hellclap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1859); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1860); -- Necrobane
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1861); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1862); -- Bilgestorm
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,1863); -- Thundris_shriek

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,1852); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,1854); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,2132); -- Dirty_Breath
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,2278); -- Minax_Glare

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2459); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2460); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2461); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2463); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2464); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2465); -- Raksha_vengeance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2171); -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2172); -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2173); -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2175); -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2176); -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2177); -- Calamitous_wind

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2079); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2080); -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2082); -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2113); -- Scintillant_lance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1931); -- Dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1932); -- Slaverous_gale
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1933); -- Aeolian_Void
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1934); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2348); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2349); -- Disgorge

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2171); -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2172); -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2173); -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2174); -- Warped_Wail
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2175); -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2176); -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2177); -- Calamitous_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2386); -- Vermilion_Wind

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2078); -- Wrath_of_zeus
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2079); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2080); -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2081); -- Damsel_memento
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2082); -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2113); -- Scintillant_lance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1931); -- Dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1932); -- Slaverous_gale
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1933); -- Aeolian_Void
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1934); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1935); -- Desiccation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,1936); -- Doomvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2348); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2349); -- Disgorge

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4027,2360); -- Iron_Giant_Melee_Vertical
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4027,2361); -- Iron_Giant_Melee_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4027,2362); -- Iron_Giant_Melee_Lateral
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2363); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2364); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2365); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2366); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2367); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2368); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2370); -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2371); -- Area_Bombardment

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4028,2525); -- Gallu_Melee_Triple
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4028,2526); -- Gallu_Melee_Frontal
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4028,2527); -- Gallu_Melee_Radial
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2528); -- Diluvial_wakes
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2529); -- Kurugi_collapse
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2530); -- Searing_halitus
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2531); -- Divesting_gale
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2532); -- Bolt_of_perdition
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2533); -- Crippling_rime
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2534); -- Oblivions_mantle

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2542); -- Gnash_n_Guttle
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2543); -- Sloughy_Sputum
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2544); -- Chymous_Reek
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2545); -- Rancid_Reflux
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2546); -- Crowning_Flatus
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2547); -- Slimy_Proposal
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2548); -- Just_Desserts

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2469); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2470); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2471); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2472); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2474); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2495); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2496); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2497); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2498); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2500); -- Dead_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2459); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2460); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2461); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2463); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2464); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2465); -- Raksha_vengeance

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4033,2360); -- Iron_Giant_Melee_Vertical
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4033,2361); -- Iron_Giant_Melee_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4033,2362); -- Iron_Giant_Melee_Lateral
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2363); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2364); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2365); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2366); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2367); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2368); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2370); -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2371); -- Area_Bombardment

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

INSERT INTO `mob_skill_lists` VALUES ('Sallow_Seymour',4064,170); -- SS_Sandspin
INSERT INTO `mob_skill_lists` VALUES ('Sallow_Seymour',4064,171); -- SS_Tremors
INSERT INTO `mob_skill_lists` VALUES ('Sallow_Seymour',4064,2389); -- Mud_Stream -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',4065,1869); -- VW_Aqua_Fortis
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',4065,1897); -- VW_Regurgitation
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',4065,1898); -- VW_Delta_Thrust
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',4065,1899); -- VW_Torpefying_Charge
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',4065,1900); -- VW_Grim_Glower
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',4065,1901); -- VW_Calcifiying_Mist
INSERT INTO `mob_skill_lists` VALUES ('Ushumgal',4065,2136); -- Oppressive_Glare

INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',4066,1462); -- VW_Crosswind
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',4066,1464); -- VW_Wind_Shear
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',4066,1465); -- VW_Obfuscate
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',4066,1466); -- Zephyr_Mantle
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',4066,1467); -- VW_Ill_Wind
INSERT INTO `mob_skill_lists` VALUES ('Sarimanok',4066,1468); -- VW_White_Wind

-- INSERT INTO `mob_skill_lists` VALUES ('Cottus',4067,474); -- Meikyo_Shisui
INSERT INTO `mob_skill_lists` VALUES ('Cottus',4067,1380); -- VW_Trebuchet -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Cottus',4067,2111); -- VW_Moribund_Hack
INSERT INTO `mob_skill_lists` VALUES ('Cottus',4067,2320); -- VW_Mercurial_Strike -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Cottus',4067,2322); -- VW_Colossal_Slam -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Virvatuli',4068,2255); -- NM_Corpse_Breath

INSERT INTO `mob_skill_lists` VALUES ('Pancimanci',4069,45); -- VW_Dream_Flower
INSERT INTO `mob_skill_lists` VALUES ('Pancimanci',4069,50); -- Scream_VW
INSERT INTO `mob_skill_lists` VALUES ('Pancimanci',4069,1954); -- Petal_Pirouette -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Pancimanci',4069,2131); -- Petal_Pirouette -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Lorbulcrub',4070,175); -- VW_Fluid_Spread
INSERT INTO `mob_skill_lists` VALUES ('Lorbulcrub',4070,177); -- VW_Digest
INSERT INTO `mob_skill_lists` VALUES ('Lorbulcrub',4070,2294); -- VW_Dissolve

INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',4071,186); -- VW_Bubble_Shower
INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',4071,187); -- Bubble_Curtain
INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',4071,189); -- Scissor_Guard
INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',4071,2256); -- VW_Mega_Scissors -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Krabimanjaro',4071,2257); -- VW_Venom_Shower -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',4072,19); -- VW_Sand_Blast
INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',4072,21); -- VW_Venom_Spray
INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',4072,23); -- VW_Mandibular_Bite
INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',4072,2261); -- VW_Quake_Blast -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Ogbunabali',4072,2260); -- VW_Gravitic_Horn -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',4073,527); -- Words_of_Bane
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',4073,529); -- Light_of_Penance
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',4073,530); -- VW_Lateral_Slash
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',4073,531); -- VW_Vertical_Slash
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',4073,532); -- Throat_Stab
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',4073,665); -- VW_Everyones_Rancor
INSERT INTO `mob_skill_lists` VALUES ('Murk-Veined_Baneberry',4073,2137); -- Ritual_Bind -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',4074,63); -- EE_Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',4074,470); -- EE_Drain_Whip
INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',4074,1076); -- EE_Extremely_Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',4074,2318); -- EE_Thousand Spears
INSERT INTO `mob_skill_lists` VALUES ('Melancholic_Moira',4074,2319); -- Tainting_Breath

INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',4075,1939); -- VW_Spring_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',4075,1940); -- VW_Summer_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',4075,1941); -- VW_Autumn_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',4075,1942); -- VW_Winter_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',4075,1943); -- VW_Cyclonic_Turmoil
INSERT INTO `mob_skill_lists` VALUES ('Belphoebe',4075,2262); -- VW_Norn_Arrows

INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',4076,372); -- VW_Wild_Horn
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',4076,373); -- VW_Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',4076,377); -- Howl
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',4076,2134); -- Accursed_Armor
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',4076,2135); -- VW_Amnesic_Blast
INSERT INTO `mob_skill_lists` VALUES ('Kholomodumo',4076,2330); -- VW_Ecliptic_Meteor

INSERT INTO `mob_skill_lists` VALUES ('Lord_Asag',4077,1850); -- VW_Bloodrake
INSERT INTO `mob_skill_lists` VALUES ('Lord_Asag',4077,1852); -- VW_Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Lord_Asag',4077,1854); -- VW_Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Lord_Asag',4077,1856); -- Nocturnal_Servitude

INSERT INTO `mob_skill_lists` VALUES ('Akupara',4078,548); -- VW_Tortoise_Song
INSERT INTO `mob_skill_lists` VALUES ('Akupara',4078,550); -- VW_Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Akupara',4078,552); -- VW_Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Akupara',4078,2329); -- VW_Tetsudo_Tremor

-- INSERT INTO `mob_skill_lists` VALUES ('Celaeno',4079,1849); -- Celaeno_Melee in old
-- INSERT INTO `mob_skill_lists` VALUES ('Celaeno',4079,1850); -- Celaeno_Melee_AoE in old
INSERT INTO `mob_skill_lists` VALUES ('Celaeno',4079,2469); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Celaeno',4079,2470); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Celaeno',4079,2471); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Celaeno',4079,2472); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Celaeno',4079,2473); -- Typhoean_rage
INSERT INTO `mob_skill_lists` VALUES ('Celaeno',4079,2474); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Hahava',4080,2458); -- Yaksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Hahava',4080,2459); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Hahava',4080,2460); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Hahava',4080,2461); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Hahava',4080,2462); -- Raksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Hahava',4080,2463); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Hahava',4080,2464); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Hahava',4080,2465); -- Raksha_vengeance

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4081,2360); -- Iron_Giant_Melee_Vertical
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4081,2361); -- Iron_Giant_Melee_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4081,2362); -- Iron_Giant_Melee_Lateral
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2363); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2364); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2365); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2366); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2367); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2368); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2369); -- Eradicator

INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2165); -- VW_Dark_orb
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2166); -- VW_Dark_mist
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2167); -- VW_Triumphant_roar
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2168); -- VW_Terror_eye
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2169); -- VW_Bloody_claw

INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,244); -- VW_Mow
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,1104); -- VW_Apocalyptic_Ray
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,2133); -- VW_Lethal_Triclip
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,2277); -- VW_Lithic_Ray
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,2384); -- VW_Ruinous_Scythe

INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,145); -- VW_Gliding_Spike
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,666); -- VW_Blind_Vortex
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,667); -- VW_Giga_Scream
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,668); -- VW_Dread_Dive
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,2447); -- VW_Dread_Wind

INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2174); -- VW_Warped_Wail
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2175); -- VW_Reaving_Wind
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2177); -- VW_Calamitous_Wind
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2386); -- VW_Vermillion_Wind

INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1843); -- VW_Batterhorn
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1844); -- VW_Clobber
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1845); -- VW_Demoralizing_Roar
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1847); -- VW_Granite_Skin
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1848); -- VW_Crippling_Slam

INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,127); -- VW_Tusk
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,129); -- VW_Bone_Crunch
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,130); -- VW_Awful_Eye
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,131); -- VW_Heavy_Bellow
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,2387); -- VW_Tyrant_Tusk

INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1565); -- VW_Amplification
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1566); -- VW_Boiling_Point
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1568); -- VW_Amorphic_spikes
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1569); -- VW_Amorphic_scythe
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1570); -- VW_Synergism
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,2515); -- Gush_o_Goo
-- INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,2521); -- Benediction

INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,1934); -- VW_Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,2348); -- VW_Gorge
INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,2349); -- VW_Disgorge
-- INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,PLACEHOLDER); -- Mighty_Strikes

-- INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,432); -- Mighty_Strikes
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1021); -- VW_Inferno_Blast_alt2
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1022); -- VW_Inferno_Blast_alt
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1023); -- VW_Tebbad_Wing
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1024); -- Spike_Flail
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1025); -- Fiery_Breath
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1026); -- Touchdown
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1027); -- VW_Inferno_Blast
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1028); -- VW_Tebbad_Wing_Air
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1029); -- Absolute_Terror
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1030); -- Horrid_Roar_3

INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1902); -- VW_Insipid_Nip
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1903); -- VW_Pandemic_Nip
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1904); -- Bombilation
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1905); -- VW_Cimicine_Discharge
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1906); -- VW_Emetic_Discharge
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,2514); -- Booming_Bombilation
-- INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,PLACEHOLDER); -- Chainspell

INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1695); -- VW_Magma_Fan
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1696); -- VW_Erratic_Flutter
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1697); -- VW_Proboscis
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1698); -- VW_Erosion_Dust
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1699); -- VW_Exuviation
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1700); -- VW_Fire_Break

INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1559); -- VW_Amber_scutum
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1560); -- VW_Vitriolic_spray
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1561); -- VW_Thermal_Pulse
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1562); -- VW_Cannonball
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1563); -- VW_Heat_barrier
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1564); -- VW_Vitriolic_shower

INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,222); -- VW_Hell_Slash
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,223); -- VW_Horror_Cloud
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,229); -- VW_Blood_Saber
-- INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,474); -- Meikyo_Shisui
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,2511); -- Crepuscle_Blade

INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,274); -- VW_Final_Retribution
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,275); -- VW_Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,276); -- VW_Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,1073); -- Gala_Macabre
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,2382); -- VW_Hadal_Summons

-- INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2360); -- Mantis_Melee -- needs coding
-- INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2361); -- Mantis_Melee2 -- needs coding
-- INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2362); -- Mantis_Melee_Jump -- needs coding
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2495); -- VW_Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2496); -- VW_Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2497); -- VW_Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2498); -- VW_Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2499); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2500); -- Death_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,292); -- VW_Blindeye
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,293); -- VW_Eyes_On_Me
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,299); -- Magic_Barrier
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,301); -- VW_Level_5_Petrify
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,2512); -- Deathly_Glare

INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2316); -- VW_Malign_invocation
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2436); -- VW_Royal_decree
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2444); -- Enthrall
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2518); -- Flank_Opening
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2519); -- Tabbiyaa_Gambit
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2520); -- Shah_Mat

INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,82); -- VW_Power_Attack_Beetle
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,83); -- Freq_Field
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,84); -- VW_Rhino_Attack
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,85); -- VW_Rhino_Guard
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,2567); -- Rhinowrecker

INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1939); -- VW_Spring_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1940); -- VW_Summer_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1941); -- VW_Autumn_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1942); -- VW_Winter_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1943); -- VW_Cyclonic_Turmoil
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2262); -- VW_Norn_Arrows
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2566); -- Eldritch_Wind

-- INSERT INTO `mob_skill_lists` VALUES ('RwNwPrtMHrw',4101,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('RwNwPrtMHrw',4101,2570); -- Exponential_Burst

INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1843); -- VW_Batterhorn
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1844); -- VW_Clobber
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1845); -- VW_Demoralizing_Roar
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1846); -- Boiling_Blood
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1847); -- VW_Granite_Skin
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1848); -- Crippling_Slam

INSERT INTO `mob_skill_lists` VALUES ('GwynnApnudd',4103,2255); -- VW_Corpse_Breath
INSERT INTO `mob_skill_lists` VALUES ('GwynnApnudd',4103,2569); -- Louring_Skies

INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,222); -- VW_Hell_Slash
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,223); -- VW_Horror_Cloud
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,229); -- VW_Blood_Saber
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,2568); -- Cloudscourge

-- INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2360); -- Mantis_Melee
-- INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2361); -- Mantis_Melee2
-- INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2362); -- Mantis_Melee_Jump
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2495); -- VW_Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2496); -- VW_Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2497); -- VW_Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2498); -- VW_Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2499); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2500); -- Death_Prophet
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2553); -- Immolating_Claw

-- INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,433); -- Benediction
-- INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2469); -- VW_Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2470); -- VW_Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2471); -- VW_Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2472); -- VW_Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2474); -- VW_Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2462); -- VW_Raksha_Stance
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2463); -- VW_Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2464); -- VW_Raksha_Illusion
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2465); -- VW_Raksha_Vengeance
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2554); -- Yamas_Jugement

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4108,2525); -- Gallu_Melee_Triple
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4108,2526); -- Gallu_Melee_Frontal
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4108,2527); -- Gallu_Melee_Radial
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2528); -- VW_Diluvial_wakes
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2529); -- VW_Kurugi_collapse
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2530); -- VW_Searing_halitus
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2531); -- VW_Divesting_gale
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2532); -- VW_Bolt_of_perdition
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2533); -- VW_Crippling_rime
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2534); -- VW_Oblivions_mantle

-- INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,436); -- Chainspell
-- INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2525); -- Botulus_Melee_Front
-- INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2526); -- Botulus_Melee_Left
-- INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2527); -- Botulus_Melee_Right
-- INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2528); -- Botulus_Melee_Back -- needs new ID
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2542); -- VW_Gnash_N_Guttle
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2543); -- VW_Sloughy_Sputum
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2544); -- VW_Chymous_Reek
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2545); -- VW_Rancid_Reflux
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2546); -- VW_Crowning_Flatus
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2547); -- VW_Slimy_Proposal
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2548); -- VW_Just_Desserts

INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,1908); -- VW_Viscid_Emission
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,1910); -- VW_Floral_Bouquet
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,1912); -- VW_Bloody_Caress
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,1913); -- Soothing_Aroma

INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,1907); -- VW_Seedspray
INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,1909); -- VW_Rotten_Stench
INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,1910); -- VW_Floral_Bouquet

INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,108); -- VW_Filamented_Hold
INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,109); -- Resheph_Spinning_Top
INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,2334); -- Resheph_Tarsal_Slam

INSERT INTO `mob_skill_lists` VALUES ('Neiths_Bobbin',4113,554); -- VW_Sickle_Slash

INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,386); -- Flame_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,387); -- VW_Poison_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,388); -- VW_Wind_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,389); -- Body_Slam
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,390); -- VW_Heavy_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,391); -- Chaos_Blade_Custom
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,392); -- Petro_Eyes
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,394); -- Thornsong
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,395); -- Lodesong
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,1536); -- Nullsong

INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,66); -- 1000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,864); -- 10000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,1369); -- 2000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,1370); -- 4000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,2505); -- Chupa_Blossom
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,3611); -- QM3_Needles

INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Mercenario',4116,66); -- 1000_Needles

INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,98); -- VW_Wild_Rage
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,99); -- VW_Earth_Pounder
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,465); -- Stasis
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,466); -- Venom_Storm
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,467); -- Earthbreaker
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,1965); -- Hell_Scissors
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,2503); -- Telsonic_Tempest

INSERT INTO `mob_skill_lists` VALUES ('Peon_Pounder',4118,98); -- VW_Wild_Rage
INSERT INTO `mob_skill_lists` VALUES ('Peon_Pounder',4118,99); -- VW_Earth_Pounder

INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1315); -- VW_Gas_Shell
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1316); -- VW_Venom_Shell
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1317); -- Palsynyxis
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1318); -- VW_Painful_Whip
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1319); -- Suctorial_Tentacle
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,2437); -- Virulent_Haze

INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,186); -- VW_Bubble_Shower
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,187); -- Bubble_Curtain
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,189); -- Scissor_Guard
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,2256); -- VW_Venom_Shower
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,2257); -- VW_Mega_Scissors

INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,200); -- VW_Tentacle
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,202); -- Ink_Jet
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,204); -- VW_Cross_Attack
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,206); -- VW_Maelstrom
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,207); -- VW_Whirlwind

INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,194); -- VW_Aqua_Ball
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,195); -- VW_Splash_Breath
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,197); -- VW_Water_Wall
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,385); -- VW_Recoil_Dive

INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,224); -- Petrifactive_Breath
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,226); -- VW_Pounce
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,227); -- VW_Charged_Whisker
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,396); -- VW_Blaster
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,397); -- Chaotic_Eye
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,2504); -- Preternatural_Glare

INSERT INTO `mob_skill_lists` VALUES ('Grwnan',4124,227); -- VW_Charged_Whisker

INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,72); -- VW_Drill_Branch
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,73); -- VW_Pinecone_Bomb
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,75); -- VW_Leafstorm
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,76); -- Entangle

INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,527); -- Words_of_Bane
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,529); -- Light_of_Penance
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,530); -- VW_Lateral_Slash
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,531); -- VW_Vertical_Slash
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,532); -- Throat_Stab
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,665); -- VW_Everyones_Rancor

INSERT INTO `mob_skill_lists` VALUES ('Mimic_Mage',4127,332); -- VW_Death_Trap

INSERT INTO `mob_skill_lists` VALUES ('Mimic_Jester',4128,332); -- VW_Death_Trap

INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',4129,332); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',4129,2324); -- Pandoras_Curse
INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',4129,2325); -- Pandoras_Gift

INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2469); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2470); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2472); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2473); -- Typhoean_rage
INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2502); -- Kaleidoscopic_Fury

INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',4131,1937); -- Zephyr_Arrow
INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',4131,1938); -- Lethe_Arrows
INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',4131,1944); -- Cyclonic_Torrent

INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,549); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,550); -- Tortoise_Stomp_Custom
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,551); -- Harden_Shell
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,552); -- VW_Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,553); -- VW_Aqua_Breath

INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,143); -- Scratch
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,144); -- Triple_Attack
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,145); -- Gliding_Spike
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,146); -- Feather_Barrier
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,147); -- VW_Stormwind

INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,558); -- Deadly_Drive_Custom
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,559); -- Wind_Wall
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,560); -- Fang_Rush
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,561); -- VW_Dread_Shriek
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,562); -- Tail_Crush
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,565); -- Radiant_Breath

INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,14); -- VW_Roar
INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,15); -- VW_Razor_Fang
INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,17); -- VW_Claw_Cyclone

INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,541); -- Deadly_Hold
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,542); -- Tail_Swing
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,543); -- Tail_Smash
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,544); -- Heat_Breath
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,546); -- VW_Great_Sandstorm
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,547); -- VW_Great_Whirlwind

INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,222); -- VW_Hell_Slash
INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,223); -- VW_Horror_Cloud
INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,229); -- VW_Blood_Saber

INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,222); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,223); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,229); -- Unfinished

INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2458); -- Uptala_Yaksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2459); -- Uptala_Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2460); -- Uptala_Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2461); -- Uptala_Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2501); -- Sakra_storm

INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1857); -- VW_Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1858); -- VW_Hellclap
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1859); -- VW_Cackle
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1860); -- VW_Necrobane
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1861); -- VW_Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1862); -- VW_Bilgestorm
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1863); -- VW_Thundris_shriek
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2556); -- Bilfrost_Squall
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2557); -- Dunur_Strike

INSERT INTO `mob_skill_lists` VALUES ('Bloody_Skull',4141,2255); -- VW_Corpse_Breath

INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,303); -- VW_Soul_Drain
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,304); -- VW_Hecatomb_Wave
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,307); -- VW_Demonic_Howl
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,892); -- VW_Condemnation
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,2116); -- Hellborn_Yawp
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,2565); -- Accurst_Spear

INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Melee',4143,303); -- VW_Soul_Drain
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Melee',4143,304); -- VW_Hecatomb_Wave
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Melee',4143,307); -- VW_Demonic_Howl
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Melee',4143,892); -- VW_Condemnation

INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,303); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,304); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,307); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,892); -- Unfinished

INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2360); -- Mantis_Melee
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2361); -- Mantis_Melee2
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2362); -- Mantis_Melee_Jump
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2495); -- VW_Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2496); -- VW_Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2497); -- VW_Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2498); -- VW_Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2499); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2500); -- Death_Prophet
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2553); -- Immolating_Claw
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2630); -- Exorender

INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,62); -- VW_Somersault
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,403); -- VW_Cursed_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,404); -- VW_Venom
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,1368); -- Debilitating_Drone

INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1457); -- VW_Yawn
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1458); -- VW_Wing_Slap
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1459); -- VW_Beak_Lunge
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1460); -- VW_Frigid_Shuffle
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,2563); -- Whiteout

INSERT INTO `mob_skill_lists` VALUES ('Little_Wingman',4148,1457); -- VW_Yawn
INSERT INTO `mob_skill_lists` VALUES ('Little_Wingman',4148,1459); -- VW_Beak_Lunge

-- INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2606); -- Bismark_Front -- needs to be added
-- INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2607); -- Bismark_Side_1
-- INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2608); -- Bismark_Side_2
-- INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2610); -- Bismark_Tail
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2612); -- Echolocation
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2613); -- Deep_Sea_Dirge
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2614); -- Caudal_Capacitor
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2615); -- Baleen_Gurge
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2616); -- Depht_Charge
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2617); -- Blowhole_Blast
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2618); -- Angry_Seas
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2619); -- Waterspout
INSERT INTO `mob_skill_lists` VALUES ('Bismark',4149,2620); -- Thar_She_Blows

INSERT INTO `mob_skill_lists` VALUES ('Primordial_Pugil',4150,385); -- VW_Recoil_Dive

INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1522); -- VW_Spinal_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1523); -- VW_Mangle
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1524); -- VW_Leaping_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1525); -- VW_Hex_Palm
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1526); -- VW_Animating_Wail
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,2108); -- Unblest_Jambiya
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,2634); -- Genei_Ryodan

INSERT INTO `mob_skill_lists` VALUES ('Assassins_Apprentice',4152,1522); -- VW_Spinal_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Assassins_Apprentice',4152,1524); -- VW_Leaping_Cleave

INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1702); -- Magic_Hammer
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1703); -- VW_Water_Bomb
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1704); -- Frog_Cheer
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1706); -- Frog_Chorus
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,2633); -- Usurping_Scepter

INSERT INTO `mob_skill_lists` VALUES ('Chorus_toad',4154,1702); -- Magic_Hammer
INSERT INTO `mob_skill_lists` VALUES ('Chorus_toad',4154,1703); -- VW_Water_Bomb

INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1443); -- VW_Pecking_Flurry
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1444); -- Snatch_Morsel
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1445); -- Feather_Tickle
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1446); -- Wisecrack
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,2631); -- Tropic_Tenor

INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,1443); -- VW_Pecking_Flurry
INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,1444); -- Snatch_Morsel
INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,1445); -- Unfinished

INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,1455); -- VW_Frenetic_Rip
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,1747); -- VW_Grating_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,1748); -- VW_Stifling_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,2632); -- Dark_Recital

INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,1453); -- Abrasive_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,1454); -- Deafening_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,1455); -- VW_Frenetic_Rip

-- INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,436); -- Chainspell
-- INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2525); -- Morta_Single
-- INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2526); -- Morta_Frontal
-- INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2527); -- Morta_Radial
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2624); -- Night_stalker
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2625); -- Atropine_spore
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2626); -- Frond_fatale
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2627); -- Full_bloom
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2628); -- Deracinator
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2629); -- Beautiful_death

-- INSERT INTO `mob_skill_lists` VALUES ('Pil',4160,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Rukh',4161,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Asb',4162,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Sarbaz',4163,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Wazir',4164,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Shah',4165,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Provenance_Watcher',4166,PLACEHOLDER); -- Unfinished

-- INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4167,2360); -- Iron_Giant_Melee_Vertical
-- INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4167,2361); -- Iron_Giant_Melee_Stomp
-- INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4167,2362); -- Iron_Giant_Melee_Lateral
-- This is what melee substitute skills will change to when we catch up with Darkstar.
-- INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4168,2525); -- Gallu_Melee_Triple
-- INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4168,2526); -- Gallu_Melee_Frontal
-- INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4168,2527); -- Gallu_Melee_Radial


-- INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2761); -- Achuka_Bite
-- INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2762); -- Achuka_Charge
-- INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2763); -- Achuka_Spin
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2764); -- Blistering_Roar
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2765); -- Searing_Serration
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2766); -- Volcanic_Stasis
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2767); -- Tyrannical_Blow
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2768); -- Batholit-hic_Shell
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2769); -- Pyroclastic_Surge
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2770); -- Incinerating_Lahar
-- INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,432); -- Mighty_Strikes

-- INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2816); -- Hurkan_AoE
-- INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2814); -- Hurkan_Dive
-- INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2815); -- Hurkan_Single
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2817); -- Crashing_Thunder
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2818); -- Reverberating_Cry
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2819); -- Brownout
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2820); -- Reverse_Current
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2821); -- Sparkstorm
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2822); -- Static_Prison
-- INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,432); -- Blood_Weapon
-- INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,436); -- Chainspell

-- INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2909); -- Darrcuiln_Charge
-- INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2910); -- Darrcuiln_Claw
-- INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2911); -- Darrcuiln_Howl
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2912); -- Aurous_Charge
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2913); -- Howling_Gust
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2914); -- Righteous_Rasp
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2915); -- Starward_Yowl
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2916); -- Stalking_Prey
-- INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,437); -- Perfect_Dodge

INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2743); -- Colkhab_Bite
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2744); -- Colkhab_Slash
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2745); -- Colkhab_Stinger
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2746); -- Colkhab_Mandibular_Lashing
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2747); -- Colkhab_Vespine_Hurricane
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2748); -- Colkhab_Stinger_volley
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2749); -- Colkhab_Droning_Whirlwind
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2750); -- Colkhab_Incisive_Denouement
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2751); -- Colkhab_Incisive_Apotheosis
-- INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,432); -- Mighty_Strikes
-- INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,474); -- Meikyo_Shisui

INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2701); -- Cracklaw_Impenetrable_carapace
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2702); -- Cracklaw_Rending_Deluge
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2703); -- Cracklaw_Sundering_Snip
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2704); -- Cracklaw_Viscid_Spindrift
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2705); -- Cracklaw_Riptide_Eupnea
-- INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,432); -- Mighty_Strikes
-- INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,439); -- Blood_Weapon

-- INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2620); -- Tchakka_Single
-- INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2621); -- Tchakka_AoE
-- INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2752); -- Tchakka_Spin
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2755); -- Protolithic_Puncture
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2756); -- Aquatic_Lance
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2757); -- Pelagic_Cleaver
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2759); -- Tidal_Guillotine
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2760); -- Marine_Mayhem
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2758); -- Carcharian_verve

-- INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2878); -- Kumhau_Left
-- INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2879); -- Kumhau_Right
-- INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2880); -- Kumhau_Bite
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2881); -- Polar_Roar
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2882); -- Brain_Freeze
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2883); -- Biting_Abrogation
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2884); -- Permafrost_Requiem
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2885); -- Glacial_Tomb
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2886); -- Glassy_Nova
-- INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,438); -- Invincible

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