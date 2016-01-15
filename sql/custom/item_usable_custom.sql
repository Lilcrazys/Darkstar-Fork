-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of item_usable.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------
-- INSERT INTO `item_usable` VALUES (itemid,'name',validTargets,activation,animation,animationTime,maxCharges,useDelay,reuseDelay,aoe);
-- New entries below this line in order of item ID.

REPLACE INTO `item_usable` VALUES (4112,'potion',1,1,30,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4113,'potion_+1',1,9,30,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4114,'potion_+2',1,9,30,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4115,'potion_+3',1,9,30,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4116,'hi-potion',1,9,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4117,'hi-potion_+1',1,9,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4118,'hi-potion_+2',1,9,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4119,'hi-potion_+3',1,9,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4120,'x-potion',1,14,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4121,'x-potion_+1',1,14,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4122,'x-potion_+2',1,14,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4123,'x-potion_+3',1,14,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4124,'max-potion',1,12,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4125,'max-potion_+1',1,12,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4126,'max-potion_+2',1,12,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4127,'max-potion_+3',1,12,31,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4128,'ether',1,9,32,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4129,'ether_+1',1,9,32,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4130,'ether_+2',1,9,32,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4131,'ether_+3',1,9,32,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4132,'hi-ether',1,18,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4133,'hi-ether_+1',1,18,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4134,'hi-ether_+2',1,18,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4135,'hi-ether_+3',1,18,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4136,'super_ether',1,20,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4137,'super_ether_+1',1,20,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4138,'super_ether_+2',1,20,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4139,'super_ether_+3',1,20,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4140,'pro-ether',1,13,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4141,'pro-ether_+1',1,13,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4142,'pro-ether_+2',1,13,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4143,'pro-ether_+3',1,13,33,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4144,'hi-elixir',1,20,34,9,0,0,0,0);
REPLACE INTO `item_usable` VALUES (4145,'elixir',1,20,34,9,0,0,0,0);

INSERT INTO `item_usable` VALUES (4619,'scroll_of_curaga_v',1,1,11,5,0,0,0,0);

REPLACE INTO `item_usable` VALUES (4174,'vile_elixir',1,1,34,1,0,0,90,0); -- That 90 second timer might not function as expected, DSp seems to expect that field to be for "charged" items
REPLACE INTO `item_usable` VALUES (4175,'vile_elixir_+1',1,1,34,1,0,0,90,0);

INSERT INTO `item_usable` VALUES (4985,'scroll_of_horde_lullaby_ii',1,1,15,5,0,0,0,0);
INSERT INTO `item_usable` VALUES (5055,'scroll_of_ice_carol_ii',1,1,15,5,0,0,0,0);
INSERT INTO `item_usable` VALUES (5060,'scroll_of_light_carol_ii',1,1,15,5,0,0,0,0);
INSERT INTO `item_usable` VALUES (5061,'scroll_of_dark_carol_ii',1,1,15,5,0,0,0,0);
INSERT INTO `item_usable` VALUES (5086,'scroll_of_regen_v',1,1,11,5,0,0,0,0);

INSERT INTO `item_usable` VALUES (5103,'scroll_of_crusade',1,1,24,5,0,0,0,0);

REPLACE INTO `item_usable` VALUES (5477,'warrior_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5478,'monk_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5479,'white_mage_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5480,'black_mage_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5481,'red_mage_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5482,'thief_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5483,'paladin_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5484,'dark_knight_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5485,'beastmaster_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5486,'bard_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5487,'ranger_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5488,'samurai_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5489,'ninja_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5490,'dragoon_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5491,'summoner_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5492,'blue_mage_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5493,'corsair_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5494,'puppetmaster_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5495,'dancer_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5496,'scholar_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5497,'bolters_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5498,'casters_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5499,'coursers_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5500,'blitzers_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5501,'tacticians_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5502,'allies_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5503,'misers_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5504,'companions_die',1,1,95,0,0,0,0,0);
REPLACE INTO `item_usable` VALUES (5505,'avengers_die',1,1,95,0,0,0,0,0);
