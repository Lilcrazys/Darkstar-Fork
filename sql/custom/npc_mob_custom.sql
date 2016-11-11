-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of
-- BOTH npc_list.sql and mob_spawn_points.sql
-- and must be imported/executed AFTER those files.
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- Note all ZoneIDs are valid zones!

-- ------------------------------------------------------------
-- unknown (Zone 0)
-- Theoretically 16777218 ~ 16778239
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Phanauet Channel (Zone 1)
-- 16782335
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Carpenters' Landing (Zone 2)
-- 16786431
-- ------------------------------------------------------------

INSERT INTO `mob_spawn_points` VALUES (16785724,'Orcfeltrap','Orcfeltrap',96612,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (16785725,'Orcfeltrap','Orcfeltrap',96612,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (16785726,'Orcfeltrap','Orcfeltrap',96612,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (16785781,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (16785782,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (16785783,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Manaclipper (Zone 3)
-- 16790527
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Bibiki Bay (Zone 4)
-- 16794623
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (16793862,'Bismarck','Bismarck',13650,-643,0.3,-655,108);
REPLACE INTO `mob_spawn_points` VALUES (16793863,'Primordial_Pugil','Primordial Pugil',90491,-640,0.3,-655,0);
REPLACE INTO `mob_spawn_points` VALUES (16793864,'Primordial_Pugil','Primordial Pugil',90491,-640.5,0.3,-655,0);
REPLACE INTO `mob_spawn_points` VALUES (16793865,'Primordial_Pugil','Primordial Pugil',90491,-641,0.3,-655,0);
REPLACE INTO `mob_spawn_points` VALUES (16793866,'Primordial_Pugil','Primordial Pugil',90491,-641.5,0.3,-655,0);
REPLACE INTO `mob_spawn_points` VALUES (16793867,'Primordial_Pugil','Primordial Pugil',90491,-642,0.3,-655,0);
REPLACE INTO `mob_spawn_points` VALUES (16793868,'Primordial_Pugil','Primordial Pugil',90491,-642.5,0.3,-655,0);
REPLACE INTO `mob_spawn_points` VALUES (16793869,'Primordial_Pugil','Primordial Pugil',90491,-643,0.3,-655,0);
REPLACE INTO `mob_spawn_points` VALUES (16793870,'Primordial_Pugil','Primordial Pugil',90491,-643.5,0.3,-655,0);
REPLACE INTO `mob_spawn_points` VALUES (16793871,'Primordial_Pugil','Primordial Pugil',90491,-644,0.3,-655,0);
REPLACE INTO `mob_spawn_points` VALUES (16793872,'Primordial_Pugil','Primordial Pugil',90491,-644.5,0.3,-655,0);

INSERT INTO `mob_spawn_points` VALUES (16793895,'Intuila','Intuila',96609,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (16793896,'Intuila','Intuila',96609,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (16793897,'Intuila','Intuila',96609,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (16793969,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (16793970,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (16793971,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

INSERT INTO `mob_spawn_points` VALUES (16794622,'Ravenous_Cracklaw','Ravenous_Cracklaw',13576,-115,0,-575,100);
-- INSERT INTO `npc_list` VALUES (16794623,'Loot_Box','Loot Box',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);



-- ------------------------------------------------------------
-- Uleguerand Range (Zone 5)
-- 16798719
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (16797738,'Frost_Flambeau','Frost Flambeau',90315,-283,-19,-365,29);
REPLACE INTO `mob_spawn_points` VALUES (16797770,'Skvader','Skvader',90316,173,0,-283,19);
REPLACE INTO `mob_spawn_points` VALUES (16798081,'Isarukitsck','Isarukitsck',90488,-141,-19,-325,0);
REPLACE INTO `mob_spawn_points` VALUES (16798082,'Little Wingman','Little Wingman',90489,-140,-19,-325,0);
REPLACE INTO `mob_spawn_points` VALUES (16798083,'Little Wingman','Little Wingman',90489,-141,-19,-325,0);
REPLACE INTO `mob_spawn_points` VALUES (16798084,'Little Wingman','Little Wingman',90489,-142,-19,-325,0);
INSERT INTO `mob_spawn_points` VALUES (16798718,'Kumhau','Kumhau',90085,-22,-175,50,118);
-- INSERT INTO `npc_list` VALUES (16798719,'Loot_Box','Loot Box',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

-- ------------------------------------------------------------
-- Bearclaw Pinnacle (Zone 6)
-- 16802815
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Attohwa Chasm (Zone 7)
-- 16806911
-- ------------------------------------------------------------

INSERT INTO `mob_spawn_points` VALUES (16806910,'Achuka','Achuka',90089,324,-25,-52,187);
-- INSERT INTO `npc_list` VALUES (16806911,'Loot_Box','Loot Box',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

REPLACE INTO `mob_spawn_points` VALUES (16806117,'Sargas','Sargas',14174,-247,2.750,-128,190); -- Pos data needs correction

REPLACE INTO `mob_spawn_points` VALUES (16806250,'Fjalar','Fjalar',90481,40,-4,-119,0);
REPLACE INTO `mob_spawn_points` VALUES (16806251,'Bloody_Skull','Bloody Skull',90482,39,-4,-119,0);
REPLACE INTO `mob_spawn_points` VALUES (16806252,'Bloody_Skull','Bloody Skull',90482,40,-4,-119,0);
REPLACE INTO `mob_spawn_points` VALUES (16806253,'Bloody_Skull','Bloody Skull',90482,41,-4,-119,0);

-- ------------------------------------------------------------
-- Boneyard Gully (Zone 8)
-- 16811007
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Pso'Xja (Zone 9)
-- 16815103
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- The Shrouded Maw (Zone 10)
-- 16819199
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Oldton Movalpolos (Zone 11)
-- 16823295
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Newton Movalpolos (Zone 12)
-- 16827391
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (16826474,'Sword_Sorcerer_Solisoq','Sword Sorcerer Solisoq',90306,6,15,-179,125);

-- ------------------------------------------------------------
-- Mine Shaft #2716 (Zone 13)
-- 16831487
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Hall of Transference (Zone 14)
-- 16835583
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Abyssea - Konschtat (Zone 15)
-- 16839679
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (16839007,'Eccentric_Eve','Eccentric Eve',429,215,32,280,90);
REPLACE INTO `mob_spawn_points` VALUES (16839069,'Eccentric_eve','Eccentric Eve',429,230,32,281,92);
REPLACE INTO `mob_spawn_points` VALUES (16839072,'Eccentric_eve','Eccentric Eve',429,245,31,280,92);
REPLACE INTO `mob_spawn_points` VALUES (16838979,'Alkonost','Alkonost',413,52,30,413,88);
REPLACE INTO `mob_spawn_points` VALUES (16838718,'Ashtaerh_the_Gallvexed','Ashtaerh the Gallvexed',416,360,-16,-400,11);
REPLACE INTO `mob_spawn_points` VALUES (16839068,'Bloodeye_Vileberry','Bloodeye Vileberry',420,539,24,714,103);
REPLACE INTO `mob_spawn_points` VALUES (16838782,'Bombadeel','Bombadeel',422,-358,8,-42,84);
REPLACE INTO `mob_spawn_points` VALUES (16838946,'Clingy_Clare','Clingy Clare',423,370,1,9,151);
REPLACE INTO `mob_spawn_points` VALUES (16838912,'Guimauve','Guimauve',436,-242,66,617,0);
REPLACE INTO `mob_spawn_points` VALUES (16838871,'Keratyrannos','Keratyrannos',444,-134,47,416,162);
REPLACE INTO `mob_spawn_points` VALUES (16838767,'Sarcophilus','Sarcophilus',460,-166,-7,-84,106);
REPLACE INTO `mob_spawn_points` VALUES (16838962,'Siranpa-kamuy','Siranpa-kamuy',463,371,1,8,174);

REPLACE INTO `npc_list` VALUES (16839078,'qm1','???',0,360.000,-16.043,-400.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Ashtaerth
REPLACE INTO `npc_list` VALUES (16839080,'qm2','???',0,-358.000,8.000,-42.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Bombadeel
REPLACE INTO `npc_list` VALUES (16839081,'qm3','???',0,-182.000,2.858,32.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Hexenpilz
REPLACE INTO `npc_list` VALUES (16839082,'qm4','???',0,-134.000,47.371,416.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Keratyrannos
REPLACE INTO `npc_list` VALUES (16839083,'qm5','???',0,-248.000,47.971,403.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Lentor
REPLACE INTO `npc_list` VALUES (16839084,'qm6','???',0,-155.000,64.117,590.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Bloodguzzler
REPLACE INTO `npc_list` VALUES (16839086,'qm7','???',0,370.000,1.601,10.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Clingy Clare
REPLACE INTO `npc_list` VALUES (16839087,'qm8','???',0,54.000,30.654,414.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Alkonost
REPLACE INTO `npc_list` VALUES (16839088,'qm9','???',0,438.000,31.922,358.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Arimaspi
REPLACE INTO `npc_list` VALUES (16839089,'qm10','???',0,630.000,33.608,410.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Fear Gorta
REPLACE INTO `npc_list` VALUES (16839090,'qm11','???',0,230.413,32.278,280.677,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (16839091,'qm12','???',0,-40.000,71.992,560.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (16839092,'qm13','???',0,554.000,24.198,714.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (16839093,'qm14','???',0,215.413,32.778,280.677,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Eccentric Eve
REPLACE INTO `npc_list` VALUES (16839094,'qm15','???',0,-40.000,68.692,575.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (16839095,'qm16','???',0,539.000,24.198,714.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Bloodeye
REPLACE INTO `npc_list` VALUES (16839096,'qm17','???',0,245.413,31.778,280.677,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (16839097,'qm18','???',0,-25.000,68.792,560.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Kukulkan
REPLACE INTO `npc_list` VALUES (16839098,'qm19','???',0,554.000,23.098,699.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (16839099,'qm20','???',0,369.000,1.000,9.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Siranpa Kamuy
REPLACE INTO `npc_list` VALUES (16839100,'qm21','???',0,-166.000,-7.000,-83.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Sarcophilus


-- ------------------------------------------------------------
-- Promyvion - Holla (Zone 16)
-- 16843775
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Spire of Holla (Zone 17)
-- 16847871
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Promyvion - Dem (Zone 18)
-- 16851967
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Spire of Dem (Zone 19)
-- 16856063
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Promyvion - Mea (Zone 20)
-- 16860159
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Spire of Mea (Zone 21)
-- 16864255
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Promyvion - Vahzl (Zone 22)
-- 16868351
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Spire of Vahzl (Zone 23)
-- 16872447
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Lufaise Meadows (Zone 24)
-- 16876543
-- ------------------------------------------------------------

INSERT INTO `mob_spawn_points` VALUES (16875789,'Immanibugard','Immanibugard',96608,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (16875790,'Immanibugard','Immanibugard',96608,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (16875791,'Immanibugard','Immanibugard',96608,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (16875883,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (16875884,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (16875885,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

REPLACE INTO `npc_list` VALUES (16875876,'Planar_Rift','Planar Rift',0,-406,-8,44,1,50,50,0,5,100,0,3,0x00006F0900000000000000000000000000000000,2,'ABYSSEA',0); -- listed as Ramblix in DSP 9/24/2016
REPLACE INTO `mob_spawn_points` VALUES (16875780,'Abununnu','Abununnu',13767,-406,-8,44,0);
REPLACE INTO `mob_spawn_points` VALUES (16875781,'Gloam_Servitor_Melee','Gloam Servitor',90484,-405,-8,44,241);
REPLACE INTO `mob_spawn_points` VALUES (16875782,'Gloam_Servitor_Mage','Gloam Servitor',90485,-407,-8,44,16);

-- ------------------------------------------------------------
-- Misareaux Coast (Zone 25)
-- 16880639
-- ------------------------------------------------------------
REPLACE INTO `npc_list` VALUES (16879982,'Planar_Rift','Planar Rift',0,443,-15,126,1,50,50,0,5,100,0,3,0x00006F0900000000000000000000000000000000,2,'ABYSSEA',0); -- listed as '16' in DSP 9/24/2016
REPLACE INTO `mob_spawn_points` VALUES (16879901,'Tsui-Goab','Tsui-Goab',90486,443,-15,126,0);
REPLACE INTO `mob_spawn_points` VALUES (16879902,'Bloodswiller_Fly','Bloodswiller Fly',90487,442,-15,126,0);
REPLACE INTO `mob_spawn_points` VALUES (16879903,'Bloodswiller_Fly','Bloodswiller Fly',90487,444,-15,126,0);

-- ------------------------------------------------------------
-- Tavnazian Safehold (Zone 26)
-- 16884735
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (16883849,'Relic_Mog','Moogle',132,12,-9,0,7,40,40,0,1,0,0,27,0x0000520000000000000000000000000000000000,0,'COP',0);
REPLACE INTO `npc_list` VALUES (16883850,'Artifact_Mog','Moogle',154,8,-9,-8,7,40,40,0,1,0,0,27,0x0000520000000000000000000000000000000000,0,'COP',0);


-- ------------------------------------------------------------
-- Phomiuna Aqueducts (Zone 27)
-- 16888831
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Sacrarium (Zone 28)
-- 16892927
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Riverne - Site #B01 (Zone 29)
-- 16897023
-- ------------------------------------------------------------
INSERT INTO `npc_list` VALUES (16897015,'qm2','???',4,-114,0,-632,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'COP',0);
REPLACE INTO `mob_spawn_points` VALUES (16896157,'Bahamut','Bahamut',90503,-114.000,0,-632.000,229);


-- ------------------------------------------------------------
-- Riverne - Site #A01 (Zone 30)
-- 16901119
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Monarch Linn (Zone 31)
-- 16905215
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Sealion's Den (Zone 32)
-- 16909311
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Al'Taieu (Zone 33)
-- 16913407
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (16912840,'JoJ_Qn_xzomit','Qn\'xzomit',90331,-286.194,-0.5,-470.361,246);
REPLACE INTO `mob_spawn_points` VALUES (16912841,'JoJ_Qn_xzomit','Qn\'xzomit',90331,-295.663,-0.06,-448.272,149);
REPLACE INTO `mob_spawn_points` VALUES (16912842,'JoJ_Qn_xzomit','Qn\'xzomit',90331,-287.525,-0.5,-464.5,69);
REPLACE INTO `mob_spawn_points` VALUES (16912843,'JoJ_Qn_xzomit','Qn\'xzomit',90331,-284.194,-0.5,-470.361,246);
REPLACE INTO `mob_spawn_points` VALUES (16912844,'JoJ_Qn_xzomit','Qn\'xzomit',90331,-295.663,-0.06,-448.272,149);
REPLACE INTO `mob_spawn_points` VALUES (16912845,'JoJ_Qn_xzomit','Qn\'xzomit',90331,-287.525,-0.5,-464.5,69);

REPLACE INTO `mob_spawn_points` VALUES (16912849,'JoL_Ru_phuabo','Ru\'phuabo',90334,477.480,-1.111,-565.864,39);
REPLACE INTO `mob_spawn_points` VALUES (16912850,'JoL_Ru_phuabo','Ru\'phuabo',90334,477.550,-1.114,-566.001,38);
REPLACE INTO `mob_spawn_points` VALUES (16912851,'JoL_Ru_phuabo','Ru\'phuabo',90334,477.622,-1.110,-566.194,37);
REPLACE INTO `mob_spawn_points` VALUES (16912852,'JoL_Ru_phuabo','Ru\'phuabo',90334,480.104,-1.506,-561.952,252);
REPLACE INTO `mob_spawn_points` VALUES (16912853,'JoL_Ru_phuabo','Ru\'phuabo',90334,480.242,-1.498,-561.964,252);
REPLACE INTO `mob_spawn_points` VALUES (16912854,'JoL_Ru_phuabo','Ru\'phuabo',90334,480.110,-1.466,-562.257,248);
REPLACE INTO `mob_spawn_points` VALUES (16912855,'JoL_Ru_phuabo','Ru\'phuabo',90334,476.961,-1.279,-560.968,247);
REPLACE INTO `mob_spawn_points` VALUES (16912856,'JoL_Ru_phuabo','Ru\'phuabo',90334,477.169,-1.295,-560.921,247);
REPLACE INTO `mob_spawn_points` VALUES (16912857,'JoL_Ru_phuabo','Ru\'phuabo',90334,477.550,-1.328,-561.215,242);
REPLACE INTO `mob_spawn_points` VALUES (16912858,'JoL_Qn_xzomit','Qn\'xzomit',90333,482.157,-1.504,-561.017,92);
REPLACE INTO `mob_spawn_points` VALUES (16912859,'JoL_Qn_xzomit','Qn\'xzomit',90333,478.351,-1.358,-561.169,31);
REPLACE INTO `mob_spawn_points` VALUES (16912860,'JoL_Qn_xzomit','Qn\'xzomit',90333,479.613,-1.395,-561.4,46);
REPLACE INTO `mob_spawn_points` VALUES (16912861,'JoL_Qn_xzomit','Qn\'xzomit',90333,480.343,-1.461,-562.054,250);
REPLACE INTO `mob_spawn_points` VALUES (16912862,'JoL_Qn_xzomit','Qn\'xzomit',90333,480.538,-1.380,-561.452,4);
REPLACE INTO `mob_spawn_points` VALUES (16912863,'JoL_Qn_xzomit','Qn\'xzomit',90333,480.093,-1.473,-561.951,252);
REPLACE INTO `mob_spawn_points` VALUES (16912864,'JoL_Qn_xzomit','Qn\'xzomit',90333,479.049,-1.470,-560.512,248);
REPLACE INTO `mob_spawn_points` VALUES (16912865,'JoL_Qn_xzomit','Qn\'xzomit',90333,478.548,-1.473,-560.292,40);
REPLACE INTO `mob_spawn_points` VALUES (16912866,'JoL_Qn_xzomit','Qn\'xzomit',90333,477.643,-1.564,-561.005,26);
REPLACE INTO `mob_spawn_points` VALUES (16912867,'JoL_Qn_hpemde','Qn\'hpemde',90332,480.014,-1.804,-560.765,13);
REPLACE INTO `mob_spawn_points` VALUES (16912868,'JoL_Qn_hpemde','Qn\'hpemde',90332,479.857,-1.848,-560.908,10);
REPLACE INTO `mob_spawn_points` VALUES (16912869,'JoL_Qn_hpemde','Qn\'hpemde',90332,479.691,-1.850,-560.698,41);
REPLACE INTO `mob_spawn_points` VALUES (16912870,'JoL_Qn_hpemde','Qn\'hpemde',90332,480.161,-1.889,-560.058,59);
REPLACE INTO `mob_spawn_points` VALUES (16912871,'JoL_Qn_hpemde','Qn\'hpemde',90332,479.138,-1.738,-560.684,119);
REPLACE INTO `mob_spawn_points` VALUES (16912872,'JoL_Qn_hpemde','Qn\'hpemde',90332,481.643,-1.676,-560.652,83);
REPLACE INTO `mob_spawn_points` VALUES (16912873,'JoL_Qn_hpemde','Qn\'hpemde',90332,479.042,-1.840,-559.745,28);
REPLACE INTO `mob_spawn_points` VALUES (16912874,'JoL_Qn_hpemde','Qn\'hpemde',90332,478.761,-1.550,-559.849,25);
REPLACE INTO `mob_spawn_points` VALUES (16912875,'JoL_Qn_hpemde','Qn\'hpemde',90332,479.025,-1.534,-559.847,27);

REPLACE INTO `mob_spawn_points` VALUES (16912877,'AV_Wynav','Aern\'s Wynav',90330,463.115,-1.346,-571.896,181);
REPLACE INTO `mob_spawn_points` VALUES (16912878,'AV_Wynav','Aern\'s Wynav',90330,463.214,-1.336,-573.022,202);
REPLACE INTO `mob_spawn_points` VALUES (16912879,'AV_Wynav','Aern\'s Wynav',90330,463.557,-1.360,-574.178,193);
REPLACE INTO `mob_spawn_points` VALUES (16912880,'AV_Wynav','Aern\'s Wynav',90330,463.115,-1.346,-571.896,181);
REPLACE INTO `mob_spawn_points` VALUES (16912881,'AV_Wynav','Aern\'s Wynav',90330,463.214,-1.336,-573.022,202);
REPLACE INTO `mob_spawn_points` VALUES (16912882,'AV_Wynav','Aern\'s Wynav',90330,463.557,-1.360,-574.178,193);


-- ------------------------------------------------------------
-- Grand Palace of Hu'Xzoi (Zone 34)
-- 16917503
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (16916819,'qm1','???',128,0.000,0.000,0.000,7,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'COP',0);

REPLACE INTO `npc_list` VALUES (16916908,'qm4','???',4,112,0,453,1,40,40,0,0,0,0,3,0x0000320000000000000000000000000000000000,0,'COP',0);
REPLACE INTO `mob_spawn_points` VALUES (16916815,'Ix_aern_mnk','Ix\'aern',900,112.783,-0.5,453.875,193);
REPLACE INTO `mob_spawn_points` VALUES (16916816,'Qn_aern_rdm','Qn\'aern',906,112.772,-0.5,453.880,193);
REPLACE INTO `mob_spawn_points` VALUES (16916817,'Qn_aern_whm','Qn\'aern',907,112.791,-0.5,453.885,193);

-- ------------------------------------------------------------
-- The Garden of Ru'Hmet (Zone 35)
-- 16921599
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (16921023,'Ix_DRG_Wynav','Aern\'s Wynav',911,-350.158,-0.607,-379.099,66);
REPLACE INTO `mob_spawn_points` VALUES (16921024,'Ix_DRG_Wynav','Aern\'s Wynav',911,-347.785,-0.379,-380.105,94);
REPLACE INTO `mob_spawn_points` VALUES (16921025,'Ix_DRG_Wynav','Aern\'s Wynav',911,-349.207,-0.499,-380,79);

REPLACE INTO `npc_list` VALUES (16921027,'qm1','???',64,-434.000,-0.005,698.000,7,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'COP',0);
REPLACE INTO `npc_list` VALUES (16921028,'qm2','???',224,-560.000,4.995,239.000,7,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'COP',0);
REPLACE INTO `npc_list` VALUES (16921029,'qm3','???',64,-274.000,-0.005,-702.000,6,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'COP',0);


-- ------------------------------------------------------------
-- Empyreal Paradox (Zone 36)
-- 16925695
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Temenos (Zone 37)
-- 16929791
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Apollyon (Zone 38)
-- 16933887
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dynamis - Valkurm (Zone 39)
-- 16937983
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dynamis - Buburimu (Zone 40)
-- 16942079
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dynamis - Qufim (Zone 41)
-- 16946175
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dynamis - Tavnazia (Zone 42)
-- 16950271
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Diorama Abdhaljs-Ghelsba (Zone 43)
-- 16954367
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Abdhaljs Isle-Purgonorgo (Zone 44)
-- 16958463
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Abyssea - Tahrongi (Zone 45)
-- 16962559
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (16961954,'qm1','???',0,-234.814,15.467,-603.425,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Halimede
REPLACE INTO `npc_list` VALUES (16961955,'qm2','???',0,74.576,-0.728,-436.675,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Vetehinen
REPLACE INTO `npc_list` VALUES (16961956,'qm3','???',0,-195.339,-16.713,-164.410,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Ophanim
REPLACE INTO `npc_list` VALUES (16961957,'qm4','???',0,-354.021,4.476,251.215,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Cannered Noz
REPLACE INTO `npc_list` VALUES (16961958,'qm5','???',0,184.619,-20.358,-150.728,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Treble Nocules
REPLACE INTO `npc_list` VALUES (16961959,'qm6','???',0,71.804,11.879,-49.185,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Gancanagh
REPLACE INTO `npc_list` VALUES (16961960,'qm7','???',0,-280.388,7.040,127.966,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Hedetet
REPLACE INTO `npc_list` VALUES (16961961,'qm8','???',0,403.955,-16.016,-398.916,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Abas
REPLACE INTO `npc_list` VALUES (16961962,'qm9','???',0,-40.234,-7.891,33.535,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Alectryon
REPLACE INTO `npc_list` VALUES (16961963,'qm10','???',0,-128.111,15.011,238.676,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Tefnet
REPLACE INTO `npc_list` VALUES (16961964,'qm11','???',0,247.468,45.999,289.501,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Muscaliet
REPLACE INTO `npc_list` VALUES (16961965,'qm12','???',0,-218.016,-1.015,-299.991,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Lachrymater
REPLACE INTO `npc_list` VALUES (16961966,'qm13','???',0,160.544,0.726,-15.540,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Chloris3
REPLACE INTO `npc_list` VALUES (16961967,'qm14','???',0,196.840,31.961,400.637,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Glavoid
REPLACE INTO `npc_list` VALUES (16961968,'qm15','???',0,-326.161,23.856,432.205,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Lacovie
REPLACE INTO `npc_list` VALUES (16961969,'qm16','???',0,160.544,0.726,-0.540,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Chloris
REPLACE INTO `npc_list` VALUES (16961970,'qm17','???',0,196.840,34.561,415.637,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Glavoid2?
REPLACE INTO `npc_list` VALUES (16961971,'qm18','???',0,-336.161,23.856,442.205,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Lacovie2
REPLACE INTO `npc_list` VALUES (16961972,'qm19','???',0,160.544,0.296,-30.540,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Chloris2
REPLACE INTO `npc_list` VALUES (16961973,'qm20','???',0,211.840,33.861,400.637,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Glavoid3
REPLACE INTO `npc_list` VALUES (16961974,'qm21','???',0,-316.161,23.956,442.205,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Lacovie3

INSERT INTO `npc_list` VALUES (16962078,'Veridical_Conflux_08','Veridical Conflux #08',142,324.683,39.839,436.458,1,40,40,0,0,96,0,3,0x0000620900000000000000000000000000000000,2,'ABYSSEA',0);
REPLACE INTO `mob_spawn_points` VALUES (16961935,'Minhocao','Minhocao',12972,155,50,384,150);


-- ------------------------------------------------------------
-- Open sea route to Al Zahbi (Zone 46)
-- 16966655
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Open sea route to Mhaura (Zone 47)
-- 16970751
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Al Zahbi (Zone 48)
-- 16974847
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (16973825,'Mamool_Ja_Sapper','Mamool Ja Sapper',1546,-25,0,-34,24); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973826,'Mamool_Ja_Hospitaler','Mamool Ja Hospitaler',1543,-25,0,-34,24); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973827,'Mamool_Ja_Fetial','Mamool Ja Fetial',1541,-25,0,-34,24); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973828,'Mamool_Ja_Spotter','Mamool Ja Spotter',1547,40,0,58,64);  -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973829,'Mamool_Ja_Handler','Mamool Ja Handler',1542,40,0,58,64); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973830,'Mamool_Ja_Lizard','Mamool Ja\'s Lizard',1548,1,1,1,1); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973831,'Mamool_Ja_Cataphract','Mamool Ja Cataphract',1539,40,0,21,191); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973832,'Mamool_Ja_Wyvern','Mamool Ja\'s Wyvern',1549,40,0,21,191); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973833,'Mamool_Ja_Entrancer','Mamool Ja Entrancer',1540,40,0,21,191); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973834,'Mamool_Ja_Sapper','Mamool Ja Sapper',1546,28,0,-33,219); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973835,'Mamool_Ja_Hospitaler','Mamool Ja Hospitaler',1543,28,0,-33,219); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973836,'Mamool_Ja_Fetial','Mamool Ja Fetial',1541,28,0,-33,219); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973837,'Mamool_Ja_Spotter','Mamool Ja Spotter',1547,60,0,-33,193); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973838,'Mamool_Ja_Handler','Mamool Ja Handler',1542,60,0,-33,193); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973839,'Mamool_Ja_Lizard','Mamool Ja\'s Lizard',1548,1,1,1,1); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973840,'Mamool_Ja_Cataphract','Mamool Ja Cataphract',1539,-60,0,-38,193); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973841,'Mamool_Ja_Wyvern','Mamool Ja\'s Wyvern',1549,-60,0,-38,193); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973842,'Mamool_Ja_Entrancer','Mamool Ja Entrancer',1540,-60,0,-38,193); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973843,'Mamool_Ja_Sapper','Mamool Ja Sapper',1546,-24,0,-122,175); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973844,'Mamool_Ja_Hospitaler','Mamool Ja Hospitaler',1543,-24,0,-122,175); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973845,'Mamool_Ja_Fetial','Mamool Ja Fetial',1541,-24,0,-122,175); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973846,'Mamool_Ja_Spotter','Mamool Ja Spotter',1547,-53,0,-99,8); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973847,'Mamool_Ja_Handler','Mamool Ja Handler',1542,-53,0,-99,8); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973848,'Mamool_Ja_Lizard','Mamool Ja\'s Lizard',1548,1,1,1,1); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973849,'Mamool_Ja_Cataphract','Mamool Ja Cataphract',1539,-55,0,50,29); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973850,'Mamool_Ja_Wyvern','Mamool Ja\'s Wyvern',1549,-55,0,50,29); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973851,'Mamool_Ja_Entrancer','Mamool Ja Entrancer',1540,-55,0,50,29); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973852,'Scout_Puk','Scout Puk',1569,13,-6,66,27); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973853,'Scout_Puk','Scout Puk',1569,13,-6,14,224); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973854,'Scout_Puk','Scout Puk',1569,31,-6,-12,126); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973855,'Scout_Puk','Scout Puk',1569,12,-6,-32,190); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973856,'Scout_Puk','Scout Puk',1569,-12,-6,-32,195); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973857,'Raid_Raptor','Raid Raptor',1566,-27,-6,-45,60); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973858,'Raid_Raptor','Raid Raptor',1566,-47,-6,-12,126); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973859,'Raid_Raptor','Raid Raptor',1566,-67,-6,-34,191); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973860,'Raid_Raptor','Raid Raptor',1566,-67,-6,-67,225); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973861,'Raid_Raptor','Raid Raptor',1566,-12,-6,-92,101); -- Mamool 1
REPLACE INTO `mob_spawn_points` VALUES (16973862,'Attack_Ziz','Attack Ziz',1490,-68,-6,-91,33); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973863,'Attack_Ziz','Attack Ziz',1490,-64,-6,-12,254); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973864,'Attack_Ziz','Attack Ziz',1490,-63,-6,12,227); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973865,'Attack_Ziz','Attack Ziz',1490,-12,-6,48,189); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973866,'Attack_Ziz','Attack Ziz',1490,51,-6,91,255); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973867,'Battering_Bugard','Battering Bugard',1491,-25,0,-34,24); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973868,'Battering_Bugard','Battering Bugard',1491,28,0,-33,219); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973869,'Battering_Bugard','Battering Bugard',1491,-60,0,-38,193); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973870,'Battering_Bugard','Battering Bugard',1491,-53,0,-99,8); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973871,'Battering_Bugard','Battering Bugard',1491,-55,0,50,29); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973872,'War_Wyvern','War Wyvern',1593,-25,0,-34,24); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973873,'War_Wyvern','War Wyvern',1593,28,0,-33,219); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973874,'War_Wyvern','War Wyvern',1593,-60,0,-38,193); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973875,'War_Wyvern','War Wyvern',1593,-53,0,-99,8); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973876,'War_Wyvern','War Wyvern',1593,-55,0,50,29); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973877,'Poroggo_Charmer','Poroggo Charmer',1560,40,0,58,64); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973878,'Poroggo_Charmer','Poroggo Charmer',1560,28,0,-33,219); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973879,'Poroggo_Charmer','Poroggo Charmer',1560,-60,0,-38,193); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973880,'Poroggo_Charmer','Poroggo Charmer',1560,40,0,21,191); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973881,'Poroggo_Charmer','Poroggo Charmer',1560,-53,0,-99,8); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973882,'Phantasmal_Puk','Phantasmal Puk',1558,40,0,58,64); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973883,'Dive-Puk','Dive-Puk',1501,40,0,58,64); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973884,'Dive-Puk','Dive-Puk',1501,60,0,-33,193); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973885,'Dive-Puk','Dive-Puk',1501,-24,0,-122,175); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973886,'Dive-Puk','Dive-Puk',1501,-53,0,-99,8); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973887,'Phantasmal_Puk','Phantasmal Puk',1558,60,0,-33,193); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973888,'Dive-Puk','Dive-Puk',1501,12,-6,-32,190); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973889,'Dive-Puk','Dive-Puk',1501,31,-6,-12,126); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973890,'Dive-Puk','Dive-Puk',1501,13,-6,14,224); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973891,'Dive-Puk','Dive-Puk',1501,13,-6,66,27); -- Mamool 2
REPLACE INTO `mob_spawn_points` VALUES (16973892,'Fleetfingered_Mobel_Ja','Fleetfingered Mobel Ja',1507,-39,0,-108,193); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973893,'Mamool_Ja_Ravager','Mamool Ja Ravager',1545,-43,0,-108,193); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973894,'Mamool_Ja_Ravager','Mamool Ja Ravager',1545,-35,0,-108,193); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973895,'Mamool_Ja_Ravager','Mamool Ja Ravager',1545,-39,0,-104,193); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973896,'Brontobugard','Brontobugard',1495,-40,0,25,62); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973897,'Bull_Bugard','Bull Bugard',1496,-34,0,26,83); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973898,'Bull_Bugard','Bull Bugard',1496,-46,0,24,40); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973899,'Bull_Bugard','Bull Bugard',1496,-40,0,19,65); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973900,'Gulool_Ja_Ja','Gulool Ja Ja',1517,40,0,-59,189); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973901,'Illuyankas','Illuyankas',1520,60,0,40,255); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973902,'Decimator_Mabel_Ja','Decimator Mabel Ja',1500,-54,0,-57,210); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973903,'Thunderclap_Sareel_Ja','Thunderclap Sareel Ja',1576,-52,0,-59,193); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973904,'Thunderbolt_Piraal_Ja','Thunderbolt Piraal Ja',1575,1,1,1,1); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973905,'Panurgic_Ryubool_Ja','Panurgic Ryubool Ja',1557,19,0,49,35); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973906,'Sagelord_Molaal_Ja','Sagelord Molaal Ja',1567,18,0,40,254); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973907,'Strifelord_Bakool_Ja','Strifelord Bakool Ja',1573,40,0,107,63); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973908,'Mamool_Ja_Wyvern','Mamool Ja\'s Wyvern',1549,42,0,107,63); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973909,'Mamool_Ja_Wyvern','Mamool Ja\'s Wyvern',1549,40,0,103,63); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973910,'Mamool_Ja_Wyvern','Mamool Ja\'s Wyvern',1549,-38,0,107,63); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973911,'Eidolic_Qufeel_Ja','Eidolic Qufeel Ja',1503,-63,2,92,27); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973912,'Eidolic_Qufeel_Ja','Eidolic Qufeel Ja',1503,-62,2,92,27); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973913,'Eidolic_Qufeel_Ja','Eidolic Qufeel Ja',1503,-61,2,92,27); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973914,'Eidolic_Qufeel_Ja','Eidolic Qufeel Ja',1503,-60,2,92,27); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973915,'Eidolic_Qufeel_Ja','Eidolic Qufeel Ja',1503,-64,2,92,27); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973916,'Eidolic_Qufeel_Ja','Eidolic Qufeel Ja',1503,-65,2,92,27); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973917,'Eidolic_Qufeel_Ja','Eidolic Qufeel Ja',1503,-66,2,92,27); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973918,'Eidolic_Qufeel_Ja','Eidolic Qufeel Ja',1503,-67,2,92,27); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973919,'Searing_Vogaal_Ja','Searing Vogaal Ja',1570,-95,2,38,32); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973920,'Scalding_Fafool_Ja','Scalding Fafool Ja',1568,48,0,40,255); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973921,'Mamool_Ja_Hussar','Mamool Ja Hussar',1544,13,-6,66,27); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973922,'Mamool_Ja_Hussar','Mamool Ja Hussar',1544,13,-6,14,224); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973923,'Mamool_Ja_Hussar','Mamool Ja Hussar',1544,31,-6,-12,126); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973924,'Mamool_Ja_Hussar','Mamool Ja Hussar',1544,12,-6,-32,190); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973925,'Mamool_Ja_Hussar','Mamool Ja Hussar',1544,-12,-6,-32,195); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973926,'Mamool_Ja_Hussar','Mamool Ja Hussar',1544,-27,-6,-45,60); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973927,'Mamool_Ja_Hussar','Mamool Ja Hussar',1544,-47,-6,-12,126); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973928,'Mamool_Ja_Hussar','Mamool Ja Hussar',1544,-67,-6,-34,191); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973929,'Mamool_Ja_Hussar','Mamool Ja Hussar',1544,-67,-6,-67,225); -- Mamool 3
REPLACE INTO `mob_spawn_points` VALUES (16973930,'Troll_Paviser','Troll Paviser',1581,-25,0,-34,24); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973931,'Troll_Stormer','Troll Stormer',1584,-25,0,-34,24); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973932,'Troll_Hoplite','Troll Hoplite',1580,-25,0,-34,24); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973933,'Troll_Pezhetairoi','Troll Pezhetairoi',1582,40,0,58,64); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973934,'Troll_Cannoneer','Troll Cannoneer',1577,40,0,58,64); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973935,'Troll_Velites','Troll Velites',1586,40,0,58,64); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973936,'Troll_Speculator','Troll Speculator',1583,40,0,21,191); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973937,'Troll_Automaton','Troll\'s Automaton',1585,40,0,21,191); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973938,'Troll_Paviser','Troll Paviser',1581,40,0,21,191); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973939,'Troll_Stormer','Troll Stormer',1584,28,0,-33,219); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973940,'Troll_Hoplite','Troll Hoplite',1580,28,0,-33,219); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973941,'Troll_Pezhetairoi','Troll Pezhetairoi',1582,28,0,-33,219); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973942,'Troll_Cannoneer','Troll Cannoneer',1577,60,0,-33,193); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973943,'Troll_Velites','Troll Velites',1586,60,0,-33,193); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973944,'Troll_Speculator','Troll Speculator',1583,60,0,-33,193); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973945,'Troll_Automaton','Troll\'s Automaton',1585,60,0,-33,193); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973946,'Troll_Paviser','Troll Paviser',1581,-60,0,-38,193); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973947,'Troll_Stormer','Troll Stormer',1584,-60,0,-38,193); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973948,'Troll_Hoplite','Troll Hoplite',1580,-60,0,-38,193); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973949,'Troll_Pezhetairoi','Troll Pezhetairoi',1582,-24,0,-122,175); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973950,'Troll_Cannoneer','Troll Cannoneer',1577,-24,0,-122,175); -- Level 1
REPLACE INTO `mob_spawn_points` VALUES (16973951,'Troll_Velites','Troll Velites',1586,-24,0,-122,175); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973952,'Troll_Speculator','Troll Speculator',1583,-53,0,-99,8); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973953,'Troll_Automaton','Troll\'s Automaton',1585,-53,0,-99,8); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973954,'Flame_Eruca','Flame Eruca',1506,13,-6,66,27); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973955,'Flame_Eruca','Flame Eruca',1506,13,-6,14,224); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973956,'Flame_Eruca','Flame Eruca',1506,31,-6,-12,126); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973957,'Flame_Eruca','Flame Eruca',1506,12,-6,-32,190); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973958,'Flame_Eruca','Flame Eruca',1506,-12,-6,-32,195); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973959,'War_Wamouracampa','War Wamouracampa',1592,-27,-6,-45,60); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973960,'War_Wamouracampa','War Wamouracampa',1592,-47,-6,-12,126); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973961,'War_Wamouracampa','War Wamouracampa',1592,-67,-6,-34,191); -- Troll 1
REPLACE INTO `mob_spawn_points` VALUES (16973962,'War_Wamouracampa','War Wamouracampa',1592,-67,-6,-67,225); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973963,'War_Wamouracampa','War Wamouracampa',1592,-12,-6,-92,101); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973964,'Incendiary_Bombs','Incendiary Bombs',1523,-25,0,-34,24); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973965,'Incendiary_Bombs','Incendiary Bombs',1523,40,0,58,64); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973966,'Incendiary_Bombs','Incendiary Bombs',1523,40,0,21,191); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973967,'Incendiary_Bombs','Incendiary Bombs',1523,28,0,-33,219); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973968,'Incendiary_Bombs','Incendiary Bombs',1523,60,0,-33,193); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973969,'Fighting_Flan','Fighting Flan',1505,-25,0,-34,24); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973970,'Fighting_Flan','Fighting Flan',1505,40,0,58,64); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973971,'Fighting_Flan','Fighting Flan',1505,40,0,21,191); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973972,'Fighting_Flan','Fighting Flan',1505,28,0,-33,219); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973973,'Fighting_Flan','Fighting Flan',1505,60,0,-33,193); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973974,'Siege_Scorpion','Siege Scorpion',1571,-25,0,-34,24); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973975,'Siege_Scorpion','Siege Scorpion',1571,40,0,58,64); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973976,'Siege_Scorpion','Siege Scorpion',1571,40,0,21,191); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973977,'Siege_Scorpion','Siege Scorpion',1571,28,0,-33,219); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973978,'Siege_Scorpion','Siege Scorpion',1571,60,0,-33,193); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973979,'War_Wamoura','War Wamoura',1592,-25,0,-34,24); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973980,'War_Wamoura','War Wamoura',1592,40,0,58,64); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973981,'War_Wamoura','War Wamoura',1592,40,0,21,191); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973982,'War_Wamoura','War Wamoura',1592,28,0,-33,219); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973983,'War_Wamoura','War Wamoura',1592,60,0,-33,193); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973984,'Aerial_Torpedo','Aerial Torpedo',1487,-60,0,-38,193); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973985,'Bombshells','Bombshells',1493,-25,0,-34,24); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973986,'Bombshells','Bombshells',1493,40,0,58,64); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973987,'Bombshells','Bombshells',1493,40,0,21,191); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973988,'Bombshells','Bombshells',1493,28,0,-33,219); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973989,'Aerial_Torpedo','Aerial Torpedo',1487,-24,0,-122,175); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973990,'Bombshells','Bombshells',1493,60,0,-33,193); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973991,'Bombshells','Bombshells',1493,-60,0,-38,193); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973992,'Bombshells','Bombshells',1493,-24,0,-122,175); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973993,'Bombshells','Bombshells',1493,-24,0,-122,175); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973994,'Vyurvarjur_the_Nimble','Vyurvarjur the Nimble',1590,-53,0,-99,8); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973995,'Troll_Forager','Troll Forager',1579,-53,0,-99,8); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973996,'Troll_Forager','Troll Forager',1579,-53,0,-99,8); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973997,'Troll_Forager','Troll Forager',1579,-53,0,-99,8); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973998,'Killing_Claw','Killing Claw',1524,-55,0,50,29); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16973999,'Slaughterous_Scorpion','Slaughterous Scorpion',1572,-55,0,50,29); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16974000,'Slaughterous_Scorpion','Slaughterous Scorpion',1572,-55,0,50,29); -- Troll 2
REPLACE INTO `mob_spawn_points` VALUES (16974001,'Slaughterous_Scorpion','Slaughterous Scorpion',1572,-40,0,25,62); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974002,'Gurfurlur_the_Menacing','Gurfurlur the Menacing',1518,40,0,-59,189); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974003,'Gere','Gere',1513,60,0,40,255); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974004,'Girzorhor_the_Imprudent','Girzorhor the Imprudent',1515,-34,0,26,83); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974005,'Surmerdar_the_Unbridled','Surmerdar the Unbridled',1574,-46,0,24,40); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974006,'Dartorgor_the_Austere','Dartorgor the Austere',1499,-40,0,19,65); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974007,'Vorporlor_the_Barbaric','Vorporlor the Barbaric',1589,-54,0,-57,210); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974008,'Vorjirzur_the_Valiant','Vorjirzur the Valiant',1588,-52,0,-59,193); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974009,'Wordorbor_the_Artificer','Wordorbor the Artificer',1595,-39,0,-108,193); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974010,'Cobalt_Sentinel','Cobalt Sentinel',1498,-39,0,-108,193); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974011,'White_Sentinel','White Sentinel',1594,-39,0,-108,193); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974012,'Hazel_Sentinel','Hazel Sentinel',1519,-39,0,-108,193); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974013,'Carmine_Sentinel','Carmine Sentinel',1497,-39,0,-108,193); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974014,'Xarhorkur_the_Claviger','Xarhorkur the Claviger',1596,19,0,49,35); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974015,'Zurmurwur_the_Ruthless','Zurmurwur the Ruthless',1598,18,0,40,254); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974016,'Troll_Destroyer','Troll Destroyer',1578,13,-6,66,27); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974017,'Troll_Destroyer','Troll Destroyer',1578,13,-6,14,224); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974018,'Troll_Destroyer','Troll Destroyer',1578,31,-6,-12,126); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974019,'Troll_Destroyer','Troll Destroyer',1578,12,-6,-32,190); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974020,'Troll_Destroyer','Troll Destroyer',1578,-12,-6,-32,195); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974021,'Troll_Destroyer','Troll Destroyer',1578,-27,-6,-45,60); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974022,'Troll_Destroyer','Troll Destroyer',1578,-47,-6,-12,126); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974023,'Troll_Destroyer','Troll Destroyer',1578,-67,-6,-34,191); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974024,'Troll_Destroyer','Troll Destroyer',1578,-67,-6,-67,225); -- Troll 3
REPLACE INTO `mob_spawn_points` VALUES (16974025,'Lamia_Immolator','Lamia Immolator',1527,-25,0,-34,24); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974026,'Lamia_Jaeger','Lamia Jaeger',1528,-25,0,-34,24); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974027,'Lamia_Commandress','Lamia Commandress',1525,40,0,58,64); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974028,'Lamia_Elemental','Lamia\'s Elemental',1538,1,1,1,1); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974029,'Lamia_Avatar','Lamia\'s Avatar',1537,40,0,58,64); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974030,'Lamia_Rover','Lamia Rover',1536,40,0,21,191); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974031,'Merrow_Seafarer','Merrow Seafarer',1554,40,0,21,191); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974032,'Merrow_Cantatrice','Merrow Cantatrice',1551,40,0,21,191); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974033,'Merrow_Shiranuhi','Merrow Shiranuhi',1555,28,0,-33,219); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974034,'Lamia_Immolator','Lamia Immolator',1527,28,0,-33,219); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974035,'Lamia_Jaeger','Lamia Jaeger',1528,28,0,-33,219); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974036,'Lamia_Commandress','Lamia Commandress',1525,60,0,-33,193); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974037,'Lamia_Elemental','Lamia\'s Elemental',1538,1,1,1,1); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974038,'Lamia_Avatar','Lamia\'s Avatar',1537,60,0,-33,193); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974039,'Lamia_Rover','Lamia Rover',1536,-60,0,-38,193); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974040,'Merrow_Seafarer','Merrow Seafarer',1554,-60,0,-38,193); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974041,'Merrow_Cantatrice','Merrow Cantatrice',1551,-60,0,-38,193); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974042,'Merrow_Shiranuhi','Merrow Shiranuhi',1555,-24,0,-122,175); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974043,'Lamia_Immolator','Lamia Immolator',1527,-91,2,57,1); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974044,'Lamia_Jaeger','Lamia Jaeger',1528,-91,2,57,1); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974045,'Lamia_Commandress','Lamia Commandress',1525,-24,0,-122,175); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974046,'Lamia_Elemental','Lamia\'s Elemental',1538,1,1,1,1); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974047,'Lamia_Avatar','Lamia\'s Avatar',1537,-24,0,-122,175); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974048,'Lamia_Rover','Lamia Rover',1536,-53,0,-99,8); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974049,'Merrow_Seafarer','Merrow Seafarer',1554,-53,0,-99,8); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974050,'Merrow_Cantatrice','Merrow Cantatrice',1551,-55,0,50,29); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974051,'Merrow_Shiranuhi','Merrow Shiranuhi',1555,-55,0,50,29); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974052,'Gespenst','Gespenst',1514,-25,0,-34,24); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974053,'Gespenst','Gespenst',1514,40,0,58,64); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974054,'Gespenst','Gespenst',1514,40,0,21,191); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974055,'Gespenst','Gespenst',1514,28,0,-33,219); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974056,'Assault_Draugar','Assault Draugar',1489,13,-6,66,27); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974057,'Assault_Draugar','Assault Draugar',1489,13,-6,14,224); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974058,'Assault_Draugar','Assault Draugar',1489,31,-6,-12,126); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974059,'Assault_Draugar','Assault Draugar',1489,12,-6,-32,190); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974060,'Assault_Draugar','Assault Draugar',1489,-12,-6,-32,195); -- Undead 1
REPLACE INTO `mob_spawn_points` VALUES (16974061,'Assault_Draugar','Assault Draugar',1489,-27,-6,-45,60); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974062,'Assault_Draugar','Assault Draugar',1489,-47,-6,-12,126); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974063,'Draugar_Wyvern','Draugar\'s Wyvern',1502,-47,-6,-12,126); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974064,'Assault_Draugar','Assault Draugar',1489,-67,-6,-34,191); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974065,'Draugar_Wyvern','Draugar\'s Wyvern',1502,-67,-6,-34,191); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974066,'Assault_Bhoot','Assault Bhoot',1488,40,0,21,191); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974067,'Assault_Bhoot','Assault Bhoot',1488,28,0,-33,219); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974068,'Assault_Bhoot','Assault Bhoot',1488,-60,0,-38,193); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974069,'Assault_Bhoot','Assault Bhoot',1488,-53,0,-99,8); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974070,'Assault_Bhoot','Assault Bhoot',1488,-24,0,-122,175); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974071,'Qutrub_Extortionist','Qutrub Extortionist',1563,40,0,21,191); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974072,'Qutrub_Extortionist','Qutrub Extortionist',1563,60,0,-33,193); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974073,'Qutrub_Extortionist','Qutrub Extortionist',1563,-24,0,-122,175); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974074,'Qutrub_Extortionist','Qutrub Extortionist',1563,-55,0,50,29); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974075,'Qutrub_Wastrel','Qutrub Wastrel',1565,40,0,21,191); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974076,'Qutrub_Wastrel','Qutrub Wastrel',1565,60,0,-33,193); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974077,'Qutrub_Wastrel','Qutrub Wastrel',1565,-24,0,-122,175); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974078,'Qutrub_Wastrel','Qutrub Wastrel',1565,-55,0,50,29); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974079,'Expunger','Expunger',1504,28,0,-33,219); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974080,'Expunger','Expunger',1504,-60,0,-38,193); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974081,'Expunger','Expunger',1504,-53,0,-99,8); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974082,'Expunger','Expunger',1504,-55,0,50,29); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974083,'Expunger','Expunger',1504,40,0,21,191); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974084,'Bhoot_Invader','Bhoot Invader',1493,-12,-6,-92,101); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974085,'Bhoot_Intruder','Bhoot Intruder',1492,40,0,58,64); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974086,'Bhoot_Intruder','Bhoot Intruder',1492,40,0,58,64); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974087,'Bhoot_Intruder','Bhoot Intruder',1492,40,0,21,191); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974088,'Bhoot_Intruder','Bhoot Intruder',1492,28,0,-33,219); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974089,'Bhoot_Invader','Bhoot Invader',1493,-67,-6,-67,225); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974090,'Bhoot_Intruder','Bhoot Intruder',1492,-60,0,-38,193); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974091,'Bhoot_Intruder','Bhoot Intruder',1492,-24,0,-122,175); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974092,'Bhoot_Intruder','Bhoot Intruder',1492,-53,0,-99,8); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974093,'Bhoot_Intruder','Bhoot Intruder',1492,-55,0,50,29); -- Undead 2
REPLACE INTO `mob_spawn_points` VALUES (16974094,'Lamia_No.4','Lamia No.4',1534,-39,0,-108,193); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974095,'Lamia_Freebooter','Lamia Freebooter',1526,-39,0,-108,193); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974096,'Lamia_Freebooter','Lamia Freebooter',1526,-39,0,-108,193); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974097,'Lamia_Freebooter','Lamia Freebooter',1526,-39,0,-108,193); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974098,'Pining_Abazohn','Pining Abazohn',1559,40,0,107,63); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974099,'Qutrub_Forayer','Qutrub Forayer',1564,42,0,107,63); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974100,'Qutrub_Forayer','Qutrub Forayer',1564,40,0,103,63); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974101,'Qutrub_Forayer','Qutrub Forayer',1564,-38,0,107,63); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974102,'Medusa','Medusa',1550,40,0,-59,189); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974103,'Nemean_Lion','Nemean Lion',1556,60,0,40,255); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974104,'Lamia_No.34','Lamia No.34',1533,-40,0,25,62); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974105,'Lamia_No.21','Lamia No.21',1531,-34,0,26,83); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974106,'Lamia_No.15','Lamia No.15',1529,-46,0,24,40); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974107,'Merrow_No.11','Merrow No.11',1552,-40,0,19,65); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974108,'Lamia_No.9','Lamia No.9',1535,-63,2,92,27); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974109,'Lamia_Elemental','Lamia\'s Elemental',1538,-62,2,92,27); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974110,'Lamia_Elemental','Lamia\'s Elemental',1538,-61,2,92,27); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974111,'Lamia_Elemental','Lamia\'s Elemental',1538,-60,2,92,27); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974112,'Lamia_Avatar','Lamia\'s Avatar',1537,-64,2,92,27); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974113,'Lamia_Avatar','Lamia\'s Avatar',1537,-65,2,92,27); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974114,'Lamia_Avatar','Lamia\'s Avatar',1537,-66,2,92,27); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974115,'Merrow_No.12','Merrow No.12',1553,-54,0,-57,210); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974116,'Lamia_No.3','Lamia No.3',1532,-52,0,-59,193); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974117,'Lamia _No.2','Lamia No.2',1530,48,0,40,255); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974118,'Acrolith','Acrolith',1486,13,-6,66,27); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974119,'Acrolith','Acrolith',1486,13,-6,14,224); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974120,'Acrolith','Acrolith',1486,31,-6,-12,126); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974121,'Acrolith','Acrolith',1486,12,-6,-32,190); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974122,'Acrolith','Acrolith',1486,-12,-6,-32,195); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974123,'Acrolith','Acrolith',1486,-27,-6,-45,60); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974124,'Acrolith','Acrolith',1486,-47,-6,-12,126); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974125,'Acrolith','Acrolith',1486,-67,-6,-34,191); -- Undead 3
REPLACE INTO `mob_spawn_points` VALUES (16974126,'Acrolith','Acrolith',1486,-67,-6,-67,225); -- Undead 3


-- ------------------------------------------------------------
-- The Grid - aka GM Test Area (Zone 49)
-- 16977921 to 16978943
-- ------------------------------------------------------------

INSERT INTO `mob_spawn_points` VALUES (16977922,'Pil-Provenance','Pil-Provenance',90507,0,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977923,'Rukh','Rukh',90508,5,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977924,'Asb','Asb',90509,10,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977925,'Sarbaz','Sarbaz',90510,15,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977926,'Wazir','Wazir',90511,20,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977927,'Shah','Shah',90512,25,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977928,'Provenance_Watcher','Provenance_Watcher',90513,30,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977929,'Crystal_Fetter','Crystal_Fetter',90514,31,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977930,'Crystal_Fetter','Crystal_Fetter',90514,30,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977931,'Crystal_Fetter','Crystal_Fetter',90514,29,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977932,'Crystal_Fetter','Crystal_Fetter',90514,28,0,1,0);
INSERT INTO `mob_spawn_points` VALUES (16977933,'Umagrhk','Umagrhk',90515,40,0,1,0);

-- Super experimental, will not spawn without script or GM command.
-- INSERT INTO `mob_spawn_points` VALUES (16978934,'Benkei','Benkei',96661,-12,0,-8,0);
-- INSERT INTO `mob_spawn_points` VALUES (16978935,'Druk','Druk',96662,0,0,0,0);
-- INSERT INTO `mob_spawn_points` VALUES (16978936,'Zomok','Zomok',96663,0,0,0,0);
-- INSERT INTO `mob_spawn_points` VALUES (16978937,'Abzu','Abzu',96664,0,0,0,0);
INSERT INTO `mob_spawn_points` VALUES (16978938,'SlenderMan','SlenderMan',96666,-24,0,0,0);
-- INSERT INTO `mob_spawn_points` VALUES (16978939,'Zombaru','Zombaru',96667,-24,0,0,0);
-- INSERT INTO `mob_spawn_points` VALUES (16978940,'Zombaru','Zombaru',96667,-24,0,0,0);
INSERT INTO `mob_spawn_points` VALUES (16978941,'Mars','Mars',97600,-5,0,0,0);
INSERT INTO `mob_spawn_points` VALUES (16978942,'Minerva','Minerva',97777,-12,0,0,0);
-- INSERT INTO `npc_list` VALUES (16978943,'Test_Box','Test Loot Box',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Aht Urhgan Whitegate (Zone 50)
-- 16983039
-- ------------------------------------------------------------

-- REPLACE INTO `npc_list` VALUES (16982022,'1','Nyzul Gear',127,137.800,1.185,-34.262,7,40,40,0,12,100,0,7,0x0000C90300000000000000000000000000000000,32,'TOAU',0);
-- REPLACE INTO `npc_list` VALUES (16982160,'2','Salvage Gear',127,137.800,1.185,-40.248,7,40,40,0,12,100,0,7,0x0000C90300000000000000000000000000000000,32,'TOAU',0);


-- ------------------------------------------------------------
-- Wajaom Woodlands (Zone 51)
-- 16987135
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (16986188,'Chelicerata','Chelicerata',1624,415,-18,-44,141);

-- ------------------------------------------------------------
-- Bhaflau Thickets (Zone 52)
-- 16991231
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (16990252,'Harvestman','Harvestman',11190,398.130,-10.675,179.169,0);

-- ------------------------------------------------------------
-- Nashmau (Zone 53)
-- 16995327
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Arrapago Reef (Zone 54)
-- 16999423
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (16998875,'Dimgruzub','Dimgruzub',13837,544.49,-7.480,80,0);
REPLACE INTO `mob_spawn_points` VALUES (16998876,'Assassins_Apprentice','Assassin\'s Apprentice',13838,546.44,-7.76,85.097,50);
REPLACE INTO `mob_spawn_points` VALUES (16998877,'Assassins_Apprentice','Assassin\'s Apprentice',13838,545.09,-7.684,85.097,21);


-- ------------------------------------------------------------
-- Ilrusi Atoll (Zone 55)
-- 17003519
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Periqia (Zone 56)
-- 17007615
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Talacca Cove (Zone 57)
-- 17011711
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Silver Sea route to Nashmau (Zone 58)
-- 17015807
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Silver Sea route to Al Zahbi (Zone 59)
-- 17019903
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- The Ashu Talif (Zone 60)
-- 17023999
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Mount Zhayolm (Zone 61)
-- 17028095
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17027228,'Chary_Apkallu','Chary_Apkallu',13829,641,-13,-60,186);
REPLACE INTO `mob_spawn_points` VALUES (17027486,'Vanasarvik','Vanasarvik',13380,902,-15.729,333.408,41);
INSERT INTO `mob_spawn_points` VALUES (17027487,'Elder_Imp','Elder Imp',90499,901,-15,336,41);
INSERT INTO `mob_spawn_points` VALUES (17027488,'Elder_Imp','Elder Imp',90499,902,-15,336,41);
INSERT INTO `mob_spawn_points` VALUES (17027489,'Elder_Imp','Elder Imp',90499,903,-15,336,41);
INSERT INTO `mob_spawn_points` VALUES (17027490,'Elder_Imp','Elder Imp',90499,904,-15,336,41);

-- REPLACE INTO `npc_list` VALUES (17027609,'Planar_Rift','Planar Rift',98,902,-15,336,1,50,50,0,5,100,0,3,0x00006F0900000000000000000000000000000000,2,'ABYSSEA',0); -- listed as yagu8 in DSP 9/24/2016

-- ------------------------------------------------------------
-- Halvung (Zone 62)
-- 17032191
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Lebros Cavern (Zone 63)
-- 17036287
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Navukgo Execution Chamber (Zone 64)
-- 17040383
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Mamook (Zone 65)
-- 17044479
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17043466,'Venomfang','Venomfang',90323,310,-2,-214,57);
INSERT INTO `mob_spawn_points` VALUES (17043893,'Yalungur','Yalungur',90496,319,-3,-183,64);
INSERT INTO `mob_spawn_points` VALUES (17043894,'Predatory_Colibri','Predatory Colibri',90497,316,-3,-183,205);
INSERT INTO `mob_spawn_points` VALUES (17043895,'Predatory_Colibri','Predatory Colibri',90497,317,-3,-183,195);
INSERT INTO `mob_spawn_points` VALUES (17043896,'Predatory_Colibri','Predatory Colibri',90497,318,-3,-183,199);
INSERT INTO `mob_spawn_points` VALUES (17043897,'Predatory_Colibri','Predatory Colibri',90497,319,-3,-183,200);
INSERT INTO `mob_spawn_points` VALUES (17043898,'Predatory_Colibri','Predatory Colibri',90497,320,-3,-183,175);

-- ------------------------------------------------------------
-- Mamool Ja Training Grounds (Zone 66)
-- 17048575
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Jade Sepulcher (Zone 67)
-- 17052671
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Aydeewa Subterrane (Zone 68)
-- 17056767
-- ------------------------------------------------------------
INSERT INTO `npc_list` VALUES (17056310,'Planar_Rift','Planar Rift',0,280,1,396,1,50,50,0,5,100,0,3,0x00006F0900000000000000000000000000000000,2,'ABYSSEA',0); -- currently does not exist in DSP 9/24/2016
REPLACE INTO `mob_spawn_points` VALUES (17056187,'Morta','Morta',13651,280,1,396,64);
REPLACE INTO `mob_spawn_points` VALUES (17056188,'Ravishing_Rafflesia','Ravishing Rafflesia',90506,277,1,396,205);
REPLACE INTO `mob_spawn_points` VALUES (17056189,'Ravishing_Rafflesia','Ravishing Rafflesia',90506,278,1,396,195);
REPLACE INTO `mob_spawn_points` VALUES (17056190,'Ravishing_Rafflesia','Ravishing Rafflesia',90506,279,1,396,199);
REPLACE INTO `mob_spawn_points` VALUES (17056191,'Ravishing_Rafflesia','Ravishing Rafflesia',90506,280,1,396,200);
REPLACE INTO `mob_spawn_points` VALUES (17056192,'Ravishing_Rafflesia','Ravishing Rafflesia',90506,281,1,396,175);
REPLACE INTO `mob_spawn_points` VALUES (17056193,'Ravishing_Rafflesia','Ravishing Rafflesia',90506,282,1,396,202);


-- ------------------------------------------------------------
-- Leujaoam Sanctum (Zone 69)
-- 17060863
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Chocobo Circuit (Zone 70)
-- 17064959
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- The Colosseum (Zone 71)
-- 17069055
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Alzadaal Undersea Ruins (Zone 72)
-- 17073151
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Zhayolm Remnants (Zone 73)
-- 17077247
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Arrapago Remnants (Zone 74)
-- 17081343
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Bhaflau Remnants (Zone 75)
-- 17085439
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Silver Sea Remnants (Zone 76)
-- 17089535
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Nyzul Isle (Zone 77)
-- 17093631
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Hazhalm Testing Grounds (Zone 78)
-- 17097727
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (17096710,'qm1','???',0,379.00,-215.00,40.00,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Odin
INSERT INTO `mob_spawn_points` VALUES (17097270,'Odin','Odin',2766,379,-215,66,62);
-- 17097271  Brunhilde     (mob)
-- 17097272  Siegrune      (mob)
-- 17097273  Rossweisse    (mob)
-- 17097274  Gerhilde      (mob)
-- 17097275  Schwertleite  (mob)
-- 17097276  Helmwige      (mob)
-- 17097277  Ortlinde      (mob)
-- 17097278  Grimgerde     (mob)
-- 17097279  Waltraute     (mob)
-- 17097280 ~ 17097297    Armoury Crates (NPC)
-- INSERT INTO `mob_spawn_points` VALUES (17097298,'Odin_Prime','Odin_Prime',2766,379,-215,66,62);
-- INSERT INTO `mob_spawn_points` VALUES (17097299,'Odin_Image','Odin Image',2766,379,-215,66,62);
-- INSERT INTO `mob_spawn_points` VALUES (17097300,'Odin_Image','Odin Image',2766,379,-215,66,62);
-- INSERT INTO `mob_spawn_points` VALUES (17097301,'Odin_Image','Odin Image',2766,379,-215,66,62);
INSERT INTO `mob_spawn_points` VALUES (17097717,'Alexander','Alexander',2767,426,-215,20,104);

-- INSERT INTO `npc_list` VALUES (17097727,'Loot_Box','Loot Box',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Caedarva Mire (Zone 79)
-- 17101823
-- ------------------------------------------------------------
REPLACE INTO `npc_list` VALUES (17101339,'Planar_Rift','Planar Rift',150,269,-4,-732,1,50,50,0,5,100,0,3,0x00006F0900000000000000000000000000000000,2,'ABYSSEA',0); -- listed as Basweema in DSP 9/24/2016
REPLACE INTO `mob_spawn_points` VALUES (17101218,'Brekekex','Brekekekex',13852,259,-4,-732,152);
REPLACE INTO `mob_spawn_points` VALUES (17101219,'Chorus_toad','Chorus Toad',13853,259,-4,-732,254);
REPLACE INTO `mob_spawn_points` VALUES (17101220,'Chorus_toad','Chorus Toad',13853,260,-4,-732,50);
REPLACE INTO `mob_spawn_points` VALUES (17101221,'Chorus_toad','Chorus Toad',13853,261,-4,-732,226);
REPLACE INTO `mob_spawn_points` VALUES (17101222,'Chorus_toad','Chorus Toad',13853,258,-4,-732,70);
REPLACE INTO `mob_spawn_points` VALUES (17101223,'Chorus_toad','Chorus Toad',13853,257,-4,-732,196);
REPLACE INTO `mob_spawn_points` VALUES (17101224,'Chorus_toad','Chorus Toad',13853,256,-4,-732,30);


-- ------------------------------------------------------------
-- Southern San d'Oria [S] (Zone 80)
-- 17105919
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- East Ronfaure [S] (Zone 81)
-- 17110015
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17109718,'Cottus','Cottus',11004,287,-60,367,163);

-- ------------------------------------------------------------
-- Jugner Forest [S] (Zone 82)
-- 17114111
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17113826,'Kholomodumo','Kholomodumo',13783,77,0,118,93);

-- ------------------------------------------------------------
-- Vunkerl Inlet [S] (Zone 83)
-- 17118207
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17117295,'Warabouc','Warabouc',13813,75.93,-40.153,-108.196,196);
REPLACE INTO `mob_spawn_points` VALUES (17117893,'Gaunab','Gaunab',13814,-277,-40.5,-726,181);

-- ------------------------------------------------------------
-- Batallia Downs [S] (Zone 84)
-- 17122303
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17122049,'Taweret','Taweret',13824,79.544,8,-280.895,70);

-- ------------------------------------------------------------
-- La Vaule [S] (Zone 85)
-- 17126399
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Everbloom Hollow (Zone 86)
-- 17130495
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Bastok Markets [S] (Zone 87)
-- 17134591
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- North Gustaberg [S] (Zone 88)
-- 17138687
-- ------------------------------------------------------------
INSERT INTO `mob_spawn_points` VALUES (17138408,'Ushumgal','Ushumgal',90401,798,0,439,32); -- Not in DSP 9/25/2016

-- ------------------------------------------------------------
-- Grauberg [S] (Zone 89)
-- 17142783
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17142449,'Ocythoe','Ocythoe',13724,-510,32.1,-795,250);

-- ------------------------------------------------------------
-- Pashhow Marshlands [S] (Zone 90)
-- 17146879
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17146510,'Melancholic_Moira','Melancholic Moira',90410,552,24.5,492,217);

-- ------------------------------------------------------------
-- Rolanberry Fields [S] (Zone 91)
-- 17150975
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17150669,'Agathos','Agathos',13757,-359.6,8,279,197);

INSERT INTO `mob_spawn_points` VALUES (17150970,'The_Jumping_Crab','The Jumping Crab',96665,0.000,1.000,0.000,64);
INSERT INTO `npc_list` VALUES (17150971,'Crab_Loot_Box','Crab Loot Box',192,0.000,1.000,0.000,6,40,40,0,12,100,2,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Beadeaux [S] (Zone 92)
-- 17155071
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ruhotz Silvermines (Zone 93)
-- 17159167
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Windurst Waters [S] (Zone 94)
-- 17163263
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- West Sarutabaruta [S] (Zone 95)
-- 17167359
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17167113,'Pancimanci','Pancimanci',13747,120,-3.5,-440,183);

-- ------------------------------------------------------------
-- Fort Karugo-Narugo [S] (Zone 96)
-- 17171455
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17171004,'Kalasutrax','Kalasutrax',13750,-650,-26,-425,0);

-- ------------------------------------------------------------
-- Meriphataud Mountains [S] (Zone 97)
-- 17175551
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17174561,'Muq_Shabeel','Muq Shabeel',5162,585,-31,603,107);
REPLACE INTO `mob_spawn_points` VALUES (17175251,'Akupara','Akupara',13729,-282,16,602,16);

-- ------------------------------------------------------------
-- Sauromugue Champaign [S] (Zone 98)
-- 17179647
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17179265,'Gugalanna','Gugalanna',13780,-245,7.849,245,191);

-- ------------------------------------------------------------
-- Castle Oztroja [S] (Zone 99)
-- 17183743
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- West Ronfaure (Zone 100)
-- 17187839
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17187289,'Lancing_Lamorak','Lancing Lamorak',13807,-360,-50.5,270,33);

-- ------------------------------------------------------------
-- East Ronfaure (Zone 101)
-- 17191935
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17191335,'Sarimanok','Sarimanok',13806,288,-61,368,32);

INSERT INTO `mob_spawn_points` VALUES (17191471,'Hugemaw_Harold','Hugemaw Harold',96602,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (17191472,'Hugemaw_Harold','Hugemaw Harold',96602,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17191473,'Hugemaw_Harold','Hugemaw Harold',96602,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17191538,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17191539,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17191540,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- La Theine Plateau (Zone 102)
-- 17196031
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17195494,'Stachysaurus','Stachysaurus',13808,640.149,32,1,213);

INSERT INTO `mob_spawn_points` VALUES (17195570,'Ironhorn_Baldurno','Ironhorn Baldurno',96604,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (17195571,'Ironhorn_Baldurno','Ironhorn Baldurno',96604,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17195572,'Ironhorn_Baldurno','Ironhorn Baldurno',96604,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17195681,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17195682,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17195683,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Valkurm Dunes (Zone 103)
-- 17200127
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17199612,'Ig-Alima','Ig-Alima',13766,720,-8.078,195,0);

INSERT INTO `mob_spawn_points` VALUES (17199659,'Valkurm_Imperator','Valkurm Imperator',96616,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (17199660,'Valkurm_Imperator','Valkurm Imperator',96616,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17199661,'Valkurm_Imperator','Valkurm Imperator',96616,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17199755,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17199756,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17199757,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

INSERT INTO `mob_spawn_points` VALUES (17200126,'Tchakka','Tchakka',90084,-786,-3,155,252);
-- INSERT INTO `npc_list` VALUES (17200127,'Loot_Box','Loot Box',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Jugner Forest (Zone 104)
-- 17204223
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17203697,'Belphoebe','Belphoebe',13782,78,0,118,233);

-- INSERT INTO `mob_spawn_points` VALUES (17203699,'Emperor_Arthro','Emperor Arthro',96618,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17203700,'Emperor_Arthro','Emperor Arthro',96618,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17203701,'Emperor_Arthro','Emperor Arthro',96618,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17203892,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17203893,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17203894,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Batallia Downs (Zone 105)
-- 17208319
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17207723,'Cherufe','Cherufe',13825,80,8,-280,63);

-- ------------------------------------------------------------
-- North Gustaberg (Zone 106)
-- 17212415
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17211882,'Sallow_Seymour','Sallow Seymour',90400,798,0,439,147);

-- ------------------------------------------------------------
-- South Gustaberg (Zone 107)
-- 17216511
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17215956,'Bhishani','Bhishani',90437,605,-0.471,-519.283,112);

INSERT INTO `mob_spawn_points` VALUES (17216145,'Bounding_Belinda','Bounding Belinda',96601,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (17216146,'Bounding_Belinda','Bounding Belinda',96601,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17216147,'Bounding_Belinda','Bounding Belinda',96601,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17216203,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17216204,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17216205,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Konschtat Highlands (Zone 108)
-- 17220607
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17220021,'GwynnapNudd','Gwynn ap Nudd',13804,-125,72,720,107);

INSERT INTO `mob_spawn_points` VALUES (17220096,'Sleepy_Mabel','Sleepy Mabel',96605,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (17220097,'Sleepy_Mabel','Sleepy Mabel',96605,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17220098,'Sleepy_Mabel','Sleepy Mabel',96605,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17220169,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17220170,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17220171,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Pashhow Marshlands (Zone 109)
-- 17224703
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17224185,'Murk-veined_Baneberry','Murk-veined Baneberry',90409,551,24.5,492,240);
REPLACE INTO `mob_spawn_points` VALUES (17145965,'Croque-mitaine','Croque-mitaine',13726,240.094,24.242,-28.877,181);

-- ------------------------------------------------------------
-- Rolanberry Fields (Zone 110)
-- 17228799
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17228262,'Yatagarasu','Yatagarasu',13755,-360,8,279,149);

REPLACE INTO `npc_list` VALUES (17228395,'Legion_Moogle','Legion Moogle',128,244.000,24.000,480.000,32797,50,50,0,0,0,0,3,0x0000730900000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Beaucedine Glacier (Zone 111)
-- 17232895
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (17232238,'Freezing_Circle','???',0,-280,-80,-81,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,NULL,0);

INSERT INTO `mob_spawn_points` VALUES (17232894,'Umagrhk','Umagrhk',90515,-280,-80,-81,0);


-- ------------------------------------------------------------
-- Xarcabard (Zone 112)
-- 17236991
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Cape Teriggan (Zone 113)
-- 17241087
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17240232,'Tegmine','Tegmine',14175,11,-0.999,-134,0); -- Pos data needs correction
INSERT INTO `mob_spawn_points` VALUES (17240315,'Zmey_Gorynych','Zmey_Gorynych',90312,-203,0,243,27);

-- ------------------------------------------------------------
-- Eastern Altepa Desert (Zone 114)
-- 17245183
-- ------------------------------------------------------------

INSERT INTO `mob_spawn_points` VALUES (17244350,'Sabotender_Corrido','Sabotender_Corrido',90321,44,8,-386,191);

-- INSERT INTO `mob_spawn_points` VALUES (17244582,'Cactrot_Veloz','Cactrot Veloz',96617,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17244583,'Cactrot_Veloz','Cactrot Veloz',96617,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17244584,'Cactrot_Veloz','Cactrot Veloz',96617,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17244657,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17244658,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17244659,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- West Sarutabaruta (Zone 115)
-- 17249279
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17248625,'Virvatuli','Virvatuli',13778,120,4,-440,44);

-- ------------------------------------------------------------
-- East Sarutabaruta (Zone 116)
-- 17253375
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17252816,'RwNwPrtMHrw','Rw Nw Prt M Hrw',13749,-120,-5,-415,166);

INSERT INTO `mob_spawn_points` VALUES (17252988,'Prickly_Pitriv','Prickly Pitriv',96603,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (17252989,'Prickly_Pitriv','Prickly Pitriv',96603,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17252990,'Prickly_Pitriv','Prickly Pitriv',96603,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17253068,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17253069,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17253070,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Tahrongi Canyon (Zone 117)
-- 17257471
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17256921,'Smierc','Smierc',13730,205,15.746,-680,127);

INSERT INTO `mob_spawn_points` VALUES (17256995,'Serpopard_Ninlil','Serpopard Ninlil',96606,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (17256996,'Serpopard_Ninlil','Serpopard Ninlil',96606,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17256997,'Serpopard_Ninlil','Serpopard Ninlil',96606,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17257079,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17257080,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17257081,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

INSERT INTO `mob_spawn_points` VALUES (17257470,'Hurkan','Hurkan',90090,79,16,118,222);
-- INSERT INTO `npc_list` VALUES (17257471,'Loot_Box','Loot Box',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

-- ------------------------------------------------------------
-- Buburimu Peninsula (Zone 118)
-- 17261567
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17261049,'Botulus_rex','Botulus Rex',13731,80,0.049,-195,0);

INSERT INTO `mob_spawn_points` VALUES (17261050,'Abyssdiver','Abyssdiver',96607,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (17261051,'Abyssdiver','Abyssdiver',96607,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17261052,'Abyssdiver','Abyssdiver',96607,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17261202,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17261203,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17261204,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Meriphataud Mountains (Zone 119)
-- 17265663
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17265130,'Lord_Asag','Lord Asag',13828,-282,16,602,0);

-- ------------------------------------------------------------
-- Sauromugue Champaign (Zone 120)
-- 17269759
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17269127,'Goji','Goji',13779,-245,7.425,245,103);

-- ------------------------------------------------------------
-- The Sanctuary of Zi'Tah (Zone 121)
-- 17273855
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17273318,'Cath_palug','Cath Palug',13732,-89.08,-0.211,-312.308,45);
REPLACE INTO `mob_spawn_points` VALUES (17273319,'Grwan','Grwnan',13733,-90.164,-0.518,-313.011,251);
REPLACE INTO `mob_spawn_points` VALUES (17273320,'Grwan','Grwnan',13733,-90.599,-0.508,-311.7,251);

-- ------------------------------------------------------------
-- Ro'Maeve (Zone 122)
-- 17277951
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17277011,'Martinet','Martinet',14176,-196,-8,-48,32); -- Pos data needs correction
INSERT INTO `mob_spawn_points` VALUES (17277103,'Nargun','Nargun',90304,-107,4,114,115);
REPLACE INTO `mob_spawn_points` VALUES (17277138,'Mimic_King','Mimic King',13736,114,-8,47,254);
REPLACE INTO `mob_spawn_points` VALUES (17277139,'Mimic_Jester','Mimic Jester',13735,113,-8,47,254);
REPLACE INTO `mob_spawn_points` VALUES (17277140,'Mimic_Mage','Mimic Mage',13734,115,-8,47,254);

-- ------------------------------------------------------------
-- Yuhtunga Jungle (Zone 123)
-- 17282047
-- ------------------------------------------------------------

INSERT INTO `mob_spawn_points` VALUES (17281497,'Holy_Moly','Holy Moly',90450,-242,0,405,254); -- Does not exist in DSP 9/25/2016
INSERT INTO `mob_spawn_points` VALUES (17281498,'Moly','Moly',90451,-243,0,405,254);
INSERT INTO `mob_spawn_points` VALUES (17281499,'Moly','Moly',90451,-244,0,405,254);
INSERT INTO `mob_spawn_points` VALUES (17281500,'Moly','Moly',90451,-245,0,405,254);
INSERT INTO `mob_spawn_points` VALUES (17281501,'Moly','Moly',90451,-245,0,405,254);

INSERT INTO `mob_spawn_points` VALUES (17281506,'Steamy Samantha','Steamy Samantha',96613,0.000,0.001,0.000,0); -- Force pop (phase 1)
INSERT INTO `mob_spawn_points` VALUES (17281507,'Steamy Samantha','Steamy Samantha',96613,0.000,0.001,0.000,0); -- Force pop (phase 1)
-- INSERT INTO `mob_spawn_points` VALUES (17281508,'Steamy Samantha','Steamy Samantha',96613,0.000,0.001,0.000,0); -- Timed pop (phase 1)
INSERT INTO `mob_spawn_points` VALUES (17281509,'Sultry Samantha','Sultry Samantha',96614,0.000,0.001,0.000,0); -- Force pop (phase 2)
INSERT INTO `mob_spawn_points` VALUES (17281510,'Sultry Samantha','Sultry Samantha',96614,0.000,0.001,0.000,0); -- Force pop (phase 2)
-- INSERT INTO `mob_spawn_points` VALUES (17281511,'Sultry Samantha','Sultry Samantha',96614,0.000,0.001,0.000,0); -- Timed pop (phase 2)
INSERT INTO `mob_spawn_points` VALUES (17281512,'Sybaritic_Samantha','Sybaritic Samantha',96615,0.000,0.001,0.000,0); -- Force pop (phase 3)
INSERT INTO `mob_spawn_points` VALUES (17281513,'Sybaritic_Samantha','Sybaritic Samantha',96615,0.000,0.001,0.000,0); -- Force pop (phase 3)
-- INSERT INTO `mob_spawn_points` VALUES (17281514,'Sybaritic_Samantha','Sybaritic Samantha',96615,0.000,0.001,0.000,0); -- Timed pop (phase 3)

-- INSERT INTO `npc_list` VALUES (17281657,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17281658,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17281659,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

INSERT INTO `mob_spawn_points` VALUES (17282046,'Darrcuiln','Darrcuiln',90091,446,21,140,151);
-- INSERT INTO `npc_list` VALUES (17282047,'Loot_Box','Loot Box',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Yhoator Jungle (Zone 124)
-- 17286143
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Western Altepa Desert (Zone 125)
-- 17290239
-- ------------------------------------------------------------
INSERT INTO `mob_spawn_points` VALUES (17289658,'Sabotender_Campeador','Sabotender Campeador',90456,554,0,260,254); -- Does not exist in DSP 9/25/2016
INSERT INTO `mob_spawn_points` VALUES (17289659,'Sabotender_Mercenario','Sabotender Mercenario',90457,555,0,260,254);
INSERT INTO `mob_spawn_points` VALUES (17289660,'Sabotender_Mercenario','Sabotender Mercenario',90457,556,0,260,254);
INSERT INTO `mob_spawn_points` VALUES (17289661,'Sabotender_Mercenario','Sabotender Mercenario',90457,557,0,260,254);
INSERT INTO `mob_spawn_points` VALUES (17289662,'Sabotender_Mercenario','Sabotender Mercenario',90457,558,0,260,254);

-- ------------------------------------------------------------
-- Qufim Island (Zone 126)
-- 17294335
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17293648,'Kaggen','Kaggen',13764,150,-20.5,150,0);
INSERT INTO `mob_spawn_points` VALUES (17293485,'Atkorkamuy','Atkorkamuy',90313,-266,-2,20,68);
INSERT INTO `mob_spawn_points` VALUES (17293663,'Jester_Malatrix','Jester Malatrix',96611,0.000,0.001,0.000,0); -- Force pop
INSERT INTO `mob_spawn_points` VALUES (17293664,'Jester_Malatrix','Jester Malatrix',96611,0.000,0.001,0.000,0); -- Force pop
-- INSERT INTO `mob_spawn_points` VALUES (17293665,'Jester_Malatrix','Jester Malatrix',96611,0.000,0.001,0.000,0); -- Timed pop

-- INSERT INTO `npc_list` VALUES (17293779,'Ethereal_Junction_1','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17293780,'Ethereal_Junction_2','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17293781,'Ethereal_Junction_3','Ethereal Junction',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Behemoth's Dominion (Zone 127)
-- 17298431
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17297452,'Pil','Pil',13763,-210,-20.835,70,0); -- Pil-VNM

-- ------------------------------------------------------------
-- Valley of Sorrows (Zone 128)
-- 17302527
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ghoyu's Reverie (Zone 129)
-- 17306623
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ru'Aun Gardens (Zone 130)
-- 17310719
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17309993,'Aello','Aello',13737,77,-40.7,-460.042,196);
REPLACE INTO `mob_spawn_points` VALUES (17309994,'Aellos_Handmaiden','Aello\'s Handmaiden',13738,75.755,-40.7,-462.634,106);
REPLACE INTO `mob_spawn_points` VALUES (17309995,'Aellos_Handmaiden','Aello\'s Handmaiden',13738,75.716,-40.7,-463.924,127);
REPLACE INTO `mob_spawn_points` VALUES (17309996,'Aellos_Handmaiden','Aello\'s Handmaiden',13738,76.129,-40.7,-463.25,117);

-- ------------------------------------------------------------
-- Mordion Gaol (Zone 131)
-- 17314815
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Abyssea - La Theine (Zone 132)
-- 17318911
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17317889,'Sentinel_Crab','Sentinel Crab',6995,-11,17,150,242);
REPLACE INTO `mob_spawn_points` VALUES (17317890,'Sentinel_Crab','Sentinel Crab',6995,-4,16,161,89);
REPLACE INTO `mob_spawn_points` VALUES (17317891,'Sentinel_Crab','Sentinel Crab',6995,0,17,154,41);
REPLACE INTO `mob_spawn_points` VALUES (17317892,'Sentinel_Crab','Sentinel Crab',6995,9,16,159,239);
REPLACE INTO `mob_spawn_points` VALUES (17317893,'Sentinel_Crab','Sentinel Crab',6995,20,17,159,87);
REPLACE INTO `mob_spawn_points` VALUES (17317894,'Sentinel_Crab','Sentinel Crab',6995,28,16,155,1);
REPLACE INTO `mob_spawn_points` VALUES (17317895,'Sentinel_Crab','Sentinel Crab',6995,37,16,158,187);
REPLACE INTO `mob_spawn_points` VALUES (17317896,'Sentinel_Crab','Sentinel Crab',6995,42,16,154,142);
REPLACE INTO `mob_spawn_points` VALUES (17317897,'Nahn','Nahn',6982,31,19,146,207);
REPLACE INTO `mob_spawn_points` VALUES (17317898,'Karkinos','Karkinos',6973,1,20,144,183);
REPLACE INTO `mob_spawn_points` VALUES (17318440,'La-Theine_Liege','La Theine Liege',6975,80,15,199,69);
REPLACE INTO `mob_spawn_points` VALUES (17318443,'Poroggo_DomJuan','Poroggo Dom Juan',6990,406,26,-544,231);
REPLACE INTO `mob_spawn_points` VALUES (17318444,'Toppling_Tuber','Toppling Tuber',6997,-325,38,201,79);
REPLACE INTO `mob_spawn_points` VALUES (17318456,'Briareus','Briareus',6951,-180,7,260,165);

REPLACE INTO `npc_list` VALUES (17318474,'qm1','???',0,696.896,40.844,283.068,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Dozing Dorian
REPLACE INTO `npc_list` VALUES (17318475,'qm2','???',0,279.338,23.999,-81.762,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Trudging Thomas
REPLACE INTO `npc_list` VALUES (17318476,'qm3','???',0,-764.448,-8.233,121.184,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Meganteron
REPLACE INTO `npc_list` VALUES (17318477,'qm4','???',0,-716.158,15.758,639.904,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Adamastor
REPLACE INTO `npc_list` VALUES (17318478,'qm5','???',0,-357.010,8.343,163.595,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Pantagruel
REPLACE INTO `npc_list` VALUES (17318479,'qm6','???',0,-398.113,-0.101,-321.599,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Grandgousier
REPLACE INTO `npc_list` VALUES (17318480,'qm7','???',0,81.958,16.110,193.761,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17318481,'qm8','???',0,-73.444,18.723,134.701,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Baba yaga
REPLACE INTO `npc_list` VALUES (17318482,'qm9','???',0,309.532,24.250,-524.092,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Nguruvilu
REPLACE INTO `npc_list` VALUES (17318483,'qm10','???',0,405.785,26.404,-543.056,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Poroggo
REPLACE INTO `npc_list` VALUES (17318484,'qm11','???',0,-325.452,38.821,200.550,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Toppling_Tuber
REPLACE INTO `npc_list` VALUES (17318485,'qm12','???',0,-86.813,24.379,-511.991,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Lugarhoo
REPLACE INTO `npc_list` VALUES (17318486,'qm13','???',0,-180.000,7.893,260.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Briareus
REPLACE INTO `npc_list` VALUES (17318487,'qm14','???',0,11.240,17.702,148.421,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17318488,'qm15','???',0,434.255,24.085,40.828,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17318489,'qm16','???',0,-170.000,8.000,270.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17318490,'qm17','???',0,-3.760,17.702,148.421,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17318491,'qm18','???',0,410.155,24.885,40.928,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Hadhayosh
REPLACE INTO `npc_list` VALUES (17318492,'qm19','???',0,-190.000,7.393,270.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17318493,'qm20','???',0,26.240,19.502,148.421,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Carabosse
REPLACE INTO `npc_list` VALUES (17318494,'qm21','???',0,449.255,24.485,40.828,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17318495,'qm22','???',0,79,15,198,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- La-Theine_Liege


-- ------------------------------------------------------------
-- (Zone 133)
-- 17323007
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dynamis - Beaucedine (Zone 134)
-- 17327103
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dynamis - Xarcabard (Zone 135)
-- 17331199
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Beaucedine Glacier [S] (Zone 136)
-- 17335295
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Xarcabard [S] (Zone 137)
-- 17339391
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Castle Zvahl Baileys [S] (Zone 138)
-- 17343487
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Horlais Peak (Zone 139)
-- 17347583
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ghelsba Outpost (Zone 140)
-- 17351679
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Fort Ghelsba (Zone 141)
-- 17355775
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Yughott Grotto (Zone 142)
-- 17359871
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Palborough Mines (Zone 143)
-- 17363967
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Waughroon Shrine (Zone 144)
-- 17368063
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Giddeus (Zone 145)
-- 17372159
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Balga's Dais (Zone 146)
-- 17376255
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Beadeaux (Zone 147)
-- 17380351
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Qulun Dome (Zone 148)
-- 17384447
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Davoi (Zone 149)
-- 17388543
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Monastic Cavern (Zone 150)
-- 17392639
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Castle Oztroja (Zone 151)
-- 17396735
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17396141,'Odontotyrannus','Odontotyrannus',8091,-78,23,-39,88);


-- ------------------------------------------------------------
-- Altar Room (Zone 152)
-- 17400831
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- The Boyahda Tree (Zone 153)
-- 17404927
-- ------------------------------------------------------------
REPLACE INTO `npc_list` VALUES (17404397,'Planar_Rift','Planar Rift',0,318,9,-26,1,50,50,0,5,100,0,3,0x00006F0900000000000000000000000000000000,2,'ABYSSEA',0); -- listed as blank in DSP 9/24/2016
INSERT INTO `mob_spawn_points` VALUES (17404339,'Modron','Modron',13800,318,9,-26,254);
INSERT INTO `mob_spawn_points` VALUES (17404340,'Modrons_Druid','Modron\'s Druid',13801,319,9,-26,254);
INSERT INTO `mob_spawn_points` VALUES (17404341,'Modrons_Druid','Modron\'s Druid',13801,317,9,-26,254);

-- ------------------------------------------------------------
-- Dragon's Aery (Zone 154)
-- 17409023
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Castle Zvahl Keep [S] (Zone 155)
-- 17413119
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Throne Room [S] (Zone 156)
-- 17417215
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Middle Delkfutt's Tower (Zone 157)
-- 17421311
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Upper Delkfutt's Tower (Zone 158)
-- 17425407
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Temple of Uggalepih (Zone 159)
-- 17429503
-- ------------------------------------------------------------

INSERT INTO `mob_spawn_points` VALUES (17429502,'Colkhab','Colkhab',90095,53,1,-62,0); -- Does not exist in DSP 9/25/2016
-- INSERT INTO `npc_list` VALUES (17429503,'Loot_Box','Loot Box',192,0.000,0.000,0.000,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

INSERT INTO `mob_spawn_points` VALUES (17428818,'Neith','Neith',90452,180,0,-65,254); -- Does not exist in DSP 9/25/2016
INSERT INTO `mob_spawn_points` VALUES (17428819,'Neiths_Bobbin','Neith\'s Bobbin',90453,181,0,-65,254);
INSERT INTO `mob_spawn_points` VALUES (17428820,'Neiths_Bobbin','Neith\'s Bobbin',90453,182,0,-65,254);
INSERT INTO `mob_spawn_points` VALUES (17428821,'Neiths_Bobbin','Neith\'s Bobbin',90453,183,0,-65,254);
INSERT INTO `mob_spawn_points` VALUES (17428822,'Neiths_Bobbin','Neith\'s Bobbin',90453,184,0,-65,254);
INSERT INTO `mob_spawn_points` VALUES (17428823,'Neiths_Bobbin','Neith\'s Bobbin',90453,185,0,-65,254);
INSERT INTO `mob_spawn_points` VALUES (17428824,'Neiths_Bobbin','Neith\'s Bobbin',90453,186,0,-65,254);

-- ------------------------------------------------------------
-- Den of Rancor (Zone 160)
-- 17433599
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Castle Zvahl Baileys (Zone 161)
-- 17437695
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Castle Zvahl Keep (Zone 162)
-- 17441791
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Sacrificial Chamber (Zone 163)
-- 17445887
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Garlaige Citadel [S] (Zone 164)
-- 17449983
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17449375,'Laidly_Laurence','Laidly Laurence',13776,-260,-0.579,-20,9);
REPLACE INTO `mob_spawn_points` VALUES (17448990,'Citadel_Pipistrelles','Citadel Pipistrelles',13775,4.522,5.623,56.314,46);

-- ------------------------------------------------------------
-- Throne Room (Zone 165)
-- 17454079
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ranguemont Pass (Zone 166)
-- 17458175
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Bostaunieux Oubliette (Zone 167)
-- 17462271
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Chamber of Oracles (Zone 168)
-- 17466367
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Toraimarai Canal (Zone 169)
-- 17470463
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17469632,'Konjac','Konjac',8819,60,22,132,94);
REPLACE INTO `mob_spawn_points` VALUES (17469578,'Canal_Moocher','Canal Moocher',8833,164,11,-103,43);

-- ------------------------------------------------------------
-- Full Moon Fountain (Zone 170)
-- 17474559
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Crawlers' Nest [S] (Zone 171)
-- 17478655
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17477675,'Abatwa','Abatwa',13761,52.2,-1.02,261.861,97);
REPLACE INTO `mob_spawn_points` VALUES (17478057,'Nympha_Eunomia','Nympha Eunomia',13759,55,-0.445,260,138);
REPLACE INTO `mob_spawn_points` VALUES (17478058,'Kalos_Eunomia','Kalos Eunomia',13758,55,-0.445,260,34);

-- ------------------------------------------------------------
-- Zeruhn Mines (Zone 172)
-- 17482751
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Korroloka Tunnel (Zone 173)
-- 17486847
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Kuftal Tunnel (Zone 174)
-- 17490943
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17490244,'Tangaroa','Tangaroa',13820,127.792,-0.52,5,215);
REPLACE INTO `mob_spawn_points` VALUES (17490245,'Koura','Koura',13821,129.292,-0.017,6,59);
REPLACE INTO `mob_spawn_points` VALUES (17490246,'PekaPeka','Pekapeka',13822,127.949,0.10,7,40);
REPLACE INTO `mob_spawn_points` VALUES (17490247,'Moki','Moki',13823,128.642,-0.003,8,54);

-- ------------------------------------------------------------
-- The Eldieme Necropolis [S] (Zone 175)
-- 17495039
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17494135,'Laelaps','Laelaps',13817,300.484,-15.887,-224.944,50);
REPLACE INTO `mob_spawn_points` VALUES (17494610,'Giltine','Giltine',13818,-2,1,43,0);

-- ------------------------------------------------------------
-- Sea Serpent Grotto (Zone 176)
-- 17499135
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ve'Lugannon Palace (Zone 177)
-- 17503231
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17502571,'Uptala','Uptala',13739,-120.352,0.035,-384.774,131);
REPLACE INTO `mob_spawn_points` VALUES (17502572,'Bisa','Bisa',13740,-121.754,-0.113,-384.136,236);
INSERT INTO `mob_spawn_points` VALUES (17502573,'Trna','Trna',90478,-122.754,-0.113,-384.136,236);

-- ------------------------------------------------------------
-- The Shrine of Ru'Avitau (Zone 178)
-- 17507327
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17506681,'Qilin','Qilin',13746,69.649,-15.924,69.738,56);
REPLACE INTO `mob_spawn_points` VALUES (17506682,'BaiHu','Bai Hu',13745,67.72,-15.924,68.997,205);
REPLACE INTO `mob_spawn_points` VALUES (17506683,'QingLong','Qing Long',13744,70.563,-15.924,68.785,64);
REPLACE INTO `mob_spawn_points` VALUES (17506684,'ZhuQue','Zhu Que',13743,70.364,-15.924,65.639,37);
REPLACE INTO `mob_spawn_points` VALUES (17506685,'XuanWu','Xuan Wu',13742,67.539,-15.924,67.72,31);

-- ------------------------------------------------------------
-- Stellar Fulcrum (Zone 179)
-- 17511423
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- La'Loff Amphitheater (Zone 180)
-- 17515519
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- The Celestial Nexus (Zone 181)
-- 17519615
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Walk of Echoes (Zone 182)
-- 17523711
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Maquette Abdhaljs-Legion (Zone 183)
-- 17527807
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17526785,'Lofty_Behemoth','Lofty Behemoth',90002,-221,12,260,4);
REPLACE INTO `mob_spawn_points` VALUES (17526786,'Lofty_Wyrm','Lofty Wyrm',90005,-222,12,240,252);
REPLACE INTO `mob_spawn_points` VALUES (17526787,'Lofty_Adamantoise','Lofty_Adamantoise',90006,-223,12,220,1);
REPLACE INTO `mob_spawn_points` VALUES (17526788,'Lofty_Elasmoth','Lofty Elasmoth',90003,-221,12,260,4);
REPLACE INTO `mob_spawn_points` VALUES (17526789,'Lofty_Zilant','Lofty Zilant',90000,-222,12,240,252);
REPLACE INTO `mob_spawn_points` VALUES (17526790,'Lofty_Ferromantoise','Lofty Ferromantoise',90004,-223,12,220,1);
REPLACE INTO `mob_spawn_points` VALUES (17526791,'Lofty_Harpeia','Lofty Harpeia',90001,-222,12,240,252);

INSERT INTO `mob_spawn_points` VALUES (17526873,'Auspicious_Entity','Auspicious Entity',90007,-195.000,12.001,240.000,0); -- (Air) Hall of An : Restore
INSERT INTO `mob_spawn_points` VALUES (17526874,'Auspicious_Entity','Auspicious Entity',90008,155.000,12.001,238.000,0); -- (Dark) Hall of Ki : Restore
INSERT INTO `mob_spawn_points` VALUES (17526875,'Auspicious_Entity','Auspicious Entity',90009,159.000,12.001,-155.000,0); -- (Earth) Hall of Im : Restore
INSERT INTO `mob_spawn_points` VALUES (17526876,'Auspicious_Entity','Auspicious Entity',90010,-197.000,12.001,-159.000,0); -- (Fire) Hall of Muru : Restore
INSERT INTO `mob_spawn_points` VALUES (17526877,'Auspicious_Entity_2','Auspicious Entity',90011,0.000,0.001,0.000,0); -- (Ice) Hall of Muru : TE
INSERT INTO `mob_spawn_points` VALUES (17526878,'Auspicious_Entity_2','Auspicious Entity',90012,0.000,0.001,0.000,0); -- (Light) Hall of Mul : TE
INSERT INTO `mob_spawn_points` VALUES (17526879,'Auspicious_Entity','Auspicious Entity',90013,-20.000,12.001,20.000,0); -- (Lighting) Hall of Mul : Restore
INSERT INTO `mob_spawn_points` VALUES (17526880,'Auspicious_Entity_3','Auspicious Entity',90014,12.000,9.001,-12.000,0); -- (Water) Hall of Mul : 2hr reset

INSERT INTO `mob_spawn_points` VALUES (17526805,'Mired_Cerberus','Mired Cerberus',90020,182,12,219,116);
INSERT INTO `mob_spawn_points` VALUES (17526806,'Mired_Khimaira','Mired Khimaira',90021,181,12,239,130);
INSERT INTO `mob_spawn_points` VALUES (17526807,'Mired_Hydra','Mired Hydra',90022,181,12,259,128);
INSERT INTO `mob_spawn_points` VALUES (17526808,'Mired_Orthrus','Mired Orthrus',90023,182,12,219,116);
INSERT INTO `mob_spawn_points` VALUES (17526809,'Mired_Khrysokhimaira','Mired Khrysokhimaira',90024,181,12,239,130);
INSERT INTO `mob_spawn_points` VALUES (17526810,'Mired_Alfard','Mired Alfard',90025,181,12,259,128);
INSERT INTO `mob_spawn_points` VALUES (17526811,'Mired_Mantis','Mired Mantis',90026,181,12,239,130);

INSERT INTO `mob_spawn_points` VALUES (17526819,'Soaring_Corse','Soaring Corse',90030,180,12,-181,186);
INSERT INTO `mob_spawn_points` VALUES (17526820,'Soaring_Dvergr','Soaring Dvergr',90031,139,12,-181,179);
INSERT INTO `mob_spawn_points` VALUES (17526821,'Soaring_Vampyr','Soaring Vampyr',90032,159,12,-180,188);
INSERT INTO `mob_spawn_points` VALUES (17526822,'Soaring_Kumakatok','Soaring Kumakatok',90033,180,12,-181,186);
INSERT INTO `mob_spawn_points` VALUES (17526823,'Soaring_Dweorg','Soaring Dweorg',90034,139,12,-181,179);
INSERT INTO `mob_spawn_points` VALUES (17526824,'Soaring_Strigoi','Soaring Strigoi',90035,159,12,-180,188);
INSERT INTO `mob_spawn_points` VALUES (17526825,'Soaring_Naraka','Soaring Naraka',90036,159,12,-180,188);

INSERT INTO `mob_spawn_points` VALUES (17526833,'Veiled_Amphiptere','Veiled Amphiptere',90040,-220,12,-155,5);
INSERT INTO `mob_spawn_points` VALUES (17526834,'Veiled_Ixion','Veiled Ixion',90041,-220,12,-180,255);
INSERT INTO `mob_spawn_points` VALUES (17526835,'Veiled_Sandworm','Veiled Sandworm',90042,-220,12,-139,248);
INSERT INTO `mob_spawn_points` VALUES (17526836,'Veiled_Sanguiptere','Veiled Sanguiptere',90043,-220,12,-155,5);
INSERT INTO `mob_spawn_points` VALUES (17526837,'Veiled_Alicorn','Veiled Alicorn',90044,-220,12,-180,255);
INSERT INTO `mob_spawn_points` VALUES (17526838,'Veiled_Gigaworm','Veiled Gigaworm',90045,-220,12,-139,248);
INSERT INTO `mob_spawn_points` VALUES (17526839,'Veiled_Ironclad','Veiled Ironclad',90046,-220,12,-155,5);

INSERT INTO `mob_spawn_points` VALUES (17526847,'Lofty_Harpeia','Lofty_Harpeia',90050,-19,10,41,190);
INSERT INTO `mob_spawn_points` VALUES (17526848,'Mired_Mantis','Mired_Mantis',90051,12,10,52,94);
INSERT INTO `mob_spawn_points` VALUES (17526849,'Soaring_Naraka','Soaring_Naraka',90052,-52,10,52,18);
INSERT INTO `mob_spawn_points` VALUES (17526850,'Veiled_Ironclad','Veiled_Ironclad',90053,-52,9,-12,255);
INSERT INTO `mob_spawn_points` VALUES (17526855,'Paramount_Gallu','Paramount_Gallu',90054,-19,10,-2,199);
INSERT INTO `mob_spawn_points` VALUES (17526856,'Paramount_Botulus','Paramount_Botulus',90055,-19,10,-2,199);
INSERT INTO `mob_spawn_points` VALUES (17526852,'Paramount_Harpeia','Paramount_Harpeia',90056,-19,10,41,190);
INSERT INTO `mob_spawn_points` VALUES (17526853,'Paramount_Mantis','Paramount_Mantis',90057,12,10,52,94);
INSERT INTO `mob_spawn_points` VALUES (17526851,'Paramount_Naraka','Paramount_Naraka',90058,-52,10,52,18);
INSERT INTO `mob_spawn_points` VALUES (17526854,'Paramount_Ironclad','Paramount_Ironclad',90059,-52,9,-12,255);

INSERT INTO `npc_list` VALUES (17526884,'Achieve_Master','Achieve Master',0,0.000,0.000,0.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526885,'EXIT_AN','Gap',0,0.000,0.001,0.000,6,40,40,0,12,100,2,3,0x0000F20800000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526886,'EXIT_KI','Gap',0,0.000,0.001,0.000,6,40,40,0,12,100,2,3,0x0000F20800000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526887,'EXIT_IM','Gap',0,0.000,0.001,0.000,6,40,40,0,12,100,2,3,0x0000F20800000000000000000000000000000000,0,NULL,0); -- used in csid 10000
INSERT INTO `npc_list` VALUES (17526888,'EXIT_MURU','Gap',0,0.000,0.001,0.000,6,40,40,0,12,100,2,3,0x0000F20800000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526889,'Blank','Blank',0,0.000,0.000,0.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526890,'Legion_Portal_1','Legion Portal',0,0.000,0.000,0.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526891,'Legion_Portal_2','Legion Portal',0,0.000,0.000,0.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17526892,'Legion_Tome','Legion Tome',192,180.000,12.000,-251.000,1,40,40,0,16,32,0,3,0x0000F20800000000000000000000000000000000,0,NULL,0); -- retail pos
INSERT INTO `npc_list` VALUES (17526892,'Legion_Tome','Legion Tome',64,180.000,12.000,-279.500,1,40,40,0,16,32,0,3,0x0000F20800000000000000000000000000000000,0,NULL,0); -- Temp Pos for lack of instancing for "Hall of Mars".
INSERT INTO `npc_list` VALUES (17526893,'Legion_Libretto','Legion Libretto',0,0.000,0.000,0.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526894,'EXIT_MUL','Gap',0,0.000,0.001,0.000,6,40,40,0,12,100,2,3,0x0000F20800000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526895,'Moogle1','Moogle',0,0.000,0.000,0.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526896,'Moogle2','Moogle',0,0.000,0.000,0.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526897,'Moogle3','Moogle',0,0.000,0.000,0.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17526898,'Moogle4','Moogle',0,0.000,0.000,0.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);

-- INSERT INTO `mob_spawn_points` VALUES (17527806,'Mars','Mars',97600,64,180.000,12.000,-252.525); -- Temp Pos for lack of instancing.
INSERT INTO `npc_list` VALUES (17527807,'Mars_Loot_Box','Mars Loot Box',192,180.000,12.000,-251.000,6,40,40,0,12,100,2,3,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Lower Delkfutt's Tower (Zone 184)
-- 17531903
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17531126,'Akvan','Akvan',13803,421,16.399,-20,82);

-- ------------------------------------------------------------
-- Dynamis - San d'Oria (Zone 185)
-- 17535999
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dynamis - Bastok (Zone 186)
-- 17540095
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dynamis - Windurst (Zone 187)
-- 17544191
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dynamis - Jeuno (Zone 188)
-- 17548287
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- (Zone 189)
-- 17552383
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- King Ranperre's Tomb (Zone 190)
-- 17556479
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17555901,'Hahava','Hahava',13805,-115,9,60,118);

-- ------------------------------------------------------------
-- Dangruf Wadi (Zone 191)
-- 17560575
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17559871,'Celaeno','Celaeno',90415,-253,4,505,118);

-- ------------------------------------------------------------
-- Inner Horutoto Ruins (Zone 192)
-- 17564671
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ordelle's Caves (Zone 193)
-- 17568767
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17568142,'Krabimanjaro','Krabimanjaro',13809,-112,0,230,78);

INSERT INTO `mob_spawn_points` VALUES (17568765,'Stroper Chyme','Stroper Chyme',9649,0,28,-75,159); -- Need additional 2 mob ID's  These will be NPC for now
INSERT INTO `mob_spawn_points` VALUES (17568766,'Stroper Chyme','Stroper Chyme',9649,-149,27,-54,246);


-- ------------------------------------------------------------
-- Outer Horutoto Ruins (Zone 194)
-- 17572863
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17572219,'Voidwrought','Voidwrought',90417,-380,0,740,0);

-- ------------------------------------------------------------
-- The Eldieme Necropolis (Zone 195)
-- 17576959
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17576275,'Gasha','Gasha',13819,-2,1,43,108); -- Gasha-1stform
REPLACE INTO `mob_spawn_points` VALUES (17576276,'Gasha2','Gasha',90447,-2,1,43,0);
REPLACE INTO `mob_spawn_points` VALUES (17576277,'Gasha3','Gasha',90448,-2,1,43,242);

-- ------------------------------------------------------------
-- Gusgen Mines (Zone 196)
-- 17581055
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17580343,'Lorbulcrub','Lorbulcrud',90406,-115,-60,-100,178);

-- ------------------------------------------------------------
-- Crawlers' Nest (Zone 197)
-- 17585151
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17584416,'Aqrabuamelu','Aqrabuamelu',13753,-184.195,-1.719,248.295,33);
REPLACE INTO `mob_spawn_points` VALUES (17584428,'Mellonia','Mellonia',13754,55,-0.445,260,110);

-- ------------------------------------------------------------
-- Maze of Shakhrami (Zone 198)
-- 17589247
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17588707,'Ogbunabali','Ogbunabali',13802,-285,0,-114,0);

-- ------------------------------------------------------------
-- (Zone 199)
-- 17593343
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Garlaige Citadel (Zone 200)
-- 17597439
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17596732,'Roly_Poly','Roly-Poly',13777,-259,0,379,61);

-- ------------------------------------------------------------
-- Cloister of Gales (Zone 201)
-- 17601535
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Cloister of Storms (Zone 202)
-- 17605631
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Cloister of Frost (Zone 203)
-- 17609727
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Fei'Yin (Zone 204)
-- 17613823
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17612840,'Jenglot','Jenglot',14097,12.975,-16.50,46.5909,164);

-- ------------------------------------------------------------
-- Ifrit's Cauldron (Zone 205)
-- 17617919
-- ------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (17617172,'Ildebrann','Ildebrann',13815,8.217,3.526,293.694,254);
REPLACE INTO `mob_spawn_points` VALUES (17617173,'Hraun_Dragon','Hraun Dragon',90455,8.217,3.526,293.694,254);
REPLACE INTO `mob_spawn_points` VALUES (17617174,'Hraun_Dragon','Hraun Dragon',90455,9.217,3.526,293.694,254);

-- ------------------------------------------------------------
-- Qu'Bia Arena (Zone 206)
-- 17622015
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Cloister of Flames (Zone 207)
-- 17626111
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Quicksand Caves (Zone 208)
-- 17630207
-- ------------------------------------------------------------
INSERT INTO `mob_spawn_points` VALUES (17629646,'Malleator_Maurok','Malleator Maurok',90458,-85,0,-40,254); -- Does not exist in DSP 9/25/2016
INSERT INTO `mob_spawn_points` VALUES (17629647,'Peon_Pounder','Peon Pounder',90459,-84,0,-40,254);
INSERT INTO `mob_spawn_points` VALUES (17629648,'Peon_Pounder','Peon Pounder',90459,-86,0,-40,254);

-- ------------------------------------------------------------
-- Cloister of Tremors (Zone 209)
-- 17634303
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- GM Home (Zone 210)
-- 17638399
-- ------------------------------------------------------------

INSERT INTO `npc_list` VALUES (17637377,'Fame','Fame',0,5.000,0.000,2.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637378,'San_dOria','San d\'Oria',0,5.000,0.000,4.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637379,'Bastok','Bastok',0,5.000,0.000,6.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637380,'Windurst','Windurst',0,5.000,0.000,8.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637381,'Key_Item','Key Item',0,5.000,0.000,10.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637382,'Conquest_Debug','Conquest Debug',0,12.000,0.000,5.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637383,'Herald','Herald',0,5.000,0.000,14.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637384,'Ballista_Item','Ballista_Item',0,5.000,0.000,16.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637385,'Blenner_itembox','Blenner_itembox',0,5.000,0.000,18.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637386,'pvp2_itembox_debug','pvp2_itembox_debug',0,5.000,0.000,20.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637387,'Selbina_Maura','Selbina/Maura',0,5.000,0.000,22.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637388,'Juno_item','Juno_item',0,5.000,0.000,24.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637389,'Ex_Scenario','Ex_Scenario',0,5.000,0.000,26.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637390,'Party_test','Party_test',0,5.000,0.000,28.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637391,'testkun0','testkun0',0,5.000,0.000,30.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637392,'Equip_Navi','Equip Navi',0,5.000,0.000,32.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637393,'Hume_m','Hume_m',0,5.000,0.000,34.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637394,'Hume_f','Hume_f',0,5.000,0.000,36.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637395,'Elvaan_m','Elvaan_m',0,5.000,0.000,38.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637396,'Elvaan_f','Elvaan_f',0,5.000,0.000,40.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637397,'Tarutaru_m','Tarutaru_m',0,5.000,0.000,42.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637398,'Tarutaru_f','Tarutaru_f',0,5.000,0.000,44.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637399,'Mithra','Mithra',0,5.000,0.000,44.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637400,'Galka','Galka',0,5.000,0.000,46.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637401,'ship','ship',0,5.000,0.000,48.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637402,'Mannequin','Mannequin',0,5.000,0.000,50.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637403,'Swtich_Test','Swtich Test',0,5.000,0.000,52.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637404,'Promathia','Promathia',0,5.000,0.000,54.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637405,'St_moogle','St_moogle',0,5.000,0.000,56.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637406,'Promathia_BattleField','Promathia BattleField',0,5.000,0.000,58.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637407,'Fellow','Fellow',0,5.000,0.000,60.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637408,'Blank','Blank',0,5.000,0.000,62.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637409,'Fish_selecter','Fish selecter',0,5.000,0.000,64.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637410,'Bigfish_Maker','Bigfish Maker',0,5.000,0.000,66.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637411,'Ahturhgan','Ahturhgan',0,5.000,0.000,68.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637412,'Undef_Item','Undef Item',0,5.000,0.000,70.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637413,'Assault','Assault',0,5.000,0.000,72.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637414,'Programmer','Programmer',0,5.000,0.000,74.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637415,'Localize','Localize',0,5.000,0.000,76.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637416,'Item_Debug','Item_Debug',0,5.000,0.000,78.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
-- 17637417
INSERT INTO `npc_list` VALUES (17637418,'Lottery-Maker','Lottery-Maker',0,5.000,0.000,80.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637419,'Altana','Altana',0,5.000,0.000,82.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637420,'Abyssea','Abyssea',0,5.000,0.000,84.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637421,'Mogsack Moogle','Mogsack Moogle',0,5.000,0.000,86.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637422,'M','M',0,5.000,0.000,88.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637423,'L','L',0,5.000,0.000,90.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637424,'Adoulin','Adoulin',0,5.000,0.000,92.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637425,'Adoulin_Fame','Adoulin Fame',0,5.000,0.000,94.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637426,'LinkA','LinkA',0,5.000,0.000,96.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637427,'LinkB','LinkB',0,5.000,0.000,98.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637428,'MD_POINT','MD_POINT',0,5.000,0.000,100.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637429,'TABULA_MAKER','TABULA_MAKER',0,5.000,0.000,102.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637430,'Bonanza Master','Bonanza Master',0,5.000,0.000,104.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637431,'5thTrumpet','5thTrumpet',0,5.000,0.000,106.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637432,'RandomItemMaker','RandomItemMaker',0,5.000,0.000,108.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637433,'Dealer_Moogle','Dealer Moogle',0,5.000,0.000,110.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637434,'RandomItemDebugger','RandomItemDebugger',0,5.000,0.000,112.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637435,'Solo_Hunt_Box','Solo Hunt Box',0,5.000,0.000,114.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637436,'Pixie_Quest_Box','Pixie Quest Box',0,5.000,0.000,116.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637437,'6thTrumpet','6thTrumpet',0,5.000,0.000,118.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637438,'7thTrumpet','7thTrumpet',0,5.000,0.000,120.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637439,'Synergy_Furnace','Synergy Furnace',0,5.000,0.000,122.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637440,'Synergy_Furnace','Synergy Furnace',0,5.000,0.000,124.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637441,'Synergy_Furnace','Synergy Furnace',0,5.000,0.000,126.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637442,'Synergy_Furnace','Synergy Furnace',0,5.000,0.000,128.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637443,'Evorith_Maker','Evorith Maker',0,5.000,0.000,130.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637444,'Augment-Test','Augment-Test',0,5.000,0.000,132.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637445,'Level-Check','Level-Check',0,5.000,0.000,134.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637446,'Porter_Moogle','Porter Moogle',0,5.000,0.000,136.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637448,'Magian_MoogleHood','Magian MoogleHood',0,5.000,0.000,138.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637449,'Atmacite_Refiner','Atmacite Refiner',0,5.000,0.000,140.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637450,'Voidwatch_Officer','Voidwatch Officer',0,5.000,0.000,142.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637451,'Moogle','Moogle',0,5.000,0.000,144.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637452,'Moogle_Gatherer','Moogle Gatherer',0,5.000,0.000,146.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637453,'Moogles_Hireling','Moogle\'s Hireling',0,5.000,0.000,148.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637454,'Resistance_Fighter','Resistance Fighter',0,5.000,0.000,150.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
-- 17637455
INSERT INTO `npc_list` VALUES (17637456,'Moogle_Gatherer','Moogle Gatherer',0,5.000,0.000,152.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637457,'Moogles_Hireling','Moogle\'s Hireling',0,5.000,0.000,154.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637458,'Moogle_Gatherer','Moogle Gatherer',0,5.000,0.000,156.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637459,'Moogles_Hireling','Moogle\'s Hireling',0,5.000,0.000,158.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637460,'Moogle_Crafter','Moogle Crafter',0,5.000,0.000,160.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637461,'Moogle_Crafter','Moogle Crafter',0,5.000,0.000,162.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637462,'Moogle_Crafter','Moogle Crafter',0,5.000,0.000,164.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637463,'Walker','Walker',0,5.000,0.000,166.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637464,'Speaker','Speaker',0,5.000,0.000,168.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637465,'Listener','Listener',0,5.000,0.000,170.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637466,'Poet','Poet',0,5.000,0.000,172.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637467,'Volunteer','Volunteer',0,5.000,0.000,174.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637468,'Changeable','Changeable',0,5.000,0.000,176.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637469,'Judge','Judge',0,5.000,0.000,178.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637470,'Trader','Trader',0,5.000,0.000,180.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637471,'Item_give','Item_give',0,5.000,0.000,182.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637472,'Lea_lover','Lea_lover',0,5.000,0.000,184.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637473,'Girl','Girl',0,5.000,0.000,186.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637474,'Boy','Boy',0,5.000,0.000,188.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637475,'Fat','Fat',0,5.000,0.000,192.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637476,'Unstable','Unstable',0,5.000,0.000,194.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637477,'Janken','Janken',0,10.000,0.000,2.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637478,'Yajiuma','Yajiuma',0,10.000,0.000,4.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637479,'Map-Change','Map-Change',0,10.000,0.000,6.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637480,'nogut','nogut',0,10.000,0.000,8.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637481,'Scheck','Scheck',0,10.000,0.000,10.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
-- 17637482
INSERT INTO `npc_list` VALUES (17637483,'GMBIT_MASTER','GMBIT_MASTER',0,25.000,0.500,0.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637484,'GMBIT_0','GMBIT_0',0,25.000,0.000,2.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637485,'GMBIT_1','GMBIT_1',0,25.000,0.000,3.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637486,'GMBIT_2','GMBIT_2',0,25.000,0.000,4.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637487,'GMBIT_3','GMBIT_3',0,25.000,0.000,5.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637488,'GMBIT_4','GMBIT_4',0,25.000,0.000,6.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637489,'GMBIT_5','GMBIT_5',0,25.000,0.000,7.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637490,'GMBIT_6','GMBIT_6',0,25.000,0.000,8.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637491,'GMBIT_7','GMBIT_7',0,25.000,0.000,9.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637492,'GMBIT_8','GMBIT_8',0,25.000,0.000,10.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637493,'GMBIT_9','GMBIT_9',0,25.000,0.000,11.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637494,'GMBIT_10','GMBIT_10',0,25.000,0.000,12.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637495,'GMBIT_11','GMBIT_11',0,25.000,0.000,13.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637496,'GMBIT_12','GMBIT_12',0,25.000,0.000,14.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637497,'GMBIT_13','GMBIT_13',0,25.000,0.000,15.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637498,'GMBIT_14','GMBIT_14',0,25.000,0.000,16.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637499,'GMBIT_15','GMBIT_15',0,25.000,0.000,17.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637500,'GMBIT_16','GMBIT_16',0,25.000,0.000,18.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637501,'GMBIT_17','GMBIT_17',0,25.000,0.000,19.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637502,'GMBIT_18','GMBIT_18',0,25.000,0.000,20.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637503,'GMBIT_19','GMBIT_19',0,25.000,0.000,21.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637504,'GMBIT_20','GMBIT_20',0,25.000,0.000,22.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637505,'GMBIT_21','GMBIT_21',0,25.000,0.000,23.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637506,'GMBIT_22','GMBIT_22',0,25.000,0.000,24.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637507,'GMBIT_23','GMBIT_23',0,25.000,0.000,25.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637508,'GMBIT_24','GMBIT_24',0,25.000,0.000,26.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637509,'GMBIT_25','GMBIT_25',0,25.000,0.000,27.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637510,'GMBIT_26','GMBIT_26',0,25.000,0.000,28.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637511,'GMBIT_27','GMBIT_27',0,25.000,0.000,29.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637512,'GMBIT_28','GMBIT_28',0,25.000,0.000,30.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637513,'GMBIT_29','GMBIT_29',0,25.000,0.000,31.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637514,'GMBIT_30','GMBIT_30',0,25.000,0.000,32.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637515,'GMBIT_31','GMBIT_31',0,25.000,0.000,33.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637516,'GMBIT_32','GMBIT_32',0,25.000,0.000,34.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637517,'GMBIT_33','GMBIT_33',0,25.000,0.000,35.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637518,'GMBIT_34','GMBIT_34',0,25.000,0.000,36.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637519,'GMBIT_35','GMBIT_35',0,25.000,0.000,37.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637520,'GMBIT_36','GMBIT_36',0,25.000,0.000,38.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637521,'GMBIT_37','GMBIT_37',0,25.000,0.000,39.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637522,'GMBIT_38','GMBIT_38',0,25.000,0.000,40.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637523,'GMBIT_39','GMBIT_39',0,25.000,0.000,41.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637524,'GMBIT_40','GMBIT_40',0,25.000,0.000,42.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637525,'GMBIT_41','GMBIT_41',0,25.000,0.000,43.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637526,'GMBIT_42','GMBIT_42',0,25.000,0.000,44.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637527,'GMBIT_43','GMBIT_43',0,25.000,0.000,45.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637528,'GMBIT_44','GMBIT_44',0,25.000,0.000,46.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637529,'GMBIT_45','GMBIT_45',0,25.000,0.000,47.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637530,'GMBIT_46','GMBIT_46',0,25.000,0.000,48.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637531,'GMBIT_47','GMBIT_47',0,25.000,0.000,49.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637532,'GMBIT_48','GMBIT_48',0,25.000,0.000,50.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637533,'GMBIT_49','GMBIT_49',0,25.000,0.000,51.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637534,'GMBIT_50','GMBIT_50',0,25.000,0.000,52.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637535,'GMBIT_51','GMBIT_51',0,25.000,0.000,53.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637536,'GMBIT_52','GMBIT_52',0,25.000,0.000,54.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637537,'GMBIT_53','GMBIT_53',0,25.000,0.000,55.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637538,'GMBIT_54','GMBIT_54',0,25.000,0.000,56.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637539,'GMBIT_55','GMBIT_55',0,25.000,0.000,57.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637540,'GMBIT_56','GMBIT_56',0,25.000,0.000,58.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637541,'GMBIT_57','GMBIT_57',0,25.000,0.000,59.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637542,'GMBIT_58','GMBIT_58',0,25.000,0.000,60.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637543,'GMBIT_59','GMBIT_59',0,25.000,0.000,61.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637544,'GMBIT_60','GMBIT_60',0,25.000,0.000,62.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637545,'GMBIT_61','GMBIT_61',0,25.000,0.000,63.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637546,'GMBIT_62','GMBIT_62',0,25.000,0.000,64.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637547,'GMBIT_63','GMBIT_63',0,25.000,0.000,65.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637548,'GMBIT_64','GMBIT_64',0,25.000,0.000,66.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637549,'GMBIT_65','GMBIT_65',0,25.000,0.000,67.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637550,'GMBIT_66','GMBIT_66',0,25.000,0.000,68.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637551,'GMBIT_67','GMBIT_67',0,25.000,0.000,69.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637552,'GMBIT_68','GMBIT_68',0,25.000,0.000,70.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637553,'GMBIT_69','GMBIT_69',0,25.000,0.000,71.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637554,'GMBIT_70','GMBIT_70',0,25.000,0.000,72.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637555,'GMBIT_71','GMBIT_71',0,25.000,0.000,73.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637556,'GMBIT_72','GMBIT_72',0,25.000,0.000,74.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637557,'GMBIT_73','GMBIT_73',0,25.000,0.000,75.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637558,'GMBIT_74','GMBIT_74',0,25.000,0.000,76.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637559,'GMBIT_75','GMBIT_75',0,25.000,0.000,77.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637560,'GMBIT_76','GMBIT_76',0,25.000,0.000,78.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637561,'GMBIT_77','GMBIT_77',0,25.000,0.000,79.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637562,'GMBIT_78','GMBIT_78',0,25.000,0.000,80.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637563,'GMBIT_79','GMBIT_79',0,25.000,0.000,81.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637564,'GMBIT_80','GMBIT_80',0,25.000,0.000,82.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637565,'GMBIT_81','GMBIT_81',0,25.000,0.000,83.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637566,'GMBIT_82','GMBIT_82',0,25.000,0.000,84.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637567,'GMBIT_83','GMBIT_83',0,25.000,0.000,85.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637568,'GMBIT_84','GMBIT_84',0,25.000,0.000,86.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637569,'GMBIT_85','GMBIT_85',0,25.000,0.000,87.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637570,'GMBIT_76','GMBIT_76',0,25.000,0.000,88.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637571,'GMBIT_87','GMBIT_87',0,25.000,0.000,89.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637572,'GMBIT_88','GMBIT_88',0,25.000,0.000,90.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637573,'GMBIT_89','GMBIT_89',0,25.000,0.000,91.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637574,'GMBIT_90','GMBIT_90',0,25.000,0.000,92.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637575,'GMBIT_91','GMBIT_91',0,25.000,0.000,93.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637576,'GMBIT_92','GMBIT_92',0,25.000,0.000,94.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637577,'GMBIT_93','GMBIT_93',0,25.000,0.000,95.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637578,'GMBIT_94','GMBIT_94',0,25.000,0.000,96.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637579,'GMBIT_95','GMBIT_95',0,25.000,0.000,97.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637580,'GMBIT_96','GMBIT_96',0,25.000,0.000,98.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637581,'GMBIT_97','GMBIT_97',0,25.000,0.000,99.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637582,'GMBIT_98','GMBIT_98',0,25.000,0.000,100.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637583,'GMBIT_99','GMBIT_99',0,25.000,0.000,101.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637584,'GMBIT_100','GMBIT_100',0,25.000,0.000,102.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637585,'GMBIT_101','GMBIT_101',0,25.000,0.000,103.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637586,'GMBIT_102','GMBIT_102',0,25.000,0.000,104.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637587,'GMBIT_103','GMBIT_103',0,25.000,0.000,105.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637588,'GMBIT_104','GMBIT_104',0,25.000,0.000,106.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637589,'GMBIT_105','GMBIT_105',0,25.000,0.000,107.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637590,'GMBIT_106','GMBIT_106',0,25.000,0.000,108.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637591,'GMBIT_107','GMBIT_107',0,25.000,0.000,109.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637592,'GMBIT_108','GMBIT_108',0,25.000,0.000,110.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637593,'GMBIT_109','GMBIT_109',0,25.000,0.000,111.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637594,'GMBIT_110','GMBIT_110',0,25.000,0.000,112.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637595,'GMBIT_111','GMBIT_111',0,25.000,0.000,113.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637596,'GMBIT_112','GMBIT_112',0,25.000,0.000,114.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637597,'GMBIT_113','GMBIT_113',0,25.000,0.000,115.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637598,'GMBIT_114','GMBIT_114',0,25.000,0.000,116.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637599,'GMBIT_115','GMBIT_115',0,25.000,0.000,117.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637600,'GMBIT_116','GMBIT_116',0,25.000,0.000,118.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637601,'GMBIT_117','GMBIT_117',0,25.000,0.000,119.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637602,'GMBIT_118','GMBIT_118',0,25.000,0.000,120.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637603,'GMBIT_119','GMBIT_119',0,25.000,0.000,121.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637604,'GMBIT_120','GMBIT_120',0,25.000,0.000,122.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637605,'GMBIT_121','GMBIT_121',0,25.000,0.000,123.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637606,'GMBIT_122','GMBIT_122',0,25.000,0.000,124.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637607,'GMBIT_123','GMBIT_123',0,25.000,0.000,125.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637608,'GMBIT_124','GMBIT_124',0,25.000,0.000,126.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637609,'GMBIT_125','GMBIT_125',0,25.000,0.000,127.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637610,'GMBIT_126','GMBIT_126',0,25.000,0.000,128.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637611,'GMBIT_127','GMBIT_127',0,25.000,0.000,129.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637612,'BGM_DEBUG','BGM_DEBUG',0,20.000,0.000,5.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637613,'Invincible_Shield','Invincible Shield',0,10.000,0.000,12.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637614,'item_work','item_work',0,10.000,0.000,14.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637615,'menace_aug','menace_aug',0,10.000,0.000,16.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637616,'extend_shop','extend shop',0,10.000,0.000,18.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637617,'skirm_aug','skirm_aug',0,10.000,0.000,20.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637618,'rod_test','rod_test',0,10.000,0.000,22.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637620,'Debug_MonsterPlay','Debug_MonsterPlay',0,10.000,0.000,24.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637621,'Login_Campaign','Login Campaign',0,10.000,0.000,26.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637622,'Greeter_Moogle','Greeter Moogle',0,10.000,0.000,28.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637623,'Abyssea_Campaign','Abyssea Campaign',0,10.000,0.000,30.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637624,'Garden_Inviter','Garden Inviter',0,10.000,0.000,32.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637625,'TargetName_Tester','TargetName Tester',0,10.000,0.000,34.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637626,'Linkshell_Concierge','Linkshell Concierge',0,10.000,0.000,36.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637627,'Linkshell_Concierge','Linkshell Concierge',0,10.000,0.000,38.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637628,'Linkshell_Concierge','Linkshell Concierge',0,10.000,0.000,40.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637629,'Chat_Manual','Chat Manual',0,10.000,0.000,42.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637630,'Unity_Master','Unity Master',0,10.000,0.000,44.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637631,'Mog_garden','Mog garden',0,10.000,0.000,46.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637632,'Item-Test','Item-Test',0,10.000,0.000,48.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17637633,'SCitem-Chair','SCitem-Chair',0,-5.000,0.000,-5.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);

INSERT INTO `npc_list` VALUES (17638398,'Blank','Blank',0,-5.000,0.000,0.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);
INSERT INTO `npc_list` VALUES (17638399,'Blank','Blank',0,0.000,0.000,-5.000,0,50,50,0,0,0,0,0,0x0000520000000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- Cloister of Tides (Zone 211)
-- 17642495
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Gustav Tunnel (Zone 212)
-- 17646591
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Labyrinth of Onzozo (Zone 213)
-- 17650687
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- (Zone 214)
-- 17654783
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Abyssea - Attohwa (Zone 215)
-- 17658879
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (17658351,'qm1','???',0,401.489,19.730,-282.864,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Granite Borer
REPLACE INTO `npc_list` VALUES (17658352,'qm2','???',0,233.162,19.720,-243.255,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Blazing Eruca
REPLACE INTO `npc_list` VALUES (17658353,'qm3','???',0,281.063,20.376,174.011,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Pallid Percy
REPLACE INTO `npc_list` VALUES (17658355,'qm4','???',0,-403.909,-4.234,200.832,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Kharon
REPLACE INTO `npc_list` VALUES (17658356,'qm5','???',0,-158.000,-0.340,220.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Drekavac
REPLACE INTO `npc_list` VALUES (17658357,'qm6','???',0,-545.043,-12.410,-72.175,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Svarbhanu
REPLACE INTO `npc_list` VALUES (17658358,'qm7','???',0,-401.612,3.738,-200.972,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Kampe
REPLACE INTO `npc_list` VALUES (17658359,'qm8','???',0,-280.000,-4.000,-38.516,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Berstuk
REPLACE INTO `npc_list` VALUES (17658360,'qm9','???',0,214.107,19.970,-93.816,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Maahes
REPLACE INTO `npc_list` VALUES (17658361,'qm10','???',0,410.304,19.500,13.227,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Nightshade
REPLACE INTO `npc_list` VALUES (17658362,'qm11','???',0,198.045,20.122,108.705,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Wherwetrice
REPLACE INTO `npc_list` VALUES (17658363,'qm12','???',0,481.096,20.000,39.549,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Mielikki
REPLACE INTO `npc_list` VALUES (17658364,'qm13','???',0,-538.207,-6.640,-25.722,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Smok
REPLACE INTO `npc_list` VALUES (17658365,'qm14','???',0,-129.000,0.000,1.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Gaizkin
REPLACE INTO `npc_list` VALUES (17658366,'qm15','???',0,350.692,19.455,209.839,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17658367,'qm16','???',0,439.939,19.820,-194.226,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Itzpapalotl
REPLACE INTO `npc_list` VALUES (17658368,'qm17','???',0,-530.208,-5.460,-39.323,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17658369,'qm18','???',0,-389.437,-4.000,246.001,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17658370,'qm19','???',0,361.193,20.005,199.340,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Ulhuadshi
REPLACE INTO `npc_list` VALUES (17658371,'qm20','???',0,424.940,20.220,-194.227,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17658372,'qm21','???',0,-546.908,-4.640,-12.633,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17658373,'qm22','???',0,-396.937,-3.000,259.001,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Titlacauan
REPLACE INTO `npc_list` VALUES (17658374,'qm23','???',0,340.193,20.005,220.340,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17658375,'qm24','???',0,439.940,21.020,-179.227,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --

REPLACE INTO `mob_spawn_points` VALUES (17658248,'Tejas','Tejas',10230,-544,-3,114,12);
REPLACE INTO `mob_spawn_points` VALUES (17658249,'Tejas','Tejas',10230,-477,-4,194,59);
REPLACE INTO `mob_spawn_points` VALUES (17658250,'Tejas','Tejas',10230,-397,-4,117,57);
REPLACE INTO `mob_spawn_points` VALUES (17658251,'Tejas','Tejas',10230,-395,-3,10,1);
REPLACE INTO `mob_spawn_points` VALUES (17658252,'Tejas','Tejas',10230,-358,-4,-83,190);
REPLACE INTO `mob_spawn_points` VALUES (17658263,'Pallid_Percy','Pallid Percy',10216,281,20,174,200);
REPLACE INTO `mob_spawn_points` VALUES (17658264,'Gaizkin','Gaizkin',10196,-130,0,2,2);
REPLACE INTO `mob_spawn_points` VALUES (17658288,'Gieremund','Gieremund',10197,-396,-3,315,76);


INSERT INTO `npc_list` VALUES (17658877,'MOUNTAIN_WARP','MOUNTAIN_WARP',0,212.000,20.250,0.000,1,50,50,0,0,0,0,0,0x0000160900000000000000000000000000000000,0,NULL,0); -- So player can reach NM at top of mountain


-- ------------------------------------------------------------
-- Abyssea - Misareaux (Zone 216)
-- 17662975
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17662451,'Jala','Jala',10281,88,-16,-7,176);
REPLACE INTO `mob_spawn_points` VALUES (17662452,'Jala','Jala',10281,305,24,-368,33);
REPLACE INTO `mob_spawn_points` VALUES (17662453,'Jala','Jala',10281,713,0,-471,157);
REPLACE INTO `mob_spawn_points` VALUES (17662454,'Jala','Jala',10281,425,-7,57,254);
REPLACE INTO `mob_spawn_points` VALUES (17662455,'Jala','Jala',10281,515,-15,257,201);
REPLACE INTO `mob_spawn_points` VALUES (17662464,'Minax_Bugard','Minax Bugard',10287,520,15,-268,37);
REPLACE INTO `mob_spawn_points` VALUES (17662466,'Funereal_Apkallu','Funereal Apkallu',10272,209,-23,321,231);
REPLACE INTO `mob_spawn_points` VALUES (17662467,'Manohra','Manohra',10285,121,-8,-120,166);
REPLACE INTO `mob_spawn_points` VALUES (17662468,'Cep-Kamuy','Cep-Kamuy',10255,-160,-15,638,240);
REPLACE INTO `mob_spawn_points` VALUES (17662469,'Ironclad_Observer','Ironclad Observer',10278,-197,-32,80,213);
REPLACE INTO `mob_spawn_points` VALUES (17662470,'Nehebkau','Nehebkau',10290,321,23,-355,116);
REPLACE INTO `mob_spawn_points` VALUES (17662471,'Avalerion','Avalerion',10249,41,-16,81,51);
REPLACE INTO `mob_spawn_points` VALUES (17662472,'Karkatakam','Karkatakam',10282,200,-15,519,80);
REPLACE INTO `mob_spawn_points` VALUES (17662473,'Nonno','Nonno',10291,719,1,-486,167);
REPLACE INTO `mob_spawn_points` VALUES (17662474,'Tuskertrap','Tuskertrap',10311,-22,-23,656,100);
REPLACE INTO `mob_spawn_points` VALUES (17662475,'Npfundlwa','Npfundlwa',10292,412,-7,50,85);
REPLACE INTO `mob_spawn_points` VALUES (17662476,'Cirein-croin','Cirein-croin',10256,37,-15,520,178);
REPLACE INTO `mob_spawn_points` VALUES (17662478,'Sobek','Sobek',10306,544,16,-364,115);
REPLACE INTO `mob_spawn_points` VALUES (17662481,'Cirein-croin','Cirein-croin',10256,39,-15,520,178);
REPLACE INTO `mob_spawn_points` VALUES (17662483,'Sobek','Sobek',10306,0,0,0,0);
REPLACE INTO `mob_spawn_points` VALUES (17662484,'Ironclad_Pulverizer','Ironclad Pulverizer',10279,-198,-32,159,81);
REPLACE INTO `mob_spawn_points` VALUES (17662485,'Ironclad_Pulverizer','Ironclad Pulverizer',10279,-192,-31,145,110);
REPLACE INTO `mob_spawn_points` VALUES (17662486,'Cirein-croin','Cirein-croin',10256,40,-15,520,178);
REPLACE INTO `mob_spawn_points` VALUES (17662488,'Sobek','Sobek',10306,0,0,0,0);
REPLACE INTO `mob_spawn_points` VALUES (17662489,'Ironclad_Pulverizer','Ironclad Pulverizer',10279,-211,-31,166,61);
REPLACE INTO `mob_spawn_points` VALUES (17662490,'Ironclad_Pulverizer','Ironclad Pulverizer',10279,-216,-31,156,43);
REPLACE INTO `mob_spawn_points` VALUES (17662491,'Gukumatz','Gukumatz',10275,443,23,-369,112);
REPLACE INTO `mob_spawn_points` VALUES (17662494,'Abyssic_Cluster','Abyssic Cluster',10242,-268,-31,188,245);
REPLACE INTO `mob_spawn_points` VALUES (17662495,'Flame_Skimmer','Flame Skimmer',10270,-56.623,-24.161,544.796,95);
REPLACE INTO `mob_spawn_points` VALUES (17662498,'Ironclad_Severer','Ironclad Severer',10280,-171,-31,113,162);

REPLACE INTO `npc_list` VALUES (17662556,'qm1','???',0,521.284,15.978,-270.679,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Minax Bugard
REPLACE INTO `npc_list` VALUES (17662557,'qm2','???',0,544,16,-364,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Sobek
REPLACE INTO `npc_list` VALUES (17662558,'qm3','???',0,208,-23,320,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Apkallu
REPLACE INTO `npc_list` VALUES (17662559,'qm4','???',0,120.741,-8.093,-121.448,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Manohra
REPLACE INTO `npc_list` VALUES (17662560,'qm5','???',0,-161.135,-15.556,638.614,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Cep-Kamuy
REPLACE INTO `npc_list` VALUES (17662561,'qm6','???',0,-198.742,-32.162,77.431,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Iron Observer
REPLACE INTO `npc_list` VALUES (17662562,'qm7','???',0,321.219,23.965,-354.059,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Nehebkau
REPLACE INTO `npc_list` VALUES (17662563,'qm8','???',0,41.460,-16.023,80.373,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Avalerion
REPLACE INTO `npc_list` VALUES (17662564,'qm9','???',0,201.284,-15.515,520.970,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Karkatakam
REPLACE INTO `npc_list` VALUES (17662565,'qm10','???',0,718.408,0.824,-485.326,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Nonno
REPLACE INTO `npc_list` VALUES (17662566,'qm11','???',0,-22.606,-23.586,656.946,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Tuskertrap
REPLACE INTO `npc_list` VALUES (17662567,'qm12','???',0,411.107,-7.550,49.044,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Npfundlwa
REPLACE INTO `npc_list` VALUES (17662568,'qm13','???',0,39.146,-15.500,519.988,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- CC
REPLACE INTO `npc_list` VALUES (17662569,'qm14','???',0,0.000,-16.000,-50.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17662570,'qm15','???',0,428.588,23.641,-376.186,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Sirrush
REPLACE INTO `npc_list` VALUES (17662571,'qm16','???',0,-199.150,-32.002,160.019,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Iron Pulz
REPLACE INTO `npc_list` VALUES (17662572,'qm17','???',0,54.146,-15.600,519.988,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17662573,'qm18','???',0,15.000,-16.000,-50.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Amhuluk
REPLACE INTO `npc_list` VALUES (17662574,'qm19','???',0,443.263,23.891,-369.686,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17662575,'qm20','???',0,-214.150,-31.402,160.019,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17662576,'qm21','???',0,39.146,-15.600,534.988,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17662577,'qm22','???',0,0.000,-16.000,-35.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17662578,'qm23','???',0,415.613,23.391,-383.686,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17662579,'qm24','???',0,-199.150,-32.002,145.019,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17662738,'Dilapidated_Gate0','Dilapidated Gate',0,-260.000,-31.380,280.000,32769,40,40,0,0,0,0,3,0x0000320000000000000000000000000000000000,0,'ABYSSEA',0);
REPLACE INTO `npc_list` VALUES (17662739,'Dilapidated_Gate1','Dilapidated Gate',0,-400.000,-31.380,340.000,32769,40,40,0,0,0,0,3,0x0000320000000000000000000000000000000000,0,'ABYSSEA',0);
REPLACE INTO `npc_list` VALUES (17662740,'Dilapidated_Gate2','Dilapidated Gate',0,260.000,8.319,-440.001,32769,40,40,0,0,0,0,3,0x0000320000000000000000000000000000000000,0,'ABYSSEA',0);
REPLACE INTO `npc_list` VALUES (17662741,'Dilapidated_Gate3','Dilapidated Gate',0,-39.999,-31.380,-340.000,32769,40,40,0,0,0,0,3,0x0000320000000000000000000000000000000000,0,'ABYSSEA',0);

-- ------------------------------------------------------------
-- Abyssea - Vunkerl (Zone 217)
-- 17667071
-- ------------------------------------------------------------

INSERT INTO `mob_spawn_points` VALUES (17667070,'Armillaria ','Armillaria ',10315,-396.886,-31.991,196.054,128);
REPLACE INTO `mob_spawn_points` VALUES (17666474,'Fulmotondro','Fulmotondro',10336,-417,-47,-438,115);
REPLACE INTO `mob_spawn_points` VALUES (17666475,'Fulmotondro','Fulmotondro',10336,-313,-39,-691,155);
REPLACE INTO `mob_spawn_points` VALUES (17666476,'Fulmotondro','Fulmotondro',10336,-271,-39,-602,3);
REPLACE INTO `mob_spawn_points` VALUES (17666477,'Fulmotondro','Fulmotondro',10336,-76,-39,-462,214);
REPLACE INTO `mob_spawn_points` VALUES (17666478,'Fulmotondro','Fulmotondro',10336,144,-39,-505,158);
REPLACE INTO `mob_spawn_points` VALUES (17666487,'Khalkotaur','Khalkotaur',10351,-240,-39,-166,132);
REPLACE INTO `mob_spawn_points` VALUES (17666488,'Quasimodo','Quasimodo',10361,-278,-40,-367,181);
REPLACE INTO `mob_spawn_points` VALUES (17666489,'Iku-Turso','Iku-Turso',10344,244,-32,240,129);
REPLACE INTO `mob_spawn_points` VALUES (17666490,'Dvalinn','Dvalinn',10331,-634,-48,-476,200);
REPLACE INTO `mob_spawn_points` VALUES (17666491,'Kadraeth_the_Hatespawn','Kadraeth the Hatespawn',10348,-475,-40,-280,57);
REPLACE INTO `mob_spawn_points` VALUES (17666492,'Rakshas','Rakshas',10361,-203,-39,-26,73);
REPLACE INTO `mob_spawn_points` VALUES (17666494,'Xan','Xan',10383,120,-39,-551,64);
REPLACE INTO `mob_spawn_points` VALUES (17666495,'Chhir_Batti','Chhir Batti',10321,-367,-31,301,240);
REPLACE INTO `mob_spawn_points` VALUES (17666498,'Gnawtooth_Gary','Gnawtooth Gary',10337,-343,-39,-644,150);
REPLACE INTO `mob_spawn_points` VALUES (17666499,'Bukhis','Bukhis',10320,-202,-40,-280,255);
REPLACE INTO `mob_spawn_points` VALUES (17666500,'Sedna','Sedna',10368,402,-31,405,127);
REPLACE INTO `mob_spawn_points` VALUES (17666501,'Durinn','Durinn',10330,-571,-47,-570,187);
REPLACE INTO `mob_spawn_points` VALUES (17666503,'Bukhis','Bukhis',10320,0,0,0,0);
REPLACE INTO `mob_spawn_points` VALUES (17666504,'Sedna','Sedna',10368,403,-31,390,123);
REPLACE INTO `mob_spawn_points` VALUES (17666502,'Karkadann','Karkadann',10349,-157,-31,104,97);
REPLACE INTO `mob_spawn_points` VALUES (17666506,'Karkadann','Karkadann',10349,-183,-30,85,60);
REPLACE INTO `mob_spawn_points` VALUES (17666507,'Bukhis','Bukhis',10320,0,0,0,0);
REPLACE INTO `mob_spawn_points` VALUES (17666508,'Sedna','Sedna',10368,403,-31,375,128);
REPLACE INTO `mob_spawn_points` VALUES (17666510,'Karkadann','Karkadann',10349,-156,-31,89,112);
REPLACE INTO `mob_spawn_points` VALUES (17666515,'Div-e_Sepid','Div-e Sepid',10329,-491,-39,-486,253);
REPLACE INTO `mob_spawn_points` VALUES (17666493,'Seps','Seps',10369,-238,-39,-717,140);

REPLACE INTO `npc_list` VALUES (17666576,'qm1','???',0,-367,-31,301,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- chhir batti
REPLACE INTO `npc_list` VALUES (17666577,'qm2','???',0,-278.701,-40.573,-366.852,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Quasimodo
REPLACE INTO `npc_list` VALUES (17666578,'qm3','???',0,242.671,-31.996,240.803,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Iku-Turso
REPLACE INTO `npc_list` VALUES (17666579,'qm4','???',0,-633,-48.000,-475,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Dvalinn
REPLACE INTO `npc_list` VALUES (17666580,'qm5','???',0,-475.498,-40.000,-281.989,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Kadraeth_theHatespawn
REPLACE INTO `npc_list` VALUES (17666581,'qm6','???',0,-203.695,-39.852,-28.142,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Rakshas
REPLACE INTO `npc_list` VALUES (17666582,'qm7','???',0,-239.752,-39.896,-717.550,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Seps
REPLACE INTO `npc_list` VALUES (17666583,'qm8','???',0,120.125,-39.752,-553.422,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Xan
REPLACE INTO `npc_list` VALUES (17666584,'qm9','???',0,-242,-39,-116,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Khalkotaur
REPLACE INTO `npc_list` VALUES (17666585,'qm10','???',0,-396.886,-31.991,196.054,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Armillaria
REPLACE INTO `npc_list` VALUES (17666586,'qm11','???',0,-214.273,-47.500,-593.179,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- passerpot
REPLACE INTO `npc_list` VALUES (17666587,'qm12','???',0,-344.789,-39.332,-644.410,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- GnawtoothGary
REPLACE INTO `npc_list` VALUES (17666588,'qm13','???',0,-201.564,-40.000,-280.661,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- bukhis
REPLACE INTO `npc_list` VALUES (17666589,'qm14','???',0,403.732,-31.739,390.749,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17666590,'qm15','???',0,-571.900,-47.405,-555.107,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17666592,'qm16','???',0,-201.564,-39.600,-265.661,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17666593,'qm17','???',0,404.432,-31.239,375.749,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Sedna
REPLACE INTO `npc_list` VALUES (17666594,'qm18','???',0,-555.500,-47.800,-564.607,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17666595,'qm19','???',0,-158.037,-31.229,103.489,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- karkadann
REPLACE INTO `npc_list` VALUES (17666596,'qm20','???',0,-201.564,-39.600,-295.661,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17666597,'qm21','???',0,403.032,-31.839,405.749,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17666598,'qm22','???',0,-571.900,-48.005,-570.107,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Durrin
REPLACE INTO `npc_list` VALUES (17666599,'qm23','???',0,-158.037,-31.829,88.489,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --


-- ------------------------------------------------------------
-- Abyssea - Altepa (Zone 218)
-- 17671167
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (17670591,'qm1','???',0,-744.000,-17.000,-696.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Smiter
REPLACE INTO `npc_list` VALUES (17670592,'qm2','???',0,-558.000,0.000,161.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Amarok
REPLACE INTO `npc_list` VALUES (17670593,'qm3','???',0,-71.000,0.000,408.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Shaula
REPLACE INTO `npc_list` VALUES (17670594,'qm4','???',0,-491.000,0.000,-611.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Emperor
REPLACE INTO `npc_list` VALUES (17670595,'qm5','???',0,-877.000,-8.000,-524.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Tablilla
REPLACE INTO `npc_list` VALUES (17670596,'qm6','???',0,-314.000,0.001,308.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Sharabha
REPLACE INTO `npc_list` VALUES (17670597,'qm7','???',0,-408.000,1.000,-299.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Waugyl
REPLACE INTO `npc_list` VALUES (17670598,'qm8','???',0,36.000,0.000,-240.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Chickcharney
REPLACE INTO `npc_list` VALUES (17670599,'qm9','???',0,-56.000,1.000,123.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Vadleany
REPLACE INTO `npc_list` VALUES (17670600,'qm10','???',0,-608.000,-1.000,-397.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Bugul Noz
REPLACE INTO `npc_list` VALUES (17670602,'qm11','???',0,-801,-7,-366,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Rani
REPLACE INTO `npc_list` VALUES (17670603,'qm12','???',0,-221.000,1.000,-335.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Dragua
REPLACE INTO `npc_list` VALUES (17670604,'qm13','???',0,91.000,-1.000,-140.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17670606,'qm14','???',0,-400.000,0.900,97.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17670607,'qm15','???',0,-221.000,0.800,-350.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17670608,'qm16','???',0,102.000,0.000,-151.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17670610,'qm17','???',0,-400.000,0.150,127.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Orthrus
REPLACE INTO `npc_list` VALUES (17670611,'qm18','???',0,-221.000,0.950,-320.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17670612,'qm19','???',0,80.000,0.250,-129.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Bennu


-- ------------------------------------------------------------
-- (Zone 219)
-- 17675263
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ship bound for Selbina (Zone 220)
-- 17679359
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ship bound for Mhaura (Zone 221)
-- 17683455
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Provenance (Zone 222)
-- 17687551
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17686529,'Provenance Watcher','Provenance Watcher',10989,-580,-228.5,540,64);
-- can't add retail pos since they spawn where PW summon them
REPLACE INTO `mob_spawn_points` VALUES (17686530,'Crystal_Fetter','Crystal Fetter',11012,0,0,0,0);
REPLACE INTO `mob_spawn_points` VALUES (17686531,'Crystal_Fetter','Crystal Fetter',11012,0,0,0,0);
REPLACE INTO `mob_spawn_points` VALUES (17686532,'Crystal_Fetter','Crystal Fetter',11012,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686533,'Provenance_Watcher','Provenance Watcher',10989,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686534,'Crystal_Fetter','Crystal Fetter',11012,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686535,'Crystal_Fetter','Crystal Fetter',11012,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686536,'Crystal_Fetter','Crystal Fetter',11012,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686537,'Provenance Watcher','Provenance Watcher',10989,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686538,'Crystal_Fetter','Crystal Fetter',11012,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686539,'Crystal_Fetter','Crystal Fetter',11012,0,0,0,0);
REPLACE INTO `mob_spawn_points` VALUES (17686540,'CrystalFetter','Crystal Fetter',11012,0,0,0,0);

-- REPLACE INTO `mob_spawn_points` VALUES (17686547,'Sarbaz','Sarbaz',11008,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686548,'Pil','Pil',11011,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686549,'Asb','Asb',11007,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686550,'Rukh','Rukh',11006,0,0,0,0);

-- REPLACE INTO `mob_spawn_points` VALUES (17686553,'Sarbaz','Sarbaz',11008,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686554,'Pil','Pil',11011,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686555,'Asb','Asb',11007,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686556,'Rukh','Rukh',11006,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686557,'Shah','Shah',11010,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686558,'Wazir','Wazir',11009,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686559,'Sarbaz','Sarbaz',11008,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686560,'Pil','Pil',11011,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686561,'Asb','Asb',11007,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686562,'Rukh','Rukh',11006,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686563,'Shah','Shah',11010,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686564,'Wazir','Wazir',11009,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686565,'Sarbaz','Sarbaz',11008,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686566,'Pil','Pil',11011,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686567,'Asb','Asb',11007,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686568,'Rukh','Rukh',11006,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686569,'Shah','Shah',11010,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686570,'Wazir','Wazir',11009,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686571,'Sarbaz','Sarbaz',11008,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686572,'Pil','Pil',11011,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686573,'Asb','Asb',11007,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686574,'Rukh','Rukh',11006,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686575,'Shah','Shah',11010,0,0,0,0);
-- REPLACE INTO `mob_spawn_points` VALUES (17686576,'Wazir','Wazir',11009,0,0,0,0);

-- INSERT INTO `mob_spawn_points` VALUES (17687540,'Minerva','Minerva',97777,-580,-228.5,540,64);
-- INSERT INTO `mob_spawn_points` VALUES (17687541,'Stellar_Elemental','Stellar Elemental','Baelfyr',97778,-581,-228.5,539,64);
-- INSERT INTO `mob_spawn_points` VALUES (17687542,'Olympian_Elemental','Olympian Elemental','Ungeweder',97779,-579,-228.5,541,64);
-- INSERT INTO `npc_list` VALUES (17687543,'Minerva_Loot_Box','Minerva Loot Box',64,-580,-228.5,540,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `mob_spawn_points` VALUES (17687544,'Minerva','Minerva',97777,-580,-228.5,540,64);
-- INSERT INTO `mob_spawn_points` VALUES (17687545,'Stellar_Elemental','Stellar Elemental','Baelfyr',97778,-581,-228.5,539,64);
-- INSERT INTO `mob_spawn_points` VALUES (17687546,'Olympian_Elemental','Olympian Elemental','Ungeweder',97779,-579,-228.5,541,64);
-- INSERT INTO `npc_list` VALUES (17687547,'Minerva_Loot_Box','Minerva Loot Box',64,-580,-228.5,540,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `mob_spawn_points` VALUES (17687548,'Minerva','Minerva',97777,-580,-228.5,540,64);
-- INSERT INTO `mob_spawn_points` VALUES (17687549,'Stellar_Elemental','Stellar Elemental','Baelfyr',97778,-581,-228.5,539,64);
-- INSERT INTO `mob_spawn_points` VALUES (17687550,'Olympian_Elemental','Olympian Elemental','Ungeweder',97779,-579,-228.5,541,64);
-- INSERT INTO `npc_list` VALUES (17687551,'Minerva_Loot_Box','Minerva Loot Box',64,-580,-228.5,540,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);


-- ------------------------------------------------------------
-- San d'Oria-Jeuno Airship (Zone 223)
-- 17691647
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Bastok-Jeuno Airship (Zone 224)
-- 17695743
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Windurst-Jeuno Airship (Zone 225)
-- 17699839
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Kazham-Jeuno Airship (Zone 226)
-- 17703935
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ship bound for Selbina (Zone 227)
-- 17708031
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ship bound for Mhaura (Zone 228)
-- 17712127
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- (Zone 229)
-- 17716223
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Southern San d'Oria (Zone 230)
-- 17720319
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Northern San d'Oria (Zone 231)
-- 17724415
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Port San d'Oria (Zone 232)
-- 17728511
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Chateau d'Oraguille (Zone 233)
-- 17732607
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Bastok Mines (Zone 234)
-- 17736703
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Bastok Markets (Zone 235)
-- 17740799
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Port Bastok (Zone 236)
-- 17744895
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Metalworks (Zone 237)
-- 17748991
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Windurst Waters (Zone 238)
-- 17753087
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Windurst Walls (Zone 239)
-- 17757183
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (17756379,'Babban_Ny_Mheillea','Babban Ny Mheillea',64,14,-4.525,-50,0,50,50,0,0,0,0,27,0x0000C70800000000000000000000000000000000,32,NULL,0);


-- ------------------------------------------------------------
-- Port Windurst (Zone 240)
-- 17761279
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Windurst Woods (Zone 241)
-- 17765375
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Heavens Tower (Zone 242)
-- 17769471
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ru'Lude Gardens (Zone 243)
-- 17773567
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (17772723,'Magian_Mog_CJ','Custom_Magian_Moogle',128,6.000,0.000,-76.000,32769,40,40,0,0,0,0,3,0x0000730900000000000000000000000000000000,0,NULL,0);

REPLACE INTO `npc_list` VALUES (17772772,'Assai_Nybaem','Assai Nybaem',223,-34,0.001,-77,29,40,40,0,0,0,0,27,0x01000501fc100221c930b9408950006000700000,32,NULL,0);

REPLACE INTO `npc_list` VALUES (17772784,'Fabien','Fabien',191,2.282,0.001,-65.316,29,40,40,0,0,0,0,3,0x0100070100100421c930b9400251006000700000,0,NULL,0);
REPLACE INTO `npc_list` VALUES (17772785,'Vincent','Vincent',190,4.043,0.001,-65.351,22,40,40,0,0,0,0,3,0x01000b0100100421c930b9400251006000700000,32,NULL,0);
REPLACE INTO `npc_list` VALUES (17772786,'Voidwatch_Purveyor','Voidwatch Purveyor',192,9,0.001,-80.5,16,40,40,0,0,0,0,3,0x01000c01141019200c3002400250006000700000,0,NULL,0);

REPLACE INTO `npc_list` VALUES (17772791,'Anastase','Anastase',34,-36.977,0.001,-38.532,1,40,40,0,0,0,0,27,0x01000E039510262002303A403A50116200700000,0,NULL,0);


-- ------------------------------------------------------------
-- Upper Jeuno (Zone 244)
-- 17777663
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Lower Jeuno (Zone 245)
-- 17781759
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Port Jeuno (Zone 246)
-- 17785855
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (17784938,'AF3_Shop_Mog','Moogle',190,-48.000,-0.025,-10.000,7,40,40,0,1,0,0,27,0x0000520000000000000000000000000000000000,32,NULL,0);
REPLACE INTO `npc_list` VALUES (17784939,'AF3_Trade_Mog','Moogle',190,-50.000,-0.025,-10.000,7,40,40,0,1,0,0,27,0x0000520000000000000000000000000000000000,32,NULL,0);

INSERT INTO `npc_list` VALUES (17785850,'Limbus_Mog','Moogle',190,-9.000,-0.025,-9.000,7,40,40,0,1,0,0,27,0x0000520000000000000000000000000000000000,32,NULL,0);


-- ------------------------------------------------------------
-- Rabao (Zone 247)
-- 17789951
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Selbina (Zone 248)
-- 17794047
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Mhaura (Zone 249)
-- 17798143
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Kazham (Zone 250)
-- 17802239
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Hall of the Gods (Zone 251)
-- 17806335
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Norg (Zone 252)
-- 17810431
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Abyssea - Uleguerand (Zone 253)
-- 17814527
-- ------------------------------------------------------------

REPLACE INTO `mob_spawn_points` VALUES (17813917,'Resheph','Resheph',10672,421,-51,156,223);
REPLACE INTO `mob_spawn_points` VALUES (17813921,'Resheph','Resheph',10672,457,-52,125,239);
REPLACE INTO `mob_spawn_points` VALUES (17813926,'Impervious_Chariot','Impervious Chariot',10659,-308,-175,-13,13);

REPLACE INTO `npc_list` VALUES (17813949,'qm1','???',0,-15.356,-175.000,55.533,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Ironclad Triturator
REPLACE INTO `npc_list` VALUES (17813950,'qm2','???',0,-281.412,-155.573,267.682,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Dhrome Khimaira
REPLACE INTO `npc_list` VALUES (17813951,'qm3','???',0,-342,-156,346,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Apademak
REPLACE INTO `npc_list` VALUES (17813952,'qm4','???',0,427.498,0.344,-416.669,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Yaguarogui
REPLACE INTO `npc_list` VALUES (17813953,'qm5','???',0,-515,-40,-121,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Blanga
REPLACE INTO `npc_list` VALUES (17813954,'qm6','???',0,-213.511,-184.068,448.759,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Upas-Kamuy
REPLACE INTO `npc_list` VALUES (17813955,'qm7','???',0,0.521,-140.000,477.482,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Veri Selen
REPLACE INTO `npc_list` VALUES (17813956,'qm8','???',0,457.995,-52.596,125.518,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Anemic Aloysius
REPLACE INTO `npc_list` VALUES (17813957,'qm9','???',0,-480.793,-19.999,-82.156,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Chillwing Hwitti
REPLACE INTO `npc_list` VALUES (17813958,'qm10','???',0,336.662,20.832,-279.027,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Audumbla
REPLACE INTO `npc_list` VALUES (17813959,'qm11','???',0,-108,-175,4,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Koghatu
REPLACE INTO `npc_list` VALUES (17813960,'qm12','???',0,-332.731,-155.532,361.739,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17813961,'qm13','???',0,160.858,-115.806,472.094,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17813962,'qm14','???',0,422.329,-51.117,156.460,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17813963,'qm15','???',0,-201,-175.000,155,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Pantokrator
REPLACE INTO `npc_list` VALUES (17813964,'qm16','???',0,-332.731,-156.132,346.739,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17813965,'qm17','???',0,175.858,-113.406,472.094,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Isgebind
REPLACE INTO `npc_list` VALUES (17813966,'qm18','???',0,433.329,-52.047,145.460,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17813967,'qm19','???',0,-199.035,-175.679,170.560,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17813968,'qm20','???',0,-332.731,-156.632,376.739,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17813969,'qm21','???',0,145.858,-117.406,472.094,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17813970,'qm22','???',0,411.329,-51.387,166.460,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Resheph


-- ------------------------------------------------------------
-- Abyssea - Grauberg (Zone 254)
-- 17818623
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (17818081,'qm1','???',0,502.000,26.000,503.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Ironclad Sunderer
REPLACE INTO `npc_list` VALUES (17818082,'qm2','???',0,379.878,-31.007,239.694,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Ningishzida
REPLACE INTO `npc_list` VALUES (17818083,'qm3','???',0,-68.305,-6.750,657.159,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Teugghia
REPLACE INTO `npc_list` VALUES (17818084,'qm4','???',0,556.000,24.000,-318.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Bomblix Flamefinger
REPLACE INTO `npc_list` VALUES (17818085,'qm5','???',0,320.000,48.000,644.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Teekesselchen
REPLACE INTO `npc_list` VALUES (17818086,'qm6','???',0,340.000,-15.000,-117.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Minaruja
REPLACE INTO `npc_list` VALUES (17818087,'qm7','???',0,-487.734,-168.265,211.894,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Xiabalba
REPLACE INTO `npc_list` VALUES (17818088,'qm8','???',0,158.000,-29.633,-215.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Ika-Roa
REPLACE INTO `npc_list` VALUES (17818089,'qm9','???',0,-192.017,-31.814,480.963,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Lorelei
REPLACE INTO `npc_list` VALUES (17818090,'qm10','???',0,397.000,40.000,-436.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Burstrox Powderpate
REPLACE INTO `npc_list` VALUES (17818091,'qm11','???',0,481.000,56.000,680.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17818092,'qm12','???',0,310.000,-32.000,173.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Alfard
REPLACE INTO `npc_list` VALUES (17818093,'qm13','???',0,-568.052,-167.210,138.244,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Azdaja
REPLACE INTO `npc_list` VALUES (17818094,'qm14','???',0,-147.311,-31.516,-220.781,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17818095,'qm15','???',0,496.000,56.800,680.000,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Raja
REPLACE INTO `npc_list` VALUES (17818096,'qm16','???',0,310.000,-33.570,158.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17818097,'qm17','???',0,-552.052,-169.410,138.144,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17818098,'qm18','???',0,-136.811,-31.716,-231.281,1,40,40,0,0,0,0,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); -- Amphitrite
REPLACE INTO `npc_list` VALUES (17818099,'qm19','???',0,466.000,56.600,680.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17818100,'qm20','???',0,310.000,-39.400,190.000,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17818101,'qm21','???',0,-583.052,-167.480,138.244,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --
REPLACE INTO `npc_list` VALUES (17818102,'qm22','???',0,-162.311,-32.000,-220.781,1,40,40,0,0,0,2,3,0x0000340000000000000000000000000000000000,0,'ABYSSEA',0); --

INSERT INTO `npc_list` VALUES (17818110,'Cruor_Prospector','Cruor Prospector',193,-527,26,-780,7,40,40,0,0,0,0,515,0x01000404FC100221C930B9408950006000700000,0,'ABYSSEA',0);
REPLACE INTO `mob_spawn_points` VALUES (17818041,'Ironclad_Sunderer','Ironclad Sunderer',10713,503,26,503,220);
REPLACE INTO `mob_spawn_points` VALUES (17818043,'Teugghia','Teugghia',10736,0,0,0,0);
REPLACE INTO `mob_spawn_points` VALUES (17818049,'Lorelei','Lorelei',10716,-193,-31,481,13);

-- ------------------------------------------------------------
-- Abyssea - Empyreal Paradox (Zone 255)
-- 17822719
-- ------------------------------------------------------------

REPLACE INTO `npc_list` VALUES (17821707,'Atma_Infusionist','Atma Infusionist',168,545,-500.5,-584,7,50,50,0,0,0,0,3,0x0000150400000000000000000000000000000000,0,NULL,0);

REPLACE INTO `npc_list` VALUES (17821710,'Transcendental_Radiance','Transcendental Radiance',0,540,-500,-599,1,50,50,0,8,96,0,3,0x00006a0900000000000000000000000000000000,2,NULL,0);
REPLACE INTO `npc_list` VALUES (17821711,'Transcendental_Radiance','Transcendental Radiance',0,-480,0,480,1,50,50,0,8,96,0,3,0x00006a0900000000000000000000000000000000,2,NULL,0);
REPLACE INTO `npc_list` VALUES (17821712,'Transcendental_Radiance','Transcendental Radiance',195,520,-500,480,1,50,50,0,8,96,0,3,0x00006a0900000000000000000000000000000000,2,NULL,0);
INSERT INTO `npc_list` VALUES (17821713,'Transcendental_Radiance','Transcendental Radiance',195,-480,-1000,-515,1,50,50,0,8,96,0,3,0x00006a0900000000000000000000000000000000,2,NULL,0);

-- INSERT INTO `npc_list` VALUES (17822710,'Shinryu_Treasure','Shinryu Treasure',0,-477.491,-0.5,515.33,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17822711,'Shinryu_Treasure','Shinryu Treasure',0,519,-500,519,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17822712,'Shinryu_Treasure','Shinryu Treasure',0,-479,-1000,-471,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `mob_spawn_points` VALUES (17822713,'Benkei','Benkei',GROUPID,X,Y,Z,ROT);
-- INSERT INTO `mob_spawn_points` VALUES (17822714,'Benkei','Benkei',GROUPID,X,Y,Z,ROT);
-- INSERT INTO `mob_spawn_points` VALUES (17822715,'Benkei','Benkei',GROUPID,X,Y,Z,ROT);
-- INSERT INTO `npc_list` VALUES (17822716,'Epic_Treasure','Epic Treasure',0,-477.491,-0.5,515.33,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17822717,'Epic_Treasure','Epic Treasure',0,519,-500,519,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);
-- INSERT INTO `npc_list` VALUES (17822718,'Epic_Treasure','Epic Treasure',0,-479,-1000,-471,6,40,40,0,12,100,0,4227,0x0000020100000000000000000000000000000000,0,NULL,0);

-- ------------------------------------------------------------
-- Western Adoulin (Zone 256)
-- 17826815
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Eastern Adoulin (Zone 257)
-- 17830911
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Rala Waterways (Zone 258)
-- 17835007
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Rala Waterways [U] (Zone 259)
-- 17839103
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Yahse Hunting Grounds (Zone 260)
-- 17843199
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ceizak Battlegrounds (Zone 261)
-- 17847295
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Foret de Hennetiel (Zone 262)
-- 17851391
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Yorcia Weald (Zone 263)
-- 17855487
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Yorcia Weald [U] (Zone 264)
-- 17859583
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Morimar Basalt Fields (Zone 265)
-- 17863679
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Marjami Ravine (Zone 266)
-- 17867775
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Kamihr Drifts (Zone 267)
-- 17871871
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Sih Gates (Zone 268)
-- 17875967
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Moh Gates (Zone 269)
-- 17880063
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Cirdas Caverns (Zone 270)
-- 17884159
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Cirdas Caverns [U] (Zone 271)
-- 17888255
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Dho Gates (Zone 272)
-- 17892351
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Woh Gates (Zone 273)
-- 17896447
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Outer Ra'Kaznar (Zone 274)
-- 17900543
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Outer Ra'Kaznar [U] (Zone 275)
-- 17904639
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ra'Kaznar Inner Court (Zone 276)
-- 17908735
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Ra'Kaznar Turris (Zone 277)
-- 17912831
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- (Zone 278)
-- 17916927
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- (Zone 279)
-- 17921023
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Mog Garden (Zone 280)
-- 17925119
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Leafallia (Zone 281)
-- 17929215
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Mount Kamihr (Zone 282)
-- 17933311
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Silver Knife (Zone 283)
-- 17937407
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Celennia Memorial Library (Zone 284)
-- 17941503
-- ------------------------------------------------------------


-- ------------------------------------------------------------
-- Feretory (Zone 285)
-- 17945599
-- ------------------------------------------------------------
