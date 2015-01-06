-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of npc_list.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- Windurst Walls
REPLACE INTO `npc_list` VALUES (17756379,'Babban_Ny_Mheillea','Babban Ny Mheillea',64,14,-4.525,-50,0,50,50,0,0,0,0,27,0x0000C70800000000000000000000000000000000,32);

-- Ru'Lude Gardens
REPLACE INTO `npc_list` VALUES (17772772,'Assai_Nybaem','Assai Nybaem',223,-34,0.001,-77,29,40,40,0,0,0,0,27,0x01000501fc100221c930b9408950006000700000,32);

REPLACE INTO `npc_list` VALUES (17772784,'Fabien','Fabien',191,2.282,0.001,-65.316,29,40,40,0,0,0,0,3,0x0100070100100421c930b9400251006000700000,0);
REPLACE INTO `npc_list` VALUES (17772785,'Vincent','Vincent',190,4.043,0.001,-65.351,22,40,40,0,0,0,0,3,0x01000b0100100421c930b9400251006000700000,32);
REPLACE INTO `npc_list` VALUES (17772786,'Voidwatch_Purveyor','Voidwatch Purveyor',192,9,0.001,-80.5,16,40,40,0,0,0,0,3,0x01000c01141019200c3002400250006000700000,0);

REPLACE INTO `npc_list` VALUES (17772791,'Anastase','Anastase',34,-36.977,0.001,-38.532,1,40,40,0,0,0,0,27,0x01000E039510262002303A403A50116200700000,0);

-- Port Jeuno
REPLACE INTO `npc_list` VALUES (17784938,'AF3_Shop_Moogle','Moogle',183,-48.000,0.002,-10.000,7,40,40,0,1,0,0,27,0x0000520000000000000000000000000000000000,32);
REPLACE INTO `npc_list` VALUES (17784939,'AF3_Trade_Moogle','Moogle',183,-50.000,0.002,-10.000,7,40,40,0,1,0,0,27,0x0000520000000000000000000000000000000000,32);

-- Abyssea - Empyreal Paradox
REPLACE INTO `npc_list` VALUES (17821707,'Atma_Infustionist','Atma Infusionist',168,545,-500.5,-584,7,'50','50','0','0','0','0','3',0x0000150400000000000000000000000000000000,0);

REPLACE INTO `npc_list` VALUES (17821710,'transcendental1','Transcendental Radiance',0,540,-500,-599,1,'50','50','0','8','96','0','3',0x00006a0900000000000000000000000000000000,2);
REPLACE INTO `npc_list` VALUES (17821711,'transcendental2','Transcendental Radiance',0,-480,0,480,1,'50','50','0','8','96','0','3',0x00006a0900000000000000000000000000000000,2);
REPLACE INTO `npc_list` VALUES (17821712,'transcendental3','Transcendental Radiance',195,520,-500,480,1,'50','50','0','8','96','0','3',0x00006a0900000000000000000000000000000000,2);
INSERT INTO `npc_list` VALUES (17821713,'transcendental4','Transcendental Radiance',195,-480,-1000,-515,1,'50','50','0','8','96','0','3',0x00006a0900000000000000000000000000000000,2);

REPLACE INTO `npc_list` VALUES (17821720,'blank','     ',0,-480,0,480,1,'50','50','0','0','0','2','2051',0x0000340000000000000000000000000000000000,0);

REPLACE INTO `npc_list` VALUES (17821722,'blank','     ',195,520,-500,480,1,'50','50','0','0','0','2','2051',0x0000340000000000000000000000000000000000,0);

REPLACE INTO `npc_list` VALUES (17821724,'blank','     ',195,-480,-1000,-515,1,'50','50','0','0','0','2','2051',0x0000340000000000000000000000000000000000,0);

