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

-- Lofty_Zilant
INSERT INTO `mob_skill_lists` VALUES ('Custom_Sinister_Wing',4000,2264); -- Sinister_Wing
INSERT INTO `mob_skill_lists` VALUES ('Custom_Chaos_Blast',4000,2265); -- Chaos_blast
INSERT INTO `mob_skill_lists` VALUES ('Custom_Dancing_Tail',4000,2267); -- Dancing_tail
INSERT INTO `mob_skill_lists` VALUES ('Custom_Chilling_Roar',4000,2269); -- Chilling_roar
INSERT INTO `mob_skill_lists` VALUES ('Custom_Soul_Douse',4000,2271); -- Soul_douse
INSERT INTO `mob_skill_lists` VALUES ('Custom_Dark_Star',4000,2273); -- Dark_star

-- Lofty_Harpeia
INSERT INTO `mob_skill_lists` VALUES ('Custom_Rending_Talons',4001,2469); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Custom_Shrieking_Gale',4001,2470); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Custom_Wings_of_Woe',4001,2471); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Custom_Wings_of_Agony',4001,2472); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Custom_Ravenous_Wail',4001,2474); -- Ravenous_wail

-- Lofty_Behemoth
INSERT INTO `mob_skill_lists` VALUES ('Thunderbolt',4002,373); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Kick_Out',4002,374); -- Kick_Out
INSERT INTO `mob_skill_lists` VALUES ('Shock_Wave',4002,375); -- Shock_Wave
INSERT INTO `mob_skill_lists` VALUES ('Flame_Armor',4002,376); -- Flame_Armor
INSERT INTO `mob_skill_lists` VALUES ('Meteor',4002,378); -- Meteor
INSERT INTO `mob_skill_lists` VALUES ('Custom_Amnesic_Blast',4002,2135); -- Amnesic_Blast

-- Lofty_Elasmoth
INSERT INTO `mob_skill_lists` VALUES ('Wild_Horn',4003,372); -- Wild_Horn
INSERT INTO `mob_skill_lists` VALUES ('Thunderbolt',4003,373); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Flame_Armor',4003,376); -- Flame_Armor
INSERT INTO `mob_skill_lists` VALUES ('Custom_Ecliptic_Meteor',4003,2330); -- Ecliptic_Meteor
INSERT INTO `mob_skill_lists` VALUES ('Custom_Amnesic_Blast',4003,2135); -- Amnesic_Blast

-- Lofty_Ferromantoise
INSERT INTO `mob_skill_lists` VALUES ('Tortoise_Song',4004,548); -- Tortoise Song
INSERT INTO `mob_skill_lists` VALUES ('Head_Butt_Turtle',4004,549); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Tortoise_Stomp',4004,550); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Harden_Shell',4004,551); -- Harden_Shell
INSERT INTO `mob_skill_lists` VALUES ('Earth_Breath',4004,552); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Custom_Testudo_Tremor',4004,2329); -- Tetsudo_Tremor

-- Lofty_Wyrm
INSERT INTO `mob_skill_lists` VALUES ('Sleet_Blast',4005,1031); -- Sleet_Blast
INSERT INTO `mob_skill_lists` VALUES ('Custom_Sleet_Blast_alt',4005,1032); -- Sleet_Blast_alt
INSERT INTO `mob_skill_lists` VALUES ('Gregale_Wing',4005,1033); -- Gregale_Wing
INSERT INTO `mob_skill_lists` VALUES ('Custom_Spike_Flail',4005,1034); -- Spike_Flail
INSERT INTO `mob_skill_lists` VALUES ('Glacial_Breath',4005,1035); -- Glacial_Breath
INSERT INTO `mob_skill_lists` VALUES ('Touchdown',4005,1036); -- Touchdown
INSERT INTO `mob_skill_lists` VALUES ('Gregale_Wing_Air',4005,1038); -- Gregale_Wing_Air
INSERT INTO `mob_skill_lists` VALUES ('Absolute_Terror',4005,1039); -- Absolute_Terror

-- Lofty_Adamantoise
INSERT INTO `mob_skill_lists` VALUES ('Tortoise_Song',4006,548); -- Tortoise_Song
INSERT INTO `mob_skill_lists` VALUES ('Head_Butt_Turtle',4006,549); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Tortoise_Stomp',4006,550); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Earth_Breath',4006,552); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Aqua_Breath',4006,553); -- Aqua_Breath

-- Mired_Cerberus
INSERT INTO `mob_skill_lists` VALUES ('Lava_Spit',4007,1529); -- Lava_Spit
INSERT INTO `mob_skill_lists` VALUES ('Sulfurous_Breath',4007,1530); -- Sulfurous_Breath
INSERT INTO `mob_skill_lists` VALUES ('Scorching_Lash',4007,1531); -- Scorching_Lash
INSERT INTO `mob_skill_lists` VALUES ('Ululation',4007,1532); -- Ululation
INSERT INTO `mob_skill_lists` VALUES ('Magma_Hoplon',4007,1533); -- Magma_Hoplon
INSERT INTO `mob_skill_lists` VALUES ('Gates_of_Hades',4007,1534); -- Gates_of_Hades

-- Mired_Khimaira
INSERT INTO `mob_skill_lists` VALUES ('Tenebrous_Mist',4008,1766); -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Thunderstrike',4008,1767); -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Dreadstorm',4008,1769); -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Fossilizing_Breath',4008,1770); -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Plague_Swipe',4008,1771); -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Fulmination',4008,1772); -- Fulmination

-- Mired_Hydra
INSERT INTO `mob_skill_lists` VALUES ('Pyric_Blast',4009,1572); -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Polar_Bulwark',4009,1573); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Polar_Blast',4009,1574); -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Pyric_Bulwark',4009,1575); -- Pyric_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Barofield',4009,1576); -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Trembling',4009,1578); -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Serpentine_Tail',4009,1579); -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Nerve_Gas',4009,1580); -- Nerve_Gas

-- Mired_Orthrus
INSERT INTO `mob_skill_lists` VALUES ('Lava_Spit',4010,1529); --
INSERT INTO `mob_skill_lists` VALUES ('Sulfurous_Breath',4010,1530); --
INSERT INTO `mob_skill_lists` VALUES ('Scorching_Lash',4010,1531); --
INSERT INTO `mob_skill_lists` VALUES ('Ululation',4010,1532); --
INSERT INTO `mob_skill_lists` VALUES ('Magma_Hoplon',4010,1533); --
INSERT INTO `mob_skill_lists` VALUES ('Custom_Acheron_Flame',4010,2445); -- Acheron_Flame

-- Mired_Khrysokhimaira
INSERT INTO `mob_skill_lists` VALUES ('Tenebrous_Mist',4011,1766); -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Thunderstrike',4011,1767); -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Dreadstorm',4011,1769); -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Fossilizing_Breath',4011,1770); -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Plague_Swipe',4011,1771); -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Fulmination',4011,1772); -- Fulmination
INSERT INTO `mob_skill_lists` VALUES ('Custom_Lithic_Breath',4011,2442); -- Lithic_Breath

-- Mired_Alfard
INSERT INTO `mob_skill_lists` VALUES ('Pyric_Blast',4012,1572); -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Polar_Bulwark',4012,1573); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Polar_Blast',4012,1574); -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Pyric_Bulwark',4012,1575); -- Pyric_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Barofield',4012,1576); -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Trembling',4012,1578); -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Serpentine_Tail',4012,1579); -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Nerve_Gas',4012,1580); -- Nerve_Gas

-- Mired_Mantis
INSERT INTO `mob_skill_lists` VALUES ('Custom_Slicing_Sickle',4013,2495); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raptorial_Claw',4013,2496); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Custom_Phlegm_Expulsion',4013,2497); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Custom_Macerating_Bile',4013,2498); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Custom_Dead_Prophet',4013,2500); -- Dead_Prophet

-- Soaring_Corse
INSERT INTO `mob_skill_lists` VALUES ('Memento_Mori',4014,274); -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Silence_Seal',4014,275); -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Envoutement',4014,276); -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Danse_Macabre',4014,277); -- Danse_Macabre

-- Soaring_Dvergar
INSERT INTO `mob_skill_lists` VALUES ('Hellsnap',4015,1857); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Custom_Cackle',4015,1859); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Necropurge',4015,1861); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Thundris_Shriek',4015,1863); -- Thundris_shriek

-- Soaring_Vampyr
INSERT INTO `mob_skill_lists` VALUES ('Bloodrake',4016,1850); -- Bloodrake
INSERT INTO `mob_skill_lists` VALUES ('Custom_Nosferatus_Kiss',4016,1852); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Wings_of_Gehenna',4016,1854); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Custom_Nocturnal_Servitude',4016,1856); -- Nocturnal_Servitude

-- Soaring_Kumakatok
INSERT INTO `mob_skill_lists` VALUES ('Memento_Mori',4017,274); -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Silence_Seal',4017,275); -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Envoutement',4017,276); -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Danse_Macabre',4017,277); -- Danse_Macabre

-- Soaring_Dweorg
INSERT INTO `mob_skill_lists` VALUES ('Hellsnap',4018,1857); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Hellclap',4018,1858); -- Hellclap
INSERT INTO `mob_skill_lists` VALUES ('Custom_Cackle',4018,1859); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Necrobane',4018,1860); -- Necrobane
INSERT INTO `mob_skill_lists` VALUES ('Necropurge',4018,1861); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Bilgestorm',4018,1862); -- Bilgestorm
INSERT INTO `mob_skill_lists` VALUES ('Thundris_Shriek',4018,1863); -- Thundris_shriek

-- Soaring_Strigoi
INSERT INTO `mob_skill_lists` VALUES ('Custom_Nosferatus_Kiss',4019,1852); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Wings_of_Gehenna',4019,1854); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Custom_Dirty_Breath',4019,2132); -- Dirty_Breath
INSERT INTO `mob_skill_lists` VALUES ('Custom_Minax_Glare',4019,2278); -- Minax_Glare

-- Soaring_Naraka
INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Damnation',4020,2459); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Oblivion',4020,2460); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Bliss',4020,2461); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Judgement',4020,2463); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Illusion',4020,2464); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Vengeance',4020,2465); -- Raksha_vengeance

-- Veiled_Amphiptere
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2171); -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2172); -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2173); -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2175); -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2176); -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2177); -- Calamitous_wind

-- Veiled_Ixion
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2079); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2080); -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2082); -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2113); -- Scintillant_lance

-- Veiled_Sandworm
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1931); -- Dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1932); -- Slaverous_gale
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1933); -- Aeolian_Void
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,1934); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2348); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2349); -- Disgorge

-- Veiled_Sanguiptere
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2171); -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2172); -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2173); -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2174); -- Warped_Wail
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2175); -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2176); -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2177); -- Calamitous_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2386); -- Vermilion_Wind

-- Veiled_Alicorn
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2078); -- Wrath_of_zeus
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2079); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2080); -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2081); -- Damsel_memento
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2082); -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2113); -- Scintillant_lance

-- Veiled_Gigaworm
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

INSERT INTO `mob_skill_lists` VALUES ('Custom_Sandspin',4064,170); -- SS_Sandspin
INSERT INTO `mob_skill_lists` VALUES ('Tremors',4064,171); -- SS_Tremors
INSERT INTO `mob_skill_lists` VALUES ('Custom_Mud_Stream',4064,2389); -- Mud_Stream -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Custom_Aqua_Fortis',4065,1896); -- Aqua_Fortis
INSERT INTO `mob_skill_lists` VALUES ('Regurgitation',4065,1897); -- Regurgitation
INSERT INTO `mob_skill_lists` VALUES ('Delta_Thrust',4065,1898); -- Delta_Thrust
INSERT INTO `mob_skill_lists` VALUES ('Custom_Torpefying_Charge',4065,1899); -- Torpefying_Charge
INSERT INTO `mob_skill_lists` VALUES ('Custom_Grim_Glower',4065,1900); -- Grim_Glower
INSERT INTO `mob_skill_lists` VALUES ('Custom_Calcifying_Mist',4065,1901); -- Calcifiying_Mist
INSERT INTO `mob_skill_lists` VALUES ('Custom_Oppressive_Gaze',4065,2136); -- Oppressive_Glaze

INSERT INTO `mob_skill_lists` VALUES ('Crosswind',4066,1462); -- Crosswind
INSERT INTO `mob_skill_lists` VALUES ('Wind_Shear',4066,1464); -- Wind_Shear
INSERT INTO `mob_skill_lists` VALUES ('Obfuscate',4066,1465); -- Obfuscate
INSERT INTO `mob_skill_lists` VALUES ('Zephyr_Mantle',4066,1466); -- Zephyr_Mantle
INSERT INTO `mob_skill_lists` VALUES ('Ill_Wind',4066,1467); -- Ill_Wind
INSERT INTO `mob_skill_lists` VALUES ('Custom_White_Wind',4066,1468); -- White_Wind

-- INSERT INTO `mob_skill_lists` VALUES ('Cottus',4067,474); -- Meikyo_Shisui
INSERT INTO `mob_skill_lists` VALUES ('Custom_Trebuchet',4067,1380); -- Trebuchet -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Moribund_Hack',4067,2111); -- Moribund_Hack
INSERT INTO `mob_skill_lists` VALUES ('Custom_Mercurial_Strike',4067,2320); -- Mercurial_Strike -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Colossal_Slam',4067,2322); -- Colossal_Slam -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Custom_Corpse_Breath',4068,2255); -- NM_Corpse_Breath

INSERT INTO `mob_skill_lists` VALUES ('Dream_Flower',4069,45); -- Dream_Flower
INSERT INTO `mob_skill_lists` VALUES ('Custom_Scream_VW',4069,50); -- Scream_VW
INSERT INTO `mob_skill_lists` VALUES ('Petal_Pirouette',4069,1954); -- Petal_Pirouette -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Dream_Flower',4069,1329); -- Dream_Flower -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Fluid_Spread',4070,175); -- Fluid_Spread
INSERT INTO `mob_skill_lists` VALUES ('Custom_Digest',4070,177); -- Digest
INSERT INTO `mob_skill_lists` VALUES ('Custom_Dissolve',4070,2294); -- Dissolve

INSERT INTO `mob_skill_lists` VALUES ('Bubble_Shower',4071,186); -- Bubble_Shower
INSERT INTO `mob_skill_lists` VALUES ('Custom_Bubble_Curtain',4071,187); -- Bubble_Curtain
INSERT INTO `mob_skill_lists` VALUES ('Scissor_Guard',4071,189); -- Scissor_Guard
INSERT INTO `mob_skill_lists` VALUES ('Custom_Mega_Scissors',4071,2257); -- Mega_Scissors -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Venom_Shower',4071,2256); -- Venom_Shower -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Sand_Blast',4072,19); -- Sand_Blast
INSERT INTO `mob_skill_lists` VALUES ('Venom_Spray',4072,21); -- Venom_Spray
INSERT INTO `mob_skill_lists` VALUES ('Mandibular_Bite',4072,23); -- Mandibular_Bite
INSERT INTO `mob_skill_lists` VALUES ('Custom_Quake_Blast',4072,2261); -- Quake_Blast -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Gravitic_Horn',4072,2260); -- Gravitic_Horn -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Custom_Words_of_Bane',4073,527); -- Words_of_Bane
INSERT INTO `mob_skill_lists` VALUES ('Light_of_Penance',4073,529); -- Light_of_Penance
INSERT INTO `mob_skill_lists` VALUES ('Lateral_Slash',4073,530); -- Lateral_Slash
INSERT INTO `mob_skill_lists` VALUES ('Vertical_Slash',4073,531); -- Vertical_Slash
INSERT INTO `mob_skill_lists` VALUES ('Throat_Stab',4073,532); -- Throat_Stab
INSERT INTO `mob_skill_lists` VALUES ('Everyones_Rancor',4073,665); -- Everyones_Rancor
INSERT INTO `mob_skill_lists` VALUES ('Custom_Ritual_Bind',4073,2137); -- Ritual_Bind -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Bad_Breath',4074,63); -- EE_Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Custom_Drain_Whip',4074,470); -- EE_Drain_Whip
INSERT INTO `mob_skill_lists` VALUES ('Custom_Extremely_Bad_Breath',4074,1076); -- EE_Extremely_Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Custom_Thousand_Spears',4074,2318); -- EE_Thousand Spears
INSERT INTO `mob_skill_lists` VALUES ('Custom_Tainting_Breath',4074,2319); -- Tainting_Breath

INSERT INTO `mob_skill_lists` VALUES ('Custom_Spring_Breeze',4075,1939); -- Spring_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Custom_Summer_Breeze',4075,1940); -- Summer_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Custom_Autumn_Breeze',4075,1941); -- Autumn_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Custom_Winter_Breeze',4075,1942); -- Winter_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Cyclonic_Turmoil',4075,1943); -- Cyclonic_Turmoil -- BROKEN AS FUCK IN DSP!
INSERT INTO `mob_skill_lists` VALUES ('Custom_Norn_Arrows',4075,2262); -- Norn_Arrows

INSERT INTO `mob_skill_lists` VALUES ('Wild_Horn',4076,372); -- Wild_Horn
INSERT INTO `mob_skill_lists` VALUES ('Thunderbolt',4076,373); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Howl',4076,377); -- Howlacc
INSERT INTO `mob_skill_lists` VALUES ('Custom_Accursed_Armor',4076,2134); -- Accursed_Armor
INSERT INTO `mob_skill_lists` VALUES ('Custom_Amnesic_Blast',4076,2135); -- Amnesic_Blast
INSERT INTO `mob_skill_lists` VALUES ('Custom_Ecliptic_Meteor',4076,2330); -- Ecliptic_Meteor

INSERT INTO `mob_skill_lists` VALUES ('Bloodrake',4077,1850); -- Bloodrake
INSERT INTO `mob_skill_lists` VALUES ('Custom_Nosferatus_Kiss',4077,1852); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Wings_of_Gehenna',4077,1854); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Custom_Nocturnal_Servitude',4077,1856); -- Nocturnal_Servitude

INSERT INTO `mob_skill_lists` VALUES ('Tortoise_Song',4078,548); -- Tortoise_Song
INSERT INTO `mob_skill_lists` VALUES ('Tortoise_Stomp',4078,550); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Earth_Breath',4078,552); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Custom_Tetsudo_Tremor',4078,2329); -- Tetsudo_Tremor

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Harpeia_Melee_Stomp',4079,2466); -- Harpeia_Melee_Stomp (not used by retail Celaeno)
INSERT INTO `mob_skill_lists` VALUES ('Harpeia_Melee_Slash',4079,2467); -- Harpeia_Melee_Slash
INSERT INTO `mob_skill_lists` VALUES ('Harpeia_Melee_Fly',4079,2468); -- Harpeia_Melee_Fly
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Custom_Rending_Talons',4079,2469); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Custom_Shrieking_Gale',4079,2470); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Custom_Wings_of_Woe',4079,2471); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Custom_Wings_of_Agony',4079,2472); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Custom_Typhoean_Rage',4079,2473); -- Typhoean_rage
INSERT INTO `mob_skill_lists` VALUES ('Custom_Ravenous_Wail',4079,2474); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Stance',4080,2458); -- Yaksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Damnation',4080,2459); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Oblivion',4080,2460); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Bliss',4080,2461); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Stance',4080,2462); -- Raksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Judgement',4080,2463); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Illusion',4080,2464); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Vengeance',4080,2465); -- Raksha_vengeance

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee_Vertical',4081,2360); -- Iron_Giant_Melee_Vertical
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee_Stomp',4081,2361); -- Iron_Giant_Melee_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee_Lateral',4081,2362); -- Iron_Giant_Melee_Lateral
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Custom_Turbine_Cyclone',4081,2363); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Custom_Seismic_Impact',4081,2364); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Custom_Incinerator',4081,2365); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Custom_Arm_Cannon',4081,2366); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Custom_Ballistic_Kick',4081,2367); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Custom_Scapula_Beam',4081,2368); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Custom_Eradicator',4081,2369); -- Eradicator

INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2165); -- Dark_orb
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2166); -- Dark_mist
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2167); -- Triumphant_roar
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2168); -- Terror_eye
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2169); -- Bloody_claw

INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,244); -- Mow
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,1104); -- Apocalyptic_Ray
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,2133); -- Lethal_Triclip
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,2277); -- Lithic_Ray
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,2384); -- Ruinous_Scythe

INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,145); -- Gliding_Spike
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,666); -- Blind_Vortex
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,667); -- Giga_Scream
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,668); -- Dread_Dive
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,2447); -- Dread_Wind

INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2174); -- Warped_Wail
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2175); -- Reaving_Wind
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2177); -- Calamitous_Wind
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2386); -- Vermillion_Wind

INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1843); -- Batterhorn
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1844); -- Clobber
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1845); -- Demoralizing_Roar
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1847); -- Granite_Skin
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,1848); -- Crippling_Slam

INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,127); -- Tusk
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,129); -- Bone_Crunch
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,130); -- Awful_Eye
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,131); -- Heavy_Bellow
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,2387); -- Tyrant_Tusk

INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1565); -- Amplification
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1566); -- Boiling_Point
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1568); -- Amorphic_spikes
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1569); -- Amorphic_scythe
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1570); -- Synergism
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,2515); -- Gush_o_Goo

INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,1934); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,2348); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,2349); -- Disgorge

INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1021); -- Inferno_Blast_alt2
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1022); -- Inferno_Blast_alt
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1023); -- Tebbad_Wing
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1024); -- Spike_Flail
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1025); -- Fiery_Breath
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1026); -- Touchdown
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1027); -- Inferno_Blast
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1028); -- Tebbad_Wing_Air
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1029); -- Absolute_Terror
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1030); -- Horrid_Roar_3

INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1902); -- Insipid_Nip
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1903); -- Pandemic_Nip
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1904); -- Bombilation
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1905); -- Cimicine_Discharge
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,1906); -- Emetic_Discharge
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,2514); -- Booming_Bombilation

INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1695); -- Magma_Fan
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1696); -- Erratic_Flutter
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1697); -- Proboscis
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1698); -- Erosion_Dust
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1699); -- Exuviation
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1700); -- Fire_Break

INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1559); -- Amber_scutum
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1560); -- Vitriolic_spray
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1561); -- Thermal_Pulse
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1562); -- Cannonball
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1563); -- Heat_barrier
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1564); -- Vitriolic_shower

INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,222); -- Hell_Slash
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,223); -- Horror_Cloud
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,229); -- Blood_Saber
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,2511); -- Crepuscle_Blade

INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,274); -- Final_Retribution
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,275); -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,276); -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,1073); -- Gala_Macabre
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,2382); -- Hadal_Summons

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4081,2492); -- Mantid_Melee_Double
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4081,2493); -- Mantid_Melee_Slice
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4081,2494); -- Mantid_Melee_Jump
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2495); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2496); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2497); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2498); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2499); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2500); -- Death_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,292); -- Blindeye
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,293); -- Eyes_On_Me
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,299); -- Magic_Barrier
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,301); -- Level_5_Petrify
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,2512); -- Deathly_Glare

INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2316); -- Malign_invocation
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2436); -- Royal_decree
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2444); -- Enthrall
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2518); -- Flank_Opening
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2519); -- Tabbiyaa_Gambit
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2520); -- Shah_Mat

INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,82); -- Power_Attack_Beetle
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,83); -- Freq_Field
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,84); -- Rhino_Attack
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,85); -- Rhino_Guard
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,2567); -- Rhinowrecker

INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1939); -- Spring_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1940); -- Summer_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1941); -- Autumn_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1942); -- Winter_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,1943); -- Cyclonic_Turmoil
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2262); -- Norn_Arrows
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2566); -- Eldritch_Wind

-- INSERT INTO `mob_skill_lists` VALUES ('RwNwPrtMHrw',4101,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('RwNwPrtMHrw',4101,2570); -- Exponential_Burst

INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1843); -- Batterhorn
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1844); -- Clobber
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1845); -- Demoralizing_Roar
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1846); -- Boiling_Blood
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1847); -- Granite_Skin
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,1848); -- Crippling_Slam

INSERT INTO `mob_skill_lists` VALUES ('GwynnApnudd',4103,2255); -- Corpse_Breath
INSERT INTO `mob_skill_lists` VALUES ('GwynnApnudd',4103,2569); -- Louring_Skies

INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,222); -- Hell_Slash
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,223); -- Horror_Cloud
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,229); -- Blood_Saber
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,2568); -- Cloudscourge

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4105,2492); -- Mantid_Melee_Double
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4105,2493); -- Mantid_Melee_Slice
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4105,2494); -- Mantid_Melee_Jump
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2495); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2496); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2497); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2498); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2499); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2500); -- Death_Prophet
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2553); -- Immolating_Claw

-- INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,433); -- Benediction
-- INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2469); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2470); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2471); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2472); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2474); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2462); -- Raksha_Stance
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2463); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2464); -- Raksha_Illusion
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2465); -- Raksha_Vengeance
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2554); -- Yamas_Jugement

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4108,2525); -- Gallu_Melee_Triple
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4108,2526); -- Gallu_Melee_Frontal
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4108,2527); -- Gallu_Melee_Radial
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2528); -- Diluvial_wakes
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2529); -- Kurugi_collapse
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2530); -- Searing_halitus
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2531); -- Divesting_gale
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2532); -- Bolt_of_perdition
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2533); -- Crippling_rime
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2534); -- Oblivions_mantle

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4109,2538); -- Botulus_Melee_Front
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4109,2539); -- Botulus_Melee_Left
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4109,2540); -- Botulus_Melee_Right
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4109,2541); -- Botulus_Melee_Back
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2542); -- Gnash_N_Guttle
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2543); -- Sloughy_Sputum
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2544); -- Chymous_Reek
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2545); -- Rancid_Reflux
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2546); -- Crowning_Flatus
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2547); -- Slimy_Proposal
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2548); -- Just_Desserts

INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,1908); -- Viscid_Emission
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,1910); -- Floral_Bouquet
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,1912); -- Bloody_Caress
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,1913); -- Soothing_Aroma

INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,1907); -- Seedspray
INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,1909); -- Rotten_Stench
INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,1910); -- Floral_Bouquet

INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,108); -- Filamented_Hold
INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,109); -- Resheph_Spinning_Top
INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,2334); -- Resheph_Tarsal_Slam

INSERT INTO `mob_skill_lists` VALUES ('Neiths_Bobbin',4113,554); -- Sickle_Slash

INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,386); -- Flame_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,387); -- Poison_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,388); -- Wind_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,389); -- Body_Slam
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,390); -- Heavy_Stomp
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

INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,98); -- Wild_Rage
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,99); -- Earth_Pounder
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,465); -- Stasis
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,466); -- Venom_Storm
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,467); -- Earthbreaker
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,1965); -- Hell_Scissors
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,2503); -- Telsonic_Tempest

INSERT INTO `mob_skill_lists` VALUES ('Peon_Pounder',4118,98); -- Wild_Rage
INSERT INTO `mob_skill_lists` VALUES ('Peon_Pounder',4118,99); -- Earth_Pounder

INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1315); -- Gas_Shell
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1316); -- Venom_Shell
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1317); -- Palsynyxis
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1318); -- Painful_Whip
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1319); -- Suctorial_Tentacle
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,2437); -- Virulent_Haze

INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,186); -- Bubble_Shower
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,187); -- Bubble_Curtain
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,189); -- Scissor_Guard
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,2256); -- Venom_Shower
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,2257); -- Mega_Scissors

INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,200); -- Tentacle
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,202); -- Ink_Jet
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,204); -- Cross_Attack
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,206); -- Maelstrom
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,207); -- Whirlwind

INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,194); -- Aqua_Ball
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,195); -- Splash_Breath
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,197); -- Water_Wall
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,385); -- Recoil_Dive

INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,224); -- Petrifactive_Breath
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,226); -- Pounce
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,227); -- Charged_Whisker
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,396); -- Blaster
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,397); -- Chaotic_Eye
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,2504); -- Preternatural_Glare

INSERT INTO `mob_skill_lists` VALUES ('Grwnan',4124,227); -- Charged_Whisker

INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,72); -- Drill_Branch
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,73); -- Pinecone_Bomb
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,75); -- Leafstorm
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,76); -- Entangle

INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,527); -- Words_of_Bane
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,529); -- Light_of_Penance
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,530); -- Lateral_Slash
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,531); -- Vertical_Slash
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,532); -- Throat_Stab
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,665); -- Everyones_Rancor

INSERT INTO `mob_skill_lists` VALUES ('Mimic_Mage',4127,332); -- Death_Trap

INSERT INTO `mob_skill_lists` VALUES ('Mimic_Jester',4128,332); -- Death_Trap

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
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,552); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,553); -- Aqua_Breath

INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,143); -- Scratch
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,144); -- Triple_Attack
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,145); -- Gliding_Spike
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,146); -- Feather_Barrier
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,147); -- Stormwind

INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,558); -- Deadly_Drive_Custom
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,559); -- Wind_Wall
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,560); -- Fang_Rush
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,561); -- Dread_Shriek
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,562); -- Tail_Crush
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,565); -- Radiant_Breath

INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,14); -- Roar
INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,15); -- Razor_Fang
INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,17); -- Claw_Cyclone

INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,541); -- Deadly_Hold
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,542); -- Tail_Swing
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,543); -- Tail_Smash
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,544); -- Heat_Breath
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,546); -- Great_Sandstorm
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,547); -- Great_Whirlwind

INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,222); -- Hell_Slash
INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,223); -- Horror_Cloud
INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,229); -- Blood_Saber

INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,222); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,223); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,229); -- Unfinished

INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2458); -- Uptala_Yaksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2459); -- Uptala_Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2460); -- Uptala_Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2461); -- Uptala_Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2501); -- Sakra_storm

INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1857); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1858); -- Hellclap
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1859); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1860); -- Necrobane
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1861); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1862); -- Bilgestorm
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,1863); -- Thundris_shriek
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2556); -- Bilfrost_Squall
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2557); -- Dunur_Strike

INSERT INTO `mob_skill_lists` VALUES ('Bloody_Skull',4141,2255); -- Corpse_Breath

INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,303); -- Soul_Drain
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,304); -- Hecatomb_Wave
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,307); -- Demonic_Howl
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,892); -- Condemnation
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,2116); -- Hellborn_Yawp
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,2565); -- Accurst_Spear

INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',4143,303); -- Soul_Drain
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',4143,304); -- Hecatomb_Wave
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',4143,307); -- Demonic_Howl
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',4143,892); -- Condemnation
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,303); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,304); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,307); -- Unfinished
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,892); -- Unfinished

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4145,2492); -- Mantid_Melee_Double
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4145,2493); -- Mantid_Melee_Slice
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4145,2494); -- Mantid_Melee_Jump
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2495); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2496); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2497); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2498); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2499); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2500); -- Death_Prophet
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2553); -- Immolating_Claw
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2630); -- Exorender

INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,62); -- Somersault
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,403); -- Cursed_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,404); -- Venom
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,1368); -- Debilitating_Drone

INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1457); -- Yawn
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1458); -- Wing_Slap
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1459); -- Beak_Lunge
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1460); -- Frigid_Shuffle
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,2563); -- Whiteout

INSERT INTO `mob_skill_lists` VALUES ('Little_Wingman',4148,1457); -- Yawn
INSERT INTO `mob_skill_lists` VALUES ('Little_Wingman',4148,1459); -- Beak_Lunge

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

INSERT INTO `mob_skill_lists` VALUES ('Primordial_Pugil',4150,385); -- Recoil_Dive

INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1522); -- Spinal_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1523); -- Mangle
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1524); -- Leaping_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1525); -- Hex_Palm
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1526); -- Animating_Wail
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,2108); -- Unblest_Jambiya
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,2634); -- Genei_Ryodan

INSERT INTO `mob_skill_lists` VALUES ('Assassins_Apprentice',4152,1522); -- Spinal_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Assassins_Apprentice',4152,1524); -- Leaping_Cleave

INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1702); -- Magic_Hammer
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1703); -- Water_Bomb
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1704); -- Frog_Cheer
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1706); -- Frog_Chorus
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,2633); -- Usurping_Scepter

INSERT INTO `mob_skill_lists` VALUES ('Chorus_toad',4154,1702); -- Magic_Hammer
INSERT INTO `mob_skill_lists` VALUES ('Chorus_toad',4154,1703); -- Water_Bomb

INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1443); -- Pecking_Flurry
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1444); -- Snatch_Morsel
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1445); -- Feather_Tickle
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1446); -- Wisecrack
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,2631); -- Tropic_Tenor

INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,1443); -- Pecking_Flurry
INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,1444); -- Snatch_Morsel
INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,1445); -- Unfinished

INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,1455); -- Frenetic_Rip
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,1747); -- Grating_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,1748); -- Stifling_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,2632); -- Dark_Recital

INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,1453); -- Abrasive_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,1454); -- Deafening_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,1455); -- Frenetic_Rip

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

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Gabbrath_Melee',4200,2761); -- Gabbrath_Melee_Bite
INSERT INTO `mob_skill_lists` VALUES ('Gabbrath_Melee',4200,2762); -- Gabbrath_Melee_Charge
INSERT INTO `mob_skill_lists` VALUES ('Gabbrath_Melee',4200,2763); -- Gabbrath_Melee_Spin
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2764); -- Blistering_Roar
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2765); -- Searing_Serration
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2766); -- Volcanic_Stasis
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2767); -- Tyrannical_Blow
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2768); -- Batholit-hic_Shell
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2769); -- Pyroclastic_Surge
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,2770); -- Incinerating_Lahar

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Waktza_Melee',4201,2814); -- Waktza_Melee_Gust
INSERT INTO `mob_skill_lists` VALUES ('Waktza_Melee',4201,2815); -- Waktza_Melee_Spin
INSERT INTO `mob_skill_lists` VALUES ('Waktza_Melee',4201,2816); -- Waktza_Melee_Beak
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2817); -- Crashing_Thunder
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2818); -- Reverberating_Cry
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2819); -- Brownout
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2820); -- Reverse_Current
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2821); -- Sparkstorm
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,2822); -- Static_Prison
-- INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,432); -- Blood_Weapon
-- INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,436); -- Chainspell

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln_Melee',4202,2909); -- Darrcuiln_Melee_Charge
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln_Melee',4202,2910); -- Darrcuiln_Melee_Claw
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln_Melee',4202,2911); -- Darrcuiln_Melee_Howl
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2912); -- Aurous_Charge
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2913); -- Howling_Gust
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2914); -- Righteous_Rasp
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2915); -- Starward_Yowl
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,2916); -- Stalking_Prey

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Bztavian_Melee',4203,2743); -- Bztavian_Melee_Bite
INSERT INTO `mob_skill_lists` VALUES ('Bztavian_Melee',4203,2744); -- Bztavian_Melee_Slash
INSERT INTO `mob_skill_lists` VALUES ('Bztavian_Melee',4203,2745); -- Bztavian_Melee_Stinger
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2746); -- Colkhab_Mandibular_Lashing
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2747); -- Colkhab_Vespine_Hurricane
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2748); -- Colkhab_Stinger_volley
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2749); -- Colkhab_Droning_Whirlwind
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2750); -- Colkhab_Incisive_Denouement
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,2751); -- Colkhab_Incisive_Apotheosis

INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2701); -- Cracklaw_Impenetrable_carapace
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2702); -- Cracklaw_Rending_Deluge
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2703); -- Cracklaw_Sundering_Snip
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2704); -- Cracklaw_Viscid_Spindrift
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2705); -- Cracklaw_Riptide_Eupnea

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Rockfin_Melee',4205,2750); -- Rockfin_Melee_Bite
INSERT INTO `mob_skill_lists` VALUES ('Rockfin_Melee',4205,2751); -- Rockfin_Melee_Ram
INSERT INTO `mob_skill_lists` VALUES ('Rockfin_Melee',4205,2752); -- Rockfin_Melee_Spin
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2755); -- Protolithic_Puncture
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2756); -- Aquatic_Lance
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2757); -- Pelagic_Cleaver
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2759); -- Tidal_Guillotine
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2760); -- Marine_Mayhem
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,2758); -- Carcharian_verve

-- Begin temp!
INSERT INTO `mob_skill_lists` VALUES ('Cehuetzi_Melee',4206,2878); -- Cehuetzi_Melee_Left
INSERT INTO `mob_skill_lists` VALUES ('Cehuetzi_Melee',4206,2879); -- Cehuetzi_Melee_Right
INSERT INTO `mob_skill_lists` VALUES ('Cehuetzi_Melee',4206,2880); -- Cehuetzi_Melee_Bite
-- End temp!
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2881); -- Polar_Roar
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2882); -- Brain_Freeze
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2883); -- Biting_Abrogation
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2884); -- Permafrost_Requiem
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2885); -- Glacial_Tomb
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,2886); -- Glassy_Nova

INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2258); -- Cytokinesis
INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2294); -- Dissolve
INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2295); -- Mucus_Spread
INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2296); -- Epoxy_Spread


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