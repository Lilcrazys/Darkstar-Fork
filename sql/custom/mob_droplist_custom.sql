-- ---------------------------------------------------------------------------
-- This file adds onto, modifies, or removes portions of the table "mob_droplist"
-- created by the file mob_droplist.sql and must be imported/executed AFTER that file.
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
--
-- To REMOVE a drop that DarkStar has we don't want in Legion, use:
-- DELETE FROM `mob_droplist` WHERE dropId=0 and type=0 and itemId=0 `rate`=0;
-- Where the zero is replaced by whatever values DarkStar was using.
--
-- Please comment what is dropping from what mob on each line:
-- REPLACE INTO `mob_droplist` VALUES (dropId,type,itemId,rate); -- Item name from NM name
-- ---------------------------------------------------------------------------

-- Examples
-- DELETE FROM `mob_droplist` WHERE dropId=1 and type=2 and itemId=3 and rate=4;
-- INSERT INTO `mob_droplist` VALUES (5,6,7,8);
-- REPLACE INTO `mob_droplist` VALUES (9,10,11,12);

-- -----------
-- Absolute Virtue
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=4 and type=0 and itemId=1913 and rate=300; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and type=0 and itemId=1914 and rate=440; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and type=0 and itemId=1915 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and type=0 and itemId=1916 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and type=0 and itemId=1917 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and type=0 and itemId=1918 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and type=0 and itemId=1919 and rate=600; -- comment me

-- -----------
-- Achamoth
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=15 and type=0 and itemId=11376 and rate=300; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=15 and type=0 and itemId=16342 and rate=510; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=15 and type=0 and itemId=17753 and rate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=15 and type=0 and itemId=19034 and rate=580; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=15 and type=0 and itemId=19035 and rate=570; -- comment me
INSERT INTO `mob_droplist` VALUES (15,0,14546,282); -- Ares' Cuirass
INSERT INTO `mob_droplist` VALUES (15,0,10450,46); -- Ogier's Surcoat
INSERT INTO `mob_droplist` VALUES (15,0,28027,98); -- Boor Bracelets
INSERT INTO `mob_droplist` VALUES (15,0,19007,153); -- Death Penalty
INSERT INTO `mob_droplist` VALUES (15,0,18993,173); -- Yagrush

-- -----------
-- Adamantoise
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=24 and type=0 and itemId=3344 and rate=100; -- Clump of Red Pondweed
DELETE FROM `mob_droplist` WHERE dropId=24 and type=0 and itemId=646 and rate=1060; -- Adaman Ore
DELETE FROM `mob_droplist` WHERE dropId=24 and type=0 and itemId=646 and rate=530; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=24 and type=0 and itemId=646 and rate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=24 and type=0 and itemId=646 and rate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=24 and type=0 and itemId=12361 and rate=190; -- Sipar
DELETE FROM `mob_droplist` WHERE dropId=24 and type=0 and itemId=13794 and rate=110; -- Heavy Cuirass
INSERT INTO `mob_droplist` VALUES (24,0,1318,115); --  D.Abjuration: Ft.
INSERT INTO `mob_droplist` VALUES (24,0,1325,360); --  A.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (24,0,1325,82); -- comment me
INSERT INTO `mob_droplist` VALUES (24,0,1333,330); --  M.Abjuration: Ft.
INSERT INTO `mob_droplist` VALUES (24,0,1335,330); --  W.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (24,0,1335,86); -- comment me
INSERT INTO `mob_droplist` VALUES (24,0,1525,700); --  Adamantoise Egg

-- -----------
-- Aggressor_Antlion
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3113 and rate=310; -- Goetia Seal Head
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3113 and rate=55; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3113 and rate=93; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3119 and rate=190; -- Aiodos Seal Head
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3119 and rate=81; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3119 and rate=120; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3124 and rate=156; -- Callers Seal Head
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3124 and rate=143; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3124 and rate=73; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3127 and rate=54; -- Cirque Seal Head
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3127 and rate=79; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and type=0 and itemId=3127 and rate=52; -- comment me
INSERT INTO `mob_droplist` VALUES (32,0,12094,137); -- Creed Sabatons

-- -----------
-- Air Elemental
-- -----------
INSERT INTO `mob_droplist` VALUES (41,0,1257,5); -- Wind Ore


-- -----------
-- Akrab
-- -----------
INSERT INTO `mob_droplist` VALUES (48,0,2880,5); -- Kidney Stone

-- -----------
-- Alfard
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=52 and type=0 and itemId=646 and rate=980; -- Adaman Ore
DELETE FROM `mob_droplist` WHERE dropId=52 and type=0 and itemId=4120 and rate=100; -- X-Potion
DELETE FROM `mob_droplist` WHERE dropId=52 and type=0 and itemId=3291 and rate=100; -- Alfard's Fang
DELETE FROM `mob_droplist` WHERE dropId=52 and type=0 and itemId=3291 and rate=50; -- Alfard's Fang
INSERT INTO `mob_droplist` VALUES (52,0,3291,1000); -- Alfard's Fang
INSERT INTO `mob_droplist` VALUES (52,0,3291,82); -- Alfard's Fang

-- -----------
-- Alkyoneus
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=55 and type=0 and itemId=497 and rate=60; -- Gigas Socks
DELETE FROM `mob_droplist` WHERE dropId=55 and type=0 and itemId=499 and rate=60; --  Gigas Necklace
DELETE FROM `mob_droplist` WHERE dropId=55 and type=0 and itemId=12292 and rate=630; --  Mahogany Shield
INSERT INTO `mob_droplist` VALUES (55,0,10512,172); --  Calma Gauntlets
INSERT INTO `mob_droplist` VALUES (55,0,10611,104); --  Mustela Boots
INSERT INTO `mob_droplist` VALUES (55,0,11975,112); --  Avant Cuisses +1
INSERT INTO `mob_droplist` VALUES (55,0,10892,146); -- Magavan Beret
INSERT INTO `mob_droplist` VALUES (55,0,10452,79); -- Rubeus Jacket

-- -----------
-- Amhuluk
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=655 and rate=20; -- Adaman Ingot
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=836 and rate=60; --  Damascene Cloth
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=1300 and rate=40; -- Ice Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=1302 and rate=80; -- Earth Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=1303 and rate=40; -- Lightning Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=1304 and rate=40; -- Water Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=1306 and rate=100; -- Dark Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=2703 and rate=40; -- Khrom. Leather
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=3223 and rate=650; -- Balance Coin
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=3223 and rate=1940; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=75 and type=0 and itemId=5564 and rate=40; -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (75,0,19405,155); -- Kannagi
INSERT INTO `mob_droplist` VALUES (75,0,8727,103);
INSERT INTO `mob_droplist` VALUES (75,0,3549,95);
INSERT INTO `mob_droplist` VALUES (75,0,9061,213);
INSERT INTO `mob_droplist` VALUES (75,0,3920,43);
INSERT INTO `mob_droplist` VALUES (75,0,3920,55);

-- -----------
-- Amun
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=83 and type=0 and itemId=3111 and rate=630; -- Tantra Seal: Hd.
DELETE FROM `mob_droplist` WHERE dropId=83 and type=0 and itemId=3111 and rate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=83 and type=0 and itemId=3111 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=83 and type=0 and itemId=3116 and rate=210; -- Creed Seal: Hd.
DELETE FROM `mob_droplist` WHERE dropId=83 and type=0 and itemId=3116 and rate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=83 and type=0 and itemId=3122 and rate=180; -- Iga Seal: Hd.
DELETE FROM `mob_droplist` WHERE dropId=83 and type=0 and itemId=3126 and rate=270; -- Nvrch. Seal: Hd.
DELETE FROM `mob_droplist` WHERE dropId=83 and type=0 and itemId=3126 and rate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=83 and type=0 and itemId=3126 and rate=110; -- comment me
INSERT INTO `mob_droplist` VALUES (83,0,12105,340); -- Cirque Scarpe

-- -----------
-- Anantaboga
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=84 and type=0 and itemId=19109 and rate=310; -- comment me
-- INSERT INTO `mob_droplist` VALUES (84,0,19405,165); -- Kannagi
INSERT INTO `mob_droplist` VALUES (84,0,15625,255); -- Ares' Flanchard
INSERT INTO `mob_droplist` VALUES (84,0,10876,242); -- Ogier's Helm
INSERT INTO `mob_droplist` VALUES (84,0,11969,200); -- Ogier's Breeches
INSERT INTO `mob_droplist` VALUES (84,0,16155,320); -- Aurum Armet

-- -----------
-- Angler Tiger
-- -----------
INSERT INTO `mob_droplist` VALUES (101,0,8707,28);
INSERT INTO `mob_droplist` VALUES (101,0,20772,49);

-- -----------
-- Ansherekh
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=118 and type=0 and itemId=5466 and rate=70; -- Trumpet Shell
DELETE FROM `mob_droplist` WHERE dropId=118 and type=0 and itemId=5568 and rate=40; --  Apkallu Egg
DELETE FROM `mob_droplist` WHERE dropId=118 and type=0 and itemId=5668 and rate=50; -- comment me
INSERT INTO `mob_droplist` VALUES (118,0,28388,65); -- Tlamiztli collar

-- -----------
-- Apademak
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=151 and type=0 and itemId=3216 and rate=30; -- Ardor Jewel
DELETE FROM `mob_droplist` WHERE dropId=151 and type=0 and itemId=3289 and rate=100; -- Apademak Horn
INSERT INTO `mob_droplist` VALUES (151,0,3289,1000); -- Apademak Horn

-- -----------
-- Argus
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=174 and type=0 and itemId=15515 and rate=230; -- Peacock Amulet
INSERT INTO `mob_droplist` VALUES (174,0,13056,80); -- Peacock Charm

-- -----------
-- Armed Gears
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=177 and type=0 and itemId=15022 and rate=480;
DELETE FROM `mob_droplist` WHERE dropId=177 and type=0 and itemId=18126 and rate=340;
DELETE FROM `mob_droplist` WHERE dropId=177 and type=0 and itemId=19035 and rate=220;
DELETE FROM `mob_droplist` WHERE dropId=177 and type=0 and itemId=19036 and rate=550;
INSERT INTO `mob_droplist` VALUES (177,0,18991,296); -- Conqueror
INSERT INTO `mob_droplist` VALUES (177,0,19005,295); -- Nirvana
INSERT INTO `mob_droplist` VALUES (177,0,14550,191); -- Skadi's Cuirie
INSERT INTO `mob_droplist` VALUES (177,0,10276,86); -- Enif Corazza
INSERT INTO `mob_droplist` VALUES (177,0,10451,79); -- Athos's Tabard
INSERT INTO `mob_droplist` VALUES (177,0,10928,103); -- Ganesha's Mala

-- -----------
-- Ash Dragon
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=191 and type=0 and itemId=867 and rate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=191 and type=0 and itemId=903 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=191 and type=0 and itemId=1133 and rate=40; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=191 and type=0 and itemId=4486 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=191 and type=0 and itemId=16961 and rate=20; -- comment me
INSERT INTO `mob_droplist` VALUES (191,0,10890,183); -- Calma Armet
INSERT INTO `mob_droplist` VALUES (191,0,10457,63); -- Avant Mail +1
INSERT INTO `mob_droplist` VALUES (191,0,10513,128); -- Mustela Gloves
INSERT INTO `mob_droplist` VALUES (191,0,11982,67); -- Magavan Slops
INSERT INTO `mob_droplist` VALUES (191,0,10602,50); -- Rubeus Boots

INSERT INTO `mob_droplist` VALUES (191,0,21052,66); -- Tsurumaru

-- -----------
-- Aspidochelone
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=13794 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=1525 and rate=250; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=12361 and rate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=1318 and rate=340; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=1318 and rate=170; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=1325 and rate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=1325 and rate=180; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=1333 and rate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=1333 and rate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=1335 and rate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=646 and rate=890; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=646 and rate=450; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=646 and rate=300; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=646 and rate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=908 and rate=370; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and type=0 and itemId=1335 and rate=130; -- comment me
INSERT INTO `mob_droplist` VALUES (195,0,10489,87); -- Huginn Haubert
INSERT INTO `mob_droplist` VALUES (195,0,10571,81); -- Tenryu Hakama +1
INSERT INTO `mob_droplist` VALUES (195,0,10541,37); -- Khepri Wristbands
INSERT INTO `mob_droplist` VALUES (195,0,10639,143); -- Spurrina Nails
INSERT INTO `mob_droplist` VALUES (195,0,10409,62); -- Iaso Mitra


-- -----------
-- Athamas
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3171 and rate=300; --  Tantra Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3171 and rate=200; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3171 and rate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3175 and rate=160; --  Raid. Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3175 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3182 and rate=150; -- Iga Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3182 and rate=110; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3182 and rate=90; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3188 and rate=160; -- Charis Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3188 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and type=0 and itemId=3188 and rate=60; -- comment me

-- -----------
-- Audumbla
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=203 and type=0 and itemId=3151 and rate=370; -- Tantra Seal: Hn.
DELETE FROM `mob_droplist` WHERE dropId=203 and type=0 and itemId=3155 and rate=210; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=203 and type=0 and itemId=3155 and rate=110; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=203 and type=0 and itemId=3162 and rate=160; -- Iga Seal: Hn.
DELETE FROM `mob_droplist` WHERE dropId=203 and type=0 and itemId=3162 and rate=120; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=203 and type=0 and itemId=3168 and rate=170; -- Charis Seal: Hn.
DELETE FROM `mob_droplist` WHERE dropId=203 and type=0 and itemId=3168 and rate=130; -- comment me
INSERT INTO `mob_droplist` VALUES (203,0,28578,55); -- Patricus Ring

-- -----------
-- Azdaja
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=222 and type=0 and itemId=3219 and rate=30; -- Wieldance Coin
DELETE FROM `mob_droplist` WHERE dropId=222 and type=0 and itemId=3292 and rate=100; -- Azdaja's Horn
DELETE FROM `mob_droplist` WHERE dropId=222 and type=0 and itemId=5667 and rate=60; -- Lynx Meat
INSERT INTO `mob_droplist` VALUES (222,0,3292,86); -- Azdaja's Horn
INSERT INTO `mob_droplist` VALUES (222,0,3292,1000); -- Azdaja's Horn

-- -----------
-- Awahondo
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=212 and type=0 and itemId=4892 and rate=100; -- Aeroja

-- -----------
-- Bakka
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=645 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=739 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=823 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=830 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=887 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=942 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=1133 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=1255 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=1260 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=1294 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=1311 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=1312 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=1633 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and type=0 and itemId=1634 and rate=10; -- comment me
INSERT INTO `mob_droplist` VALUES (229,0,12106,340); -- Charis Toeshoes
INSERT INTO `mob_droplist` VALUES (229,0,3981,64);
INSERT INTO `mob_droplist` VALUES (229,0,4026,254);
INSERT INTO `mob_droplist` VALUES (229,0,1765,299);

-- -----------
-- Balaur
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=231 and type=0 and itemId=866 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and type=0 and itemId=887 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and type=0 and itemId=1258 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and type=0 and itemId=1294 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and type=0 and itemId=1633 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and type=0 and itemId=1740 and rate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and type=0 and itemId=1829 and rate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (231,0,12097,340); --  Aoidos' Cothurnes
INSERT INTO `mob_droplist` VALUES (231,0,3936,185); -- Acuex Poision
INSERT INTO `mob_droplist` VALUES (231,0,756,270);
INSERT INTO `mob_droplist` VALUES (231,0,756,213);
INSERT INTO `mob_droplist` VALUES (231,0,20772,182);
INSERT INTO `mob_droplist` VALUES (231,0,8751,186);

-- -----------
-- Baobhan Sith
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=241 and type=0 and itemId=1281 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=241 and type=0 and itemId=1281 and rate=500; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=241 and type=0 and itemId=1281 and rate=250; -- comment me
INSERT INTO `mob_droplist` VALUES (241,0,10442,88); -- Laeradr Helm
INSERT INTO `mob_droplist` VALUES (241,0,19145,187); -- Asteria
INSERT INTO `mob_droplist` VALUES (241,0,1281,100); -- Cheviot Cloth
INSERT INTO `mob_droplist` VALUES (241,0,4781,100);
INSERT INTO `mob_droplist` VALUES (241,0,5501,100);
INSERT INTO `mob_droplist` VALUES (241,0,5502,100);
INSERT INTO `mob_droplist` VALUES (241,0,6060,100);
INSERT INTO `mob_droplist` VALUES (241,0,5078,100);

-- -----------
-- Barrens Treant
-- -----------

INSERT INTO `mob_droplist` VALUES (249,0,1414,46);
INSERT INTO `mob_droplist` VALUES (249,0,8725,14);

-- -----------
-- Behemoth
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=270 and type=0 and itemId=860 and rate=100; -- Behemoth Hide
DELETE FROM `mob_droplist` WHERE dropId=270 and type=0 and itemId=860 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=270 and type=0 and itemId=3342 and rate=100; -- Savory Shank King Behemoth
DELETE FROM `mob_droplist` WHERE dropId=270 and type=0 and itemId=16869 and rate=220; -- Thundercloud
DELETE FROM `mob_droplist` WHERE dropId=270 and type=0 and itemId=17294 and rate=140; -- Comet Tail
INSERT INTO `mob_droplist` VALUES (270,0,883,235); -- Behemoth Horn
INSERT INTO `mob_droplist` VALUES (270,0,1322,310); --  E.Abjuration: Lg.
INSERT INTO `mob_droplist` VALUES (270,0,1328,321); -- A.Abjuration: Ft.
INSERT INTO `mob_droplist` VALUES (270,0,1332,300); -- M.Abjuration: Lg.
INSERT INTO `mob_droplist` VALUES (270,0,1334,302); -- W.Abjuration: Hd.
INSERT INTO `mob_droplist` VALUES (270,0,1527,700); -- Behemoth Tongue

-- -----------
-- Bennu
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=273 and type=0 and itemId=4892 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=273 and type=0 and itemId=4890 and rate=100; -- comment me

-- -----------
-- Biast
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=285 and type=0 and itemId=15221 and rate=560; -- comment me
INSERT INTO `mob_droplist` VALUES (285,0,15221,560); -- Patroclus's Helm
INSERT INTO `mob_droplist` VALUES (285,0,10462,137); -- Calma-breastplate
INSERT INTO `mob_droplist` VALUES (285,0,10507,179); -- Avant Gauntlets +1
INSERT INTO `mob_droplist` VALUES (285,0,11981,138); -- Mustela Brais
INSERT INTO `mob_droplist` VALUES (285,0,10612,172); -- Magavan Clogs
INSERT INTO `mob_droplist` VALUES (285,0,10878,68); -- Rubeus Bandeau


-- -----------
-- Blazing Eruca
-- -----------


INSERT INTO `mob_droplist` VALUES (321,0,28530,64); -- - Dumakulem's Ring
-- INSERT INTO `mob_droplist` VALUES (321,0,21125,100); -- Tamaxchi  188 skill
INSERT INTO `mob_droplist` VALUES (321,0,12098,104); --  Sylvan Bottillons

-- -----------
-- Blubbery Bulge
-- -----------
INSERT INTO `mob_droplist` VALUES (346,0,17669,255); -- Sagasinger
INSERT INTO `mob_droplist` VALUES (346,0,4781,100);
INSERT INTO `mob_droplist` VALUES (346,0,5501,100);
INSERT INTO `mob_droplist` VALUES (346,0,5502,100);
INSERT INTO `mob_droplist` VALUES (346,0,6060,100);
INSERT INTO `mob_droplist` VALUES (346,0,5078,100);

-- -----------
-- Bonfire
-- -----------

INSERT INTO `mob_droplist` VALUES (369,0,2408,28);

-- -----------
-- Bonnacon
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=370 and type=0 and itemId=1628 and rate=290;
DELETE FROM `mob_droplist` WHERE dropId=370 and type=0 and itemId=5152 and rate=430;
INSERT INTO `mob_droplist` VALUES (370,0,11867,154); -- Heka's Kalasiris
INSERT INTO `mob_droplist` VALUES (370,0,19794,191); -- Delphinius
INSERT INTO `mob_droplist` VALUES (370,0,4776,100);
INSERT INTO `mob_droplist` VALUES (370,0,5105,100);
INSERT INTO `mob_droplist` VALUES (370,0,4705,100);
INSERT INTO `mob_droplist` VALUES (370,0,5499,100);
INSERT INTO `mob_droplist` VALUES (370,0,6059,100);

-- -----------
-- Brass Borer
-- -----------
INSERT INTO `mob_droplist` VALUES (385,0,14961,326); -- Ares' Gauntlets
INSERT INTO `mob_droplist` VALUES (385,0,15711,269); -- Ares' Sollerets
INSERT INTO `mob_droplist` VALUES (385,0,10500,134); -- Ogier's Gauntlets
INSERT INTO `mob_droplist` VALUES (385,0,10600,108); -- Ogier's Leggings

-- -----------
-- Briareus
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=396 and type=0 and itemId=2929 and rate=100; -- Helm Of Briareus
DELETE FROM `mob_droplist` WHERE dropId=396 and type=0 and itemId=2929 and rate=50;
INSERT INTO `mob_droplist` VALUES (396,0,2929,1000); -- Helm Of Briareus
INSERT INTO `mob_droplist` VALUES (396,0,2929,89); -- Helm Of Briareus
INSERT INTO `mob_droplist` VALUES (396,0,3870,105);
INSERT INTO `mob_droplist` VALUES (396,0,8747,204);
INSERT INTO `mob_droplist` VALUES (396,0,8747,286);
INSERT INTO `mob_droplist` VALUES (396,0,8988,181);
INSERT INTO `mob_droplist` VALUES (396,0,9075,79);
INSERT INTO `mob_droplist` VALUES (396,0,9075,90);

-- -----------
-- Bukhis
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=424 and type=0 and itemId=2966 and rate=100; -- Bukhis's Wing
DELETE FROM `mob_droplist` WHERE dropId=424 and type=0 and itemId=2966 and rate=50;
INSERT INTO `mob_droplist` VALUES (424,0,2966,1000); -- Bukhis's Wing
INSERT INTO `mob_droplist` VALUES (424,0,2966,70); -- Bukhis's Wing
INSERT INTO `mob_droplist` VALUES (424,0,19409,163); --  Gandiva
INSERT INTO `mob_droplist` VALUES (424,0,8992,255);
INSERT INTO `mob_droplist` VALUES (424,0,9075,46);
INSERT INTO `mob_droplist` VALUES (424,0,766,20);
INSERT INTO `mob_droplist` VALUES (424,0,4012,60);

-- -----------
-- Konjac
-- -----------

INSERT INTO `mob_droplist` VALUES (455,0,18542,173); -- Aytanri
INSERT INTO `mob_droplist` VALUES (455,0,18903,205); -- Talekeeper
INSERT INTO `mob_droplist` VALUES (455,0,4781,100);
INSERT INTO `mob_droplist` VALUES (455,0,4771,100);
INSERT INTO `mob_droplist` VALUES (455,0,5505,100);
INSERT INTO `mob_droplist` VALUES (455,0,4706,100);
INSERT INTO `mob_droplist` VALUES (455,0,4707,100);

-- -----------
-- Carabosse
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=466 and type=0 and itemId=5393 and rate=1000; -- Monarch's Drink
DELETE FROM `mob_droplist` WHERE dropId=466 and type=0 and itemId=2930 and rate=1620; -- Carabosse's Gem
INSERT INTO `mob_droplist` VALUES (466,0,2930,1000); -- Carabosse's Gem
INSERT INTO `mob_droplist` VALUES (466,0,8710,157);
INSERT INTO `mob_droplist` VALUES (466,0,8725,173);


-- -----------
-- Cerberus
-- ----------

DELETE FROM `mob_droplist` WHERE dropId=502 and type=0 and itemId=2168 and rate=1000;
DELETE FROM `mob_droplist` WHERE dropId=502 and type=0 and itemId=2169 and rate=1000;
DELETE FROM `mob_droplist` WHERE dropId=502 and type=0 and itemId=5565 and rate=1000;
DELETE FROM `mob_droplist` WHERE dropId=502 and type=0 and itemId=18385 and rate=450;
INSERT INTO `mob_droplist` VALUES (502,0,15808,107); -- Ulthalam's Ring
INSERT INTO `mob_droplist` VALUES (502,0,4023,181);
INSERT INTO `mob_droplist` VALUES (502,0,27779,67); -- Quauhpilli helm
INSERT INTO `mob_droplist` VALUES (502,0,9062,12); -- Dark Matter

-- -----------
-- Chamrosh
-- ----------

DELETE FROM `mob_droplist` WHERE dropId=506 and type=0 and itemId=18593 and rate=650; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=506 and type=0 and itemId=16240 and rate=400; -- comment me
INSERT INTO `mob_droplist` VALUES (506,0,14965,166); -- Skadi's Bazubands
INSERT INTO `mob_droplist` VALUES (506,0,14969,173); -- Usukane Gote
INSERT INTO `mob_droplist` VALUES (506,0,10320,93); -- Enif Manopolas
INSERT INTO `mob_droplist` VALUES (506,0,10501,115); -- Athos's Gloves

-- -----------
-- Cheese Hoarder Gigiroon
-- ----------

INSERT INTO `mob_droplist` VALUES (517,0,15715,167); -- Skadi's Jambeaux
INSERT INTO `mob_droplist` VALUES (517,0,15719,125); -- Usukane Sune-Ate
INSERT INTO `mob_droplist` VALUES (517,0,10367,75); -- Enif Gambieras
INSERT INTO `mob_droplist` VALUES (517,0,10601,192); -- Athos's Boots

-- -----------
-- Chigre
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=525 and type=0 and itemId=15827 and rate=360; -- comment me
INSERT INTO `mob_droplist` VALUES (525,0,14977,169); -- Morrigan's Cuffs
INSERT INTO `mob_droplist` VALUES (525,0,15727,116); -- Morrigan's Pgch.
INSERT INTO `mob_droplist` VALUES (525,0,15723,186); -- Marduk's Crackows
INSERT INTO `mob_droplist` VALUES (525,0,14973,142); -- Marduk's Dastanas
INSERT INTO `mob_droplist` VALUES (525,0,10368,72); -- Adhara Crackows
INSERT INTO `mob_droplist` VALUES (525,0,10321,65); -- Adhara Gages
INSERT INTO `mob_droplist` VALUES (525,0,10323,43); -- Shedir Gages
INSERT INTO `mob_droplist` VALUES (525,0,18948,666); -- Enforcer

-- -----------
-- Cirein-croin
-- -----------

INSERT INTO `mob_droplist` VALUES (529,0,2965,1000); -- Cirein. Lantern
INSERT INTO `mob_droplist` VALUES (529,0,19406,113); -- Masamune

-- -----------
-- Claret
-- -----------

INSERT INTO `mob_droplist` VALUES (535,0,14961,185); -- Ares' Gauntlets
INSERT INTO `mob_droplist` VALUES (535,0,10500,108); -- Ogier's Gauntlets

-- -----------
-- Dark Elemental
-- -----------
INSERT INTO `mob_droplist` VALUES (639,0,1262,5); -- Dark Ore
INSERT INTO `mob_droplist` VALUES (640,0,1262,5); -- Dark Ore
INSERT INTO `mob_droplist` VALUES (642,0,1262,5); -- Dark Ore

-- -----------
-- Dea
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=652 and type=0 and itemId=11377 and rate=410; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and type=0 and itemId=16343 and rate=330; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and type=0 and itemId=18125 and rate=460; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and type=0 and itemId=18125 and rate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and type=0 and itemId=19031 and rate=540; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and type=0 and itemId=19038 and rate=510; -- comment me
INSERT INTO `mob_droplist` VALUES (652,0,14554,125); -- Usukane Haramaki
INSERT INTO `mob_droplist` VALUES (652,0,10276,104); -- Enif Corazza
INSERT INTO `mob_droplist` VALUES (652,0,10451,57); -- Athos's Tabard
INSERT INTO `mob_droplist` VALUES (652,0,10957,64); -- Stoicheion Medal
INSERT INTO `mob_droplist` VALUES (652,0,18992,198); -- Glanzfaust
INSERT INTO `mob_droplist` VALUES (652,0,19004,155); -- Ryunohige

-- -----------
-- Dextrose
-- -----------

INSERT INTO `mob_droplist` VALUES (725,0,11283,171); -- Oracle's Robe
INSERT INTO `mob_droplist` VALUES (725,0,15625,191); -- Ares' Flanchard
INSERT INTO `mob_droplist` VALUES (725,0,11969,152); -- Ogier's Breeches

-- -----------
-- Dhorme Khimaira
-- -----------
INSERT INTO `mob_droplist` VALUES (727,0,28402,91); -- Asperity Necklace
INSERT INTO `mob_droplist` VALUES (727,0,19402,136); -- Ukonvasara

-- -----------
-- Dragua
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=788 and type=0 and itemId=3221 and rate=660; --  Wieldance Card
DELETE FROM `mob_droplist` WHERE dropId=788 and type=0 and itemId=3288 and rate=1630; --  Dragua Scale
DELETE FROM `mob_droplist` WHERE dropId=788 and type=0 and itemId=3288 and rate=820; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=788 and type=0 and itemId=5847 and rate=1000; --  Fanatic's Powder

INSERT INTO `mob_droplist` VALUES (788,0,3288,79); -- Dragua's Scale
INSERT INTO `mob_droplist` VALUES (788,0,3288,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (788,0,10255,82); --  Matanca Harness

-- -----------
-- Duke Haborym
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=808 and type=0 and itemId=886 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=808 and type=0 and itemId=902 and rate=110; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=808 and type=0 and itemId=4875 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=808 and type=0 and itemId=16786 and rate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (808,0,11890,168); -- Skopos Bracers
INSERT INTO `mob_droplist` VALUES (808,0,11975,186); -- Avant Cuisses +1
INSERT INTO `mob_droplist` VALUES (808,0,10891,174); -- Mustela Mask
INSERT INTO `mob_droplist` VALUES (808,0,10464,179); -- Magavan Frock
INSERT INTO `mob_droplist` VALUES (808,0,10502,181); -- Rubeus Gloves

-- -----------
-- Dune Manticore
-- -----------

INSERT INTO `mob_droplist` VALUES (811,0,2878,28);

-- -----------
-- Dusk Lizard
-- -----------

INSERT INTO `mob_droplist` VALUES (816,0,3552,28);

-- -----------
-- Earth Elemental
-- -----------
INSERT INTO `mob_droplist` VALUES (829,0,1258,5); -- Earth Ore
INSERT INTO `mob_droplist` VALUES (830,0,1258,5); -- Earth Ore

-- -----------
-- Eastern Shadow
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=835 and type=0 and itemId=18714 and rate=90;
INSERT INTO `mob_droplist` VALUES (835,0,17187,65);

-- -----------
-- Ecentric Eve
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=838 and type=0 and itemId=685 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and type=0 and itemId=836 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and type=0 and itemId=837 and rate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and type=0 and itemId=920 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and type=0 and itemId=1261 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and type=0 and itemId=2359 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and type=0 and itemId=2824 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and type=0 and itemId=3210 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and type=0 and itemId=3213 and rate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (838,0,12091,340); -- Goetia Sabots
INSERT INTO `mob_droplist` VALUES (838,0,19407,340); --  Gambanteinn
INSERT INTO `mob_droplist` VALUES (838,0,2361,264); -- comment me
INSERT INTO `mob_droplist` VALUES (838,0,3926,224);
INSERT INTO `mob_droplist` VALUES (838,0,3920,172);
INSERT INTO `mob_droplist` VALUES (838,0,9006,148);

-- -----------
-- Entozoon
-- -----------

INSERT INTO `mob_droplist` VALUES (879,0,3920,27);
INSERT INTO `mob_droplist` VALUES (879,0,1703,42);
INSERT INTO `mob_droplist` VALUES (879,0,734,16);

-- -----------
-- Ergdrake
-- -----------

INSERT INTO `mob_droplist` VALUES (897,0,2188,87); -- Wyvern Tailskin

-- -----------
-- Experimental Lamia
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=913 and type=0 and itemId=11378 and rate=390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and type=0 and itemId=11378 and rate=190; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and type=0 and itemId=16341 and rate=390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and type=0 and itemId=18595 and rate=190; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and type=0 and itemId=19032 and rate=560; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and type=0 and itemId=19036 and rate=540; -- comment me
INSERT INTO `mob_droplist` VALUES (913,0,14558,162); -- Marduk's Jubbah
INSERT INTO `mob_droplist` VALUES (913,0,10279,74); -- Shedir Manteel
INSERT INTO `mob_droplist` VALUES (913,0,10277,75); -- Adhara Manteel
INSERT INTO `mob_droplist` VALUES (913,0,21342,61); -- Erlene's Notebook
INSERT INTO `mob_droplist` VALUES (913,0,19000,200); -- Carnwenhan
INSERT INTO `mob_droplist` VALUES (913,0,18996,192); -- Vajra

-- -----------
-- Fafnir
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=867 and rate=750; --  Dragon Scales
DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=14075 and rate=570; --  Andvaranauts
DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=16492 and rate=290; -- Bronze Dagger +1
DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=1321 and rate=240; --  E.Abjuration: Hn.
DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=1328 and rate=240; --  A.Abjuration: Ft.
DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=903 and rate=900; -- Dragon Talon
DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=1133 and rate=20; --  Dragon Blood
DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=4272 and rate=30; -- Dragon Meat
DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=4486 and rate=410; -- Dragon Heart
DELETE FROM `mob_droplist` WHERE dropId=918 and type=0 and itemId=3340 and rate=100; -- Cup of Sweet Tea Nidhogg
INSERT INTO `mob_droplist` VALUES (918,0,1325,270); -- A.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (918,0,1320,370); -- E.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (918,0,1320,100);
INSERT INTO `mob_droplist` VALUES (918,0,1330,370); -- M.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (918,0,1342,260); -- N.Abjuration: Lg.
INSERT INTO `mob_droplist` VALUES (918,0,1526,700); -- Wyrm Beard

-- -----------
-- Gasher
-- -----------
INSERT INTO `mob_droplist` VALUES (1086,0,3940,35);

-- -----------
-- Fire Elemental
-- -----------

INSERT INTO `mob_droplist` VALUES (955,0,1255,5); -- Fire Ore
INSERT INTO `mob_droplist` VALUES (957,0,1255,5); 
INSERT INTO `mob_droplist` VALUES (958,0,1255,5); 
INSERT INTO `mob_droplist` VALUES (959,0,1255,5); 

-- -----------
-- Fistule
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=962 and type=0 and itemId=2931 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=962 and type=0 and itemId=11518 and rate=1000; -- comment me
INSERT INTO `mob_droplist` VALUES (962,0,4026,186);
INSERT INTO `mob_droplist` VALUES (962,0,21191,183);
INSERT INTO `mob_droplist` VALUES (962,0,3550,205);
INSERT INTO `mob_droplist` VALUES (962,0,19247,116); -- Savant's Treatise
INSERT INTO `mob_droplist` VALUES (962,0,11416,155); -- Clout Boots
INSERT INTO `mob_droplist` VALUES (962,0,2931,1000); -- Fistl. Discharge
INSERT INTO `mob_droplist` VALUES (962,0,12090,87); -- Orison Duckbills

-- -----------
-- Friar Rush
-- -----------

INSERT INTO `mob_droplist` VALUES (1049,0,18786,330);
INSERT INTO `mob_droplist` VALUES (1049,0,4748,100);
INSERT INTO `mob_droplist` VALUES (1049,0,4756,100);
INSERT INTO `mob_droplist` VALUES (1049,0,4613,100);
INSERT INTO `mob_droplist` VALUES (1049,0,5500,100);
INSERT INTO `mob_droplist` VALUES (1049,0,4706,100);

-- -----------
-- Glen Crab
-- -----------
INSERT INTO `mob_droplist` VALUES (1185,0,3940,47);

-- -----------
-- Goblin Meatgrinder
-- -----------
INSERT INTO `mob_droplist` VALUES (1370,0,20772,43);
INSERT INTO `mob_droplist` VALUES (1370,0,4026,45);
INSERT INTO `mob_droplist` VALUES (1370,0,741,56);
INSERT INTO `mob_droplist` VALUES (1370,0,4058,10);

-- -----------
-- Goblin Plunderer
-- -----------
INSERT INTO `mob_droplist` VALUES (1416,0,3940,52);
INSERT INTO `mob_droplist` VALUES (1416,0,741,45);
INSERT INTO `mob_droplist` VALUES (1416,0,4058,14);

-- -----------
-- Gotoh Zha the Redolent
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1536 and type=0 and itemId=15023 and rate=390;
DELETE FROM `mob_droplist` WHERE dropId=1536 and type=0 and itemId=15023 and rate=190;
DELETE FROM `mob_droplist` WHERE dropId=1536 and type=0 and itemId=16341 and rate=420;
DELETE FROM `mob_droplist` WHERE dropId=1536 and type=0 and itemId=16341 and rate=210;
DELETE FROM `mob_droplist` WHERE dropId=1536 and type=0 and itemId=19032 and rate=600;
DELETE FROM `mob_droplist` WHERE dropId=1536 and type=0 and itemId=19037 and rate=560;
DELETE FROM `mob_droplist` WHERE dropId=1536 and type=0 and itemId=19153 and rate=280;
INSERT INTO `mob_droplist` VALUES (1536,0,18998,162); -- Liberator
INSERT INTO `mob_droplist` VALUES (1536,0,18995,124); -- Murgleis
INSERT INTO `mob_droplist` VALUES (1536,0,10451,57); -- Athos's Tabard
INSERT INTO `mob_droplist` VALUES (1536,0,10839,47); -- Othila Sash
INSERT INTO `mob_droplist` VALUES (1536,0,14550,190); -- Skadi's Cuirie
INSERT INTO `mob_droplist` VALUES (1536,0,14554,154); -- Usukane Haramaki
INSERT INTO `mob_droplist` VALUES (1536,0,10276,73); -- Enif Corazza

-- -----------
-- Guivre
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1602 and type=0 and itemId=866 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1602 and type=0 and itemId=909 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1602 and type=0 and itemId=1122 and rate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1602 and type=0 and itemId=1124 and rate=330; -- comment me
INSERT INTO `mob_droplist` VALUES (1602,0,19174,270); --  Borealis
-- INSERT INTO `mob_droplist` VALUES (1602,0,10539,320);
INSERT INTO `mob_droplist` VALUES (1602,0,10539,80); -- Huginn Gauntlets
-- INSERT INTO `mob_droplist` VALUES (1602,0,10572,330);
INSERT INTO `mob_droplist` VALUES (1602,0,10572,92); -- Khepri Kecks
-- INSERT INTO `mob_droplist` VALUES (1602,0,10637,321);
INSERT INTO `mob_droplist` VALUES (1602,0,10637,89); -- Tenryu Sune-Ate +1
-- INSERT INTO `mob_droplist` VALUES (1602,0,10408,315);
INSERT INTO `mob_droplist` VALUES (1602,0,10408,88); --  Spurrina Coif
INSERT INTO `mob_droplist` VALUES (1602,0,10493,53); -- Iaso Bliaut

-- -----------
-- Gulool Ja Ja
-- -----------

INSERT INTO `mob_droplist` VALUES (1607,0,28535,84); -- Supershear ring
INSERT INTO `mob_droplist` VALUES (1607,0,4023,105);

-- -----------
-- Gurfurlur the Menacing
-- -----------

INSERT INTO `mob_droplist` VALUES (1609,0,27766,70); -- Uk'uxkaj cap
INSERT INTO `mob_droplist` VALUES (1609,0,4023,157);

-- -----------
-- Hadhayosh
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=646 and rate=980; -- Adaman Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=1255 and rate=100; -- Fire Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=1256 and rate=100; -- Ice Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=1257 and rate=100; -- Wind Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=1258 and rate=100; -- Earth Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=1259 and rate=100; -- Lightning Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=1260 and rate=100; -- Water Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=1261 and rate=100; -- Water Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=1262 and rate=100; -- Water Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and type=0 and itemId=1841 and rate=100; -- Unicorn Horn
INSERT INTO `mob_droplist` VALUES (1621,0,16192,136); --  Ochain
INSERT INTO `mob_droplist` VALUES (1621,0,1414,198);
INSERT INTO `mob_droplist` VALUES (1621,0,1703,225);
INSERT INTO `mob_droplist` VALUES (1621,0,3545,157);

-- -----------
-- Hazhdiha
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1645 and type=0 and itemId=679 and rate=100; -- Aluminum Ingot
DELETE FROM `mob_droplist` WHERE dropId=1645 and type=0 and itemId=806 and rate=100; -- Tourmaline
DELETE FROM `mob_droplist` WHERE dropId=1645 and type=0 and itemId=1465 and rate=80; -- Granite
DELETE FROM `mob_droplist` WHERE dropId=1645 and type=0 and itemId=1592 and rate=80; -- Cactuar Root
DELETE FROM `mob_droplist` WHERE dropId=1645 and type=0 and itemId=1985 and rate=100; -- Helmet Mole
INSERT INTO `mob_droplist` VALUES (1645,0,19397,93); -- Verethragna

-- -----------
-- Heqet
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1668 and type=0 and itemId=3170 and rate=230; -- Rvg. Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=1668 and type=0 and itemId=3170 and rate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1668 and type=0 and itemId=3170 and rate=90; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1668 and type=0 and itemId=3177 and rate=220; -- Bale Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=1668 and type=0 and itemId=3181 and rate=80; -- Unkai Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=1668 and type=0 and itemId=3181 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1668 and type=0 and itemId=3181 and rate=210; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1668 and type=0 and itemId=3183 and rate=310; --    Lncr. Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=1668 and type=0 and itemId=3183 and rate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (1668,0,12095,107); --  Bale Sollerets
INSERT INTO `mob_droplist` VALUES (1668,0,21191,202);
INSERT INTO `mob_droplist` VALUES (1668,0,20772,234);
INSERT INTO `mob_droplist` VALUES (1668,0,3940,178);
INSERT INTO `mob_droplist` VALUES (1668,0,8751,291);

-- -----------
-- Hrosshvalur
-- -----------
INSERT INTO `mob_droplist` VALUES (1708,0,3198,102); --  Ferine Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1708,0,3200,145); --  Sylvan Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1708,0,3204,90); --  Caller's Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1708,0,3205,187); --  Mavi Seal: Ft.

-- -----------
-- Ice Elemental
-- -----------
INSERT INTO `mob_droplist` VALUES (1754,0,1256,5); -- Ice Ore
INSERT INTO `mob_droplist` VALUES (1755,0,1256,5); -- Ice Ore
INSERT INTO `mob_droplist` VALUES (1756,0,1256,5); -- Ice Ore

-- -----------
-- Iktomi
-- -----------

INSERT INTO `mob_droplist` VALUES (1774,0,3194,120); -- Estq. Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1774,0,3195,73); -- Raid. Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1774,0,3196,195); -- Creed Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1774,0,3201,145); -- Unkai Seal: Ft.

-- -----------
-- Indrik
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1786 and type=0 and itemId=1629 and rate=100; -- Ardor Stone
DELETE FROM `mob_droplist` WHERE dropId=1786 and type=0 and itemId=3214 and rate=50; -- Ardor Stone
DELETE FROM `mob_droplist` WHERE dropId=1786 and type=0 and itemId=3215 and rate=50; -- Ardor Coin
DELETE FROM `mob_droplist` WHERE dropId=1786 and type=0 and itemId=5832 and rate=100; -- Healing Mist
INSERT INTO `mob_droplist` VALUES (1786,0,21382,168); -- Dosis Tathlum
INSERT INTO `mob_droplist` VALUES (1786,0,12093,142); -- Raider's Poulaines
INSERT INTO `mob_droplist` VALUES (1786,0,19404,144); -- Rhongomiant

-- -----------
-- Iriri Samariri
-- -----------

INSERT INTO `mob_droplist` VALUES (1792,0,16088,102); --  Skadi's Visor
INSERT INTO `mob_droplist` VALUES (1792,0,16092,149); -- Usukane Somen
INSERT INTO `mob_droplist` VALUES (1792,0,10438,61); --  Enif Zucchetto
INSERT INTO `mob_droplist` VALUES (1792,0,10877,137); -- Athos's Chapeau
INSERT INTO `mob_droplist` VALUES (1792,0,16156,166); -- Oracle's Cap

-- -----------
-- Iriz Ima
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1793 and type=0 and itemId=2147 and rate=40; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1793 and type=0 and itemId=2147 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1793 and type=0 and itemId=19514 and rate=200; -- comment me
INSERT INTO `mob_droplist` VALUES (1793,0,16088,125); -- Skadi's Visor
INSERT INTO `mob_droplist` VALUES (1793,0,15629,177); -- skadis-chausses
INSERT INTO `mob_droplist` VALUES (1793,0,16092,191); --  Usukane Somen
INSERT INTO `mob_droplist` VALUES (1793,0,15633,153); -- Usukane Hizayoroi
INSERT INTO `mob_droplist` VALUES (1793,0,10438,66); -- Enif Zucchetto
INSERT INTO `mob_droplist` VALUES (1793,0,10326,61); --  Enif Cosciales
INSERT INTO `mob_droplist` VALUES (1793,0,10877,176); --  Athos's Chapeau
INSERT INTO `mob_droplist` VALUES (1793,0,11970,156); --  Athos's Tights

-- -----------
-- Ironclad Cleaver
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=654 and rate=100; -- Darksteel Ingot
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=723 and rate=100; -- Divine Lumber
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=729 and rate=100; -- Bloodwood Log
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=745 and rate=80; --  Gold Ingot
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=836 and rate=70; --  Damascene Cloth
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=1302 and rate=100; -- Earth Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=1303 and rate=100; -- Lightning Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=1303 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=1304 and rate=100; -- Water Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=1305 and rate=100; -- Light Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=1306 and rate=100; -- Dark Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=2703 and rate=100; -- Khrom. Leather
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=2951 and rate=100; -- Malachite
DELETE FROM `mob_droplist` WHERE dropId=1794 and type=0 and itemId=4387 and rate=140; -- Wild Onion
INSERT INTO `mob_droplist` VALUES (1794,0,12092,150); -- Estq. Houseaux

-- -----------
-- Isgebind
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1810 and type=0 and itemId=646 and rate=10; -- Adaman Ore
DELETE FROM `mob_droplist` WHERE dropId=1810 and type=0 and itemId=747 and rate=10; -- Ocl. Ingot
DELETE FROM `mob_droplist` WHERE dropId=1810 and type=0 and itemId=751 and rate=10; -- Plt. Beastcoin
DELETE FROM `mob_droplist` WHERE dropId=1810 and type=0 and itemId=827 and rate=10; -- Wool Cloth
DELETE FROM `mob_droplist` WHERE dropId=1810 and type=0 and itemId=860 and rate=10; -- Behemoth Hide
DELETE FROM `mob_droplist` WHERE dropId=1810 and type=0 and itemId=931 and rate=10; -- Cermet Chunk
DELETE FROM `mob_droplist` WHERE dropId=1810 and type=0 and itemId=1124 and rate=10; -- Wyvern Wing
DELETE FROM `mob_droplist` WHERE dropId=1810 and type=0 and itemId=1132 and rate=10; -- Raxa
DELETE FROM `mob_droplist` WHERE dropId=1810 and type=0 and itemId=3290 and rate=100; -- Isgebind's Heart
INSERT INTO `mob_droplist` VALUES (1810,0,3290,97); -- Isgebind's Heart
INSERT INTO `mob_droplist` VALUES (1810,0,3290,1000); -- Isgebind's Heart

-- -----------
-- Itzpapalotl
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1812 and type=0 and itemId=2962 and rate=1370; --  Itzpapa. Scale
DELETE FROM `mob_droplist` WHERE dropId=1812 and type=0 and itemId=2962 and rate=680; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1812 and type=0 and itemId=3210 and rate=50; -- Vision Stone
DELETE FROM `mob_droplist` WHERE dropId=1812 and type=0 and itemId=11432 and rate=1000; -- Ace's Leggings
INSERT INTO `mob_droplist` VALUES (1812,0,2962,1000); -- Itzpapa. Scale
INSERT INTO `mob_droplist` VALUES (1812,0,2962,52); -- comment me
INSERT INTO `mob_droplist` VALUES (1812,0,19400,83); -- Caladbolg

-- -----------
-- Jaguarundi
-- -----------
INSERT INTO `mob_droplist` VALUES (1831,0,8707,21);
INSERT INTO `mob_droplist` VALUES (1831,0,8751,18);

-- -----------
-- Jailer of Faith
-- -----------

INSERT INTO `mob_droplist` VALUES (1832,0,1913,170); -- Sin Of Indignation
INSERT INTO `mob_droplist` VALUES (1832,0,20536,72); --  Tinhaspa
INSERT INTO `mob_droplist` VALUES (1832,0,21252,117); --  One-eyed

-- -----------
-- Jailer of Fortitude
-- -----------

INSERT INTO `mob_droplist` VALUES (1833,0,1914,140); -- Sin Of Indolence
INSERT INTO `mob_droplist` VALUES (1833,0,20860,76); -- Minos
INSERT INTO `mob_droplist` VALUES (1833,0,20717,89); -- Arendsi Fleuret

-- -----------
-- Jailer of Hope
-- -----------

INSERT INTO `mob_droplist` VALUES (1834,0,1915,180); -- Sin Of Indulgence
INSERT INTO `mob_droplist` VALUES (1834,0,20994,75); -- Shigi
INSERT INTO `mob_droplist` VALUES (1834,0,21229,70); -- Cibitshavore

-- -----------
-- Jailer of Justice
-- -----------

INSERT INTO `mob_droplist` VALUES (1835,0,1916,187); -- Sin Of Invidious.
INSERT INTO `mob_droplist` VALUES (1835,0,20904,63); -- Cronus
INSERT INTO `mob_droplist` VALUES (1835,0,21040,69); -- Shokudaikiri

-- -----------
-- Jailer of Love
-- -----------

INSERT INTO `mob_droplist` VALUES (1836,0,1917,100); -- Sin Of Insolence
INSERT INTO `mob_droplist` VALUES (1836,0,20954,52); --  Eminent Lance
INSERT INTO `mob_droplist` VALUES (1836,0,20636,81); -- Izhiikoh

-- -----------
-- Jailer of Prudence
-- -----------

INSERT INTO `mob_droplist` VALUES (1837,0,1918,100); -- Sin Of Infatuation
INSERT INTO `mob_droplist` VALUES (1837,0,21111,60); -- Bolelabunga
INSERT INTO `mob_droplist` VALUES (1837,0,20763,83); --  Kbiroj

-- -----------
-- Jailer of Temperance
-- -----------

INSERT INTO `mob_droplist` VALUES (1838,0,1919,160); --  Sin Of Intemper.
INSERT INTO `mob_droplist` VALUES (1838,0,20809,73); --  Kumbhakarna
INSERT INTO `mob_droplist` VALUES (1838,0,21169,78); --  Keraunos

-- -----------
-- Jormungand
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=1852 and type=0 and itemId=658 and rate=40; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1852 and type=0 and itemId=722 and rate=10;
DELETE FROM `mob_droplist` WHERE dropId=1852 and type=0 and itemId=836 and rate=70;
DELETE FROM `mob_droplist` WHERE dropId=1852 and type=0 and itemId=837 and rate=70;
DELETE FROM `mob_droplist` WHERE dropId=1852 and type=0 and itemId=658 and rate=40;
DELETE FROM `mob_droplist` WHERE dropId=1852 and type=0 and itemId=860 and rate=70;
DELETE FROM `mob_droplist` WHERE dropId=1852 and type=0 and itemId=1311 and rate=20;
DELETE FROM `mob_droplist` WHERE dropId=1852 and type=0 and itemId=1313 and rate=670;
INSERT INTO `mob_droplist` VALUES (1852,0,28159,51);
INSERT INTO `mob_droplist` VALUES (1852,0,28157,83);
INSERT INTO `mob_droplist` VALUES (1852,0,27723,94);
INSERT INTO `mob_droplist` VALUES (1852,0,28158,62);
INSERT INTO `mob_droplist` VALUES (1852,0,20759,153);
INSERT INTO `mob_droplist` VALUES (1852,0,279,1000);

-- -----------
-- Juggler Hecatomb
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1861 and type=0 and itemId=16868 and rate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (1861,0,10610,192); --  Calma Leggings
INSERT INTO `mob_droplist` VALUES (1861,0,10885,161); -- Avant Helm +1
INSERT INTO `mob_droplist` VALUES (1861,0,10463,190); -- Mustela Harness
INSERT INTO `mob_droplist` VALUES (1861,0,10514,127); --  Magavan Mitts
INSERT INTO `mob_droplist` VALUES (1861,0,11971,174); --  Rubeus Spats
INSERT INTO `mob_droplist` VALUES (1861,0,27781,66); --  Xux hat

-- -----------
-- Khimaira
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1893 and type=0 and itemId=2371 and rate=1000;
DELETE FROM `mob_droplist` WHERE dropId=1893 and type=0 and itemId=2372 and rate=1000;
DELETE FROM `mob_droplist` WHERE dropId=1893 and type=0 and itemId=2372 and rate=500;
DELETE FROM `mob_droplist` WHERE dropId=1893 and type=0 and itemId=2373 and rate=1000;
INSERT INTO `mob_droplist` VALUES (1893,0,15809,140); -- Jalzahn's Ring
INSERT INTO `mob_droplist` VALUES (1893,0,4023,1000); -- Snowsteel Ore

INSERT INTO `mob_droplist` VALUES (1893,0,10285,86); -- Beguiler's jerkin
INSERT INTO `mob_droplist` VALUES (1893,0,9062,12); -- Dark Matter

-- -----------
-- Khromasoul Bhurborlor
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1894 and type=0 and itemId=15022 and rate=190;
DELETE FROM `mob_droplist` WHERE dropId=1894 and type=0 and itemId=16343 and rate=200;
DELETE FROM `mob_droplist` WHERE dropId=1894 and type=0 and itemId=16176 and rate=360;
INSERT INTO `mob_droplist` VALUES (1894,0,14546,135); --  Ares' Cuirass
INSERT INTO `mob_droplist` VALUES (1894,0,10450,86); --  Ogier's Surcoat
INSERT INTO `mob_droplist` VALUES (1894,0,10806,114); -- Adamas
INSERT INTO `mob_droplist` VALUES (1894,0,18997,130); -- Burtgang
INSERT INTO `mob_droplist` VALUES (1894,0,19006,100); -- Tizona

-- -----------
-- King Arthro
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1935 and type=0 and itemId=15899 and rate=80; -- comment me
INSERT INTO `mob_droplist` VALUES (1935,0,13189,80); -- Speed Belt

-- -----------
-- King Behemoth
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=831 and rate=530; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=1527 and rate=670; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=1322 and rate=320; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=1322 and rate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=1328 and rate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=1328 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=1332 and rate=290; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=1332 and rate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=860 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=860 and rate=400; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=883 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=1334 and rate=380; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and type=0 and itemId=1334 and rate=190; -- comment me
INSERT INTO `mob_droplist` VALUES (1936,0,18459,153); -- Heshikiri-hasebe
INSERT INTO `mob_droplist` VALUES (1936,0,10636,114); -- Huginn Gambieras
-- INSERT INTO `mob_droplist` VALUES (1936,0,10636,87);
INSERT INTO `mob_droplist` VALUES (1936,0,10407,160); -- Khepri Bonnet
-- INSERT INTO `mob_droplist` VALUES (1936,0,10407,168);
-- INSERT INTO `mob_droplist` VALUES (1936,0,10490,166); -- Tenryu Domaru +1
INSERT INTO `mob_droplist` VALUES (1936,0,10490,94);
INSERT INTO `mob_droplist` VALUES (1936,0,10542,176); -- Spurrina Gages
INSERT INTO `mob_droplist` VALUES (1936,0,10574,112); -- Iaso Tights


-- -----------
-- Kukulkan
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1966 and type=0 and itemId=2932 and rate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (1966,0,657,183);
INSERT INTO `mob_droplist` VALUES (1966,0,741,240);
INSERT INTO `mob_droplist` VALUES (1966,0,741,151);
INSERT INTO `mob_droplist` VALUES (1966,0,3552,170);
INSERT INTO `mob_droplist` VALUES (1966,0,3922,120);
INSERT INTO `mob_droplist` VALUES (1966,0,4020,299);
INSERT INTO `mob_droplist` VALUES (1966,0,2932,1000); --  Kukulkan's Fang
INSERT INTO `mob_droplist` VALUES (1966,0,12088,340); --  Ravager's Calligae

-- -----------
-- Kutharei
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=1972 and type=0 and itemId=699 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and type=0 and itemId=702 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and type=0 and itemId=1300 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and type=0 and itemId=1302 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and type=0 and itemId=1305 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and type=0 and itemId=1306 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and type=0 and itemId=747 and rate=270; -- comment me

-- -----------
-- Leaping Lizzy
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2036 and type=0 and itemId=15351 and rate=70; -- Bounding Boots
INSERT INTO `mob_droplist` VALUES (2036,0,13014,70); -- Leaping Boots

-- -----------
-- Light Elemental
-- -----------

INSERT INTO `mob_droplist` VALUES (2059,0,1261,5); -- Light Ore

-- -----------
-- Lil' Apkallu
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2061 and type=0 and itemId=11368 and rate=470; -- comment me
INSERT INTO `mob_droplist` VALUES (2061,0,15015,183); -- Hachiryu Kote
INSERT INTO `mob_droplist` VALUES (2061,0,14977,153); -- Morrigan's Cuffs
INSERT INTO `mob_droplist` VALUES (2061,0,14973,103); -- Marduk's Dastanas
INSERT INTO `mob_droplist` VALUES (2061,0,10321,74); -- Adhara Gages
INSERT INTO `mob_droplist` VALUES (2061,0,10323,76); -- Shedir Gages

-- -----------
-- Lividroot Amooshah
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2065 and type=0 and itemId=920 and rate=0; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2065 and type=0 and itemId=16153 and rate=400; -- comment me
INSERT INTO `mob_droplist` VALUES (2065,0,2614,1000); -- Amoosh.'s Tendril
INSERT INTO `mob_droplist` VALUES (2065,0,11367,151); -- Nobushi Kyahan
INSERT INTO `mob_droplist` VALUES (2065,2,11284,176); -- Enkidu's Harness
INSERT INTO `mob_droplist` VALUES (2065,0,15629,171); -- Skadi's Chausses
INSERT INTO `mob_droplist` VALUES (2065,0,15633,167); -- Usukane Hizayoroi
INSERT INTO `mob_droplist` VALUES (2065,0,10326,70); --  Enif Cosciales
INSERT INTO `mob_droplist` VALUES (2065,0,11970,191); -- Athos's Tights

-- -----------
-- Battlerigged Chariot
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=2075 and type=0 and itemId=4892 and rate=100; -- comment me

-- -----------
-- Lord of Onzozo
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2079 and type=0 and itemId=4484 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2079 and type=0 and itemId=4484 and rate=500; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2079 and type=0 and itemId=4484 and rate=330; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2079 and type=0 and itemId=18852 and rate=80; -- comment me
-- INSERT INTO `mob_droplist` VALUES (2079,0,10570,330);
INSERT INTO `mob_droplist` VALUES (2079,0,10570,175);
INSERT INTO `mob_droplist` VALUES (2079,0,10638,154);
-- INSERT INTO `mob_droplist` VALUES (2079,0,10406,310);
INSERT INTO `mob_droplist` VALUES (2079,0,10406,155);
-- INSERT INTO `mob_droplist` VALUES (2079,0,10492,333);
INSERT INTO `mob_droplist` VALUES (2079,0,10492,161);
INSERT INTO `mob_droplist` VALUES (2079,0,10543,97);


-- -----------
-- Lord Varney
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2080 and type=0 and itemId=3193 and rate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and type=0 and itemId=3193 and rate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and type=0 and itemId=3193 and rate=90; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and type=0 and itemId=3197 and rate=330; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and type=0 and itemId=3197 and rate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and type=0 and itemId=3202 and rate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and type=0 and itemId=3202 and rate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and type=0 and itemId=3207 and rate=190; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and type=0 and itemId=2307 and rate=130; -- comment me
INSERT INTO `mob_droplist` VALUES (2080,0,12100,189); --  Iga Kyahan
INSERT INTO `mob_droplist` VALUES (2080,0,3449,24);
INSERT INTO `mob_droplist` VALUES (2080,0,4015,285);
INSERT INTO `mob_droplist` VALUES (2080,0,3550,244);
INSERT INTO `mob_droplist` VALUES (2080,0,8707,200);

-- -----------
-- Mahjiaef the Paintom
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2133 and type=0 and itemId=15021 and rate=470; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2133 and type=0 and itemId=15021 and rate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2133 and type=0 and itemId=16177 and rate=340; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2133 and type=0 and itemId=19031 and rate=570; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2133 and type=0 and itemId=19035 and rate=530; -- comment me
INSERT INTO `mob_droplist` VALUES (2133,0,14562,150); -- Morrigan's Robe
INSERT INTO `mob_droplist` VALUES (2133,0,10277,91); -- Adhara Manteel
INSERT INTO `mob_droplist` VALUES (2133,0,10279,89); -- Shedir Manteel
INSERT INTO `mob_droplist` VALUES (2133,0,11669,106); -- Strendu Ring
INSERT INTO `mob_droplist` VALUES (2133,0,19008,198); --  Kenkonken
INSERT INTO `mob_droplist` VALUES (2133,0,18994,154); -- Laevateinn
INSERT INTO `mob_droplist` VALUES (2133,0,18990,163); -- Tupsimati

-- -----------
-- Mee Deggi the Punisher
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2238 and type=0 and itemId=14986 and rate=50; -- Ochimusha Kote
INSERT INTO `mob_droplist` VALUES (2238,0,13952,74); -- Ochiudo's Kote

-- -----------
-- Megamaw Mikey
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=702 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=823 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=1312 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=1769 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=2315 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=2532 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=4272 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=4377 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=5152 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=2942 and rate=1030; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=1997 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=1841 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=887 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=830 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=1312 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and type=0 and itemId=1415 and rate=10; -- comment me
INSERT INTO `mob_droplist` VALUES (2240,0,741,125); -- P. Brass Ore
INSERT INTO `mob_droplist` VALUES (2240,0,741,71);

-- -----------
-- Morboling
-- -----------
INSERT INTO `mob_droplist` VALUES (2351,0,2361,29);

-- -----------
-- Namtar
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2414 and type=0 and itemId=880 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2414 and type=0 and itemId=880 and rate=500; -- comment me
INSERT INTO `mob_droplist` VALUES (2414,0,11866,86); -- Toci's Harness
INSERT INTO `mob_droplist` VALUES (2414,0,19175,128); --  Hoarfrost Blade
INSERT INTO `mob_droplist` VALUES (2414,0,4748,100);
INSERT INTO `mob_droplist` VALUES (2414,0,4756,100);
INSERT INTO `mob_droplist` VALUES (2414,0,4613,100);
INSERT INTO `mob_droplist` VALUES (2414,0,5500,100);
INSERT INTO `mob_droplist` VALUES (2414,0,4706,100);

-- -----------
-- Nidhogg
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=865 and rate=700; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1526 and rate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1320 and rate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1320 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1325 and rate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1325 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1330 and rate=370; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1330 and rate=180; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1342 and rate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1342 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=865 and rate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=865 and rate=170; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=867 and rate=60; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=903 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1133 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=1133 and rate=500; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=4272 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and type=0 and itemId=4486 and rate=1000; -- comment me

-- INSERT INTO `mob_droplist` VALUES (2425,0,10405,53); -- Huginn Coronet
INSERT INTO `mob_droplist` VALUES (2425,0,10405,96);
INSERT INTO `mob_droplist` VALUES (2425,0,10491,137); --  Khepri Jacket
INSERT INTO `mob_droplist` VALUES (2425,0,10491,90);
-- INSERT INTO `mob_droplist` VALUES (2425,0,10540,195); -- Tenryu Tekko +1
INSERT INTO `mob_droplist` VALUES (2425,0,10540,91);
-- INSERT INTO `mob_droplist` VALUES (2425,0,10573,174); --     Spurrina Slops
INSERT INTO `mob_droplist` VALUES (2425,0,10573,85);
INSERT INTO `mob_droplist` VALUES (2425,0,10640,83); --  Iaso Boots


-- -----------
-- Ningishzida
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2473 and type=0 and itemId=3130 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and type=0 and itemId=3130 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and type=0 and itemId=3132 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and type=0 and itemId=3132 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and type=0 and itemId=3141 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and type=0 and itemId=3141 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and type=0 and itemId=3145 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and type=0 and itemId=3145 and rate=30; -- comment me
INSERT INTO `mob_droplist` VALUES (2473,0,11904,149); -- Thicket Gages
INSERT INTO `mob_droplist` VALUES (2473,0,28467,73); -- Dynamic Belt +1

-- -----------
-- Nosferatu
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2487 and type=0 and itemId=11378 and rate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2487 and type=0 and itemId=15021 and rate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2487 and type=0 and itemId=17960 and rate=150; -- comment me
INSERT INTO `mob_droplist` VALUES (2487,0,14546,154); -- Ares Cuirass
INSERT INTO `mob_droplist` VALUES (2487,0,10450,99); --  Ogier's Surcoat
INSERT INTO `mob_droplist` VALUES (2487,0,18989,100); -- Terpsichore
INSERT INTO `mob_droplist` VALUES (2487,0,19001,100); --  Gastraphetes
INSERT INTO `mob_droplist` VALUES (2487,0,19003,100); --  Nagi
INSERT INTO `mob_droplist` VALUES (2487,0,28440,74); -- Windbuffet Belt +1

-- -----------
-- Nuhn
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=2491 and type=0 and itemId=11377 and rate=460; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and type=0 and itemId=11377 and rate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and type=0 and itemId=15023 and rate=280; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and type=0 and itemId=15023 and rate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and type=0 and itemId=18430 and rate=460; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and type=0 and itemId=18430 and rate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and type=0 and itemId=19033 and rate=480; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and type=0 and itemId=19037 and rate=510; -- comment me
INSERT INTO `mob_droplist` VALUES (2491,0,14562,162); --    Morrigan's Robe
INSERT INTO `mob_droplist` VALUES (2491,0,14558,141); --  Marduk's Jubbah
INSERT INTO `mob_droplist` VALUES (2491,0,10277,72); -- Adhara Manteel
INSERT INTO `mob_droplist` VALUES (2491,0,10279,76); -- Shedir Manteel
INSERT INTO `mob_droplist` VALUES (2491,0,28450,95); -- Chaac Belt
INSERT INTO `mob_droplist` VALUES (2491,0,18999,153); -- Aymur
INSERT INTO `mob_droplist` VALUES (2491,0,19002,211); --  Kogarasumaru

-- -----------
-- Ob
-- -----------

INSERT INTO `mob_droplist` VALUES (2496,0,15711,199); -- Ares' Sollerets
INSERT INTO `mob_droplist` VALUES (2496,0,10600,161); --  Ogier's Leggings


-- -----------
-- Ophion
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2554 and type=0 and itemId=497 and rate=450; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2554 and type=0 and itemId=499 and rate=320; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2554 and type=0 and itemId=12290 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2554 and type=0 and itemId=14018 and rate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (2554,0,10512,139); --  Calma Gauntlets
INSERT INTO `mob_droplist` VALUES (2554,0,11975,156); -- Avant Cuisses +1
INSERT INTO `mob_droplist` VALUES (2554,0,10611,162); --   Mustela Boots
INSERT INTO `mob_droplist` VALUES (2554,0,10892,134); --  Magavan Beret
INSERT INTO `mob_droplist` VALUES (2554,0,10452,85); -- Rubeus Jacket

-- -----------
-- Orthrus
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2721 and type=0 and itemId=2168 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and type=0 and itemId=2168 and rate=500; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and type=0 and itemId=4969 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and type=0 and itemId=5006 and rate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and type=0 and itemId=5085 and rate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and type=0 and itemId=5090 and rate=100; -- comment me
REPLACE INTO `mob_droplist` VALUES (2721,0,16260,127); -- Atheling Mantle
INSERT INTO `mob_droplist` VALUES (2721,0,3287,158); -- orthruss claw
INSERT INTO `mob_droplist` VALUES (2721,0,3287,1000); -- orthruss claw

-- -----------
-- Overlord Bakgodek
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=644 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=12362 and rate=190; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=17649 and rate=810; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=17928 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=1432 and rate=970; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=645 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=656 and rate=0; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=700 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=702 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=703 and rate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=737 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=738 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=823 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=836 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=837 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=844 and rate=470; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=866 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=887 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=895 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=902 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=942 and rate=310; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=1110 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=1132 and rate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=1132 and rate=110; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=4172 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=4174 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2728 and type=0 and itemId=4175 and rate=30; -- comment me
INSERT INTO `mob_droplist` VALUES (2728,0,16106,150); -- Askar Zucchetto
INSERT INTO `mob_droplist` VALUES (2728,0,14568,155); -- Askar Korazin
INSERT INTO `mob_droplist` VALUES (2728,0,15648,112); -- Denali Kecks
INSERT INTO `mob_droplist` VALUES (2728,0,15734,130); -- Denali Gamashes
INSERT INTO `mob_droplist` VALUES (2728,0,14985,156); -- Goliard Cuffs

-- -----------
-- Medusa
-- -----------

INSERT INTO `mob_droplist` VALUES (2237,0,27780,93); -- Chocaliztli mask
INSERT INTO `mob_droplist` VALUES (2237,0,4023,186);

-- -----------
-- Ouzelum 
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2725 and type=0 and itemId=4890 and rate=10; -- comment me

-- -----------
-- Ovni
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2732 and type=0 and itemId=4254 and rate=1000; -- comment me
INSERT INTO `mob_droplist` VALUES (2732,0,18574,116); -- Daurdabla
INSERT INTO `mob_droplist` VALUES (2732,0,1279,113);
INSERT INTO `mob_droplist` VALUES (2732,0,8990,214);
INSERT INTO `mob_droplist` VALUES (2732,0,9063,225);

-- -----------
-- Quadav Guard/Transporter Fix
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3192 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3192 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3192 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3192 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3193 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3193 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3193 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3193 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3194 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3194 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3194 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3194 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3209 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3209 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3209 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and type=0 and itemId=3209 and rate=30; -- comment me

-- -----------
-- Quu Domi the Gallant
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2916 and type=0 and itemId=15737 and rate=70; -- Sarutobi kyahan
INSERT INTO `mob_droplist` VALUES (2916,0,13054,77); -- Fuma Kyahan 

-- -----------
-- Rani
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2925 and type=0 and itemId=11698 and rate=1000; -- comment me
INSERT INTO `mob_droplist` VALUES (2925,0,11651,38); -- Eponas Ring
INSERT INTO `mob_droplist` VALUES (2925,0,11698,94); -- Hecates Earring

-- -----------
-- Reaction
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2936 and type=0 and itemId=17316 and rate=0; -- comment me
INSERT INTO `mob_droplist` VALUES (2936,0,16156,550); -- Oracle's Cap
INSERT INTO `mob_droplist` VALUES (2936,0,16084,152); -- Ares' MaskAres' Mask
INSERT INTO `mob_droplist` VALUES (2936,0,10876,147); -- Ogier's Helm

-- -----------
-- Refitted Chariot
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2946 and type=0 and itemId=4890 and rate=100; -- comment me

-- -----------
-- Rift Treant
-- -----------
INSERT INTO `mob_droplist` VALUES (2964,0,3926,27);

-- -----------
-- Roc
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=2987 and type=0 and itemId=18587 and rate=120; -- Dryad Staff
INSERT INTO `mob_droplist` VALUES (2987,0,17108,80); -- Healing Staff

-- -----------
-- Rock Grinder
-- -----------

INSERT INTO `mob_droplist` VALUES (2998,0,4020,44);
INSERT INTO `mob_droplist` VALUES (2998,0,756,14);
INSERT INTO `mob_droplist` VALUES (2998,0,8747,15);


-- -----------
-- Sarameya
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3059 and type=0 and itemId=2168 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and type=0 and itemId=5565 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and type=0 and itemId=11283 and rate=280; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and type=0 and itemId=16155 and rate=420; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and type=0 and itemId=16156 and rate=410; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and type=0 and itemId=16337 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and type=0 and itemId=18446 and rate=210; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and type=0 and itemId=18497 and rate=140; -- comment me
INSERT INTO `mob_droplist` VALUES (3059,0,28218,95); -- Ate's Sollerets
INSERT INTO `mob_droplist` VALUES (3059,0,27799,99); --  Idi's Jerkin
INSERT INTO `mob_droplist` VALUES (3059,0,27939,88); -- Idi's Gloves
INSERT INTO `mob_droplist` VALUES (3059,0,27940,97); -- Genta Gote
INSERT INTO `mob_droplist` VALUES (3059,0,28083,89); --     Genta-no-Hakama
INSERT INTO `mob_droplist` VALUES (3059,0,27802,80); --  Neit's Coat
INSERT INTO `mob_droplist` VALUES (3059,0,27662,98); -- Neit's Crown
INSERT INTO `mob_droplist` VALUES (3059,0,27661,88); -- Namru's Tiara
INSERT INTO `mob_droplist` VALUES (3059,0,28221,65); -- Namru's Crackows

-- -----------
-- Sisyphus
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3212 and type=0 and itemId=4892 and rate=100; -- comment me

-- -----------
-- Sozu Rogberry
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3287 and type=0 and itemId=1119 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3287 and type=0 and itemId=1162 and rate=10; -- comment me
INSERT INTO `mob_droplist` VALUES (3287,0,10465,254); -- Fulad-Zereh
INSERT INTO `mob_droplist` VALUES (3287,0,19144,288); -- Coruscanti
INSERT INTO `mob_droplist` VALUES (3287,0,4748,100); -- 
INSERT INTO `mob_droplist` VALUES (3287,0,4761,100); -- 
INSERT INTO `mob_droplist` VALUES (3287,0,4863,100); -- 
INSERT INTO `mob_droplist` VALUES (3287,0,5078,100); -- 
INSERT INTO `mob_droplist` VALUES (3287,0,5497,100); -- 

-- -----------
-- Sedna
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3106 and type=0 and itemId=2967 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3106 and type=0 and itemId=3227 and rate=30; -- comment me
-- INSERT INTO `mob_droplist` VALUES (3106,0,21051,84); --  Shichishito +1 162 Skill
INSERT INTO `mob_droplist` VALUES (3106,0,2967,1000); -- Sedna's Tusk
INSERT INTO `mob_droplist` VALUES (3106,0,19398,192); -- twashtar

-- -----------
-- Simurgh
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3208 and type=0 and itemId=15736 and rate=100; -- Trotter Boots
INSERT INTO `mob_droplist` VALUES (3208,0,14080,76); -- Strider Boots

-- -----------
-- Sippoy
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3210 and type=0 and itemId=655 and rate=60; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and type=0 and itemId=723 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and type=0 and itemId=729 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and type=0 and itemId=863 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and type=0 and itemId=1299 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and type=0 and itemId=1303 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and type=0 and itemId=1313 and rate=670; -- comment me

-- -----------
-- Smok
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3241 and type=0 and itemId=836 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and type=0 and itemId=1300 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and type=0 and itemId=1301 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and type=0 and itemId=1313 and rate=670; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and type=0 and itemId=1313 and rate=670; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and type=0 and itemId=1740 and rate=140; -- comment me
INSERT INTO `mob_droplist` VALUES (3241,0,19410,105); --  Armageddon

-- Taisaijin (moved refresh 1&2 to scripted drops)
-- DELETE FROM `mob_droplist` WHERE dropId=3430 and type=0 and itemId=4717 and rate=1000; -- Refresh

-- -----------
-- Taxim
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3441 and type=0 and itemId=880 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3441 and type=0 and itemId=880 and rate=500; -- comment me
INSERT INTO `mob_droplist` VALUES (3441,0,10280,72); --  Laeradr Breastplate
INSERT INTO `mob_droplist` VALUES (3441,0,18524,142); -- Huskarl Axe
INSERT INTO `mob_droplist` VALUES (3441,0,4748,100);
INSERT INTO `mob_droplist` VALUES (3441,0,4771,100);
INSERT INTO `mob_droplist` VALUES (3441,0,5503,100);
INSERT INTO `mob_droplist` VALUES (3441,0,5504,100);
INSERT INTO `mob_droplist` VALUES (3441,0,6061,100);

-- -----------
-- Thunder Elemental
-- -----------
INSERT INTO `mob_droplist` VALUES (3482,0,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3483,0,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3503,0,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3507,0,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3508,0,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3510,0,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3511,0,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3514,0,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3518,0,1259,5); -- Lightning Ore

-- -----------
-- Tiamat
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=655 and rate=60;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=658 and rate=30;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=722 and rate=90;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=836 and rate=30;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=837 and rate=70;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=860 and rate=130;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=1110 and rate=60;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=1311 and rate=110;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=1313 and rate=90;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=655 and rate=60;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=655 and rate=60;
DELETE FROM `mob_droplist` WHERE dropId=3522 and type=0 and itemId=655 and rate=60;
INSERT INTO `mob_droplist` VALUES (3522,0,28017,84);
INSERT INTO `mob_droplist` VALUES (3522,0,27725,79);
INSERT INTO `mob_droplist` VALUES (3522,0,28015,65);
INSERT INTO `mob_droplist` VALUES (3522,0,28016,43);
INSERT INTO `mob_droplist` VALUES (3522,0,20857,180);
INSERT INTO `mob_droplist` VALUES (3522,0,269,1000);

-- -----------
-- Tinnin
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3525 and type=0 and itemId=2158 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and type=0 and itemId=2172 and rate=500; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and type=0 and itemId=5564 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and type=0 and itemId=11284 and rate=370; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and type=0 and itemId=11364 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and type=0 and itemId=16516 and rate=300; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and type=0 and itemId=16517 and rate=320; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and type=0 and itemId=18429 and rate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and type=0 and itemId=18593 and rate=130; -- comment me
INSERT INTO `mob_droplist` VALUES (3525,0,27942,75); --  Neit's Cuffs
INSERT INTO `mob_droplist` VALUES (3525,0,28085,89); -- Neit's Slops
INSERT INTO `mob_droplist` VALUES (3525,0,27801,78); --     Namru's Jubbah
INSERT INTO `mob_droplist` VALUES (3525,0,27941,94); --  Namru's Dastanas
INSERT INTO `mob_droplist` VALUES (3525,0,27658,87); --  Ate's Mask
INSERT INTO `mob_droplist` VALUES (3525,0,27798,82); --  Ate's Cuirass
INSERT INTO `mob_droplist` VALUES (3525,0,28082,86); --  Idi's Trousers
INSERT INTO `mob_droplist` VALUES (3525,0,28220,96); -- Genta Sune-Ate

-- -----------
-- Triarius X-XV
-- -----------

INSERT INTO `mob_droplist` VALUES (3588,0,18904,267); --  Ephemeron
INSERT INTO `mob_droplist` VALUES (3588,0,11872,163); -- Ace's Mail
INSERT INTO `mob_droplist` VALUES (3588,0,4748,100);
INSERT INTO `mob_droplist` VALUES (3588,0,4771,100);
INSERT INTO `mob_droplist` VALUES (3588,0,5503,100);
INSERT INTO `mob_droplist` VALUES (3588,0,5504,100);
INSERT INTO `mob_droplist` VALUES (3588,0,6061,100);

-- -----------
-- Turul
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3632 and type=0 and itemId=1262 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3632 and type=0 and itemId=2750 and rate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3632 and type=0 and itemId=2752 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3632 and type=0 and itemId=2824 and rate=10; -- comment me
INSERT INTO `mob_droplist` VALUES (3632,0,734,259);
INSERT INTO `mob_droplist` VALUES (3632,0,1765,236);
INSERT INTO `mob_droplist` VALUES (3632,0,3893,103);
INSERT INTO `mob_droplist` VALUES (3632,0,8707,284);
INSERT INTO `mob_droplist` VALUES (3632,0,12096,340); -- Ferine Ocreae
INSERT INTO `mob_droplist` VALUES (3632,0,19403,340); -- Redemption

-- -----------
-- Tyger
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3638 and type=0 and itemId=2371 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and type=0 and itemId=2372 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and type=0 and itemId=2373 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and type=0 and itemId=11282 and rate=360; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and type=0 and itemId=15015 and rate=180; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and type=0 and itemId=16155 and rate=360; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and type=0 and itemId=16157 and rate=400; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and type=0 and itemId=18857 and rate=120; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and type=0 and itemId=18948 and rate=160; -- comment me
INSERT INTO `mob_droplist` VALUES (3638,0,27938,78); -- Ate's Gauntlets
INSERT INTO `mob_droplist` VALUES (3638,0,28081,92); -- Ate's Flanchard
INSERT INTO `mob_droplist` VALUES (3638,0,28219,86); --  Idi's Ledelsens
INSERT INTO `mob_droplist` VALUES (3638,0,27659,97); --  Idi's Mask
INSERT INTO `mob_droplist` VALUES (3638,0,27660,89); -- Genta Kabuto
INSERT INTO `mob_droplist` VALUES (3638,0,27800,83); -- Genta Hara-Ate
INSERT INTO `mob_droplist` VALUES (3638,0,28222,102); --    Neit's Pigaches
INSERT INTO `mob_droplist` VALUES (3638,0,28084,104); --  Namru's Shalwar

-- -----------
-- Tyrannic Tunnok
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3642 and type=0 and itemId=896 and rate=180; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3642 and type=0 and itemId=897 and rate=560; -- comment me
INSERT INTO `mob_droplist` VALUES (3642,0,10466,269); --  Gunman Gambison
INSERT INTO `mob_droplist` VALUES (3642,0,18457,163); --    Murasamemaru
INSERT INTO `mob_droplist` VALUES (3642,0,18457,100); --
INSERT INTO `mob_droplist` VALUES (3642,0,18457,100); --
INSERT INTO `mob_droplist` VALUES (3642,0,18457,100); --
INSERT INTO `mob_droplist` VALUES (3642,0,18457,100); --
INSERT INTO `mob_droplist` VALUES (3642,0,18457,100); --

-- -----------
-- Tzee Xicu the Manifest
-- -----------
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=644 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=645 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=658 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=700 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=702 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=703 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=737 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=738 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=751 and rate=0; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=751 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=823 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=830 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=836 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=837 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=844 and rate=360; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=866 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=887 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=895 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=902 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=942 and rate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=1110 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=1132 and rate=310; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=1132 and rate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=4173 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=4174 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3645 and type=0 and itemId=4175 and rate=30; -- comment me
INSERT INTO `mob_droplist` VALUES (3645,0,14983,158); -- Askar Manopolas
INSERT INTO `mob_droplist` VALUES (3645,0,15647,161); -- Askar Dirs
INSERT INTO `mob_droplist` VALUES (3645,0,14984,188); -- Denali Wristbands
INSERT INTO `mob_droplist` VALUES (3645,0,16108,113); -- Goliard Chapeau
INSERT INTO `mob_droplist` VALUES (3645,0,14570,132); -- Goliard Saio

-- -----------
-- Sobek
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3273 and type=0 and itemId=2964 and rate=1390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3273 and type=0 and itemId=2964 and rate=690; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3273 and type=0 and itemId=3222 and rate=590; -- comment me
INSERT INTO `mob_droplist` VALUES (3273,0,2964,1000); --  Sobek's Skin
INSERT INTO `mob_droplist` VALUES (3273,0,2964,86); -- comment me
INSERT INTO `mob_droplist` VALUES (3273,0,19408,70); --  Hvergelmir
INSERT INTO `mob_droplist` VALUES (3273,0,756,162);
INSERT INTO `mob_droplist` VALUES (3273,0,4020,279);
INSERT INTO `mob_droplist` VALUES (3273,0,741,251);
INSERT INTO `mob_droplist` VALUES (3273,0,3922,124);

-- -----------
-- Stroper Chyme
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3387 and type=0 and itemId=15551 and rate=20; -- Shikaree Ring
INSERT INTO `mob_droplist` VALUES (3387,0,3925,85); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (3387,0,13514,60); -- Archer Ring

-- -----------
-- Titlacauan
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3529 and type=0 and itemId=3212 and rate=30; -- comment me
INSERT INTO `mob_droplist` VALUES (3529,0,12099,141); --  Unkai Sune-Ate

-- -----------
-- Ulhuadshi
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=3648 and type=0 and itemId=2963 and rate=1020; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3648 and type=0 and itemId=2963 and rate=510; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3648 and type=0 and itemId=3211 and rate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3648 and type=0 and itemId=3211 and rate=1050; -- comment me
INSERT INTO `mob_droplist` VALUES (3648,0,3211,1000); --  Vision Coin
INSERT INTO `mob_droplist` VALUES (3648,0,2963,93); --  Ulhuadshi's Fang
INSERT INTO `mob_droplist` VALUES (3648,0,2963,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (3648,0,19399,94); -- Almace

-- -----------
-- Unut
-- ----------

INSERT INTO `mob_droplist` VALUES (3663,0,19302,142); -- Uguisu
INSERT INTO `mob_droplist` VALUES (3663,0,4766,100);
INSERT INTO `mob_droplist` VALUES (3663,0,5080,100);
INSERT INTO `mob_droplist` VALUES (3663,0,4613,100);
INSERT INTO `mob_droplist` VALUES (3663,0,5498,100);
INSERT INTO `mob_droplist` VALUES (3663,0,4707,100);

-- -----------
-- Valkrum Emperor
-- ----------

DELETE FROM `mob_droplist` WHERE dropId=3678 and type=0 and itemId=15224 and rate=160; -- comment me
INSERT INTO `mob_droplist` VALUES (3678,0,12486,72); -- Emperor Hairpin

-- -----------
-- Velionis
-- ----------

INSERT INTO `mob_droplist` VALUES (4000,0,15727,191); -- Morrigan's Pgch.
INSERT INTO `mob_droplist` VALUES (4000,0,15723,178); -- Marduk's Crackows
INSERT INTO `mob_droplist` VALUES (4000,0,10368,77); -- Adhara Crackows

-- -----------
-- Verdelet
-- ----------

INSERT INTO `mob_droplist` VALUES (4007,0,11282,580); -- Aurum Cuirass
INSERT INTO `mob_droplist` VALUES (4007,0,15641,146); -- Morrigan's Slops
INSERT INTO `mob_droplist` VALUES (4007,0,15637,142); -- Marduk's Shalwar
INSERT INTO `mob_droplist` VALUES (4007,0,10327,87); -- Adhara Seraweels
INSERT INTO `mob_droplist` VALUES (4007,0,10329,75); -- Shedir Seraweels

-- -----------
-- Viscount Morax
-- ----------

INSERT INTO `mob_droplist` VALUES (4019,0,18558,294); -- Wroth Scythe
INSERT INTO `mob_droplist` VALUES (4019,0,4776,100);
INSERT INTO `mob_droplist` VALUES (4019,0,5105,100);
INSERT INTO `mob_droplist` VALUES (4019,0,4705,100);
INSERT INTO `mob_droplist` VALUES (4019,0,5499,100);
INSERT INTO `mob_droplist` VALUES (4019,0,6059,100);

-- -----------
-- Vouivre
-- ----------

INSERT INTO `mob_droplist` VALUES (4031,0,18525,214); -- Himthige
INSERT INTO `mob_droplist` VALUES (4031,0,19298,254); -- Ikarigiri
INSERT INTO `mob_droplist` VALUES (4031,0,4748,100);
INSERT INTO `mob_droplist` VALUES (4031,0,4761,100);
INSERT INTO `mob_droplist` VALUES (4031,0,4863,100);
INSERT INTO `mob_droplist` VALUES (4031,0,5078,100);
INSERT INTO `mob_droplist` VALUES (4031,0,5497,100);

-- -----------
-- Vrtra
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4033 and type=0 and itemId=658 and rate=40; 
DELETE FROM `mob_droplist` WHERE dropId=4033 and type=0 and itemId=836 and rate=70; 
DELETE FROM `mob_droplist` WHERE dropId=4033 and type=0 and itemId=860 and rate=380; 
DELETE FROM `mob_droplist` WHERE dropId=4033 and type=0 and itemId=903 and rate=20; 
DELETE FROM `mob_droplist` WHERE dropId=4033 and type=0 and itemId=1133 and rate=10; 
DELETE FROM `mob_droplist` WHERE dropId=4033 and type=0 and itemId=1816 and rate=80; 
INSERT INTO `mob_droplist` VALUES (4033,0,28296,65);
INSERT INTO `mob_droplist` VALUES (4033,0,28294,90);
INSERT INTO `mob_droplist` VALUES (4033,0,27724,85);
INSERT INTO `mob_droplist` VALUES (4033,0,28295,80);
INSERT INTO `mob_droplist` VALUES (4033,0,20721,136);
INSERT INTO `mob_droplist` VALUES (4033,0,280,1000);

-- -----------
-- Vulpange
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4035 and type=0 and itemId=16154 and rate=380; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4035 and type=0 and itemId=17754 and rate=340; -- comment me
INSERT INTO `mob_droplist` VALUES (4035,0,14965,105); -- Skadi's Bazubands
INSERT INTO `mob_droplist` VALUES (4035,0,15715,155); -- Skadi's Jambeaux
INSERT INTO `mob_droplist` VALUES (4035,0,14969,165); -- Usukane Gote
INSERT INTO `mob_droplist` VALUES (4035,0,15719,167); -- Usukane Sune-Ate
INSERT INTO `mob_droplist` VALUES (4035,0,10320,96); -- Enif Manopolas
INSERT INTO `mob_droplist` VALUES (4035,0,10367,65); -- Enif Gambieras
INSERT INTO `mob_droplist` VALUES (4035,0,10501,124); -- Athos's Gloves
INSERT INTO `mob_droplist` VALUES (4035,0,10601,131); -- Athos's Boots

-- -----------
-- Warbler
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4071 and type=0 and itemId=3114 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4071 and type=0 and itemId=3118 and rate=30; -- comment me
INSERT INTO `mob_droplist` VALUES (4071,0,12107,108); --  Savant's Loafers



-- -----------
-- Water Elemental
-- -----------

INSERT INTO `mob_droplist` VALUES (4098,0,1260,5); -- Water Ore
INSERT INTO `mob_droplist` VALUES (4088,0,1260,5); -- Water Ore
INSERT INTO `mob_droplist` VALUES (4102,0,1260,5); -- Water Ore
INSERT INTO `mob_droplist` VALUES (4109,0,1260,5); -- Water Ore
INSERT INTO `mob_droplist` VALUES (4115,0,1260,5); -- Water Ore


-- -----------
-- Western Shadow
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4137 and type=0 and itemId=18752 and rate=170;
INSERT INTO `mob_droplist` VALUES (4137,0,17472,76);

-- -----------
-- Yaanei
-- -----------

-- -----------
-- Zareehkl the Jubilant
-- -----------

INSERT INTO `mob_droplist` VALUES (4340,0,16100,184); -- Morrigan's Coron.
INSERT INTO `mob_droplist` VALUES (4340,0,16096,129); -- Marduk's Tiara
INSERT INTO `mob_droplist` VALUES (4340,0,10439,81); -- Adhara Turban

-- -----------
-- Kirin
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=658 and rate=390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=12562 and rate=390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=17567 and rate=470; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=1315 and rate=400; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=1315 and rate=200; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=1337 and rate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=1337 and rate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=1340 and rate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=1340 and rate=280; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=747 and rate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=747 and rate=110; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=831 and rate=320; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=831 and rate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=4748 and rate=170; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=4748 and rate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=4818 and rate=170; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and type=0 and itemId=4748 and rate=150; -- comment me
INSERT INTO `mob_droplist` VALUES (4372,0,3924,94); -- Scholar Stone
INSERT INTO `mob_droplist` VALUES (4372,0,271,196); --  Alexander Statue

-- -----------
-- Wulgaru
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4381 and type=0 and itemId=16174 and rate=340; -- comment me
INSERT INTO `mob_droplist` VALUES (4381,0,16157,540); -- Enkidu's Cap
INSERT INTO `mob_droplist` VALUES (4381,0,16100,173); -- Morrigan's Coron.
INSERT INTO `mob_droplist` VALUES (4381,0,15641,161); -- Morrigan's Slops
INSERT INTO `mob_droplist` VALUES (4381,0,16096,175); -- Marduk's Tiara
INSERT INTO `mob_droplist` VALUES (4381,0,15637,179); -- Marduk's Shalwar
INSERT INTO `mob_droplist` VALUES (4381,0,10327,64); -- Adhara Seraweels
INSERT INTO `mob_droplist` VALUES (4381,0,10439,85); -- Adhara Turban
INSERT INTO `mob_droplist` VALUES (4381,0,10329,103); -- Shedir Seraweels

-- -----------
-- Za'Dha Adamantking
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=1428 and rate=950; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=17073 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=658 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=700 and rate=200; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=702 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=703 and rate=170; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=737 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=738 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=751 and rate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=751 and rate=0; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=830 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=836 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=844 and rate=300; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=866 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=887 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=895 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=902 and rate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=942 and rate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=1110 and rate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=1132 and rate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=1132 and rate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=4172 and rate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=4174 and rate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4383 and type=0 and itemId=4748 and rate=930; -- comment me
INSERT INTO `mob_droplist` VALUES (4383,0,15733,177); -- Askar Gambieras
INSERT INTO `mob_droplist` VALUES (4383,0,16107,123); -- Denali Bonnet
INSERT INTO `mob_droplist` VALUES (4383,0,14569,113); -- Denali Jacket
INSERT INTO `mob_droplist` VALUES (4383,0,15649,138); -- Goliard Trews
INSERT INTO `mob_droplist` VALUES (4383,0,15735,182); -- Goliard Clogs

-- -----------
-- Aqueduct Spider
-- -----------

INSERT INTO `mob_droplist` VALUES (8999,0,2198,155);

-- -----------
-- Legion
-- -----------

-- Lofty_Behemoth
INSERT INTO `mob_droplist` VALUES (9000,0,3925,72); -- Tanzanite Jewel

-- Lofty_Wyrm
INSERT INTO `mob_droplist` VALUES (9001,0,3925,74); -- Tanzanite Jewel

-- Lofty_Adamantoise
INSERT INTO `mob_droplist` VALUES (9002,0,3925,69); -- Tanzanite Jewel

-- Lofty_Elasmoth
INSERT INTO `mob_droplist` VALUES (9003,0,3925,66); -- Tanzanite Jewel

-- Lofty_Zilant
INSERT INTO `mob_droplist` VALUES (9004,0,3925,68); -- Tanzanite Jewel

-- Lofty_Ferromantoise
INSERT INTO `mob_droplist` VALUES (9005,0,3925,65); -- Tanzanite Jewel

-- Lofty Harpeia (Boss)
INSERT INTO `mob_droplist` VALUES (9006,0,3925,1000); -- Harpia - Feet -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9006,0,3529,1000); -- Lofty Trophy
INSERT INTO `mob_droplist` VALUES (9006,0,3925,62); -- Tanzanite Jewel

-- Mired_Cerberus
INSERT INTO `mob_droplist` VALUES (9007,0,3925,74); -- Tanzanite Jewel

-- Mired_Khim
INSERT INTO `mob_droplist` VALUES (9008,0,3925,76); -- Tanzanite Jewel

-- Mired_Hydra
INSERT INTO `mob_droplist` VALUES (9009,0,3925,70); -- Tanzanite Jewel

-- Mired_Orthrus
INSERT INTO `mob_droplist` VALUES (9010,0,3925,78); -- Tanzanite Jewel

-- Mired_Khrysokhimaira
INSERT INTO `mob_droplist` VALUES (9011,0,3925,75); -- Tanzanite Jewel

-- Mired_Alfard
INSERT INTO `mob_droplist` VALUES (9012,0,3925,72); -- Tanzanite Jewel

-- Mired_Mantis (Boss)
INSERT INTO `mob_droplist` VALUES (9013,0,3925,1000); -- Mantis - Legs -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9013,0,3530,1000); -- Mired Trophy
INSERT INTO `mob_droplist` VALUES (9013,0,3925,74); -- Tanzanite Jewel

-- Soaring_Corse
INSERT INTO `mob_droplist` VALUES (9014,0,3925,110); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9014,0,3925,130);

-- Soaring_Dvergr
INSERT INTO `mob_droplist` VALUES (9015,0,3925,105); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9015,0,3925,123);

-- Soaring_Vampyr
INSERT INTO `mob_droplist` VALUES (9016,0,3925,103); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9016,0,3925,75);

-- Soaring_Kumakatok
INSERT INTO `mob_droplist` VALUES (9017,0,3925,97); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9017,0,3925,168);

-- Soaring_Dweorg
INSERT INTO `mob_droplist` VALUES (9018,0,3925,106); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9018,0,3925,105);

-- Soaring_Strigoi
INSERT INTO `mob_droplist` VALUES (9019,0,3925,109); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9019,0,3925,119);

-- Soaring_Naraka (Boss)
INSERT INTO `mob_droplist` VALUES (9020,0,3925,1000); -- Nakara - Hands -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9020,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9020,0,3531,1000); -- Soaring Trophy
INSERT INTO `mob_droplist` VALUES (9020,0,3925,200); -- Tanzanite Jewel

-- Veiled_Amphiptere
INSERT INTO `mob_droplist` VALUES (9021,0,3925,380); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9021,0,3925,173); -- Tanzanite Jewel

-- Veiled_Ixion
INSERT INTO `mob_droplist` VALUES (9022,0,3925,352); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9022,0,3925,185); -- Tanzanite Jewel

-- Veiled_Sandworm
INSERT INTO `mob_droplist` VALUES (9023,0,3925,447); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9023,0,3925,143); -- Tanzanite Jewel

-- Veiled_Sanguiptere
INSERT INTO `mob_droplist` VALUES (9024,0,3925,418); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9024,0,3925,112); -- Tanzanite Jewel

-- Veiled_Alicorn
INSERT INTO `mob_droplist` VALUES (9025,0,3925,374); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9025,0,3925,173); -- Tanzanite Jewel

-- Veiled_Gigaworm
INSERT INTO `mob_droplist` VALUES (9026,0,3925,323); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9026,0,3925,187); -- Tanzanite Jewel

-- Veiled_Ironclad (Boss)
INSERT INTO `mob_droplist` VALUES (9027,0,3925,1000); -- Iron Clad - Heads
INSERT INTO `mob_droplist` VALUES (9027,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9027,0,3532,1000); -- Veiled Trophy
INSERT INTO `mob_droplist` VALUES (9027,0,3925,82); -- Tanzanite Jewel

-- Lofty_Harpeia (Alt for Hall of Mul)
INSERT INTO `mob_droplist` VALUES (9028,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9028,0,3925,500); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9028,0,3925,134); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9028,0,3529,100); -- Lofty Trophy

-- Mired_Mantis (Alt for Hall of Mul)
INSERT INTO `mob_droplist` VALUES (9029,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9029,0,3925,500); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9029,0,3925,192); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9029,0,3530,100); -- Mired Trophy

-- Soaring_Naraka (Alt for Hall of Mul)
INSERT INTO `mob_droplist` VALUES (9030,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9030,0,3925,500); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9030,0,3925,155); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9030,0,3531,100); -- Soaring Trophy

-- Veiled_Ironclad (Alt for Hall of Mul)
INSERT INTO `mob_droplist` VALUES (9031,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9031,0,3925,500); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9031,0,3925,122); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9031,0,3532,100); -- Veiled Trophy

-- Paramount_Harpeia
INSERT INTO `mob_droplist` VALUES (9032,0,3925,1000); -- Harpia -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9032,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9032,0,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9032,0,4851,73); -- Meteor

-- Paramount_Mantis
INSERT INTO `mob_droplist` VALUES (9033,0,3925,1000); -- Mantis -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9033,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9033,0,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9033,0,4851,115); -- Meteor

-- Paramount_Naraka
INSERT INTO `mob_droplist` VALUES (9034,0,3925,1000); -- Nakara -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9034,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9034,0,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9034,0,4851,104); -- Meteor

-- Paramount_Ironclad
INSERT INTO `mob_droplist` VALUES (9035,0,3925,1000); -- ironclad -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9035,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9035,0,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9035,0,4851,100); -- Meteor

-- Paramount_Gallu (Boss)
INSERT INTO `mob_droplist` VALUES (9036,0,3925,1000); -- Gallu - Bodies -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9036,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9036,0,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9036,0,4851,141); -- Meteor

-- Paramount_Botulus (Boss)
INSERT INTO `mob_droplist` VALUES (9037,0,3925,1000); -- Botulus -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9037,0,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9037,0,3925,153); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9037,0,4851,85); -- Meteor

-- 9038-9045  Auspicious Entity (elementals)
INSERT INTO `mob_droplist` VALUES (9038,0,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9039,0,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9040,0,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9041,0,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9042,0,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9043,0,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9044,0,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9045,0,3925,1); -- Ultra rare: Tanzanite Jewel
-- 9046 reserved! Frog_Lady
-- 9048 reserved! Frog
-- 9049 reserved! Son_Goku
-- 9050 reserved!

-- ------End Legion

-- Odin (9082)
INSERT INTO `mob_droplist` VALUES (9082,0,3925,1000); -- tanz
INSERT INTO `mob_droplist` VALUES (9082,0,3925,600); -- tanz
INSERT INTO `mob_droplist` VALUES (9082,0,3925,200); -- tanz
INSERT INTO `mob_droplist` VALUES (9082,0,3924,200); -- scholar
INSERT INTO `mob_droplist` VALUES (9082,0,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9082,0,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9082,0,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9082,0,28605,150); -- samanisi_cape
INSERT INTO `mob_droplist` VALUES (9082,0,27722,50); -- ighwa_cap
INSERT INTO `mob_droplist` VALUES (9082,0,28156,50); -- ighwa_trousers

-- Alex (9083)
INSERT INTO `mob_droplist` VALUES (9083,0,3925,1000); -- tanz
INSERT INTO `mob_droplist` VALUES (9083,0,3925,600); -- tanz
INSERT INTO `mob_droplist` VALUES (9083,0,3925,200); -- tanz
INSERT INTO `mob_droplist` VALUES (9083,0,3924,200); -- scholar
INSERT INTO `mob_droplist` VALUES (9083,0,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9083,0,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9083,0,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9083,0,270,1000); -- odin statue

-- 7 Wonders
-- tchakka

INSERT INTO `mob_droplist` VALUES (9084,0,27774,136); -- Whirlpool mask
INSERT INTO `mob_droplist` VALUES (9084,0,21389,151); -- Honed tathlum
INSERT INTO `mob_droplist` VALUES (9084,0,21429,167); -- Memphitis grip
INSERT INTO `mob_droplist` VALUES (9084,0,20818,54); -- Hurlbat
INSERT INTO `mob_droplist` VALUES (9084,0,28338,101); -- Mikinaak greaves
INSERT INTO `mob_droplist` VALUES (9084,0,10295,52); -- Kokou's earring
INSERT INTO `mob_droplist` VALUES (9084,0,27871,10); -- Artsieq Jubbah  
INSERT INTO `mob_droplist` VALUES (9084,0,4717,10); -- Refresh

-- kumhao
INSERT INTO `mob_droplist` VALUES (9085,0,10597,113); -- Akasha chaps
INSERT INTO `mob_droplist` VALUES (9085,0,28201,104); -- Xux trousers
INSERT INTO `mob_droplist` VALUES (9085,0,28463,163); -- Zoran's belt
INSERT INTO `mob_droplist` VALUES (9085,0,27917,140); -- Mikinaak breastplate
INSERT INTO `mob_droplist` VALUES (9085,0,10290,106); -- Laudan cuirass
INSERT INTO `mob_droplist` VALUES (9085,0,27869,11); -- Xaddi Mail
INSERT INTO `mob_droplist` VALUES (9085,0,2877,40);
INSERT INTO `mob_droplist` VALUES (9089,0,2875,45);

-- achuka

INSERT INTO `mob_droplist` VALUES (9089,0,28381,77); -- Imbodla necklace
INSERT INTO `mob_droplist` VALUES (9089,0,28062,74); -- Quauhpilli gloves
INSERT INTO `mob_droplist` VALUES (9089,0,28579,123); -- K' ayes Ring
INSERT INTO `mob_droplist` VALUES (9089,0,28198,152); -- Mikinaak cussies
INSERT INTO `mob_droplist` VALUES (9089,0,10287,59); -- Feverish korazin
INSERT INTO `mob_droplist` VALUES (9089,0,27870,10); -- Qaaxo Harness
INSERT INTO `mob_droplist` VALUES (9089,0,4947,5); -- Utsetsumi Ni
INSERT INTO `mob_droplist` VALUES (9089,0,2875,35); 

-- hurkan

INSERT INTO `mob_droplist` VALUES (9090,0,28050,197); -- Buremte gloves
INSERT INTO `mob_droplist` VALUES (9090,0,28331,136); -- Uk'uxkaj boots
INSERT INTO `mob_droplist` VALUES (9090,0,28389,179); -- Agitator's collar
INSERT INTO `mob_droplist` VALUES (9090,0,28449,199); -- Metalsinger belt
INSERT INTO `mob_droplist` VALUES (9090,0,20819,51); -- Antican axe
INSERT INTO `mob_droplist` VALUES (9090,0,10292,74); -- Wikyo Cloak
INSERT INTO `mob_droplist` VALUES (9090,0,20901,15); -- Inanna
INSERT INTO `mob_droplist` VALUES (9090,0,4751,5); -- Erase

-- darrcuiln

INSERT INTO `mob_droplist` VALUES (9091,0,28343,65); -- Chocaliztli boots
INSERT INTO `mob_droplist` VALUES (9091,0,28401,69); -- Eddy Necklace
INSERT INTO `mob_droplist` VALUES (9091,0,28057,50); -- Mikinaak gauntlets
INSERT INTO `mob_droplist` VALUES (9091,0,10289,167); -- Sublime breastplate
INSERT INTO `mob_droplist` VALUES (9091,0,2877,35);
INSERT INTO `mob_droplist` VALUES (9091,0,9062,14); -- Chunk of Dark Matter
INSERT INTO `mob_droplist` VALUES (9091,0,4893,3); -- Scroll of Stoneja
INSERT INTO `mob_droplist` VALUES (9091,0,2879,41); -- Igneous Barnacle

-- colkhab

INSERT INTO `mob_droplist` VALUES (9093,0,27767,99); -- Buremte hat
INSERT INTO `mob_droplist` VALUES (9093,0,28201,72); -- Xux trousers
INSERT INTO `mob_droplist` VALUES (9093,0,28354,150); -- Voltsurge torque
INSERT INTO `mob_droplist` VALUES (9093,0,27776,50); -- Mikinaak helm
INSERT INTO `mob_droplist` VALUES (9093,0,10283,172); -- Vara Brigandine armor

INSERT INTO `mob_droplist` VALUES (9093,0,4717,6); -- Phalanx
INSERT INTO `mob_droplist` VALUES (9093,0,2875,53);

-- cracklaw

INSERT INTO `mob_droplist` VALUES (9105,0,21421,163); -- Immolation grip
INSERT INTO `mob_droplist` VALUES (9105,0,28337,80); -- Whirlpool greaves
INSERT INTO `mob_droplist` VALUES (9105,0,10282,127); -- Krabat Jacket
INSERT INTO `mob_droplist` VALUES (9105,0,10297,52); -- Sortiarius earring
INSERT INTO `mob_droplist` VALUES (9105,0,20718,10); -- Claidheamh Soluis
INSERT INTO `mob_droplist` VALUES (9105,0,5086,6); -- Regen V
INSERT INTO `mob_droplist` VALUES (9105,0,2879,111); -- Igneous Barnacle

-- besieged boss drops
INSERT INTO `mob_droplist` VALUES (9106,0,3925,10);
INSERT INTO `mob_droplist` VALUES (9106,0,4023,30);


INSERT INTO `mob_droplist` VALUES (2489,0,3090,261); -- Shephroid Plate
-- ------------------Alkonost ------------------------------
INSERT INTO `mob_droplist` VALUES (9200,0,11563,181); -- Mesmeric Cape
INSERT INTO `mob_droplist` VALUES (9200,0,1311,18); -- Oxblood
INSERT INTO `mob_droplist` VALUES (9200,0,4377,28); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9200,0,1294,24); -- Arachne Thread
INSERT INTO `mob_droplist` VALUES (9200,0,942,19); -- Philosopher's Stone
INSERT INTO `mob_droplist` VALUES (9200,0,887,23); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9200,0,823,21); -- Gold Thread
INSERT INTO `mob_droplist` VALUES (9200,0,830,18); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9200,0,1634,25); -- Rhodonite
INSERT INTO `mob_droplist` VALUES (9200,0,1997,25); -- Sailcloth
INSERT INTO `mob_droplist` VALUES (9200,0,5152,21); -- Buffalo Meat

-- ------------------Ashtaerth the Gall ------------------------------
INSERT INTO `mob_droplist` VALUES (9201,0,11560,222); -- Pedant cape
INSERT INTO `mob_droplist` VALUES (9201,0,5152,21); -- Buffalo Meat
INSERT INTO `mob_droplist` VALUES (9201,0,1633,28); -- Clot Plasma
INSERT INTO `mob_droplist` VALUES (9201,0,830,18); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9201,0,1634,25); -- Rhodonite

-- ------------------Bloodeye Vileberry ------------------------------
INSERT INTO `mob_droplist` VALUES (9202,0,12921,222); -- Ace's Hose
INSERT INTO `mob_droplist` VALUES (9202,0,13001,740); -- Augur's Gaiters
INSERT INTO `mob_droplist` VALUES (9202,0,11516,1000); -- Kanja Hachimaki
INSERT INTO `mob_droplist` VALUES (9202,0,3211,50); -- Coin of Vision
INSERT INTO `mob_droplist` VALUES (9202,0,3213,519); -- Card of Vision
INSERT INTO `mob_droplist` VALUES (9202,0,1119,10); -- Tonberry coat
INSERT INTO `mob_droplist` VALUES (9202,0,1162,5); -- Tonberry lantern
INSERT INTO `mob_droplist` VALUES (9202,0,646,15); -- Chunk of adaman ore
INSERT INTO `mob_droplist` VALUES (9202,0,836,15); -- Square of damascene cloth
INSERT INTO `mob_droplist` VALUES (9202,0,739,8); -- Chunk of orichalcum ore

-- ------------------Bombadeel ------------------------------
INSERT INTO `mob_droplist` VALUES (9203,0,11740,200); -- Thiazi's Belt
INSERT INTO `mob_droplist` VALUES (9203,0,1133,28); -- Dragon Blood
INSERT INTO `mob_droplist` VALUES (9203,0,830,46); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9203,0,887,37); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9203,0,942,19); -- Philosopher's Stone
INSERT INTO `mob_droplist` VALUES (9203,0,1740,18); -- Iolite

-- ------------------Clingy Clare ------------------------------
INSERT INTO `mob_droplist` VALUES (9204,0,11561,315); -- Salvus Mantle
INSERT INTO `mob_droplist` VALUES (9204,0,4272,13); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9204,0,942,18); -- Philosopher's Stone
INSERT INTO `mob_droplist` VALUES (9204,0,1633,27); -- Handful of clot plasma
INSERT INTO `mob_droplist` VALUES (9204,0,887,27); -- Coral fragment
INSERT INTO `mob_droplist` VALUES (9204,0,1311,29); -- Piece of oxblood
INSERT INTO `mob_droplist` VALUES (9204,0,1634,40); -- Rhodonite

-- ------------------Guimauve ------------------------------
INSERT INTO `mob_droplist` VALUES (9205,0,11416,300); -- Clout Boots
INSERT INTO `mob_droplist` VALUES (9205,0,19247,83); -- Savant's Treatise
INSERT INTO `mob_droplist` VALUES (9205,0,1259,9); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (9205,0,887,28); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9205,0,1294,21); -- Arachne Thread
INSERT INTO `mob_droplist` VALUES (9205,0,1634,24); -- Rhodonite
INSERT INTO `mob_droplist` VALUES (9205,0,830,24); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9205,0,1311,29); -- Piece of oxblood

-- ------------------Keratyrannos ------------------------------
INSERT INTO `mob_droplist` VALUES (9206,0,11643,237); -- Odium Ring
INSERT INTO `mob_droplist` VALUES (9206,0,830,14); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9206,0,645,2); -- Darksteel Ore
INSERT INTO `mob_droplist` VALUES (9206,0,1311,24); -- Piece of oxblood
INSERT INTO `mob_droplist` VALUES (9206,0,1997,30); -- Sailcloth
INSERT INTO `mob_droplist` VALUES (9206,0,1829,17); -- Red Grass Cloth
INSERT INTO `mob_droplist` VALUES (9206,0,1740,14); -- Iolite
INSERT INTO `mob_droplist` VALUES (9206,0,739,7); -- Orichalcum Ore
INSERT INTO `mob_droplist` VALUES (9206,0,1262,0); -- Dark Ore
INSERT INTO `mob_droplist` VALUES (9206,0,1634,19); -- Rhodonite
INSERT INTO `mob_droplist` VALUES (9206,0,1133,4); -- Dragon Blood

-- ------------------Pavan - note only temp items drop ------------------------------
INSERT INTO `mob_droplist` VALUES (9207,0,5831,50); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,5846,50); -- Fool's Tonic-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,5439,50); -- Vicar's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,5844,50); -- Champion's Gambir-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,5845,50); -- Fanatic's Tonic-temp item

-- ------------------Sarcophilus ------------------------------
INSERT INTO `mob_droplist` VALUES (9208,0,11526,176); -- Bersail Cap
INSERT INTO `mob_droplist` VALUES (9208,0,4272,39); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9208,0,645,15); -- Darksteel Ore
INSERT INTO `mob_droplist` VALUES (9208,0,1623,20); -- Eft Skin
INSERT INTO `mob_droplist` VALUES (9208,0,1741,8); -- High-Quality Eft Skin
INSERT INTO `mob_droplist` VALUES (9208,0,1255,15); -- Fire Ore
INSERT INTO `mob_droplist` VALUES (9208,0,1829,25); -- Red Grass Cloth
INSERT INTO `mob_droplist` VALUES (9208,0,942,45); -- Philosopher's Stone

-- ------------------Siranpa Kamuy ------------------------------
INSERT INTO `mob_droplist` VALUES (9209,0,11639,129); -- Blason Ring
INSERT INTO `mob_droplist` VALUES (9209,0,4377,28); -- Coeurl Meat

-- ------------------Ironclad Sunderer ------------------------------
INSERT INTO `mob_droplist` VALUES (9210,0,19732,147); -- Miramar Gun
INSERT INTO `mob_droplist` VALUES (9210,0,3148,75); -- Charis Seal: Body DNC
INSERT INTO `mob_droplist` VALUES (9210,0,3148,76); -- Charis Seal: Body DNC
INSERT INTO `mob_droplist` VALUES (9210,0,3148,77); -- Charis Seal: Body DNC
INSERT INTO `mob_droplist` VALUES (9210,0,3136,131); -- Creed Seal: Body PLD
INSERT INTO `mob_droplist` VALUES (9210,0,3136,132); -- Creed Seal: Body PLD
INSERT INTO `mob_droplist` VALUES (9210,0,3136,133); -- Creed Seal: Body PLD
INSERT INTO `mob_droplist` VALUES (9210,0,3138,67); -- Ferine Seal: Body BST
INSERT INTO `mob_droplist` VALUES (9210,0,3138,69); -- Ferine Seal: Body BST
INSERT INTO `mob_droplist` VALUES (9210,0,3138,68); -- Ferine Seal: Body BST
INSERT INTO `mob_droplist` VALUES (9210,0,3140,141); -- Sylvan Seal: Body RNG
INSERT INTO `mob_droplist` VALUES (9210,0,3140,142); -- Sylvan Seal: Body RNG
INSERT INTO `mob_droplist` VALUES (9210,0,3293,210); -- Iron Plate
INSERT INTO `mob_droplist` VALUES (9210,0,3293,900); -- Iron Plate

-- ------------------Lorelei ------------------------------
INSERT INTO `mob_droplist` VALUES (9211,0,11702,224); -- Centaurus Earring
INSERT INTO `mob_droplist` VALUES (9211,0,3263,257); -- Naiad's Lock
INSERT INTO `mob_droplist` VALUES (9211,0,3162,171); -- Iga Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3162,172); -- Iga Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3166,185); -- Navarch's Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3166,186); -- Navarch's Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3151,328); -- Tantra Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3151,329); -- Tantra Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3156,228); -- Creed Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,3156,229); -- Creed Seal: Hands

-- ------------------Teugghia ------------------------------
INSERT INTO `mob_droplist` VALUES (9212,0,11907,211); -- Torrid Gages
INSERT INTO `mob_droplist` VALUES (9212,0,3143,55); -- Lancer's Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3143,56); -- Lancer's Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3143,57); -- Lancer's Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3133,81); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3133,82); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3133,83); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3133,84); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3142,55); -- Iga Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3142,56); -- Iga Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3142,57); -- Iga Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3137,83); -- Bale Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,3137,84); -- Bale Seal: Body

-- ------------------Fulmotondro - note only temp items drop ------------------------------
INSERT INTO `mob_droplist` VALUES (9213,0,5831,50); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,5846,50); -- Fool's Tonic-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,5439,50); -- Vicar's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,5844,50); -- Champion's Gambir-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,5845,50); -- Fanatic's Tonic-temp item

-- ------------------Gnawtooth Gary ------------------------------
INSERT INTO `mob_droplist` VALUES (9214,0,19259,223); -- Clarus Stone
INSERT INTO `mob_droplist` VALUES (9214,0,3193,356); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,3193,356); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,3193,356); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,3193,356); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,3204,303); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,3204,303); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,3204,303); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,3204,303); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,3207,363); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,3207,363); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,3207,363); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,3207,363); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,3199,204); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9214,0,3199,204); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9214,0,3199,204); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9214,0,3199,204); -- Aoidos' Seal: Feet BRD

-- ------------------Iku-Turso ------------------------------
INSERT INTO `mob_droplist` VALUES (9215,0,19057,112); -- Caecus Grip
INSERT INTO `mob_droplist` VALUES (9215,0,3191,125); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,3191,126); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,3191,127); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,3191,128); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,3202,133); -- Iga Seal: Feet NIN
INSERT INTO `mob_droplist` VALUES (9215,0,3202,134); -- Iga Seal: Feet NIN
INSERT INTO `mob_droplist` VALUES (9215,0,3202,132); -- Iga Seal: Feet NIN
INSERT INTO `mob_droplist` VALUES (9215,0,3195,79); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,3195,78); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,3195,77); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,3208,76); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,3208,85); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9215,0,3208,86); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9215,0,3208,87); -- Charis Seal: Feet DNC

-- ------------------Kadraeth the Hatespawn ------------------------------
INSERT INTO `mob_droplist` VALUES (9216,0,19258,91); -- Qirmiz Tathlum
INSERT INTO `mob_droplist` VALUES (9216,0,3199,231); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9216,0,3196,149); -- Creed Seal: Feet PLD
INSERT INTO `mob_droplist` VALUES (9216,0,3196,148); -- Creed Seal: Feet PLD
INSERT INTO `mob_droplist` VALUES (9216,0,3205,220); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9216,0,3200,237); -- Sylvan Seal: Feet RNG

-- ------------------Karkadann ------------------------------
INSERT INTO `mob_droplist` VALUES (9217,0,11615,1000); -- Orison Locket
INSERT INTO `mob_droplist` VALUES (9217,0,16207,1000); -- Iga Dochugappa
INSERT INTO `mob_droplist` VALUES (9217,0,11935,205); -- Ambusher's Hose
INSERT INTO `mob_droplist` VALUES (9217,0,3217,436); -- Card of Ardor
INSERT INTO `mob_droplist` VALUES (9217,0,3221,513); -- Card of Wieldance
INSERT INTO `mob_droplist` VALUES (9217,0,729,77); -- Bloodwood log
INSERT INTO `mob_droplist` VALUES (9217,0,1301,26); -- Wind bead
INSERT INTO `mob_droplist` VALUES (9217,0,4448,26); -- Puffball
INSERT INTO `mob_droplist` VALUES (9217,0,1299,26); -- Fire bead

-- ------------------Khalkotaur ------------------------------
INSERT INTO `mob_droplist` VALUES (9218,0,3197,90); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9218,0,3197,91); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9218,0,3197,89); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9218,0,3203,208); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9218,0,3190,331); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9218,0,3201,112); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9218,0,3201,111); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9218,0,19058,154); -- Vox Grip

-- ------------------Quasimodo ------------------------------
INSERT INTO `mob_droplist` VALUES (9219,0,18968,78); -- Bounty Sickle
INSERT INTO `mob_droplist` VALUES (9219,0,3193,75); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,3193,76); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,3193,77); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,3193,78); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,3194,90); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,3194,93); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,3194,91); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,3194,92); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,3192,79); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,3192,78); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,3192,80); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,3192,81); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,3209,69); -- Savant's Seal: Feet SCH
INSERT INTO `mob_droplist` VALUES (9219,0,3209,68); -- Savant's Seal: Feet SCH
INSERT INTO `mob_droplist` VALUES (9219,0,3209,67); -- Savant's Seal: Feet SCH
INSERT INTO `mob_droplist` VALUES (9219,0,3209,66); -- Savant's Seal: Feet SCH

-- ------------------Rakshas ------------------------------
INSERT INTO `mob_droplist` VALUES (9220,0,19316,316); -- Fetter Lance
INSERT INTO `mob_droplist` VALUES (9220,0,4377,20); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9220,0,4447,19); -- Scream Fungus
INSERT INTO `mob_droplist` VALUES (9220,0,2315,31); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9220,0,942,51); -- Philosopher's Stone

-- ------------------Seps ------------------------------
INSERT INTO `mob_droplist` VALUES (9221,0,17856,298); -- Syrinx
INSERT INTO `mob_droplist` VALUES (9221,0,3194,94); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,3194,93); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,3194,95); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,3194,94); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,3209,93); -- Savant's Seal: Feet (SCH)
INSERT INTO `mob_droplist` VALUES (9221,0,3209,94); -- Savant's Seal: Feet (SCH)
INSERT INTO `mob_droplist` VALUES (9221,0,3209,95); -- Savant's Seal: Feet (SCH)
INSERT INTO `mob_droplist` VALUES (9221,0,3198,73); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,3198,74); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,3198,75); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,3198,76); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,3200,128); -- Sylvan Seal: Feet (RNG)
INSERT INTO `mob_droplist` VALUES (9221,0,3200,127); -- Sylvan Seal: Feet (RNG)
INSERT INTO `mob_droplist` VALUES (9221,0,3200,129); -- Sylvan Seal: Feet (RNG)

-- ------------------Xan ------------------------------
INSERT INTO `mob_droplist` VALUES (9222,0,11753,353); -- Emphatikos Rope
INSERT INTO `mob_droplist` VALUES (9222,0,4377,39); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9222,0,4272,20); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9222,0,2315,98); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9222,0,4387,20); -- Wild Onion

-- ------------------Armillaria ------------------------------
INSERT INTO `mob_droplist` VALUES (9223,0,18803,235); -- Pax Grip
INSERT INTO `mob_droplist` VALUES (9223,0,3203,109); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,3203,118); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,3203,112); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,3203,111); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,3190,114); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,3190,115); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,3190,121); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,3190,120); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,3195,117); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9223,0,3195,118); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9223,0,3195,119); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9223,0,3208,75); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9223,0,3208,76); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9223,0,3208,77); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9223,0,3208,78); -- Charis Seal: Feet DNC

-- ------------------Chhir Batti ------------------------------
INSERT INTO `mob_droplist` VALUES (9224,0,19054,93); -- Fulcio Grip
INSERT INTO `mob_droplist` VALUES (9224,0,3197,96); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9224,0,3197,97); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9224,0,3197,98); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9224,0,3201,87); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9224,0,3201,88); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9224,0,3201,89); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9224,0,3192,82); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,3192,85); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,3192,86); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,3192,84); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,3205,60); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9224,0,3205,62); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9224,0,3205,63); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9224,0,3205,64); -- Mavi Seal: Feet BLU

-- ------------------Div-e Sepid ------------------------------
INSERT INTO `mob_droplist` VALUES (9225,0,11434,61); -- Sapientia Sabots
INSERT INTO `mob_droplist` VALUES (9225,0,3208,100); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,3208,102); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,3208,101); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,3208,99); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,85); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,88); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,89); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,87); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3190,86); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,3192,99); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,3192,98); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,3192,97); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,3192,96); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,3206,116); -- Navarch's Seal: Feet (COR)
INSERT INTO `mob_droplist` VALUES (9225,0,3206,117); -- Navarch's Seal: Feet (COR)
INSERT INTO `mob_droplist` VALUES (9225,0,3206,118); -- Navarch's Seal: Feet (COR)

-- ------------------Durinn ------------------------------
INSERT INTO `mob_droplist` VALUES (9226,0,11431,1000); -- Ballerines
INSERT INTO `mob_droplist` VALUES (9226,0,18966,114); -- Crisis Scythe
INSERT INTO `mob_droplist` VALUES (9226,0,3228,800); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,3228,650); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,3228,350); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,3226,550); -- Stone of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,3220,550); -- Jewel of Wieldance
INSERT INTO `mob_droplist` VALUES (9226,0,3221,260); -- Card of Wieldance
INSERT INTO `mob_droplist` VALUES (9226,0,5564,8); -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (9226,0,2703,2); -- Khromated Leather
INSERT INTO `mob_droplist` VALUES (9226,0,729,2); -- Bloodwood Log
INSERT INTO `mob_droplist` VALUES (9226,0,722,2); -- Divine Lumber
INSERT INTO `mob_droplist` VALUES (9226,0,1306,1); -- Dark Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1302,1); -- Earth Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1300,1); -- Ice Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1303,1); -- Lightning Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1304,1); -- Water Bead
INSERT INTO `mob_droplist` VALUES (9226,0,1301,1); -- Wind Bead

-- ------------------Dvalinn ------------------------------
INSERT INTO `mob_droplist` VALUES (9227,0,11649,117); -- Solemn Ring
INSERT INTO `mob_droplist` VALUES (9227,0,3206,86); -- Navarch's Seal: Feet COR
INSERT INTO `mob_droplist` VALUES (9227,0,3206,87); -- Navarch's Seal: Feet COR
INSERT INTO `mob_droplist` VALUES (9227,0,3206,88); -- Navarch's Seal: Feet COR
INSERT INTO `mob_droplist` VALUES (9227,0,3198,102); -- Ferine Seal: Feet BST
INSERT INTO `mob_droplist` VALUES (9227,0,3198,101); -- Ferine Seal: Feet BST
INSERT INTO `mob_droplist` VALUES (9227,0,3198,103); -- Ferine Seal: Feet BST
INSERT INTO `mob_droplist` VALUES (9227,0,3207,134); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9227,0,3207,135); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9227,0,3204,108); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9227,0,3204,109); -- Caller's Seal: Feet SMN

-- ------------------abyssic cluster ------------------------------
INSERT INTO `mob_droplist` VALUES (9228,0,11621,314); -- Chrysopoeia Torque
INSERT INTO `mob_droplist` VALUES (9228,0,18778,111); -- Marotte Claws
INSERT INTO `mob_droplist` VALUES (9228,0,4377,41); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9228,0,887,41); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9228,0,722,22); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9228,0,902,11); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9228,0,4272,18); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9228,0,2315,30); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9228,0,2152,15); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9228,0,4387,41); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9228,0,2428,11); -- Wivre Hide
INSERT INTO `mob_droplist` VALUES (9228,0,885,26); -- Turtle Shell

-- ------------------avalerion ------------------------------
INSERT INTO `mob_droplist` VALUES (9229,0,11648,261); -- Spiral Ring
INSERT INTO `mob_droplist` VALUES (9229,0,3183,115); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,3183,117); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,3183,118); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,3183,116); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,3179,82); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,3179,83); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,3179,84); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,3179,85); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,3189,102); -- Savant's Seal: Legs SCH
INSERT INTO `mob_droplist` VALUES (9229,0,3189,103); -- Savant's Seal: Legs SCH
INSERT INTO `mob_droplist` VALUES (9229,0,3189,104); -- Savant's Seal: Legs SCH
INSERT INTO `mob_droplist` VALUES (9229,0,3171,59); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9229,0,3171,57); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9229,0,3171,60); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9229,0,3171,61); -- Tantra Seal: Legs MNK

-- ------------------cep-kamuy ------------------------------
INSERT INTO `mob_droplist` VALUES (9230,0,11696,140); -- Kemas Earring
INSERT INTO `mob_droplist` VALUES (9230,0,3172,116); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3172,119); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3172,118); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3172,117); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3181,123); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3181,122); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3181,120); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3181,121); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3177,112); -- Bale Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3177,111); -- Bale Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3177,110); -- Bale Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3185,96); -- Mavi Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3185,95); -- Mavi Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,3185,94); -- Mavi Seal: Legs

-- ------------------flame skimmer ------------------------------
INSERT INTO `mob_droplist` VALUES (9231,0,19313,375); -- Magnus Lance
INSERT INTO `mob_droplist` VALUES (9231,0,3184,94); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,3184,93); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,3184,91); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,3184,92); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,3187,96); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,3187,97); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,3187,98); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,3187,99); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,3178,147); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3178,137); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3178,127); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3178,107); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3178,117); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,3186,86); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9231,0,3186,87); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9231,0,3186,88); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9231,0,3186,89); -- Navarch's Seal: Legs COR

-- ------------------ironclad observer ------------------------------
INSERT INTO `mob_droplist` VALUES (9232,0,19314,261); -- Quint Spear
INSERT INTO `mob_droplist` VALUES (9232,0,887,45); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9232,0,722,1); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9232,0,1447,1); -- Lacquer Tree Lumber
INSERT INTO `mob_droplist` VALUES (9232,0,2152,27); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9232,0,1311,1); -- Oxblood
INSERT INTO `mob_droplist` VALUES (9232,0,4387,81); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9232,0,4377,54); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9232,0,5455,1); -- Ahtapot

-- ------------------ironclad pulverizer ------------------------------
INSERT INTO `mob_droplist` VALUES (9233,0,16206,933); -- Unkai Sugemino
INSERT INTO `mob_droplist` VALUES (9233,0,11620,1000); -- Savant's Chain
INSERT INTO `mob_droplist` VALUES (9233,0,11936,67); -- Bustle Dirs
INSERT INTO `mob_droplist` VALUES (9233,0,3215,333); -- Coin of Ardor
INSERT INTO `mob_droplist` VALUES (9233,0,3219,533); -- Coin of Wieldance
INSERT INTO `mob_droplist` VALUES (9233,0,655,1); -- Adaman Ingot
INSERT INTO `mob_droplist` VALUES (9233,0,729,1); -- Bloodwood Log
INSERT INTO `mob_droplist` VALUES (9233,0,4377,1); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9233,0,902,1); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9233,0,5564,67); -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (9233,0,2703,67); -- Khromated Leather
INSERT INTO `mob_droplist` VALUES (9233,0,1447,1); -- Lacquer Tree Lumber
INSERT INTO `mob_droplist` VALUES (9233,0,1303,1); -- Lightning Bead
INSERT INTO `mob_droplist` VALUES (9233,0,2152,1); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9233,0,1711,1); -- Molybdenum Ingot
INSERT INTO `mob_droplist` VALUES (9233,0,1313,1); -- Siren's Hair
INSERT INTO `mob_droplist` VALUES (9233,0,885,1); -- Turtle Shell

-- ------------------ironclad severer ------------------------------
INSERT INTO `mob_droplist` VALUES (9234,0,11360,69); -- Taranis's Harness
INSERT INTO `mob_droplist` VALUES (9234,0,11619,746); -- Caller's Pendant
INSERT INTO `mob_droplist` VALUES (9234,0,11751,899); -- Cirque Sash
INSERT INTO `mob_droplist` VALUES (9234,0,16203,788); -- Goetia Mantle
INSERT INTO `mob_droplist` VALUES (9234,0,655,32); -- Adaman Ingot
INSERT INTO `mob_droplist` VALUES (9234,0,1312,17); -- Angel Skin
INSERT INTO `mob_droplist` VALUES (9234,0,729,17); -- Bloodwood Log
INSERT INTO `mob_droplist` VALUES (9234,0,836,33); -- Damascene Cloth
INSERT INTO `mob_droplist` VALUES (9234,0,902,17); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9234,0,722,50); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9234,0,723,17); -- Divine Lumber
INSERT INTO `mob_droplist` VALUES (9234,0,1306,17); -- Dark Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1305,17); -- Light Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1302,17); -- Earth Bead
INSERT INTO `mob_droplist` VALUES (9234,0,5564,50); -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (9234,0,1300,17); -- Ice Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1299,17); -- Fire Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1304,17); -- Water Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1301,17); -- Wind Bead
INSERT INTO `mob_droplist` VALUES (9234,0,1469,17); -- Wootz Ore
INSERT INTO `mob_droplist` VALUES (9234,0,4387,17); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9234,0,1303,17); -- Lightning Bead
INSERT INTO `mob_droplist` VALUES (9234,0,3216,611); -- Jewel of Ardor
INSERT INTO `mob_droplist` VALUES (9234,0,3220,556); -- Jewel of Wieldance

-- ------------------jala - note only temp items drop  ------------------------------
INSERT INTO `mob_droplist` VALUES (9235,0,5831,15); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5440,15); -- Dusty Wing-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5836,15); -- Healing Salve II-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5851,15); -- Berserker's Tonic-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5834,15); -- Lucid Wings I-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5395,15); -- Cleric's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5397,15); -- Sprinter's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5435,15); -- Fool's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5826,15); -- Lucid Potion III-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,5829,15); -- Lucid Ether III-temp item

-- ------------------karkatakam ------------------------------
INSERT INTO `mob_droplist` VALUES (9236,0,16210,536); -- Ebullient Cape
INSERT INTO `mob_droplist` VALUES (9236,0,2315,33); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9236,0,887,36); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9236,0,793,36); -- Black Pearl
INSERT INTO `mob_droplist` VALUES (9236,0,902,36); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9236,0,1311,36); -- Oxblood
INSERT INTO `mob_droplist` VALUES (9236,0,719,36); -- Ebony Lumber
INSERT INTO `mob_droplist` VALUES (9236,0,885,1); -- Turtle Shell
INSERT INTO `mob_droplist` VALUES (9236,0,722,36); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9236,0,2152,1); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9236,0,4387,39); -- Wild Onion

-- ------------------manohra ------------------------------
INSERT INTO `mob_droplist` VALUES (9237,0,11694,123); -- Bloodgem Earring
INSERT INTO `mob_droplist` VALUES (9237,0,3170,80); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,3170,83); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,3170,82); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,3170,81); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,3175,147); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9237,0,3175,145); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9237,0,3175,146); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9237,0,3188,89); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,3188,86); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,3188,87); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,3188,88); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,3183,89); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9237,0,3183,86); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9237,0,3183,87); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9237,0,3183,88); -- Lancer's Seal: Legs DRG

-- ------------------minax bugard ------------------------------
INSERT INTO `mob_droplist` VALUES (9238,0,19315,264); -- Erebus's Lance
INSERT INTO `mob_droplist` VALUES (9238,0,3171,112); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,3171,115); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,3171,114); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,3171,116); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,3186,144); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9238,0,3186,146); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9238,0,3186,145); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9238,0,3182,93); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9238,0,3182,95); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9238,0,3182,94); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9238,0,3176,95); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9238,0,3176,94); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9238,0,3176,93); -- Creed Seal: Legs PLD

-- ------------------nehebkau ------------------------------
INSERT INTO `mob_droplist` VALUES (9239,0,19053,152); -- Curatio Grip
INSERT INTO `mob_droplist` VALUES (9239,0,3176,86); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,3176,87); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,3176,88); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,3176,89); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,3174,75); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,3174,76); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,3174,77); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,3174,78); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,3181,183); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,3181,182); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,3181,180); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,3181,181); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,3175,136); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9239,0,3175,135); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9239,0,3175,134); -- Raider's Seal: Legs THF

-- ------------------nonno ------------------------------
INSERT INTO `mob_droplist` VALUES (9240,0,19055,118); -- Macero Grip
INSERT INTO `mob_droplist` VALUES (9240,0,3173,91); -- Goetia Seal: Legs BLM
INSERT INTO `mob_droplist` VALUES (9240,0,3173,93); -- Goetia Seal: Legs BLM
INSERT INTO `mob_droplist` VALUES (9240,0,3173,92); -- Goetia Seal: Legs BLM
INSERT INTO `mob_droplist` VALUES (9240,0,3182,165); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9240,0,3182,164); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9240,0,3182,163); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9240,0,3177,86); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,3177,89); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,3177,87); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,3177,88); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,3187,94); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9240,0,3187,96); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9240,0,3187,95); -- Cirque Seal: Legs PUP

-- ------------------npfundlwa ------------------------------
INSERT INTO `mob_droplist` VALUES (9241,0,19059,121); -- Quire Grip
INSERT INTO `mob_droplist` VALUES (9241,0,3172,93); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,3172,83); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,3172,73); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,3172,173); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,3170,88); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,3170,78); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,3170,68); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,3170,168); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,3188,68); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,3188,98); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,3188,78); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,3188,88); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,3186,57); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9241,0,3186,67); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9241,0,3186,167); -- Navarch's Seal: Legs COR

-- ------------------tuskertrap ------------------------------
INSERT INTO `mob_droplist` VALUES (9242,0,11623,100); -- Noetic Torque
INSERT INTO `mob_droplist` VALUES (9242,0,3184,64); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,3184,74); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,3184,84); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,3184,174); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,3178,103); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9242,0,3178,123); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9242,0,3178,113); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9242,0,3185,83); -- Mavi Seal: Legs BLU
INSERT INTO `mob_droplist` VALUES (9242,0,3185,93); -- Mavi Seal: Legs BLU
INSERT INTO `mob_droplist` VALUES (9242,0,3185,183); -- Mavi Seal: Legs BLU
INSERT INTO `mob_droplist` VALUES (9242,0,3180,110); -- Sylvan Seal: Legs RNG
INSERT INTO `mob_droplist` VALUES (9242,0,3180,130); -- Sylvan Seal: Legs RNG
INSERT INTO `mob_droplist` VALUES (9242,0,3180,120); -- Sylvan Seal: Legs RNG

-- ------------------gaizkin ------------------------------
INSERT INTO `mob_droplist` VALUES (9243,0,19261,107); -- Jinx Discus
INSERT INTO `mob_droplist` VALUES (9243,0,3119,97); -- Aoidos' Seal: Head BRD
INSERT INTO `mob_droplist` VALUES (9243,0,3119,297); -- Aoidos' Seal: Head BRD
INSERT INTO `mob_droplist` VALUES (9243,0,3119,197); -- Aoidos' Seal: Head BRD
INSERT INTO `mob_droplist` VALUES (9243,0,3123,210); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9243,0,3123,110); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9243,0,3123,120); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9243,0,3111,174); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,3111,94); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,3111,84); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,3111,74); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,3129,140); -- Savant's Seal: Head SCH
INSERT INTO `mob_droplist` VALUES (9243,0,3129,120); -- Savant's Seal: Head SCH
INSERT INTO `mob_droplist` VALUES (9243,0,3129,130); -- Savant's Seal: Head SCH

-- ------------------gieremund ------------------------------
INSERT INTO `mob_droplist` VALUES (9244,0,18456,349); -- Yoshihiro
INSERT INTO `mob_droplist` VALUES (9244,0,3110,65); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3110,55); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3110,395); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3110,295); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3110,195); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,3115,56); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,3115,296); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,3115,196); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,3115,86); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,3123,67); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,3123,57); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,3123,47); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,3123,37); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,3128,76); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,3128,46); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,3128,86); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,3128,56); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,3128,66); -- Charis Seal: Head DNC

-- ------------------mielikki ------------------------------
INSERT INTO `mob_droplist` VALUES (9245,0,16190,153); -- Bloom Buckler
INSERT INTO `mob_droplist` VALUES (9245,0,3118,143); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,3118,133); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,3118,113); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,3118,123); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,3126,31); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,3126,41); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,3126,51); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,3126,61); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,3127,147); -- Cirque Seal: Head PUP
INSERT INTO `mob_droplist` VALUES (9245,0,3127,167); -- Cirque Seal: Head PUP
INSERT INTO `mob_droplist` VALUES (9245,0,3127,157); -- Cirque Seal: Head PUP
INSERT INTO `mob_droplist` VALUES (9245,0,3124,55); -- Caller's Seal: Head SMN
INSERT INTO `mob_droplist` VALUES (9245,0,3124,45); -- Caller's Seal: Head SMN
INSERT INTO `mob_droplist` VALUES (9245,0,3124,35); -- Caller's Seal: Head SMN

-- ------------------svarbhanu ------------------------------
INSERT INTO `mob_droplist` VALUES (9246,0,19188,250); -- Killer Shortbow
INSERT INTO `mob_droplist` VALUES (9246,0,746,25); -- Platinum Ore
INSERT INTO `mob_droplist` VALUES (9246,0,836,1); -- Damascene Cloth
INSERT INTO `mob_droplist` VALUES (9246,0,4387,53); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9246,0,902,16); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9246,0,658,50); -- Damascus Ingot
INSERT INTO `mob_droplist` VALUES (9246,0,654,49); -- Darksteel Ingot
INSERT INTO `mob_droplist` VALUES (9246,0,745,29); -- Gold Ingot
INSERT INTO `mob_droplist` VALUES (9246,0,2951,16); -- Malachite
INSERT INTO `mob_droplist` VALUES (9246,0,1740,25); -- Iolite

-- ------------------tejas - note only temp items drop ------------------------------
INSERT INTO `mob_droplist` VALUES (9247,0,5395,15); -- Cleric's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,2833,15); -- Flask of mana mist-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,5435,15); -- Fool's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,5836,15); -- Healing Salve II-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,5831,15); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,5397,15); -- Sprinter's Drink-temp item

-- ------------------Naul ------------------------------
INSERT INTO `mob_droplist` VALUES (9248,0,2490,11); -- Forbidden key 1.1%

-- ------------------Thalassinon ------------------------------
INSERT INTO `mob_droplist` VALUES (9250,0,2490,12); -- Forbidden key 1.2%

-- ------------------Vermes Carnium ------------------------------
INSERT INTO `mob_droplist` VALUES (9251,0,2490,12); -- Forbidden key 1.2%

-- ------------------Wiederganger ------------------------------
INSERT INTO `mob_droplist` VALUES (9252,0,2490,14); -- Forbidden key 1.4%
INSERT INTO `mob_droplist` VALUES (9252,0,1639,124); -- Corse robe 12.4%
INSERT INTO `mob_droplist` VALUES (9252,0,1614,139); -- Corse bracelet 13.9%

-- ------------------Nematocera ------------------------------
INSERT INTO `mob_droplist` VALUES (9253,0,2490,11); -- Forbidden key 1.1%
INSERT INTO `mob_droplist` VALUES (9253,0,2522,208); -- Gnat wing 20.8%

-- ------------------Bog Body ------------------------------
INSERT INTO `mob_droplist` VALUES (9254,0,2490,64); -- Forbidden key 6.4%
INSERT INTO `mob_droplist` VALUES (9254,0,2212,132); -- Gunpowder swathe 13.2%
INSERT INTO `mob_droplist` VALUES (9254,0,2165,14); -- Qutrub gorget 1.4%

-- ------------------Cannered Noz ------------------------------
INSERT INTO `mob_droplist` VALUES (9255,0,2947,430); -- Exorcised skull 11.3%
INSERT INTO `mob_droplist` VALUES (9255,0,11607,14); -- Artemis' Medal 1.4%
INSERT INTO `mob_droplist` VALUES (9255,0,786,1); -- Ruby 0.1%
INSERT INTO `mob_droplist` VALUES (9255,0,804,5); -- Spinel 0.5%
INSERT INTO `mob_droplist` VALUES (9255,0,789,1); -- Topaz 0.1%
INSERT INTO `mob_droplist` VALUES (9255,0,4771,1); -- Stone V 0.1%
INSERT INTO `mob_droplist` VALUES (9255,0,4781,1); -- Water V 0.1%
INSERT INTO `mob_droplist` VALUES (9255,0,5152,1); -- Buffalo Meat 0.1%

-- ------------------Bhumi ------------------------------
INSERT INTO `mob_droplist` VALUES (9256,0,2490,12); -- Forbidden key 1.2%

-- ------------------Pasture Funguar ------------------------------
INSERT INTO `mob_droplist` VALUES (9257,0,2490,11); -- Forbidden key 1.1%
INSERT INTO `mob_droplist` VALUES (9257,0,4375,127); -- Danceshroom 12.7%
INSERT INTO `mob_droplist` VALUES (9257,0,4374,134); -- Sleepshroom 13.4%
INSERT INTO `mob_droplist` VALUES (9257,0,4373,134); -- Woozyshroom 13.4%

-- ------------------Chasm Gnat ------------------------------
INSERT INTO `mob_droplist` VALUES (9258,0,2522,351); -- Gnat wing 35.1%

-- ------------------Funnel Antlion ------------------------------
INSERT INTO `mob_droplist` VALUES (9259,0,1616,82); -- Antlion jaw 8.2%
INSERT INTO `mob_droplist` VALUES (9259,0,1649,20); -- Scarlet stone 2%

-- ------------------Boartrap ------------------------------
INSERT INTO `mob_droplist` VALUES (9260,0,3096,112); -- Spotted flyfrond 11.2%
INSERT INTO `mob_droplist` VALUES (9260,0,1617,85); -- Flytrap leaf 8.5%

-- ------------------wily opo-opo ------------------------------
INSERT INTO `mob_droplist` VALUES (9262,0,17296,332); -- Pebble 33.2%
INSERT INTO `mob_droplist` VALUES (9262,0,4468,166); -- Bunch of pamamas 16.6%
INSERT INTO `mob_droplist` VALUES (9262,0,4432,64); -- Kazham pineapple 6.4%
INSERT INTO `mob_droplist` VALUES (9262,0,4412,18); -- Thundermelon 1.8%

-- ------------------Desert Clionid ------------------------------
INSERT INTO `mob_droplist` VALUES (9263,0,2890,103); -- Clionid wing 10.3%
INSERT INTO `mob_droplist` VALUES (9263,0,2888,28); -- Sanguinet 2.8%

-- ------------------Oasis Amoeban ------------------------------
INSERT INTO `mob_droplist` VALUES (9264,0,2641,82); -- Amoeban pseudopod 8.2%
INSERT INTO `mob_droplist` VALUES (9264,0,2888,8); --  Sanguinet 0.8%

-- ------------------Benumbed Vodoriga ------------------------------
INSERT INTO `mob_droplist` VALUES (9265,0,2747,337); -- Gargouille shank 33.7%
INSERT INTO `mob_droplist` VALUES (9265,0,3257,83); -- Benumbed eye 8.3%
INSERT INTO `mob_droplist` VALUES (9265,0,2823,76); -- Iridium ingot 7.6%
INSERT INTO `mob_droplist` VALUES (9265,0,2747,23); -- Gargouille horn 2.3%

-- ------------------Peak Pugil ------------------------------
INSERT INTO `mob_droplist` VALUES (9267,0,868,341); -- Handful of pugil scales 34.1%
INSERT INTO `mob_droplist` VALUES (9267,0,3270,48); -- High-quality pugil scale 4.8%

-- ------------------Ashtaerh the Gallvexed ------------------------------
INSERT INTO `mob_droplist` VALUES (9268,0,11560,25); -- Pedant Cape 25%
INSERT INTO `mob_droplist` VALUES (9268,0,5152,1); -- Buffalo Meat 0.1%
INSERT INTO `mob_droplist` VALUES (9268,0,1633,1); -- Clot Plasma 0.1%
INSERT INTO `mob_droplist` VALUES (9268,0,830,1); -- Rainbow Cloth 0.1%
INSERT INTO `mob_droplist` VALUES (9268,0,1634,1); -- Rhodonite 0.1%

-- ------------------Highland Rafflesi ------------------------------
INSERT INTO `mob_droplist` VALUES (9269,0,2513,130); -- Rafflesia vine 13%
INSERT INTO `mob_droplist` VALUES (9269,0,2514,62); -- Rafflesia petal 6.2%
INSERT INTO `mob_droplist` VALUES (9269,0,2490,12); -- Forbidden key 1.2%

-- --------------------Aptant Drops ---------------------------------------
INSERT INTO `mob_droplist` VALUES (9300,0,2813,300);
INSERT INTO `mob_droplist` VALUES (9300,0,2812,250);
INSERT INTO `mob_droplist` VALUES (9301,0,2812,300);
INSERT INTO `mob_droplist` VALUES (9301,0,2817,250);
INSERT INTO `mob_droplist` VALUES (9302,0,2820,300);
INSERT INTO `mob_droplist` VALUES (9302,0,2812,250);
INSERT INTO `mob_droplist` VALUES (9303,0,2811,300);
INSERT INTO `mob_droplist` VALUES (9303,0,2812,250);
INSERT INTO `mob_droplist` VALUES (9304,0,2815,300);
INSERT INTO `mob_droplist` VALUES (9304,0,2817,300);
INSERT INTO `mob_droplist` VALUES (9305,0,2813,250);
INSERT INTO `mob_droplist` VALUES (9305,0,2818,300);
INSERT INTO `mob_droplist` VALUES (9306,0,2811,300);
INSERT INTO `mob_droplist` VALUES (9306,0,2815,250);
INSERT INTO `mob_droplist` VALUES (9306,0,2819,300);
INSERT INTO `mob_droplist` VALUES (9307,0,2816,300);
INSERT INTO `mob_droplist` VALUES (9307,0,2815,250);
INSERT INTO `mob_droplist` VALUES (9308,0,2814,300);
INSERT INTO `mob_droplist` VALUES (9308,0,2813,300);
INSERT INTO `mob_droplist` VALUES (9309,0,2814,350);
INSERT INTO `mob_droplist` VALUES (9309,0,2811,300);
INSERT INTO `mob_droplist` VALUES (9310,0,2818,350);
INSERT INTO `mob_droplist` VALUES (9310,0,2814,300);
INSERT INTO `mob_droplist` VALUES (9311,0,2821,250);
INSERT INTO `mob_droplist` VALUES (9311,0,2813,250);
INSERT INTO `mob_droplist` VALUES (9312,0,2811,300);
INSERT INTO `mob_droplist` VALUES (9312,0,2813,300);
INSERT INTO `mob_droplist` VALUES (9313,0,2813,250);
INSERT INTO `mob_droplist` VALUES (9313,0,2816,250);
INSERT INTO `mob_droplist` VALUES (9314,0,2819,300);
INSERT INTO `mob_droplist` VALUES (9314,0,2821,300);
INSERT INTO `mob_droplist` VALUES (9315,0,2820,250);
INSERT INTO `mob_droplist` VALUES (9315,0,2819,300);
INSERT INTO `mob_droplist` VALUES (9316,0,2821,250);
INSERT INTO `mob_droplist` VALUES (9316,0,2820,300);
INSERT INTO `mob_droplist` VALUES (9317,0,2817,250);
INSERT INTO `mob_droplist` VALUES (9317,0,2820,300);
INSERT INTO `mob_droplist` VALUES (9318,0,2822,250);
INSERT INTO `mob_droplist` VALUES (9318,0,2821,300);
INSERT INTO `mob_droplist` VALUES (9319,0,2816,300);
INSERT INTO `mob_droplist` VALUES (9319,0,2821,250);
INSERT INTO `mob_droplist` VALUES (9320,0,2817,300);
INSERT INTO `mob_droplist` VALUES (9320,0,2818,250);
INSERT INTO `mob_droplist` VALUES (9321,0,2818,300);
INSERT INTO `mob_droplist` VALUES (9321,0,2816,300);
INSERT INTO `mob_droplist` VALUES (9322,0,2822,250);
INSERT INTO `mob_droplist` VALUES (9322,0,2818,250);
INSERT INTO `mob_droplist` VALUES (9323,0,2816,300);
INSERT INTO `mob_droplist` VALUES (9323,0,2817,350);

-- ------------------------------Temp Drops to cover Temenos -------------------------------
INSERT INTO `mob_droplist` VALUES (4413,0,1948,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1934,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1930,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1940,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1958,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2716,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1952,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1950,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2660,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1954,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1956,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1944,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2714,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2658,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2656,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1936,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1946,040);

INSERT INTO `mob_droplist` VALUES (4415,0,1948,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1934,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1930,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1940,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1958,040);
INSERT INTO `mob_droplist` VALUES (4415,0,2716,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1952,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1950,040);
INSERT INTO `mob_droplist` VALUES (4415,0,2660,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1954,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1956,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1944,040);
INSERT INTO `mob_droplist` VALUES (4415,0,2714,040);
INSERT INTO `mob_droplist` VALUES (4415,0,2658,040);
INSERT INTO `mob_droplist` VALUES (4415,0,2656,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1936,040);
INSERT INTO `mob_droplist` VALUES (4415,0,1946,040);

INSERT INTO `mob_droplist` VALUES (4413,0,1948,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1934,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1930,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1940,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1958,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2716,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1952,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1950,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2660,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1954,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1956,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1944,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2714,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2658,040);
INSERT INTO `mob_droplist` VALUES (4413,0,2656,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1936,040);
INSERT INTO `mob_droplist` VALUES (4413,0,1946,040);

INSERT INTO `mob_droplist` VALUES (4411,0,1948,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1934,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1930,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1940,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1958,040);
INSERT INTO `mob_droplist` VALUES (4411,0,2716,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1952,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1950,040);
INSERT INTO `mob_droplist` VALUES (4411,0,2660,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1954,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1956,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1944,040);
INSERT INTO `mob_droplist` VALUES (4411,0,2714,040);
INSERT INTO `mob_droplist` VALUES (4411,0,2658,040);
INSERT INTO `mob_droplist` VALUES (4411,0,2656,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1936,040);
INSERT INTO `mob_droplist` VALUES (4411,0,1946,040);

INSERT INTO `mob_droplist` VALUES (4409,0,1948,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1934,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1930,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1940,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1958,040);
INSERT INTO `mob_droplist` VALUES (4409,0,2716,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1952,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1950,040);
INSERT INTO `mob_droplist` VALUES (4409,0,2660,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1954,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1942,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1956,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1944,040);
INSERT INTO `mob_droplist` VALUES (4409,0,2714,040);
INSERT INTO `mob_droplist` VALUES (4409,0,2658,040);
INSERT INTO `mob_droplist` VALUES (4409,0,2656,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1936,040);
INSERT INTO `mob_droplist` VALUES (4409,0,1946,040);



-- -----------------------------END Temp Temenos Fix ----------------------------

-- Unity NM drops
-- INSERT INTO `mob_droplist` VALUES (9601,0,6313,1000); -- Bertha's Coffer
-- INSERT INTO `mob_droplist` VALUES (9602,0,6312,1000); -- Harold's Coffer
-- INSERT INTO `mob_droplist` VALUES (9603,0,6314,1000); -- Pitriv's Coffer
-- INSERT INTO `mob_droplist` VALUES (9604,0,6315,1000); -- Baldurno's Coffer
-- INSERT INTO `mob_droplist` VALUES (9605,0,6316,1000); -- Mabel's Coffer
-- INSERT INTO `mob_droplist` VALUES (9606,0,6318,1000); -- Ninlil's Coffer
-- INSERT INTO `mob_droplist` VALUES (9607,0,6319,1000); -- Abyssdiver's Coffer
-- INSERT INTO `mob_droplist` VALUES (9608,0,6357,1000); -- Immani. Coffer
-- INSERT INTO `mob_droplist` VALUES (9609,0,6320,1000); -- Intuila's Coffer
-- INSERT INTO `mob_droplist` VALUES (9611,0,6330,1000); -- Malatrix's Coffer
-- INSERT INTO `mob_droplist` VALUES (9612,0,6322,1000); -- Orcfeltrap's Coffer
-- INSERT INTO `mob_droplist` VALUES (9615,0,6350,1000); -- Saman. Coffer
-- INSERT INTO `mob_droplist` VALUES (9616,0,6317,1000); -- Imperator's Coffer
-- End Unity NM drops

-- The Jumping Crab (please do not add anything to this crab without consulting Teo)
INSERT INTO `mob_droplist` VALUES (9665,0,3925,1000); -- Single Tanzenite Jewel 100%
INSERT INTO `mob_droplist` VALUES (9665,0,3925,333); -- Second Tanzenite Jewel 33.3%
INSERT INTO `mob_droplist` VALUES (9665,2,3925,33); -- Stealable Tanzenite Jewel 3.3% (good luck with that).
-- INSERT INTO `mob_droplist` VALUES (9665,0,?,?); -- future mystery item
-- INSERT INTO `mob_droplist` VALUES (9665,0,?,?); -- future mystery item
-- INSERT INTO `mob_droplist` VALUES (9665,0,?,?); -- future mystery item
-- End of Jumping Crabs Droplist. Other items may be / may become available via script.

-- bahamut (9503)
INSERT INTO `mob_droplist` VALUES (9503,0,27871,91);
INSERT INTO `mob_droplist` VALUES (9503,0,27869,65);
INSERT INTO `mob_droplist` VALUES (9503,0,27870,128);
INSERT INTO `mob_droplist` VALUES (9503,0,20901,100);
INSERT INTO `mob_droplist` VALUES (9503,0,20616,181);
INSERT INTO `mob_droplist` VALUES (9503,0,20718,103);
-- Pandy Warden (2741)
INSERT INTO `mob_droplist` VALUES (2741,0,27888,60);
INSERT INTO `mob_droplist` VALUES (2741,0,21038,50);
INSERT INTO `mob_droplist` VALUES (2741,0,27862,70);
INSERT INTO `mob_droplist` VALUES (2741,0,27710,90);
INSERT INTO `mob_droplist` VALUES (2741,0,28151,80);
INSERT INTO `mob_droplist` VALUES (2741,0,27868,70);
-- yeti (9504)
INSERT INTO `mob_droplist` VALUES (9504,0,20989,74); -- Izuna
INSERT INTO `mob_droplist` VALUES (9504,0,27886,71); -- mes haub
INSERT INTO `mob_droplist` VALUES (9504,0,28009,193); -- kotes
INSERT INTO `mob_droplist` VALUES (9504,0,21181,26); -- venebellum
INSERT INTO `mob_droplist` VALUES (9504,0,26874,191); -- supay weskit
INSERT INTO `mob_droplist` VALUES (9504,0,28172,20); -- mes slacks

-- Voidwatch Chapter 1

-- -----------
-- Sallow Seymour
-- -----------

INSERT INTO `mob_droplist` VALUES (9600,0,28351,31); -- Cloud Hairpin +1
INSERT INTO `mob_droplist` VALUES (9600,0,28340,147); -- Bokwus Boots
INSERT INTO `mob_droplist` VALUES (9600,0,3922,41); -- Rhodium Ore
INSERT INTO `mob_droplist` VALUES (9600,0,3922,155);

-- -----------
-- Ushumgal
-- -----------

INSERT INTO `mob_droplist` VALUES (9601,0,27634,31); -- thorfinn shield +1
INSERT INTO `mob_droplist` VALUES (9601,0,28340,99); -- bokwus_boots


-- -----------
-- Sarimanok
-- -----------

INSERT INTO `mob_droplist` VALUES (9602,0,21419,160); -- rigorous grip 1
INSERT INTO `mob_droplist` VALUES (9602,0,28339,114); -- manibozho_boots


-- -----------
-- Cottus
-- -----------

INSERT INTO `mob_droplist` VALUES (9603,0,28339,66); -- manibozho_boots
INSERT INTO `mob_droplist` VALUES (9603,0,28366,39); -- gaudryi necklace

-- -----------
-- Virvatuli
-- -----------

INSERT INTO `mob_droplist` VALUES (9604,0,27592,55); -- vengeful ring
INSERT INTO `mob_droplist` VALUES (9604,0,28338,135); -- mikinaak greaves

-- -----------
-- Pancimanci
-- -----------

INSERT INTO `mob_droplist` VALUES (9605,0,28338,90); -- mikinaak greaves
INSERT INTO `mob_droplist` VALUES (9605,0,21403,87); -- Damani Horn +1 -- item_basic fix needed

-- -----------
-- Lorbulcrab
-- -----------

INSERT INTO `mob_droplist` VALUES (9606,0,28506,111); -- andoaa_earring
INSERT INTO `mob_droplist` VALUES (9606,0,28059,123); -- bokwus_gloves
INSERT INTO `mob_droplist` VALUES (9606,0,21425,20); -- lentus_grip
INSERT INTO `mob_droplist` VALUES (9606,0,2879,135);

-- -----------
-- Krabimanjaro
-- -----------

INSERT INTO `mob_droplist` VALUES (9607,0,28565,49); -- Zanhi Ring -- Item_basic fix needed
INSERT INTO `mob_droplist` VALUES (9607,0,28058,167); -- manibozho gloves
INSERT INTO `mob_droplist` VALUES (9607,0,21420,159); -- Benthos Grip  -- Item_Basic fix needed

-- -----------
-- Obgunabali
-- -----------

INSERT INTO `mob_droplist` VALUES (9608,0,21374,69); -- Paeapua
INSERT INTO `mob_droplist` VALUES (9608,0,28057,110); -- mikinaak_gauntlets
INSERT INTO `mob_droplist` VALUES (9608,0,28005,169); -- alrunas_gloves_+1

-- -----------
-- Murk-veined Baneberry
-- -----------

INSERT INTO `mob_droplist` VALUES (9609,0,28604,83); -- mubvum_mantle
INSERT INTO `mob_droplist` VALUES (9609,0,27778,131); -- bokwus_circlet
INSERT INTO `mob_droplist` VALUES (9609,0,21359,101); -- Quartz Tathlum +1 -- Item_Basic fix needed

-- -----------
-- Melancholic Moira
-- -----------

INSERT INTO `mob_droplist` VALUES (9610,0,28581,77); -- beeline_ring
INSERT INTO `mob_droplist` VALUES (9610,0,28200,140); -- bokwus_slops
INSERT INTO `mob_droplist` VALUES (9610,0,21371,131); -- ginsen

-- -----------
-- Belphoebe
-- -----------

INSERT INTO `mob_droplist` VALUES (9611,0,28507,82); -- gwati_earring
INSERT INTO `mob_droplist` VALUES (9611,0,27777,105); -- manibozho_beret
INSERT INTO `mob_droplist` VALUES (9611,0,28379,149); -- mizukage-no-kubikazari

-- -----------
-- Kholomodumo
-- -----------

INSERT INTO `mob_droplist` VALUES (9612,0,28603,80); -- kumbira_cape
INSERT INTO `mob_droplist` VALUES (9612,0,28199,139); -- manibozho_brais
INSERT INTO `mob_droplist` VALUES (9612,0,27594,145); -- annealed_mantle

-- -----------
-- Lord Asag
-- -----------

INSERT INTO `mob_droplist` VALUES (9613,0,28605,85); -- samanisi_cape
INSERT INTO `mob_droplist` VALUES (9613,0,27776,127); -- mikinaak_helm
INSERT INTO `mob_droplist` VALUES (9613,0,28445,126); -- shetal_stone

-- -----------
-- Akupara
-- -----------

INSERT INTO `mob_droplist` VALUES (9614,0,28580,91); -- sangoma_ring
INSERT INTO `mob_droplist` VALUES (9614,0,28198,179); -- mikinaak_cuisses
INSERT INTO `mob_droplist` VALUES (9614,0,28493,80); -- neritic_earring

-- -----------
-- Celaeno
-- -----------

INSERT INTO `mob_droplist` VALUES (9615,0,21373,30); -- sihirik
INSERT INTO `mob_droplist` VALUES (9615,0,27919,144); -- bokwus_robe
INSERT INTO `mob_droplist` VALUES (9615,0,28056,48); -- yaoyotl_gloves
INSERT INTO `mob_droplist` VALUES (9615,0,27505,99); -- warders_charm_+1
INSERT INTO `mob_droplist` VALUES (9615,0,28538,131); -- lebeche_ring
INSERT INTO `mob_droplist` VALUES (9615,0,27775,62); -- nahtirah_hat
INSERT INTO `mob_droplist` VALUES (9615,0,2878,81); -- Scarlet Kadife

-- -----------
-- Hahava
-- -----------

INSERT INTO `mob_droplist` VALUES (9616,0,28403,50);  -- inquisitor_bead_necklace
INSERT INTO `mob_droplist` VALUES (9616,0,27918,131); -- manibozho_jerkin
INSERT INTO `mob_droplist` VALUES (9616,0,27773,37); -- yaoyotl_helm
INSERT INTO `mob_droplist` VALUES (9616,0,28428,67); -- sailfi_belt_+1
INSERT INTO `mob_droplist` VALUES (9616,0,21366,129); -- Floestone
INSERT INTO `mob_droplist` VALUES (9616,0,27720,53); -- umbani_cap
INSERT INTO `mob_droplist` VALUES (9616,0,3445,14); -- Hahava's Mail

-- -----------
-- Voidwrought
-- -----------

INSERT INTO `mob_droplist` VALUES (9617,0,21376,131); -- inlamvuyeso
INSERT INTO `mob_droplist` VALUES (9617,0,27917,161); -- mikinaak_breastplate
INSERT INTO `mob_droplist` VALUES (9617,0,28197,56); -- nahtirah_trousers
INSERT INTO `mob_droplist` VALUES (9617,0,27563,74); -- metamorph_ring_+1
INSERT INTO `mob_droplist` VALUES (9617,0,28441,111); -- ponente_sash
INSERT INTO `mob_droplist` VALUES (9617,0,28293,43); -- umbani_boots
INSERT INTO `mob_droplist` VALUES (9617,0,5103,81); -- scroll_of_crusade

-- Voidwatch Chapter 2

-- -----------
-- Goji
-- -----------

INSERT INTO `mob_droplist` VALUES (9620,0,28309,77); -- Temachtiani boots
INSERT INTO `mob_droplist` VALUES (9620,0,28032,53); -- Temachtiani gloves
INSERT INTO `mob_droplist` VALUES (9620,0,28306,120); -- Outrider_Greaves
INSERT INTO `mob_droplist` VALUES (9620,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9620,0,21119,53); -- Eminent Wand
INSERT INTO `mob_droplist` VALUES (9620,0,28499,34); -- Influx_Earring
INSERT INTO `mob_droplist` VALUES (9620,0,4890,15); -- Scroll Of Firaja

-- -----------
-- Gugalanna
-- -----------

INSERT INTO `mob_droplist` VALUES (9621,0,10488,95); -- Kudzu_Aketon
INSERT INTO `mob_droplist` VALUES (9621,0,28032,53); -- Temachtiani_Gloves
INSERT INTO `mob_droplist` VALUES (9621,0,28171,2); -- Temachtiani_Pants
INSERT INTO `mob_droplist` VALUES (9621,0,28306,120); -- Outrider_Greaves
INSERT INTO `mob_droplist` VALUES (9621,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9621,0,28656,110); -- Eminent_Shield
INSERT INTO `mob_droplist` VALUES (9621,0,28499,82); -- Influx_Earring

-- -----------
-- Yatagarasu
-- -----------

INSERT INTO `mob_droplist` VALUES (9622,0,10468,93); -- Kumarbi's Akar
INSERT INTO `mob_droplist` VALUES (9622,0,28171,13); -- Temachtiani_Pants
INSERT INTO `mob_droplist` VALUES (9622,0,27743,74); -- Temachtiani_Headband
INSERT INTO `mob_droplist` VALUES (9622,0,28307,120); -- Espial_Socks
INSERT INTO `mob_droplist` VALUES (9622,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9622,0,21281,70); -- Eminent_Gun
INSERT INTO `mob_droplist` VALUES (9622,0,28500,91); -- Upsurge Earring
INSERT INTO `mob_droplist` VALUES (9622,0,4851,6); -- Meteor

-- -----------
-- Agathos
-- -----------

INSERT INTO `mob_droplist` VALUES (9623,0,10486,67); -- Porthos_Byrnie
INSERT INTO `mob_droplist` VALUES (9623,0,27884,40); -- Temachtiani_Shirt
INSERT INTO `mob_droplist` VALUES (9623,0,27743,90); -- Temachtiani_Headband
INSERT INTO `mob_droplist` VALUES (9623,0,28307,71); -- Espial_Socks
INSERT INTO `mob_droplist` VALUES (9623,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9623,0,21231,95); -- Eminent_Bow
INSERT INTO `mob_droplist` VALUES (9623,0,28500,9); -- Upsurge Earring

-- -----------
-- Cherufe
-- -----------

INSERT INTO `mob_droplist` VALUES (9624,0,10284,95); -- Grandoynes_Mail
INSERT INTO `mob_droplist` VALUES (9624,0,27884,67); -- Temachtiani_Shirt
INSERT INTO `mob_droplist` VALUES (9624,0,28309,70); -- Temachtiani boots
INSERT INTO `mob_droplist` VALUES (9624,0,28308,92); -- Wayfarer_Clogs
INSERT INTO `mob_droplist` VALUES (9624,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9624,0,21183,163); -- Eminent_Pole
INSERT INTO `mob_droplist` VALUES (9624,0,28501,40); -- Allegro_Earring

-- -----------
-- Taweret
-- -----------

INSERT INTO `mob_droplist` VALUES (9625,0,28309,94); -- Temachtiani boots
INSERT INTO `mob_droplist` VALUES (9625,0,27884,102); -- Temachtiani_Shirt
INSERT INTO `mob_droplist` VALUES (9625,0,28308,62); -- Wayfarer_Clogs
INSERT INTO `mob_droplist` VALUES (9625,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9625,0,20954,81); -- Eminent_Lance
INSERT INTO `mob_droplist` VALUES (9625,0,28501,39); -- Allegro_Earring
INSERT INTO `mob_droplist` VALUES (9625,0,4856,11); -- Aspir II

-- -----------
-- Roly Poly
-- -----------

INSERT INTO `mob_droplist` VALUES (9626,0,28168,47); -- Outrider_Hose
INSERT INTO `mob_droplist` VALUES (9626,0,28547,49); -- Merirosvo_Ring
INSERT INTO `mob_droplist` VALUES (9626,0,20998,62); -- Kaitsuburi
INSERT INTO `mob_droplist` VALUES (9626,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9626,0,26787,180); -- Alhazen_Hat
INSERT INTO `mob_droplist` VALUES (9626,0,20766,220); -- Eminent_Sword
INSERT INTO `mob_droplist` VALUES (9626,0,28549,37); -- Enlivened_Ring

-- -----------
-- Laidly Laurence
-- -----------

INSERT INTO `mob_droplist` VALUES (9627,0,28168,120); -- Outrider_Hose
INSERT INTO `mob_droplist` VALUES (9627,0,28547,54); -- Merirosvo_Ring
INSERT INTO `mob_droplist` VALUES (9627,0,20998,68); -- Kaitsuburi
INSERT INTO `mob_droplist` VALUES (9627,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9627,0,26787,75); -- Alhazen_Hat
INSERT INTO `mob_droplist` VALUES (9627,0,20766,220); -- Eminent_Sword
INSERT INTO `mob_droplist` VALUES (9627,0,28549,28); -- Enlivened_Ring
INSERT INTO `mob_droplist` VALUES (9627,0,4827,6); -- Comet

-- -----------
-- Mellonia
-- -----------

INSERT INTO `mob_droplist` VALUES (9628,0,28169,37); -- Espial_Hose
INSERT INTO `mob_droplist` VALUES (9628,0,28504,20); -- Spellbreaker_Earring
INSERT INTO `mob_droplist` VALUES (9628,0,21044,100); -- Ichimonji_Yofusa
INSERT INTO `mob_droplist` VALUES (9628,0,28366,67); -- Gaudryi_Necklace
INSERT INTO `mob_droplist` VALUES (9628,0,20624,220); -- Eminent_Dagger
INSERT INTO `mob_droplist` VALUES (9628,0,28550,62); -- Vehemance_Ring
INSERT INTO `mob_droplist` VALUES (9628,0,4049,1000); -- Rusted_Coin

-- -----------
-- Nympha Eunomia
-- -----------

INSERT INTO `mob_droplist` VALUES (9629,0,28169,120); -- Espial_Hose
INSERT INTO `mob_droplist` VALUES (9629,0,28504,40); -- Spellbreaker_Earring
INSERT INTO `mob_droplist` VALUES (9629,0,21044,100); -- Ichimonji_Yofusa
INSERT INTO `mob_droplist` VALUES (9629,0,28366,30); -- Gaudryi_Necklace
INSERT INTO `mob_droplist` VALUES (9629,0,20624,220); -- Eminent_Dagger
INSERT INTO `mob_droplist` VALUES (9629,0,28550,40); -- Vehemance_Ring
INSERT INTO `mob_droplist` VALUES (9629,0,4049,1000); -- Rusted_Coin

-- -----------
-- Gasha
-- -----------

INSERT INTO `mob_droplist` VALUES (9630,0,28170,120); -- Wayfarer_Slops
INSERT INTO `mob_droplist` VALUES (9630,0,28502,40); -- Impregnable_Earring
INSERT INTO `mob_droplist` VALUES (9630,0,20726,117); -- Eminent_Scimitar
INSERT INTO `mob_droplist` VALUES (9630,0,21405,33); -- Eminent_Flute
INSERT INTO `mob_droplist` VALUES (9630,0,28551,40); -- Longshot_Ring
INSERT INTO `mob_droplist` VALUES (9630,0,4049,1000); -- Rusted_Coin

-- -----------
-- Giltine
-- -----------

INSERT INTO `mob_droplist` VALUES (9631,0,28170,120); -- Wayfarer_Slops
INSERT INTO `mob_droplist` VALUES (9631,0,28502,40); -- Impregnable_Earring
INSERT INTO `mob_droplist` VALUES (9631,0,20726,220); -- Eminent_Scimitar
INSERT INTO `mob_droplist` VALUES (9631,0,21405,220); -- Eminent_Flute
INSERT INTO `mob_droplist` VALUES (9631,0,28551,40); -- Longshot_Ring
INSERT INTO `mob_droplist` VALUES (9631,0,4049,1000); -- Rusted_Coin

-- -----------
-- Kaggen
-- -----------

INSERT INTO `mob_droplist` VALUES (9632,0,27881,120); -- Outrider_Mail
INSERT INTO `mob_droplist` VALUES (9632,0,27410,22); -- Hippomenes_Socks
INSERT INTO `mob_droplist` VALUES (9632,0,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9632,0,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9632,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9632,0,4850,7); -- Refresh II
INSERT INTO `mob_droplist` VALUES (9632,0,8752,11); -- Cehuetzi Claw

-- -----------
-- Akvan
-- -----------

INSERT INTO `mob_droplist` VALUES (9633,0,27882,120); -- Espial_Gambison
INSERT INTO `mob_droplist` VALUES (9633,0,28274,22); -- Regal_Pumps_
INSERT INTO `mob_droplist` VALUES (9633,0,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9633,0,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9633,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9632,0,4996,5); -- Mages Ballad III
INSERT INTO `mob_droplist` VALUES (9632,0,4013,15); -- Waktza Crest

-- -----------
-- Pil
-- -----------

INSERT INTO `mob_droplist` VALUES (9634,0,27883,120); -- Wayfarer_Robe
INSERT INTO `mob_droplist` VALUES (9634,0,26702,22); -- Gavialis_Helm
INSERT INTO `mob_droplist` VALUES (9634,0,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9634,0,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9634,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9634,0,8728,13); -- Sif's Macrame
INSERT INTO `mob_droplist` VALUES (9634,0,4895,7); -- Waterja

-- -----------
-- Lancing Lamorak
-- -----------

INSERT INTO `mob_droplist` VALUES (9635,0,28539,40); -- Globidonta_Ring
INSERT INTO `mob_droplist` VALUES (9635,0,20817,220); -- Eminent_Axe
INSERT INTO `mob_droplist` VALUES (9635,0,28552,30); -- Fistmele_Ring
INSERT INTO `mob_droplist` VALUES (9635,0,28029,120); -- Outrider_Mittens
INSERT INTO `mob_droplist` VALUES (9635,0,4049,1000); -- Rusted_Coin

-- -----------
-- Bhishani
-- -----------

INSERT INTO `mob_droplist` VALUES (9636,0,28442,40); -- Olseni_Belt
INSERT INTO `mob_droplist` VALUES (9636,0,20540,220); -- Eminent_Baghnakhs
INSERT INTO `mob_droplist` VALUES (9636,0,28553,30); -- Perception_Ring
INSERT INTO `mob_droplist` VALUES (9636,0,28030,120); -- Espial_Bracers
INSERT INTO `mob_droplist` VALUES (9636,0,4049,1000); -- Rusted_Coin

-- -----------
-- Rw Nw Prt M Hrw
-- -----------

INSERT INTO `mob_droplist` VALUES (9637,0,28403,40); -- Inquisitors_Bead_Necklace
INSERT INTO `mob_droplist` VALUES (9637,0,10826,120); -- Witful belt
INSERT INTO `mob_droplist` VALUES (9637,0,21182,220); -- Eminent_Staff
INSERT INTO `mob_droplist` VALUES (9637,0,28554,30); -- Acumen_Ring
INSERT INTO `mob_droplist` VALUES (9637,0,28031,120); -- Wayfarer_Cuffs
INSERT INTO `mob_droplist` VALUES (9637,0,4049,1000); -- Rusted_Coin

-- -----------
-- Stachysaurus
-- -----------

INSERT INTO `mob_droplist` VALUES (9638,0,27506,40); -- Defiant_Collar
INSERT INTO `mob_droplist` VALUES (9638,0,28462,22); -- Hurch'lan_Sash
INSERT INTO `mob_droplist` VALUES (9638,0,20865,30); -- Eminent_Voulge
INSERT INTO `mob_droplist` VALUES (9638,0,27740,120); -- Outrider_Mask
INSERT INTO `mob_droplist` VALUES (9638,0,4049,1000); -- Rusted_Coin

-- -----------
-- Gwynn ap Nudd
-- -----------

INSERT INTO `mob_droplist` VALUES (9639,0,28496,40); -- Zennaroi_Earring
INSERT INTO `mob_droplist` VALUES (9639,0,21119,300); -- Eminent_Wand
INSERT INTO `mob_droplist` VALUES (9639,0,27741,12); -- Espial_Cap
INSERT INTO `mob_droplist` VALUES (9639,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9639,0,9062,12); -- Dark Matter

-- -----------
-- Smierc
-- -----------

INSERT INTO `mob_droplist` VALUES (9640,0,21345,40); -- Focal_Orb
INSERT INTO `mob_droplist` VALUES (9640,0,27592,22); -- Vengeful_Ring
INSERT INTO `mob_droplist` VALUES (9640,0,20908,300); -- Eminent_Sickle
INSERT INTO `mob_droplist` VALUES (9640,0,27742,120); -- Wayfarer_Circlet
INSERT INTO `mob_droplist` VALUES (9640,0,4049,1000); -- Rusted_Coin

-- -----------
-- Gaunab
-- -----------

INSERT INTO `mob_droplist` VALUES (9641,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9641,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9641,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9641,0,27230,20); -- Zoar_Subligar
INSERT INTO `mob_droplist` VALUES (9641,0,27222,12); -- Limbo_Trousers
INSERT INTO `mob_droplist` VALUES (9641,0,20610,22); -- Rhadamanthus +242 Skill Weapon
INSERT INTO `mob_droplist` VALUES (9641,0,4049,1000); -- Rusted_Coin

-- -----------
-- Ocythoe
-- -----------

INSERT INTO `mob_droplist` VALUES (9642,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9642,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9642,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9642,0,27996,20); -- Shigure_Tekko
INSERT INTO `mob_droplist` VALUES (9642,0,26869,120); -- Rosette_Jaseran
INSERT INTO `mob_droplist` VALUES (9642,0,20614,22); -- Pukulatmuj_
INSERT INTO `mob_droplist` VALUES (9642,0,4014,13); -- Yggdreant Bole
INSERT INTO `mob_droplist` VALUES (9642,0,4049,1000); -- Rusted_Coin

-- -----------
-- Kalasutrax
-- -----------

INSERT INTO `mob_droplist` VALUES (9643,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9643,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9643,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9643,0,28275,20); -- Jute_Boots
INSERT INTO `mob_droplist` VALUES (9643,0,27223,120); -- Feast_Hose
INSERT INTO `mob_droplist` VALUES (9643,0,21479,220); -- Tsoabichi_Crossbow
INSERT INTO `mob_droplist` VALUES (9643,0,4049,1000); -- Rusted_Coin

-- -----------
-- Ig-Alima
-- -----------

INSERT INTO `mob_droplist` VALUES (9644,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9644,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9644,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9644,0,26943,20); -- Agony_Jerkin
INSERT INTO `mob_droplist` VALUES (9644,0,26710,12); -- Imperial_Wing_Hairpin
INSERT INTO `mob_droplist` VALUES (9644,0,20528,220); -- Fists_of_Fury_
INSERT INTO `mob_droplist` VALUES (9644,0,4049,1000); -- Rusted_Coin

-- -----------
-- Botulus Rex
-- -----------

INSERT INTO `mob_droplist` VALUES (9645,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9645,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9645,0,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9645,0,26874,20); -- Supay_Weskit
INSERT INTO `mob_droplist` VALUES (9645,0,28135,120); -- Assiduity_Pants
INSERT INTO `mob_droplist` VALUES (9645,0,21112,22); -- Gabaxorea
INSERT INTO `mob_droplist` VALUES (9645,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9645,0,4985,4); -- Scroll Of Horde Lullaby II

-- VW Chapter 3 9646-9657

INSERT INTO `mob_droplist` VALUES (9646,0,21403,33); -- Damani Horn -- Needs Item_Basic Fix
INSERT INTO `mob_droplist` VALUES (9646,0,28442,51); -- Olseni Belt
INSERT INTO `mob_droplist` VALUES (9646,0,28636,40); -- Bookworms Cape
INSERT INTO `mob_droplist` VALUES (9646,0,4049,1000); -- Rusted_Coin

INSERT INTO `mob_droplist` VALUES (9647,0,20949,30); --  Kumalo 262 skill weapon
INSERT INTO `mob_droplist` VALUES (9647,0,27634,60); -- Thornfin shield +1
INSERT INTO `mob_droplist` VALUES (9647,0,28627,75); -- Lutian Cape
INSERT INTO `mob_droplist` VALUES (9647,0,4049,1000); -- Rusted_Coin

INSERT INTO `mob_droplist` VALUES (9648,0,20906,87); --  Vunetshelo
INSERT INTO `mob_droplist` VALUES (9648,0,28443,30); -- Yamabuki-no-obi
INSERT INTO `mob_droplist` VALUES (9648,0,28633,45); -- Gunslingers Cape
INSERT INTO `mob_droplist` VALUES (9648,0,4049,1000); -- Rusted_Coin

INSERT INTO `mob_droplist` VALUES (9649,0,20620,26); --  Sabeus
INSERT INTO `mob_droplist` VALUES (9649,0,28604,30); -- Mubvum Mantle
INSERT INTO `mob_droplist` VALUES (9649,0,28630,48); -- Updraft Mantle
INSERT INTO `mob_droplist` VALUES (9649,0,4049,1000); -- Rusted_Coin

INSERT INTO `mob_droplist` VALUES (9650,0,28351,59); --  Cloud Hairpin +1
INSERT INTO `mob_droplist` VALUES (9650,0,28443,43); -- Yamabuki-no-obo
INSERT INTO `mob_droplist` VALUES (9650,0,28635,55); -- Toetaper Mantle
INSERT INTO `mob_droplist` VALUES (9650,0,4049,1000); -- Rusted_Coin

INSERT INTO `mob_droplist` VALUES (9651,0,20995,65); --  Isuka
INSERT INTO `mob_droplist` VALUES (9651,0,28603,23); -- Kumbria Cape
INSERT INTO `mob_droplist` VALUES (9651,0,28628,39); -- Takaha Mantle
INSERT INTO `mob_droplist` VALUES (9651,0,4049,1000); -- Rusted_Coin

INSERT INTO `mob_droplist` VALUES (9652,0,27051,13); --  Kachmusha Kote +1
INSERT INTO `mob_droplist` VALUES (9652,0,27044,58); -- Crushers Gauntlets
INSERT INTO `mob_droplist` VALUES (9652,0,20945,78); -- Nativus Halberd
INSERT INTO `mob_droplist` VALUES (9652,0,28625,1000); -- Pastoralist Mantle
INSERT INTO `mob_droplist` VALUES (9652,0,4049,1000); -- Rusted_Coin

INSERT INTO `mob_droplist` VALUES (9653,0,27044,37); --  Crushers Gauntlets
INSERT INTO `mob_droplist` VALUES (9653,0,26715,78); -- Adorned Helm
INSERT INTO `mob_droplist` VALUES (9653,0,20722,80); -- Usonmunku
INSERT INTO `mob_droplist` VALUES (9653,0,28629,1000); -- Yokaze Mantle
INSERT INTO `mob_droplist` VALUES (9653,0,4049,1000); -- Rusted_Coin

INSERT INTO `mob_droplist` VALUES (9654,0,21220,100); --  Paloma +1
INSERT INTO `mob_droplist` VALUES (9654,0,21177,90); -- Twebuliij
INSERT INTO `mob_droplist` VALUES (9654,0,28626,1000); -- Rhapsodes Cape
INSERT INTO `mob_droplist` VALUES (9654,0,4049,1000); -- Rusted_Coin

INSERT INTO `mob_droplist` VALUES (9655,0,20805,98); --  Perun +_1
INSERT INTO `mob_droplist` VALUES (9655,0,26869,25); -- Reosette Jaseran +1
INSERT INTO `mob_droplist` VALUES (9655,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9655,0,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9655,0,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9655,0,4066,1000); -- Rems 3

INSERT INTO `mob_droplist` VALUES (9656,0,20612,86); --  Sangarius +1
INSERT INTO `mob_droplist` VALUES (9656,0,26873,25); -- Hime Domaru +1
INSERT INTO `mob_droplist` VALUES (9656,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9656,0,4692,15); -- Haste II
INSERT INTO `mob_droplist` VALUES (9656,0,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9656,0,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9656,0,4066,1000); -- Rems 3

INSERT INTO `mob_droplist` VALUES (9657,0,20988,96); --  Tancho +1
INSERT INTO `mob_droplist` VALUES (9657,0,26888,99); -- Shomonjijoe +1
INSERT INTO `mob_droplist` VALUES (9657,0,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9657,0,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9657,0,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9657,0,4066,1000); -- Rems 3

-- fjalar
INSERT INTO `mob_droplist` VALUES (9658,0,28479,20); -- comment me
INSERT INTO `mob_droplist` VALUES (9658,0,21104,42); -- comment me
INSERT INTO `mob_droplist` VALUES (9658,0,21276,77); -- comment me
INSERT INTO `mob_droplist` VALUES (9658,0,28631,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9658,0,4049,1000); -- Rusted_Coin

-- Abununnu
INSERT INTO `mob_droplist` VALUES (9659,0,28483,99); -- comment me
INSERT INTO `mob_droplist` VALUES (9659,0,20949,61); -- comment me
INSERT INTO `mob_droplist` VALUES (9659,0,20813,63); -- comment me
INSERT INTO `mob_droplist` VALUES (9659,0,28624,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9659,0,4049,1000); -- Rusted_Coin

-- Tsui-Goab
INSERT INTO `mob_droplist` VALUES (9660,0,27507,40); -- comment me
INSERT INTO `mob_droplist` VALUES (9660,0,20609,96); -- comment me
INSERT INTO `mob_droplist` VALUES (9660,0,20862,47); -- comment me
INSERT INTO `mob_droplist` VALUES (9660,0,28622,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9660,0,4049,1000); -- Rusted_Coin

-- Isarukitsck
INSERT INTO `mob_droplist` VALUES (9661,0,28478,78); -- comment me
INSERT INTO `mob_droplist` VALUES (9661,0,21350,57); -- comment me
INSERT INTO `mob_droplist` VALUES (9661,0,20604,43); -- comment me
INSERT INTO `mob_droplist` VALUES (9661,0,28632,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9661,0,4049,1000); -- Rusted_Coin

-- Bismark
INSERT INTO `mob_droplist` VALUES (9662,0,26896,23); -- comment me
INSERT INTO `mob_droplist` VALUES (9662,0,27220,132); -- comment me
INSERT INTO `mob_droplist` VALUES (9662,0,27407,81); -- comment me
INSERT INTO `mob_droplist` VALUES (9662,0,28617,78); -- comment me
INSERT INTO `mob_droplist` VALUES (9662,0,4692,25); -- Haste II
INSERT INTO `mob_droplist` VALUES (9662,0,4067,1000); -- Rems 4
INSERT INTO `mob_droplist` VALUES (9662,0,4067,1000); -- Rems 4
INSERT INTO `mob_droplist` VALUES (9662,0,4067,1000); -- Rems 4
INSERT INTO `mob_droplist` VALUES (9662,0,4067,1000); -- Rems 4

-- Dimgruzub
INSERT INTO `mob_droplist` VALUES (9670,0,26785,91); -- comment me
INSERT INTO `mob_droplist` VALUES (9670,0,21221,2); -- comment me
INSERT INTO `mob_droplist` VALUES (9670,0,28620,98); -- comment me
INSERT INTO `mob_droplist` VALUES (9670,0,28632,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9670,0,4049,1000); -- Rusted_Coin

-- Brekekex
INSERT INTO `mob_droplist` VALUES (9671,0,28137,37); -- comment me
INSERT INTO `mob_droplist` VALUES (9671,0,28506,38); -- comment me
INSERT INTO `mob_droplist` VALUES (9671,0,20986,59); -- comment me
INSERT INTO `mob_droplist` VALUES (9671,0,28618,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9671,0,4049,1000); -- Rusted_Coin

-- Yalungar
INSERT INTO `mob_droplist` VALUES (9672,0,28418,23); -- comment me
INSERT INTO `mob_droplist` VALUES (9672,0,28380,50); -- comment me
INSERT INTO `mob_droplist` VALUES (9672,0,20900,18); -- comment me
INSERT INTO `mob_droplist` VALUES (9672,0,28621,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9672,0,4049,1000); -- Rusted_Coin

-- Vanasarvik
INSERT INTO `mob_droplist` VALUES (9673,0,27994,94); -- comment me
INSERT INTO `mob_droplist` VALUES (9673,0,21161,38); -- comment me
INSERT INTO `mob_droplist` VALUES (9673,0,20715,19); -- Acclimator +242 Skill
INSERT INTO `mob_droplist` VALUES (9673,0,28619,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9673,0,4049,1000); -- Rusted_Coin

-- Morta
INSERT INTO `mob_droplist` VALUES (9674,0,26871,65); -- comment me
INSERT INTO `mob_droplist` VALUES (9674,0,27221,91); -- comment me
INSERT INTO `mob_droplist` VALUES (9674,0,26732,98); -- comment me
INSERT INTO `mob_droplist` VALUES (9674,0,4692,35); -- Haste II
INSERT INTO `mob_droplist` VALUES (9674,0,4068,1000); -- Rems 5
INSERT INTO `mob_droplist` VALUES (9674,0,4068,1000); -- Rems 5
INSERT INTO `mob_droplist` VALUES (9674,0,4068,1000); -- Rems 5

-- -----------
-- Iratham
-- -----------

INSERT INTO `mob_droplist` VALUES (9706,0,12103,340); --  Mavi Basmak
INSERT INTO `mob_droplist` VALUES (9706,0,19401,340); -- Farsha
INSERT INTO `mob_droplist` VALUES (9706,0,13791,420); --  Timarli Jawshan
INSERT INTO `mob_droplist` VALUES (9706,0,11733,1000); --  Aquiline Belt
INSERT INTO `mob_droplist` VALUES (9706,0,11637,700); --  Meridian Ring
INSERT INTO `mob_droplist` VALUES (9706,0,3225,550); --     Balance Card
INSERT INTO `mob_droplist` VALUES (9706,0,3224,550); --  Balance Jewel
INSERT INTO `mob_droplist` VALUES (9706,0,4015,39);
INSERT INTO `mob_droplist` VALUES (9706,0,766,72);
INSERT INTO `mob_droplist` VALUES (9706,0,3552,103);
INSERT INTO `mob_droplist` VALUES (9706,0,8992,210);

-- -----------
-- Abas
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4520 and type=0 and itemId=11409 and rate=167; -- comment me
INSERT INTO `mob_droplist` VALUES (9707,0,11409,167);
INSERT INTO `mob_droplist` VALUES (9707,0,11525,520); -- Maestria Mask
INSERT INTO `mob_droplist` VALUES (9707,0,2949,1000); -- Quivering Eft Egg

-- -----------
-- Adze
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4521 and type=0 and itemId=2428 and rate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4521 and type=0 and itemId=2426 and rate=60; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4521 and type=0 and itemId=2427 and rate=205; -- comment me
INSERT INTO `mob_droplist` VALUES (9708,0,2428,50);
INSERT INTO `mob_droplist` VALUES (9708,0,2426,60);
INSERT INTO `mob_droplist` VALUES (9708,0,2427,205);
INSERT INTO `mob_droplist` VALUES (9708,0,11594,108); --  Estoqueur's Collar
INSERT INTO `mob_droplist` VALUES (9708,0,11735,631); --  Impulse Belt

-- -----------
-- Alectryon
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4522 and type=0 and itemId=16374 and rate=140; -- comment me
INSERT INTO `mob_droplist` VALUES (9709,0,16374,140); -- comment me
INSERT INTO `mob_droplist` VALUES (9709,0,11642,250); -- Hoard Ring

-- -----------
-- Chloris
-- -----------

DELETE FROM `mob_droplist` WHERE dropId=4523 and type=0 and itemId=19610 and rate=384; -- comment me
INSERT INTO `mob_droplist` VALUES (9710,0,2928,82); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,11509,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,12741,796); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,14888,186); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,3225,193); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,3223,217); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,2928,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,8976,138);
INSERT INTO `mob_droplist` VALUES (9710,0,9003,113);
INSERT INTO `mob_droplist` VALUES (9710,0,3936,154);
INSERT INTO `mob_droplist` VALUES (9710,0,2361,248);

-- -----------
-- Chukwas
-- -----------

INSERT INTO `mob_droplist` VALUES (9711,0,11595,102); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,17185,592); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,2933,830); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,2933,91); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,646,500); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,646,130); -- COMMENT ME

-- -----------
-- Cuelebre
-- -----------

INSERT INTO `mob_droplist` VALUES (9712,0,17626,373); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9712,0,11592,55); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9712,0,2939,620); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9712,0,2939,120); -- COMMENT ME

-- -----------
-- Gancanagh
-- -----------

INSERT INTO `mob_droplist` VALUES (9713,0,19249,300); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9713,0,3223,217); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9713,0,3225,193); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9713,0,2948,1000); -- COMMENT ME

-- -----------
-- Glavoid
-- -----------

INSERT INTO `mob_droplist` VALUES (9714,0,2927,60); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,2927,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,11508,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,11523,250); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,3222,288); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,3225,266); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,9075,42);
INSERT INTO `mob_droplist` VALUES (9714,0,8724,96);
INSERT INTO `mob_droplist` VALUES (9714,0,734,251);
INSERT INTO `mob_droplist` VALUES (9714,0,8747,254);

-- -----------
-- Hedetet
-- -----------

INSERT INTO `mob_droplist` VALUES (9715,0,12388,500); -- COMMENT ME

-- -----------
-- Halimede
-- -----------

INSERT INTO `mob_droplist` VALUES (9716,0,11564,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9716,0,2945,1000); -- Shriveled Wing

-- -----------
-- Lachrymater
-- -----------

INSERT INTO `mob_droplist` VALUES (9717,0,19250,386); -- COMMENT ME

-- -----------
-- Lacovie
-- -----------

INSERT INTO `mob_droplist` VALUES (9718,0,11521,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,11729,92); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,11507,231); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,3224,142); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,3222,142); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,12104,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,3940,273);
INSERT INTO `mob_droplist` VALUES (9718,0,8990,140);
INSERT INTO `mob_droplist` VALUES (9718,0,8725,223);
INSERT INTO `mob_droplist` VALUES (9718,0,3926,255);

-- -----------
-- Manananaggal
-- -----------

INSERT INTO `mob_droplist` VALUES (9719,0,11604,250); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,11737,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,11596,415); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,18510,320); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,3222,288); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,3224,230); -- COMMENT ME


-- -----------
-- Minhocao
-- -----------

INSERT INTO `mob_droplist` VALUES (9720,0,18510,654); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9720,0,11596,141); -- COMMENT ME

-- -----------
-- Muscaliet
-- -----------

INSERT INTO `mob_droplist` VALUES (9721,0,11596,286); -- COMMENT ME

-- -----------
-- Myrmecoleon
-- -----------

INSERT INTO `mob_droplist` VALUES (9722,0,17113,152); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9722,0,11548,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9722,0,11517,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9722,0,3222,150); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9722,0,3223,151); -- COMMENT ME

-- -----------
-- Ophanim
-- -----------

INSERT INTO `mob_droplist` VALUES (9723,0,15429,252); -- COMMENT ME

-- -----------
-- Quetzalli
-- -----------

INSERT INTO `mob_droplist` VALUES (9724,0,11551,174); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9724,0,11605,230); -- COMMENT ME

-- -----------
-- Tefenet
-- -----------

INSERT INTO `mob_droplist` VALUES (9725,0,11741,474); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,3225,274); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,3223,370); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,3224,234); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,3222,434); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,2950,1000); -- COMMENT ME

-- -----------
-- Treble_Noctules
-- -----------

INSERT INTO `mob_droplist` VALUES (9726,0,11641,320); -- COMMENT ME

-- -----------
-- Vetehinen
-- -----------

INSERT INTO `mob_droplist` VALUES (9727,0,11640,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9727,0,2946,1000); -- Tarnished Pincer

-- -----------
-- Pascerpot
-- -----------

INSERT INTO `mob_droplist` VALUES (9728,0,28576,96); -- Paqichikaji Ring
INSERT INTO `mob_droplist` VALUES (9728,0,11646,180); -- Sirona's Ring from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,3196,161); -- Creed seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,3196,115); -- Creed seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,3202,135); -- Iga seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,3202,177); -- Iga seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,3206,172); -- Navarch's seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,3206,143); -- Navarch's seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,3191,145); -- Tantra seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,3191,122); -- Tantra seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,12101,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9728,0,8976,164);
INSERT INTO `mob_droplist` VALUES (9728,0,3550,285);

-- -----------
-- Ironclad Executioner
-- -----------

INSERT INTO `mob_droplist` VALUES (9729,0,12089,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,11361,87); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,19255,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,19256,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,11750,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,3893,115);
INSERT INTO `mob_droplist` VALUES (9729,0,8710,137);
INSERT INTO `mob_droplist` VALUES (9729,0,9063,172);
INSERT INTO `mob_droplist` VALUES (9729,0,657,252);

-- -----------
-- Shinryu
-- -----------

INSERT INTO `mob_droplist` VALUES (9730,0,21227,110); -- Hanqaku-no-yumi
INSERT INTO `mob_droplist` VALUES (9730,0,20858,120); -- Lightreaver
INSERT INTO `mob_droplist` VALUES (9730,0,21364,380); -- Elders Grip
INSERT INTO `mob_droplist` VALUES (9730,0,20991,140); -- Chidori
INSERT INTO `mob_droplist` VALUES (9730,0,21284,120); -- Vanir_Gun
INSERT INTO `mob_droplist` VALUES (9730,0,28155,50); -- Scuff._Cosciales
INSERT INTO `mob_droplist` VALUES (9730,0,28287,50); -- Durgai_Leggings
INSERT INTO `mob_droplist` VALUES (9730,0,3925,300); -- Tanz
INSERT INTO `mob_droplist` VALUES (9730,0,3925,300); -- Tanz
INSERT INTO `mob_droplist` VALUES (9730,0,3925,300); -- Tanz
INSERT INTO `mob_droplist` VALUES (9730,0,4692,30); -- Haste II
INSERT INTO `mob_droplist` VALUES (9730,0,9062,50); -- Dark Matter

-- -----------
-- Hydra
-- -----------


INSERT INTO `mob_droplist` VALUES (9731,0,28663,115); -- Steadfast shield
INSERT INTO `mob_droplist` VALUES (9731,0,15807,140); -- Balrahn's Ring
INSERT INTO `mob_droplist` VALUES (9731,0,4023,50);
INSERT INTO `mob_droplist` VALUES (9731,0,2876,36);
INSERT INTO `mob_droplist` VALUES (9731,0,9062,12); -- Dark Matter


-- -----------
-- Mictlantecuhtli
-- -----------

INSERT INTO `mob_droplist` VALUES (9732,0,15019,386); -- Serpentes Cuffs
INSERT INTO `mob_droplist` VALUES (9732,0,11597,84); -- Unkai Nodowa
INSERT INTO `mob_droplist` VALUES (9732,0,15942,128);
INSERT INTO `mob_droplist` VALUES (9732,0,3544,51);
INSERT INTO `mob_droplist` VALUES (9732,0,9075,43);
INSERT INTO `mob_droplist` VALUES (9732,0,1767,118);