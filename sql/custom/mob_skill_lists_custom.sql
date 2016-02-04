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

INSERT INTO `mob_skill_lists` VALUES ('Absolute Virtue',4000,1130);   -- Head Butt (Stun, Grav, Slow, knockback)

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