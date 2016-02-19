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

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4000,548); -- Tortoise Song
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4000,549); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4000,793); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4000,551); -- Harden_Shell
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4000,552); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4000,2329); -- Tetsudo_Tremor

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4001,2135) -- Amnesic_Blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4001,372) -- Wild_Horn
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4001,373) -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4001,376) -- Flame_Armor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4001,2330) -- Ecliptic_Meteor

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4002,2264) -- Sinister_Wing
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4002,2265) -- Chaos_blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4002,2267) -- Dancing_tail
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4002,2269) -- Chilling_roar
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4002,2271) -- Soul_douse

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4003,2469) -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4003,2470) -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4003,2471) -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4003,2472) -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4003,2474) -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4004,1031) -- Sleet_Blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4004,1032) -- Sleet_Blast_alt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4004,1033) -- Gregale_Wing
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4004,1034) -- Spike_Flail
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4004,1035) -- Glacial_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4004,1036) -- Touchdown
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4004,1037) -- Sleet_Blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4004,1038) -- Gregale_Wing_Air
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4004,1039) -- Absolute_Terror

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4005,373) -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4005,374) -- Kick_Out
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4005,375) -- Shock_Wave
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4005,376) -- Flame_Armor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4005,378) -- Meteor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4005,2135) -- Amnesic_Blast

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