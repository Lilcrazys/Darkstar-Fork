-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_mods_pet.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- Keep it sorted by itemID..OR ELSE.

-- Item Name
-- INSERT INTO `item_mods_pet` VALUES (itemId, modId, value, petType ,0); -- stats given
-- All = 0
-- Avatar = 1
-- Wyvern = 2
-- Automaton = 3

-- -------------------------------------------------------
--  Ravana's Axe - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (18547, 338, 3 ,0); -- Pet: Adds "Regen" effect +3

-- -------------------------------------------------------
--  Aymur *Mythic* - LVL 80 - ignored the Aftermath acc, atk occ.attacks twice
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (19068, 23, 50 ,0); -- Pet: Attack +50

-- -------------------------------------------------------
--  Aymur *Mythic* - LVL 85 - ignored the Aftermath acc, atk occ.attacks twice
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (19088, 23, 60 ,0); -- Pet: Attack +60

-- -------------------------------------------------------
--  Aymur *Mythic* - LVL 90 - ignored the Aftermath acc, atk occ.attacks twice
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (19620, 23, 70 ,0); -- Pet: Attack +70

-- -------------------------------------------------------
--  Aymur *Mythic* - LVL 95 - ignored the Aftermath acc, atk occ.attacks twice
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (19718, 23, 70 ,0); -- Pet: Attack +70

-- -------------------------------------------------------
--  Demonry Core - LVL 88
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (19764, 25, 4 ,0); -- Pet: Accuracy+4

-- -------------------------------------------------------
--  Aymur *Mythic* - LVL 99-1 - ignored the Aftermath acc, atk occ.attacks twice
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (19827, 23, 80 ,0); -- Pet: Attack +80

-- -------------------------------------------------------
--  Aymur *Mythic* - LVL 99-2 Afterglow - ignored the Aftermath acc, atk occ.attacks twice
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (19956, 23, 80 ,0); -- Pet: Attack +80

-- -------------------------------------------------------
--  Aymur *Mythic* - LVL 99-3 - ignored the Aftermath acc, atk occ.attacks twice
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (20792, 23, 80 ,0); -- Pet: Attack +80

-- -------------------------------------------------------
--  Aymur *Mythic* - LVL 99-4 Afterglow - ignored the Aftermath acc, atk occ.attacks twice
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (20793, 23, 80 ,0); -- Pet: Attack +80

-- -------------------------------------------------------
--  Arktoi - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (20811, 23, 20 ,0); -- Pet: Attack+20
INSERT INTO `item_mods_pet` VALUES (20811, 288, 3 ,0); -- Pet: Double Attack +3%

-- -------------------------------------------------------
--  Izizoeksi - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (20812, 384, 21 ,0); -- Pet: Haste+2%
INSERT INTO `item_mods_pet` VALUES (20812, 27, 7 ,0); -- Pet: Enmity+7
INSERT INTO `item_mods_pet` VALUES (20812, 160, -5 ,0); -- Pet: Damage taken -5%

-- -------------------------------------------------------
--  Emxgha - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (20813, 65, 15 ,0); -- Pet: Evasion +15

-- -------------------------------------------------------
--  Hunahpu - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (20826, 25, 30 ,0); -- Pet: Accuracy +30
INSERT INTO `item_mods_pet` VALUES (20826, 384, 31 ,0); -- Pet: Haste +3%

-- -------------------------------------------------------
--  Hunahpu - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (20827, 25, 28 ,0); -- Pet: Accuracy +28
INSERT INTO `item_mods_pet` VALUES (20827, 23, 28 ,0); -- Pet: Attack+28

-- -------------------------------------------------------
--  Brethren Axe - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (20828, 25, 20 ,0); -- Pet: Accuracy +20

-- -------------------------------------------------------
--  Ankusa Helm - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (26640, 384, 31 ,0); -- Pet: Haste +3%

-- -------------------------------------------------------
--  Ankusa Helm +1 - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (26641, 384, 41 ,0); -- Pet: Haste +3%

-- -------------------------------------------------------
--   Thurandaut Ring
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27589, 25, 20 ,0); -- Pet: Accuracy+20
INSERT INTO `item_mods_pet` VALUES (27589, 26, 20 ,0); -- Pet: Ranged Accuracy+20
INSERT INTO `item_mods_pet` VALUES (27589, 23, 20 ,0); -- Pet: Attack+20
INSERT INTO `item_mods_pet` VALUES (27589, 24, 20 ,0); -- Pet: Ranged Attack+20
INSERT INTO `item_mods_pet` VALUES (27589, 384, 31 ,0); -- Pet: Haste+3%
INSERT INTO `item_mods_pet` VALUES (27589, 160, -3 ,0); -- Pet: Damage taken -3%

-- -------------------------------------------------------
--  Totemic Helm - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27671, 25, 20 ,0); -- Pet: Accuracy +20

-- -------------------------------------------------------
--  Totemic Helm +1 - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27692, 25, 20 ,0); -- Pet: Accuracy +20

-- -------------------------------------------------------
--  Ankusa Jackcoat - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (26816, 384, 41 ,0); -- Pet: Haste +4%

-- -------------------------------------------------------
--  Ankusa Jackcoat +1 - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (26817, 384, 51 ,0); -- Pet: Haste +5%

-- -------------------------------------------------------
--  Ankusa Gloves - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (26992, 161, -3 ,0); -- Pet: Physical damage taken -3%

-- -------------------------------------------------------
--  Ankusa Gloves +1 - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (26993, 161, -4 ,0); -- Pet: Physical damage taken -4%

-- -------------------------------------------------------
--  Ankusa Trousers - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27168, 384, 31 ,0); -- Pet: Haste +3%

-- -------------------------------------------------------
--  Ankusa Trousers +1 - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27169, 384, 41 ,0); -- Pet: Haste +4%

-- -------------------------------------------------------
--  Ankusa Gaiters - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27344, 65, 15 ,0); -- Pet: Evasion +15
INSERT INTO `item_mods_pet` VALUES (27344, 161, -2 ,0); -- Pet: Physical damage taken -2%

-- -------------------------------------------------------
--  Ankusa Gaiters - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27345, 65, 18 ,0); -- Pet: Evasion +18
INSERT INTO `item_mods_pet` VALUES (27345, 161, -3 ,0); -- Pet: Physical damage taken -3%

-- -------------------------------------------------------
--  Skd. Bazubands +1 - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27929, 384, 31 ,0); -- Pet: Haste +3%

-- -------------------------------------------------------
--  Tot. Gloves - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27951, 384, 31 ,0); -- Pet: Haste +3%

-- -------------------------------------------------------
--  Tot. Gloves +1 - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (27972, 384, 31 ,0); -- Pet: Haste +3%

-- -------------------------------------------------------
--  Artsieq Cuffs - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28017, 160, -4 ,0); -- Pet: Damage taken -4%

-- -------------------------------------------------------
--  Totemic Trousers - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28098, 23, 20 ,0); -- Pet: Attack +20

-- -------------------------------------------------------
--  Totemic Trousers +1 - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28119, 23, 20 ,0); -- Pet: Attack +20

-- -------------------------------------------------------
--  Sigyn's Jambeaux - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28214, 65, 5 ,0); -- Pet: Evasion +5

-- -------------------------------------------------------
--  Durgai Leggings - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28287, 25, 15 ,0); -- Pet: Accuracy +15
INSERT INTO `item_mods_pet` VALUES (28287, 27, 5 ,0); -- Pet: Enmity +5

-- -------------------------------------------------------
-- Isa Belt - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28451, 65, 10 ,0); -- Pet: Evasion +10
INSERT INTO `item_mods_pet` VALUES (28451, 289, 5 ,0); -- Pet: Subtle Blow +5
INSERT INTO `item_mods_pet` VALUES (28451, 338, 1 ,0); -- Pet: Regen +1
INSERT INTO `item_mods_pet` VALUES (28451, 160, -3 ,0); -- Pet: Damage taken -3%

-- -------------------------------------------------------
--  Kuku Stone - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28457, 384, 41 ,0); -- Pet: Haste +4%

-- -------------------------------------------------------
--  Hurch'lan Sash - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28462, 25, 10 ,0); -- Pet: Accuracy +10
INSERT INTO `item_mods_pet` VALUES (28462, 26, 10 ,0); -- Pet: Ranged Accuracy +10
INSERT INTO `item_mods_pet` VALUES (28462, 384, 51 ,0); -- Pet: Haste +5%

-- -------------------------------------------------------
--  Domes. Earring - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28505, 27, 5 ,0); -- Pet: Enmity +5
INSERT INTO `item_mods_pet` VALUES (28505, 288, 3 ,0); -- Pet: Double Attack +3%

-- -------------------------------------------------------
--  Gelai Earring - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28518, 289, 9 ,0); -- Pet: Subtle Blow +9

-- -------------------------------------------------------
--  Pastoralist's Mantle - LVL 99
-- -------------------------------------------------------
INSERT INTO `item_mods_pet` VALUES (28625, 23, 20 ,0); -- Pet: Attack +20

-- keraunos
INSERT INTO `item_mods_pet` VALUES (21169, 30, 228 ,0); -- Pet macc
INSERT INTO `item_mods_pet` VALUES (21169, 28, 100 ,0); -- Pet Matt

-- argocham_mantle (27595)
INSERT INTO `item_mods_pet` VALUES (27595, 23, 12 ,0); -- Pet: Att
INSERT INTO `item_mods_pet` VALUES (27595, 28, 12 ,0); -- Pet: Mab
INSERT INTO `item_mods_pet` VALUES (27595, 24, 12 ,0); -- Pet: Ratt

-- incarnation_sash (28418)
INSERT INTO `item_mods_pet` VALUES (28418, 25, 15 ,0); -- Pet: Acc
INSERT INTO `item_mods_pet` VALUES (28418, 26, 15 ,0); -- Pet: Racc
INSERT INTO `item_mods_pet` VALUES (28418, 30, 15 ,0); -- Pet: Macc
INSERT INTO `item_mods_pet` VALUES (28418, 288, 4 ,0); -- Pet: Double Att

-- updraft_mantle (28630)
INSERT INTO `item_mods_pet` VALUES (28630, 2, 1000 ,0); -- Wyvern: HP
INSERT INTO `item_mods_pet` VALUES (28630, 32, 20 ,0); -- Wyvern: Att

INSERT INTO `item_mods_pet` VALUES (11038, 161, -2 ,0); -- Wyvern: PDT

-- Shomonjijoe +1
INSERT INTO `item_mods_pet` VALUES (26888, 28, 30, 1); --  Avatar Magic Attack Bonus +30
