-- ---------------------------------------------------------------------------
-- This file adds onto, modifies, or removes portions of the table "mob_droplist"
-- created by the file mob_droplist.sql and must be imported/executed AFTER that file.
--
-- For new entries DarkStar does not have, use "INSERT INTO".
--
-- To REMOVE a drop that DarkStar has we don't want in Legion, use:
-- DELETE FROM `mob_droplist` WHERE dropId=0 and dropType=0 and itemId=0 `itemRate`=0;
-- Where the zero is replaced by whatever values DarkStar was using.
--
-- Please comment what is dropping from what mob on each line:
-- Insert INTO `mob_droplist` VALUES (dropId,dropType,groupId,groupRate,itemId,itemRate); -- Item name from NM name
-- ---------------------------------------------------------------------------

-- Examples
-- DELETE FROM `mob_droplist` WHERE dropId=1; -- ALL drops in ID one are nuked!
-- DELETE FROM `mob_droplist` WHERE dropId=1 and dropType=2 and itemId=3 and itemRate=4; -- Only this one item is nuked.

-- Absolute Virtue
DELETE FROM `mob_droplist` WHERE dropId=4 and dropType=0 and itemId=1913 and itemRate=300; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and dropType=0 and itemId=1914 and itemRate=440; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and dropType=0 and itemId=1915 and itemRate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and dropType=0 and itemId=1916 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and dropType=0 and itemId=1917 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and dropType=0 and itemId=1918 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4 and dropType=0 and itemId=1919 and itemRate=600; -- comment me

-- Achamoth
DELETE FROM `mob_droplist` WHERE dropId=15 and dropType=0 and itemId=11376 and itemRate=300; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=15 and dropType=0 and itemId=16342 and itemRate=510; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=15 and dropType=0 and itemId=17753 and itemRate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=15 and dropType=0 and itemId=19034 and itemRate=580; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=15 and dropType=0 and itemId=19035 and itemRate=570; -- comment me
INSERT INTO `mob_droplist` VALUES (15,0,0,1000,14546,282); -- Ares' Cuirass
INSERT INTO `mob_droplist` VALUES (15,0,0,1000,10450,46); -- Ogier's Surcoat
INSERT INTO `mob_droplist` VALUES (15,0,0,1000,28027,98); -- Boor Bracelets
INSERT INTO `mob_droplist` VALUES (15,0,0,1000,19007,153); -- Death Penalty
INSERT INTO `mob_droplist` VALUES (15,0,0,1000,18993,173); -- Yagrush

-- Adamantoise
DELETE FROM `mob_droplist` WHERE dropId=24 and dropType=0 and itemId=3344 and itemRate=100; -- Clump of Red Pondweed
DELETE FROM `mob_droplist` WHERE dropId=24 and dropType=0 and itemId=646 and itemRate=1060; -- Adaman Ore
DELETE FROM `mob_droplist` WHERE dropId=24 and dropType=0 and itemId=646 and itemRate=530; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=24 and dropType=0 and itemId=646 and itemRate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=24 and dropType=0 and itemId=646 and itemRate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=24 and dropType=0 and itemId=12361 and itemRate=190; -- Sipar
DELETE FROM `mob_droplist` WHERE dropId=24 and dropType=0 and itemId=13794 and itemRate=110; -- Heavy Cuirass
INSERT INTO `mob_droplist` VALUES (24,0,0,1000,1318,115); --  D.Abjuration: Ft.
INSERT INTO `mob_droplist` VALUES (24,0,0,1000,1325,360); --  A.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (24,0,0,1000,1325,82); -- comment me
INSERT INTO `mob_droplist` VALUES (24,0,0,1000,1333,330); --  M.Abjuration: Ft.
INSERT INTO `mob_droplist` VALUES (24,0,0,1000,1335,330); --  W.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (24,0,0,1000,1335,86); -- comment me
INSERT INTO `mob_droplist` VALUES (24,0,0,1000,1525,700); --  Adamantoise Egg

-- Aggressor_Antlion
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3113 and itemRate=310; -- Goetia Seal Head
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3113 and itemRate=55; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3113 and itemRate=93; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3119 and itemRate=190; -- Aiodos Seal Head
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3119 and itemRate=81; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3119 and itemRate=120; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3124 and itemRate=156; -- Callers Seal Head
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3124 and itemRate=143; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3124 and itemRate=73; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3127 and itemRate=54; -- Cirque Seal Head
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3127 and itemRate=79; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=32 and dropType=0 and itemId=3127 and itemRate=52; -- comment me
INSERT INTO `mob_droplist` VALUES (32,0,0,1000,12094,137); -- Creed Sabatons

-- Air Elemental
INSERT INTO `mob_droplist` VALUES (41,0,0,1000,1257,5); -- Wind Ore

-- Akrab
INSERT INTO `mob_droplist` VALUES (48,0,0,1000,2880,5); -- Kidney Stone

-- Alfard
DELETE FROM `mob_droplist` WHERE dropId=52 and dropType=0 and itemId=646 and itemRate=980; -- Adaman Ore
DELETE FROM `mob_droplist` WHERE dropId=52 and dropType=0 and itemId=4120 and itemRate=100; -- X-Potion
DELETE FROM `mob_droplist` WHERE dropId=52 and dropType=0 and itemId=3291 and itemRate=100; -- Alfard's Fang
DELETE FROM `mob_droplist` WHERE dropId=52 and dropType=0 and itemId=3291 and itemRate=50; -- Alfard's Fang
INSERT INTO `mob_droplist` VALUES (52,0,0,1000,3291,1000); -- Alfard's Fang
INSERT INTO `mob_droplist` VALUES (52,0,0,1000,3291,82); -- Alfard's Fang

-- Alkyoneus
DELETE FROM `mob_droplist` WHERE dropId=55
INSERT INTO `mob_droplist` VALUES (55,0,0,1000,10512,273); -- Calma Gauntlets
INSERT INTO `mob_droplist` VALUES (55,0,0,1000,10611,438); -- Mustela Boots
INSERT INTO `mob_droplist` VALUES (55,0,0,1000,11975,322); -- Avant Cuisses +1
INSERT INTO `mob_droplist` VALUES (55,0,0,1000,10892,408); -- Magavan Beret
INSERT INTO `mob_droplist` VALUES (55,0,0,1000,10452,362); -- Rubeus Jacket
INSERT INTO `mob_droplist` VALUES (55,0,0,1000,20967,140); -- Qatsunoci
INSERT INTO `mob_droplist` VALUES (55,0,0,1000,28061,132); -- Orvail Cuffs

-- Amhuluk
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=655 and itemRate=20; -- Adaman Ingot
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=836 and itemRate=60; --  Damascene Cloth
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=1300 and itemRate=40; -- Ice Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=1302 and itemRate=80; -- Earth Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=1303 and itemRate=40; -- Lightning Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=1304 and itemRate=40; -- Water Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=1306 and itemRate=100; -- Dark Bead
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=2703 and itemRate=40; -- Khrom. Leather
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=3223 and itemRate=650; -- Balance Coin
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=3223 and itemRate=1940; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=75 and dropType=0 and itemId=5564 and itemRate=40; -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (75,0,0,1000,19405,155); -- Kannagi
INSERT INTO `mob_droplist` VALUES (75,0,0,1000,8727,103);
INSERT INTO `mob_droplist` VALUES (75,0,0,1000,3549,95);
INSERT INTO `mob_droplist` VALUES (75,0,0,1000,9061,213);
INSERT INTO `mob_droplist` VALUES (75,0,0,1000,3920,43);
INSERT INTO `mob_droplist` VALUES (75,0,0,1000,3920,55);

-- Amun
DELETE FROM `mob_droplist` WHERE dropId=83 and dropType=0 and itemId=3111 and itemRate=630; -- Tantra Seal: Hd.
DELETE FROM `mob_droplist` WHERE dropId=83 and dropType=0 and itemId=3111 and itemRate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=83 and dropType=0 and itemId=3111 and itemRate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=83 and dropType=0 and itemId=3116 and itemRate=210; -- Creed Seal: Hd.
DELETE FROM `mob_droplist` WHERE dropId=83 and dropType=0 and itemId=3116 and itemRate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=83 and dropType=0 and itemId=3122 and itemRate=180; -- Iga Seal: Hd.
DELETE FROM `mob_droplist` WHERE dropId=83 and dropType=0 and itemId=3126 and itemRate=270; -- Nvrch. Seal: Hd.
DELETE FROM `mob_droplist` WHERE dropId=83 and dropType=0 and itemId=3126 and itemRate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=83 and dropType=0 and itemId=3126 and itemRate=110; -- comment me
INSERT INTO `mob_droplist` VALUES (83,0,0,1000,12105,340); -- Cirque Scarpe

-- Anantaboga
DELETE FROM `mob_droplist` WHERE dropId=84 and dropType=0 and itemId=19109 and itemRate=310; -- comment me
-- INSERT INTO `mob_droplist` VALUES (84,0,0,1000,19405,165); -- Kannagi
INSERT INTO `mob_droplist` VALUES (84,0,0,1000,15625,255); -- Ares' Flanchard
INSERT INTO `mob_droplist` VALUES (84,0,0,1000,10876,242); -- Ogier's Helm
INSERT INTO `mob_droplist` VALUES (84,0,0,1000,11969,200); -- Ogier's Breeches
INSERT INTO `mob_droplist` VALUES (84,0,0,1000,16155,320); -- Aurum Armet

-- Angler Tiger
INSERT INTO `mob_droplist` VALUES (101,0,0,1000,8707,28);
INSERT INTO `mob_droplist` VALUES (101,0,0,1000,20772,49);

-- Ansherekh
DELETE FROM `mob_droplist` WHERE dropId=118 and dropType=0 and itemId=5466 and itemRate=70; -- Trumpet Shell
DELETE FROM `mob_droplist` WHERE dropId=118 and dropType=0 and itemId=5568 and itemRate=40; --  Apkallu Egg
DELETE FROM `mob_droplist` WHERE dropId=118 and dropType=0 and itemId=5668 and itemRate=50; -- comment me
INSERT INTO `mob_droplist` VALUES (118,0,0,1000,28388,65); -- Tlamiztli collar

-- Apademak
DELETE FROM `mob_droplist` WHERE dropId=151 and dropType=0 and itemId=3216 and itemRate=30; -- Ardor Jewel
DELETE FROM `mob_droplist` WHERE dropId=151 and dropType=0 and itemId=3289 and itemRate=100; -- Apademak Horn
INSERT INTO `mob_droplist` VALUES (151,0,0,1000,3289,1000); -- Apademak Horn

-- Argus
DELETE FROM `mob_droplist` WHERE dropId=174 and dropType=0 and itemId=15515 and itemRate=230; -- Peacock Amulet
INSERT INTO `mob_droplist` VALUES (174,0,0,1000,13056,80); -- Peacock Charm

-- Armed Gears
DELETE FROM `mob_droplist` WHERE dropId=177 and dropType=0 and itemId=15022 and itemRate=480;
DELETE FROM `mob_droplist` WHERE dropId=177 and dropType=0 and itemId=18126 and itemRate=340;
DELETE FROM `mob_droplist` WHERE dropId=177 and dropType=0 and itemId=19035 and itemRate=220;
DELETE FROM `mob_droplist` WHERE dropId=177 and dropType=0 and itemId=19036 and itemRate=550;
INSERT INTO `mob_droplist` VALUES (177,0,0,1000,18991,296); -- Conqueror
INSERT INTO `mob_droplist` VALUES (177,0,0,1000,19005,295); -- Nirvana
INSERT INTO `mob_droplist` VALUES (177,0,0,1000,14550,191); -- Skadi's Cuirie
INSERT INTO `mob_droplist` VALUES (177,0,0,1000,10276,86); -- Enif Corazza
INSERT INTO `mob_droplist` VALUES (177,0,0,1000,10451,79); -- Athos's Tabard
INSERT INTO `mob_droplist` VALUES (177,0,0,1000,10928,103); -- Ganesha's Mala

-- Ash Dragon
DELETE FROM `mob_droplist` WHERE dropId=191 and dropType=0 and itemId=867 and itemRate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=191 and dropType=0 and itemId=903 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=191 and dropType=0 and itemId=1133 and itemRate=40; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=191 and dropType=0 and itemId=4486 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=191 and dropType=0 and itemId=16961 and itemRate=20; -- comment me
INSERT INTO `mob_droplist` VALUES (191,0,0,1000,10890,183); -- Calma Armet
INSERT INTO `mob_droplist` VALUES (191,0,0,1000,10457,63); -- Avant Mail +1
INSERT INTO `mob_droplist` VALUES (191,0,0,1000,10513,128); -- Mustela Gloves
INSERT INTO `mob_droplist` VALUES (191,0,0,1000,11982,67); -- Magavan Slops
INSERT INTO `mob_droplist` VALUES (191,0,0,1000,10602,50); -- Rubeus Boots
INSERT INTO `mob_droplist` VALUES (191,0,0,1000,21052,66); -- Tsurumaru

-- Aspidochelone
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=13794 and itemRate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=1525 and itemRate=250; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=12361 and itemRate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=1318 and itemRate=340; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=1318 and itemRate=170; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=1325 and itemRate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=1325 and itemRate=180; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=1333 and itemRate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=1333 and itemRate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=1335 and itemRate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=646 and itemRate=890; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=646 and itemRate=450; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=646 and itemRate=300; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=646 and itemRate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=908 and itemRate=370; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=195 and dropType=0 and itemId=1335 and itemRate=130; -- comment me
INSERT INTO `mob_droplist` VALUES (195,0,0,1000,10489,87); -- Huginn Haubert
INSERT INTO `mob_droplist` VALUES (195,0,0,1000,10571,81); -- Tenryu Hakama +1
INSERT INTO `mob_droplist` VALUES (195,0,0,1000,10541,37); -- Khepri Wristbands
INSERT INTO `mob_droplist` VALUES (195,0,0,1000,10639,143); -- Spurrina Nails
INSERT INTO `mob_droplist` VALUES (195,0,0,1000,10409,62); -- Iaso Mitra


-- Athamas
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3171 and itemRate=300; --  Tantra Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3171 and itemRate=200; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3171 and itemRate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3175 and itemRate=160; --  Raid. Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3175 and itemRate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3182 and itemRate=150; -- Iga Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3182 and itemRate=110; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3182 and itemRate=90; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3188 and itemRate=160; -- Charis Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3188 and itemRate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=198 and dropType=0 and itemId=3188 and itemRate=60; -- comment me

-- Audumbla
DELETE FROM `mob_droplist` WHERE dropId=203 and dropType=0 and itemId=3151 and itemRate=370; -- Tantra Seal: Hn.
DELETE FROM `mob_droplist` WHERE dropId=203 and dropType=0 and itemId=3155 and itemRate=210; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=203 and dropType=0 and itemId=3155 and itemRate=110; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=203 and dropType=0 and itemId=3162 and itemRate=160; -- Iga Seal: Hn.
DELETE FROM `mob_droplist` WHERE dropId=203 and dropType=0 and itemId=3162 and itemRate=120; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=203 and dropType=0 and itemId=3168 and itemRate=170; -- Charis Seal: Hn.
DELETE FROM `mob_droplist` WHERE dropId=203 and dropType=0 and itemId=3168 and itemRate=130; -- comment me
INSERT INTO `mob_droplist` VALUES (203,0,0,1000,28578,55); -- Patricus Ring

-- Azdaja
DELETE FROM `mob_droplist` WHERE dropId=222 and dropType=0 and itemId=3219 and itemRate=30; -- Wieldance Coin
DELETE FROM `mob_droplist` WHERE dropId=222 and dropType=0 and itemId=3292 and itemRate=100; -- Azdaja's Horn
DELETE FROM `mob_droplist` WHERE dropId=222 and dropType=0 and itemId=5667 and itemRate=60; -- Lynx Meat
INSERT INTO `mob_droplist` VALUES (222,0,0,1000,3292,86); -- Azdaja's Horn
INSERT INTO `mob_droplist` VALUES (222,0,0,1000,3292,1000); -- Azdaja's Horn

-- Awahondo
DELETE FROM `mob_droplist` WHERE dropId=212 and dropType=0 and itemId=4892 and itemRate=100; -- Aeroja

-- Bakka
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=645 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=739 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=823 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=830 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=887 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=942 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=1133 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=1255 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=1260 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=1294 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=1311 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=1312 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=1633 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=229 and dropType=0 and itemId=1634 and itemRate=10; -- comment me
INSERT INTO `mob_droplist` VALUES (229,0,0,1000,12106,340); -- Charis Toeshoes
INSERT INTO `mob_droplist` VALUES (229,0,0,1000,3981,64);
INSERT INTO `mob_droplist` VALUES (229,0,0,1000,4026,254);
INSERT INTO `mob_droplist` VALUES (229,0,0,1000,1765,299);

-- Balaur
DELETE FROM `mob_droplist` WHERE dropId=231 and dropType=0 and itemId=866 and itemRate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and dropType=0 and itemId=887 and itemRate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and dropType=0 and itemId=1258 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and dropType=0 and itemId=1294 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and dropType=0 and itemId=1633 and itemRate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and dropType=0 and itemId=1740 and itemRate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=231 and dropType=0 and itemId=1829 and itemRate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (231,0,0,1000,12097,340); --  Aoidos' Cothurnes
INSERT INTO `mob_droplist` VALUES (231,0,0,1000,3936,185); -- Acuex Poision
INSERT INTO `mob_droplist` VALUES (231,0,0,1000,756,270);
INSERT INTO `mob_droplist` VALUES (231,0,0,1000,756,213);
INSERT INTO `mob_droplist` VALUES (231,0,0,1000,20772,182);
INSERT INTO `mob_droplist` VALUES (231,0,0,1000,8751,186);

-- Baobhan Sith
DELETE FROM `mob_droplist` WHERE dropId=241
INSERT INTO `mob_droplist` VALUES (241,0,0,1000,10442,248); -- Laeradr Helm
INSERT INTO `mob_droplist` VALUES (241,0,0,1000,19145,367); -- Asteria
INSERT INTO `mob_droplist` VALUES (241,0,0,1000,20833,176); -- Faizzeer
INSERT INTO `mob_droplist` VALUES (241,0,0,1000,28188,110); -- Gorney Brayettes

-- Barrens Treant
INSERT INTO `mob_droplist` VALUES (249,0,0,1000,1414,46);
INSERT INTO `mob_droplist` VALUES (249,0,0,1000,8725,14);

-- Behemoth
DELETE FROM `mob_droplist` WHERE dropId=270 and dropType=0 and itemId=860 and itemRate=100; -- Behemoth Hide
DELETE FROM `mob_droplist` WHERE dropId=270 and dropType=0 and itemId=860 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=270 and dropType=0 and itemId=3342 and itemRate=100; -- Savory Shank King Behemoth
DELETE FROM `mob_droplist` WHERE dropId=270 and dropType=0 and itemId=16869 and itemRate=220; -- Thundercloud
DELETE FROM `mob_droplist` WHERE dropId=270 and dropType=0 and itemId=17294 and itemRate=140; -- Comet Tail
INSERT INTO `mob_droplist` VALUES (270,0,0,1000,883,235); -- Behemoth Horn
INSERT INTO `mob_droplist` VALUES (270,0,0,1000,1322,310); --  E.Abjuration: Lg.
INSERT INTO `mob_droplist` VALUES (270,0,0,1000,1328,321); -- A.Abjuration: Ft.
INSERT INTO `mob_droplist` VALUES (270,0,0,1000,1332,300); -- M.Abjuration: Lg.
INSERT INTO `mob_droplist` VALUES (270,0,0,1000,1334,302); -- W.Abjuration: Hd.
INSERT INTO `mob_droplist` VALUES (270,0,0,1000,1527,700); -- Behemoth Tongue

-- Bennu
DELETE FROM `mob_droplist` WHERE dropId=273 and dropType=0 and itemId=4892 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=273 and dropType=0 and itemId=4890 and itemRate=100; -- comment me

-- Biast
DELETE FROM `mob_droplist` WHERE dropId=285
INSERT INTO `mob_droplist` VALUES (285,0,0,1000,15221,437); -- Patroclus's Helm
INSERT INTO `mob_droplist` VALUES (285,0,0,1000,10462,331); -- Calma-breastplate
INSERT INTO `mob_droplist` VALUES (285,0,0,1000,10507,328); -- Avant Gauntlets +1
INSERT INTO `mob_droplist` VALUES (285,0,0,1000,11981,358); -- Mustela Brais
INSERT INTO `mob_droplist` VALUES (285,0,0,1000,10612,392); -- Magavan Clogs
INSERT INTO `mob_droplist` VALUES (285,0,0,1000,10878,257); -- Rubeus Bandeau
INSERT INTO `mob_droplist` VALUES (285,0,0,1000,20742,176); -- Iztaasu
INSERT INTO `mob_droplist` VALUES (285,0,0,1000,28328,96); -- Shneddick Boots

-- Blazing Eruca
INSERT INTO `mob_droplist` VALUES (321,0,0,1000,28530,64); -- - Dumakulem's Ring
-- INSERT INTO `mob_droplist` VALUES (321,0,0,1000,21125,100); -- Tamaxchi  188 skill
INSERT INTO `mob_droplist` VALUES (321,0,0,1000,12098,104); --  Sylvan Bottillons

-- Blubbery Bulge
INSERT INTO `mob_droplist` VALUES (346,0,0,1000,17669,255); -- Sagasinger
INSERT INTO `mob_droplist` VALUES (346,0,0,1000,4781,100);
INSERT INTO `mob_droplist` VALUES (346,0,0,1000,5501,100);
INSERT INTO `mob_droplist` VALUES (346,0,0,1000,5502,100);
INSERT INTO `mob_droplist` VALUES (346,0,0,1000,6060,100);
INSERT INTO `mob_droplist` VALUES (346,0,0,1000,5078,100);

-- Bonfire
INSERT INTO `mob_droplist` VALUES (369,0,0,1000,2408,28);

-- Bonnacon
DELETE FROM `mob_droplist` WHERE dropId=370
INSERT INTO `mob_droplist` VALUES (370,0,0,1000,11867,221); -- Heka's Kalasiris
INSERT INTO `mob_droplist` VALUES (370,0,0,1000,19794,303); -- Delphinius
INSERT INTO `mob_droplist` VALUES (370,0,0,1000,21208,178); -- Lehbrailg
INSERT INTO `mob_droplist` VALUES (370,0,0,1000,28204,145); -- Thurandaut Tights

-- Brass Borer
INSERT INTO `mob_droplist` VALUES (385,0,0,1000,14961,326); -- Ares' Gauntlets
INSERT INTO `mob_droplist` VALUES (385,0,0,1000,15711,269); -- Ares' Sollerets
INSERT INTO `mob_droplist` VALUES (385,0,0,1000,10500,134); -- Ogier's Gauntlets
INSERT INTO `mob_droplist` VALUES (385,0,0,1000,10600,108); -- Ogier's Leggings

-- Briareus
DELETE FROM `mob_droplist` WHERE dropId=396 and dropType=0 and itemId=2929 and itemRate=100; -- Helm Of Briareus
DELETE FROM `mob_droplist` WHERE dropId=396 and dropType=0 and itemId=2929 and itemRate=50;
INSERT INTO `mob_droplist` VALUES (396,0,0,1000,2929,1000); -- Helm Of Briareus
INSERT INTO `mob_droplist` VALUES (396,0,0,1000,2929,89); -- Helm Of Briareus
INSERT INTO `mob_droplist` VALUES (396,0,0,1000,3870,105);
INSERT INTO `mob_droplist` VALUES (396,0,0,1000,8747,204);
INSERT INTO `mob_droplist` VALUES (396,0,0,1000,8747,286);
INSERT INTO `mob_droplist` VALUES (396,0,0,1000,8988,181);
INSERT INTO `mob_droplist` VALUES (396,0,0,1000,9075,79);
INSERT INTO `mob_droplist` VALUES (396,0,0,1000,9075,90);

-- Bukhis
DELETE FROM `mob_droplist` WHERE dropId=424 and dropType=0 and itemId=2966 and itemRate=100; -- Bukhis's Wing
DELETE FROM `mob_droplist` WHERE dropId=424 and dropType=0 and itemId=2966 and itemRate=50;
INSERT INTO `mob_droplist` VALUES (424,0,0,1000,2966,1000); -- Bukhis's Wing
INSERT INTO `mob_droplist` VALUES (424,0,0,1000,2966,70); -- Bukhis's Wing
INSERT INTO `mob_droplist` VALUES (424,0,0,1000,19409,163); --  Gandiva
INSERT INTO `mob_droplist` VALUES (424,0,0,1000,8992,255);
INSERT INTO `mob_droplist` VALUES (424,0,0,1000,9075,46);
INSERT INTO `mob_droplist` VALUES (424,0,0,1000,766,20);
INSERT INTO `mob_droplist` VALUES (424,0,0,1000,4012,60);

-- Konjac
INSERT INTO `mob_droplist` VALUES (455,0,0,1000,18542,173); -- Aytanri
INSERT INTO `mob_droplist` VALUES (455,0,0,1000,18903,205); -- Talekeeper
INSERT INTO `mob_droplist` VALUES (455,0,0,1000,4781,100);
INSERT INTO `mob_droplist` VALUES (455,0,0,1000,4771,100);
INSERT INTO `mob_droplist` VALUES (455,0,0,1000,5505,100);
INSERT INTO `mob_droplist` VALUES (455,0,0,1000,4706,100);
INSERT INTO `mob_droplist` VALUES (455,0,0,1000,4707,100);

-- Carabosse
DELETE FROM `mob_droplist` WHERE dropId=466 and dropType=0 and itemId=5393 and itemRate=1000; -- Monarch's Drink
DELETE FROM `mob_droplist` WHERE dropId=466 and dropType=0 and itemId=2930 and itemRate=1620; -- Carabosse's Gem
INSERT INTO `mob_droplist` VALUES (466,0,0,1000,2930,1000); -- Carabosse's Gem
INSERT INTO `mob_droplist` VALUES (466,0,0,1000,8710,157);
INSERT INTO `mob_droplist` VALUES (466,0,0,1000,8725,173);


-- Cerberus
-- ----------
DELETE FROM `mob_droplist` WHERE dropId=502 and dropType=0 and itemId=2168 and itemRate=1000;
DELETE FROM `mob_droplist` WHERE dropId=502 and dropType=0 and itemId=2169 and itemRate=1000;
DELETE FROM `mob_droplist` WHERE dropId=502 and dropType=0 and itemId=5565 and itemRate=1000;
DELETE FROM `mob_droplist` WHERE dropId=502 and dropType=0 and itemId=18385 and itemRate=450;
INSERT INTO `mob_droplist` VALUES (502,0,0,1000,15808,107); -- Ulthalam's Ring
INSERT INTO `mob_droplist` VALUES (502,0,0,1000,4023,181);
INSERT INTO `mob_droplist` VALUES (502,0,0,1000,27779,67); -- Quauhpilli helm
INSERT INTO `mob_droplist` VALUES (502,0,0,1000,9062,12); -- Dark Matter

-- Chamrosh
-- ----------
DELETE FROM `mob_droplist` WHERE dropId=506 and dropType=0 and itemId=18593 and itemRate=650; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=506 and dropType=0 and itemId=16240 and itemRate=400; -- comment me
INSERT INTO `mob_droplist` VALUES (506,0,0,1000,14965,166); -- Skadi's Bazubands
INSERT INTO `mob_droplist` VALUES (506,0,0,1000,14969,173); -- Usukane Gote
INSERT INTO `mob_droplist` VALUES (506,0,0,1000,10320,93); -- Enif Manopolas
INSERT INTO `mob_droplist` VALUES (506,0,0,1000,10501,115); -- Athos's Gloves

-- Cheese Hoarder Gigiroon
-- ----------
INSERT INTO `mob_droplist` VALUES (517,0,0,1000,15715,167); -- Skadi's Jambeaux
INSERT INTO `mob_droplist` VALUES (517,0,0,1000,15719,125); -- Usukane Sune-Ate
INSERT INTO `mob_droplist` VALUES (517,0,0,1000,10367,75); -- Enif Gambieras
INSERT INTO `mob_droplist` VALUES (517,0,0,1000,10601,192); -- Athos's Boots

-- Chigre
DELETE FROM `mob_droplist` WHERE dropId=525 and dropType=0 and itemId=15827 and itemRate=360; -- comment me
INSERT INTO `mob_droplist` VALUES (525,0,0,1000,14977,169); -- Morrigan's Cuffs
INSERT INTO `mob_droplist` VALUES (525,0,0,1000,15727,116); -- Morrigan's Pgch.
INSERT INTO `mob_droplist` VALUES (525,0,0,1000,15723,186); -- Marduk's Crackows
INSERT INTO `mob_droplist` VALUES (525,0,0,1000,14973,142); -- Marduk's Dastanas
INSERT INTO `mob_droplist` VALUES (525,0,0,1000,10368,72); -- Adhara Crackows
INSERT INTO `mob_droplist` VALUES (525,0,0,1000,10321,65); -- Adhara Gages
INSERT INTO `mob_droplist` VALUES (525,0,0,1000,10323,43); -- Shedir Gages
INSERT INTO `mob_droplist` VALUES (525,0,0,1000,18948,666); -- Enforcer

-- Cirein-croin
INSERT INTO `mob_droplist` VALUES (529,0,0,1000,2965,1000); -- Cirein. Lantern
INSERT INTO `mob_droplist` VALUES (529,0,0,1000,19406,113); -- Masamune

-- Claret
INSERT INTO `mob_droplist` VALUES (535,0,0,1000,14961,185); -- Ares' Gauntlets
INSERT INTO `mob_droplist` VALUES (535,0,0,1000,10500,108); -- Ogier's Gauntlets

-- Dark Elemental
INSERT INTO `mob_droplist` VALUES (639,0,0,1000,1262,5); -- Dark Ore
INSERT INTO `mob_droplist` VALUES (640,0,0,1000,1262,5); -- Dark Ore
INSERT INTO `mob_droplist` VALUES (642,0,0,1000,1262,5); -- Dark Ore

-- Dea
DELETE FROM `mob_droplist` WHERE dropId=652 and dropType=0 and itemId=11377 and itemRate=410; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and dropType=0 and itemId=16343 and itemRate=330; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and dropType=0 and itemId=18125 and itemRate=460; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and dropType=0 and itemId=18125 and itemRate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and dropType=0 and itemId=19031 and itemRate=540; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=652 and dropType=0 and itemId=19038 and itemRate=510; -- comment me
INSERT INTO `mob_droplist` VALUES (652,0,0,1000,14554,125); -- Usukane Haramaki
INSERT INTO `mob_droplist` VALUES (652,0,0,1000,10276,104); -- Enif Corazza
INSERT INTO `mob_droplist` VALUES (652,0,0,1000,10451,57); -- Athos's Tabard
INSERT INTO `mob_droplist` VALUES (652,0,0,1000,10957,64); -- Stoicheion Medal
INSERT INTO `mob_droplist` VALUES (652,0,0,1000,18992,198); -- Glanzfaust
INSERT INTO `mob_droplist` VALUES (652,0,0,1000,19004,155); -- Ryunohige

-- Dextrose
INSERT INTO `mob_droplist` VALUES (725,0,0,1000,11283,340); -- Oracle's Robe
INSERT INTO `mob_droplist` VALUES (725,0,0,1000,15625,216); -- Ares' Flanchard
INSERT INTO `mob_droplist` VALUES (725,0,0,1000,11969,304); -- Ogier's Breeches
INSERT INTO `mob_droplist` VALUES (725,0,0,1000,27782,141); -- Orvail Corona

-- Dhorme Khimaira
INSERT INTO `mob_droplist` VALUES (727,0,0,1000,28402,91); -- Asperity Necklace
INSERT INTO `mob_droplist` VALUES (727,0,0,1000,19402,136); -- Ukonvasara

-- Dragua
DELETE FROM `mob_droplist` WHERE dropId=788 and dropType=0 and itemId=3221 and itemRate=660; --  Wieldance Card
DELETE FROM `mob_droplist` WHERE dropId=788 and dropType=0 and itemId=3288 and itemRate=1630; --  Dragua Scale
DELETE FROM `mob_droplist` WHERE dropId=788 and dropType=0 and itemId=3288 and itemRate=820; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=788 and dropType=0 and itemId=5847 and itemRate=1000; --  Fanatic's Powder
INSERT INTO `mob_droplist` VALUES (788,0,0,1000,3288,79); -- Dragua's Scale
INSERT INTO `mob_droplist` VALUES (788,0,0,1000,3288,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (788,0,0,1000,10255,82); --  Matanca Harness

-- Duke Haborym
DELETE FROM `mob_droplist` WHERE dropId=808
INSERT INTO `mob_droplist` VALUES (808,0,0,1000,11890,411); -- Skopos Bracers
INSERT INTO `mob_droplist` VALUES (808,0,0,1000,11975,302); -- Avant Cuisses +1
INSERT INTO `mob_droplist` VALUES (808,0,0,1000,10891,326); -- Mustela Mask
INSERT INTO `mob_droplist` VALUES (808,0,0,1000,10464,282); -- Magavan Frock
INSERT INTO `mob_droplist` VALUES (808,0,0,1000,10502,408); -- Rubeus Gloves
INSERT INTO `mob_droplist` VALUES (808,0,0,1000,21209,199); -- Uffrat
INSERT INTO `mob_droplist` VALUES (808,0,0,1000,28205,131); -- Weather. Souliers

-- Dune Manticore
INSERT INTO `mob_droplist` VALUES (811,0,0,1000,2878,28);

-- Dusk Lizard
INSERT INTO `mob_droplist` VALUES (816,0,0,1000,3552,28);

-- Earth Elemental
INSERT INTO `mob_droplist` VALUES (829,0,0,1000,1258,5); -- Earth Ore
INSERT INTO `mob_droplist` VALUES (830,0,0,1000,1258,5); -- Earth Ore

-- Eastern Shadow
DELETE FROM `mob_droplist` WHERE dropId=835 and dropType=0 and itemId=18714 and itemRate=90;
INSERT INTO `mob_droplist` VALUES (835,0,0,1000,17187,65);

-- Ecentric Eve
DELETE FROM `mob_droplist` WHERE dropId=838 and dropType=0 and itemId=685 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and dropType=0 and itemId=836 and itemRate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and dropType=0 and itemId=837 and itemRate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and dropType=0 and itemId=920 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and dropType=0 and itemId=1261 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and dropType=0 and itemId=2359 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and dropType=0 and itemId=2824 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and dropType=0 and itemId=3210 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=838 and dropType=0 and itemId=3213 and itemRate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (838,0,0,1000,12091,340); -- Goetia Sabots
INSERT INTO `mob_droplist` VALUES (838,0,0,1000,19407,340); --  Gambanteinn
INSERT INTO `mob_droplist` VALUES (838,0,0,1000,2361,264); -- comment me
INSERT INTO `mob_droplist` VALUES (838,0,0,1000,3926,224);
INSERT INTO `mob_droplist` VALUES (838,0,0,1000,3920,172);
INSERT INTO `mob_droplist` VALUES (838,0,0,1000,9006,148);

-- Entozoon
INSERT INTO `mob_droplist` VALUES (879,0,0,1000,3920,27);
INSERT INTO `mob_droplist` VALUES (879,0,0,1000,1703,42);
INSERT INTO `mob_droplist` VALUES (879,0,0,1000,734,16);

-- Ergdrake
INSERT INTO `mob_droplist` VALUES (897,0,0,1000,2188,87); -- Wyvern Tailskin

-- Experimental Lamia
DELETE FROM `mob_droplist` WHERE dropId=913 and dropType=0 and itemId=11378 and itemRate=390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and dropType=0 and itemId=11378 and itemRate=190; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and dropType=0 and itemId=16341 and itemRate=390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and dropType=0 and itemId=18595 and itemRate=190; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and dropType=0 and itemId=19032 and itemRate=560; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=913 and dropType=0 and itemId=19036 and itemRate=540; -- comment me
INSERT INTO `mob_droplist` VALUES (913,0,0,1000,14558,162); -- Marduk's Jubbah
INSERT INTO `mob_droplist` VALUES (913,0,0,1000,10279,74); -- Shedir Manteel
INSERT INTO `mob_droplist` VALUES (913,0,0,1000,10277,75); -- Adhara Manteel
INSERT INTO `mob_droplist` VALUES (913,0,0,1000,21342,61); -- Erlene's Notebook
INSERT INTO `mob_droplist` VALUES (913,0,0,1000,19000,200); -- Carnwenhan
INSERT INTO `mob_droplist` VALUES (913,0,0,1000,18996,192); -- Vajra

-- Fafnir
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=867 and itemRate=750; --  Dragon Scales
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=14075 and itemRate=570; --  Andvaranauts
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=16492 and itemRate=290; -- Bronze Dagger +1
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=1321 and itemRate=240; --  E.Abjuration: Hn.
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=1328 and itemRate=240; --  A.Abjuration: Ft.
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=903 and itemRate=900; -- Dragon Talon
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=1133 and itemRate=20; --  Dragon Blood
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=4272 and itemRate=30; -- Dragon Meat
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=4486 and itemRate=410; -- Dragon Heart
DELETE FROM `mob_droplist` WHERE dropId=918 and dropType=0 and itemId=3340 and itemRate=100; -- Cup of Sweet Tea Nidhogg
INSERT INTO `mob_droplist` VALUES (918,0,0,1000,1325,270); -- A.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (918,0,0,1000,1320,370); -- E.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (918,0,0,1000,1320,100);
INSERT INTO `mob_droplist` VALUES (918,0,0,1000,1330,370); -- M.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (918,0,0,1000,1342,260); -- N.Abjuration: Lg.
INSERT INTO `mob_droplist` VALUES (918,0,0,1000,1526,700); -- Wyrm Beard

-- Fear Gorta
INSERT INTO `mob_droplist` VALUES (938,0,0,1000,27762,122); -- Shneddick Chapeau

-- Fire Elemental
INSERT INTO `mob_droplist` VALUES (955,0,0,1000,1255,5); -- Fire Ore
INSERT INTO `mob_droplist` VALUES (957,0,0,1000,1255,5);
INSERT INTO `mob_droplist` VALUES (958,0,0,1000,1255,5);
INSERT INTO `mob_droplist` VALUES (959,0,0,1000,1255,5);

-- Fistule
DELETE FROM `mob_droplist` WHERE dropId=962 and dropType=0 and itemId=2931 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=962 and dropType=0 and itemId=11518 and itemRate=1000; -- comment me
INSERT INTO `mob_droplist` VALUES (962,0,0,1000,4026,186);
INSERT INTO `mob_droplist` VALUES (962,0,0,1000,21191,183);
INSERT INTO `mob_droplist` VALUES (962,0,0,1000,3550,205);
INSERT INTO `mob_droplist` VALUES (962,0,0,1000,19247,116); -- Savant's Treatise
INSERT INTO `mob_droplist` VALUES (962,0,0,1000,11416,155); -- Clout Boots
INSERT INTO `mob_droplist` VALUES (962,0,0,1000,2931,1000); -- Fistl. Discharge
INSERT INTO `mob_droplist` VALUES (962,0,0,1000,12090,87); -- Orison Duckbills

-- Friar Rush
INSERT INTO `mob_droplist` VALUES (1049,0,0,1000,18786,330); -- Girru
INSERT INTO `mob_droplist` VALUES (1049,0,0,1000,20641,189); -- Leisilonu
INSERT INTO `mob_droplist` VALUES (1049,0,0,1000,28065,134); -- Karieyh Moufles

-- Glen Crab
INSERT INTO `mob_droplist` VALUES (1185,0,0,1000,3940,47);

-- Gasher
INSERT INTO `mob_droplist` VALUES (1086,0,0,1000,3940,35);

-- Goblin Meatgrinder
INSERT INTO `mob_droplist` VALUES (1370,0,0,1000,20772,43);
INSERT INTO `mob_droplist` VALUES (1370,0,0,1000,4026,45);
INSERT INTO `mob_droplist` VALUES (1370,0,0,1000,741,56);
INSERT INTO `mob_droplist` VALUES (1370,0,0,1000,4058,10);

-- Goblin Plunderer
INSERT INTO `mob_droplist` VALUES (1416,0,0,1000,3940,52);
INSERT INTO `mob_droplist` VALUES (1416,0,0,1000,741,45);
INSERT INTO `mob_droplist` VALUES (1416,0,0,1000,4058,14);

-- Gotoh Zha the Redolent
DELETE FROM `mob_droplist` WHERE dropId=1536 and dropType=0 and itemId=15023 and itemRate=390;
DELETE FROM `mob_droplist` WHERE dropId=1536 and dropType=0 and itemId=15023 and itemRate=190;
DELETE FROM `mob_droplist` WHERE dropId=1536 and dropType=0 and itemId=16341 and itemRate=420;
DELETE FROM `mob_droplist` WHERE dropId=1536 and dropType=0 and itemId=16341 and itemRate=210;
DELETE FROM `mob_droplist` WHERE dropId=1536 and dropType=0 and itemId=19032 and itemRate=600;
DELETE FROM `mob_droplist` WHERE dropId=1536 and dropType=0 and itemId=19037 and itemRate=560;
DELETE FROM `mob_droplist` WHERE dropId=1536 and dropType=0 and itemId=19153 and itemRate=280;
INSERT INTO `mob_droplist` VALUES (1536,0,0,1000,18998,162); -- Liberator
INSERT INTO `mob_droplist` VALUES (1536,0,0,1000,18995,124); -- Murgleis
INSERT INTO `mob_droplist` VALUES (1536,0,0,1000,10451,57); -- Athos's Tabard
INSERT INTO `mob_droplist` VALUES (1536,0,0,1000,10839,47); -- Othila Sash
INSERT INTO `mob_droplist` VALUES (1536,0,0,1000,14550,190); -- Skadi's Cuirie
INSERT INTO `mob_droplist` VALUES (1536,0,0,1000,14554,154); -- Usukane Haramaki
INSERT INTO `mob_droplist` VALUES (1536,0,0,1000,10276,73); -- Enif Corazza

-- Guivre
DELETE FROM `mob_droplist` WHERE dropId=1602
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,19174,380); -- Borealis
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,10539,213); -- Huginn Gauntlets
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,10572,263); -- Khepri Kecks
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,10637,192); -- Tenryu Sune-Ate +1
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,10408,376); -- Spurrina Coif
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,10493,247); -- Iaso Bliaut
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,21242,126); -- Bocluamni
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,28327,165); -- Gorney Sollerets

-- Gulool Ja Ja
INSERT INTO `mob_droplist` VALUES (1607,0,0,1000,28535,84); -- Supershear ring
INSERT INTO `mob_droplist` VALUES (1607,0,0,1000,4023,105);

-- Gurfurlur the Menacing
INSERT INTO `mob_droplist` VALUES (1609,0,0,1000,27766,70); -- Uk'uxkaj cap
INSERT INTO `mob_droplist` VALUES (1609,0,0,1000,4023,157);

-- Hadhayosh
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=646 and itemRate=980; -- Adaman Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=1255 and itemRate=100; -- Fire Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=1256 and itemRate=100; -- Ice Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=1257 and itemRate=100; -- Wind Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=1258 and itemRate=100; -- Earth Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=1259 and itemRate=100; -- Lightning Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=1260 and itemRate=100; -- Water Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=1261 and itemRate=100; -- Water Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=1262 and itemRate=100; -- Water Ore
DELETE FROM `mob_droplist` WHERE dropId=1621 and dropType=0 and itemId=1841 and itemRate=100; -- Unicorn Horn
INSERT INTO `mob_droplist` VALUES (1621,0,0,1000,16192,136); --  Ochain
INSERT INTO `mob_droplist` VALUES (1621,0,0,1000,1414,198);
INSERT INTO `mob_droplist` VALUES (1621,0,0,1000,1703,225);
INSERT INTO `mob_droplist` VALUES (1621,0,0,1000,3545,157);

-- Hazhdiha
DELETE FROM `mob_droplist` WHERE dropId=1645 and dropType=0 and itemId=679 and itemRate=100; -- Aluminum Ingot
DELETE FROM `mob_droplist` WHERE dropId=1645 and dropType=0 and itemId=806 and itemRate=100; -- Tourmaline
DELETE FROM `mob_droplist` WHERE dropId=1645 and dropType=0 and itemId=1465 and itemRate=80; -- Granite
DELETE FROM `mob_droplist` WHERE dropId=1645 and dropType=0 and itemId=1592 and itemRate=80; -- Cactuar Root
DELETE FROM `mob_droplist` WHERE dropId=1645 and dropType=0 and itemId=1985 and itemRate=100; -- Helmet Mole
INSERT INTO `mob_droplist` VALUES (1645,0,0,1000,19397,93); -- Verethragna

-- Heqet
DELETE FROM `mob_droplist` WHERE dropId=1668 and dropType=0 and itemId=3170 and itemRate=230; -- Rvg. Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=1668 and dropType=0 and itemId=3170 and itemRate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1668 and dropType=0 and itemId=3170 and itemRate=90; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1668 and dropType=0 and itemId=3177 and itemRate=220; -- Bale Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=1668 and dropType=0 and itemId=3181 and itemRate=80; -- Unkai Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=1668 and dropType=0 and itemId=3181 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1668 and dropType=0 and itemId=3181 and itemRate=210; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1668 and dropType=0 and itemId=3183 and itemRate=310; --    Lncr. Seal: Lg.
DELETE FROM `mob_droplist` WHERE dropId=1668 and dropType=0 and itemId=3183 and itemRate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (1668,0,0,1000,12095,107); --  Bale Sollerets
INSERT INTO `mob_droplist` VALUES (1668,0,0,1000,21191,202);
INSERT INTO `mob_droplist` VALUES (1668,0,0,1000,20772,234);
INSERT INTO `mob_droplist` VALUES (1668,0,0,1000,3940,178);
INSERT INTO `mob_droplist` VALUES (1668,0,0,1000,8751,291);

-- Hrosshvalur
INSERT INTO `mob_droplist` VALUES (1708,0,0,1000,3198,102); --  Ferine Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1708,0,0,1000,3200,145); --  Sylvan Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1708,0,0,1000,3204,90); --  Caller's Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1708,0,0,1000,3205,187); --  Mavi Seal: Ft.

-- Ice Elemental
INSERT INTO `mob_droplist` VALUES (1754,0,0,1000,1256,5); -- Ice Ore
INSERT INTO `mob_droplist` VALUES (1755,0,0,1000,1256,5); -- Ice Ore
INSERT INTO `mob_droplist` VALUES (1756,0,0,1000,1256,5); -- Ice Ore

-- Iktomi
INSERT INTO `mob_droplist` VALUES (1774,0,0,1000,3194,120); -- Estq. Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1774,0,0,1000,3195,73); -- Raid. Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1774,0,0,1000,3196,195); -- Creed Seal: Ft.
INSERT INTO `mob_droplist` VALUES (1774,0,0,1000,3201,145); -- Unkai Seal: Ft.

-- Indrik
DELETE FROM `mob_droplist` WHERE dropId=1786 and dropType=0 and itemId=1629 and itemRate=100; -- Ardor Stone
DELETE FROM `mob_droplist` WHERE dropId=1786 and dropType=0 and itemId=3214 and itemRate=50; -- Ardor Stone
DELETE FROM `mob_droplist` WHERE dropId=1786 and dropType=0 and itemId=3215 and itemRate=50; -- Ardor Coin
DELETE FROM `mob_droplist` WHERE dropId=1786 and dropType=0 and itemId=5832 and itemRate=100; -- Healing Mist
INSERT INTO `mob_droplist` VALUES (1786,0,0,1000,21382,168); -- Dosis Tathlum
INSERT INTO `mob_droplist` VALUES (1786,0,0,1000,12093,142); -- Raider's Poulaines
INSERT INTO `mob_droplist` VALUES (1786,0,0,1000,19404,144); -- Rhongomiant

-- Iriri Samariri
INSERT INTO `mob_droplist` VALUES (1792,0,0,1000,16088,102); --  Skadi's Visor
INSERT INTO `mob_droplist` VALUES (1792,0,0,1000,16092,149); -- Usukane Somen
INSERT INTO `mob_droplist` VALUES (1792,0,0,1000,10438,61); --  Enif Zucchetto
INSERT INTO `mob_droplist` VALUES (1792,0,0,1000,10877,137); -- Athos's Chapeau
INSERT INTO `mob_droplist` VALUES (1792,0,0,1000,16156,166); -- Oracle's Cap

-- Iriz Ima
DELETE FROM `mob_droplist` WHERE dropId=1793 and dropType=0 and itemId=2147 and itemRate=40; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1793 and dropType=0 and itemId=2147 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1793 and dropType=0 and itemId=19514 and itemRate=200; -- comment me
INSERT INTO `mob_droplist` VALUES (1793,0,0,1000,16088,125); -- Skadi's Visor
INSERT INTO `mob_droplist` VALUES (1793,0,0,1000,15629,177); -- skadis-chausses
INSERT INTO `mob_droplist` VALUES (1793,0,0,1000,16092,191); --  Usukane Somen
INSERT INTO `mob_droplist` VALUES (1793,0,0,1000,15633,153); -- Usukane Hizayoroi
INSERT INTO `mob_droplist` VALUES (1793,0,0,1000,10438,66); -- Enif Zucchetto
INSERT INTO `mob_droplist` VALUES (1793,0,0,1000,10326,61); --  Enif Cosciales
INSERT INTO `mob_droplist` VALUES (1793,0,0,1000,10877,176); --  Athos's Chapeau
INSERT INTO `mob_droplist` VALUES (1793,0,0,1000,11970,156); --  Athos's Tights

-- Ironclad Cleaver
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=654 and itemRate=100; -- Darksteel Ingot
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=723 and itemRate=100; -- Divine Lumber
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=729 and itemRate=100; -- Bloodwood Log
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=745 and itemRate=80; --  Gold Ingot
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=836 and itemRate=70; --  Damascene Cloth
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=1302 and itemRate=100; -- Earth Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=1303 and itemRate=100; -- Lightning Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=1303 and itemRate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=1304 and itemRate=100; -- Water Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=1305 and itemRate=100; -- Light Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=1306 and itemRate=100; -- Dark Bead
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=2703 and itemRate=100; -- Khrom. Leather
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=2951 and itemRate=100; -- Malachite
DELETE FROM `mob_droplist` WHERE dropId=1794 and dropType=0 and itemId=4387 and itemRate=140; -- Wild Onion
INSERT INTO `mob_droplist` VALUES (1794,0,0,1000,12092,150); -- Estq. Houseaux

-- Irrlicht
INSERT INTO `mob_droplist` VALUES (1809,0,0,1000,27924,145); -- Thurandaut Tabard

-- Isgebind
DELETE FROM `mob_droplist` WHERE dropId=1810 and dropType=0 and itemId=646 and itemRate=10; -- Adaman Ore
DELETE FROM `mob_droplist` WHERE dropId=1810 and dropType=0 and itemId=747 and itemRate=10; -- Ocl. Ingot
DELETE FROM `mob_droplist` WHERE dropId=1810 and dropType=0 and itemId=751 and itemRate=10; -- Plt. Beastcoin
DELETE FROM `mob_droplist` WHERE dropId=1810 and dropType=0 and itemId=827 and itemRate=10; -- Wool Cloth
DELETE FROM `mob_droplist` WHERE dropId=1810 and dropType=0 and itemId=860 and itemRate=10; -- Behemoth Hide
DELETE FROM `mob_droplist` WHERE dropId=1810 and dropType=0 and itemId=931 and itemRate=10; -- Cermet Chunk
DELETE FROM `mob_droplist` WHERE dropId=1810 and dropType=0 and itemId=1124 and itemRate=10; -- Wyvern Wing
DELETE FROM `mob_droplist` WHERE dropId=1810 and dropType=0 and itemId=1132 and itemRate=10; -- Raxa
DELETE FROM `mob_droplist` WHERE dropId=1810 and dropType=0 and itemId=3290 and itemRate=100; -- Isgebind's Heart
INSERT INTO `mob_droplist` VALUES (1810,0,0,1000,3290,97); -- Isgebind's Heart
INSERT INTO `mob_droplist` VALUES (1810,0,0,1000,3290,1000); -- Isgebind's Heart

-- Itzpapalotl
DELETE FROM `mob_droplist` WHERE dropId=1812 and dropType=0 and itemId=2962 and itemRate=1370; --  Itzpapa. Scale
DELETE FROM `mob_droplist` WHERE dropId=1812 and dropType=0 and itemId=2962 and itemRate=680; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1812 and dropType=0 and itemId=3210 and itemRate=50; -- Vision Stone
DELETE FROM `mob_droplist` WHERE dropId=1812 and dropType=0 and itemId=11432 and itemRate=1000; -- Ace's Leggings
INSERT INTO `mob_droplist` VALUES (1812,0,0,1000,2962,1000); -- Itzpapa. Scale
INSERT INTO `mob_droplist` VALUES (1812,0,0,1000,2962,52); -- comment me
INSERT INTO `mob_droplist` VALUES (1812,0,0,1000,19400,83); -- Caladbolg

-- Jaguarundi
INSERT INTO `mob_droplist` VALUES (1831,0,0,1000,8707,21);
INSERT INTO `mob_droplist` VALUES (1831,0,0,1000,8751,18);

-- Jailer of Faith
INSERT INTO `mob_droplist` VALUES (1832,0,0,1000,1913,170); -- Sin Of Indignation
INSERT INTO `mob_droplist` VALUES (1832,0,0,1000,20536,72); --  Tinhaspa
INSERT INTO `mob_droplist` VALUES (1832,0,0,1000,21252,117); --  One-eyed

-- Jailer of Fortitude
INSERT INTO `mob_droplist` VALUES (1833,0,0,1000,1914,140); -- Sin Of Indolence
INSERT INTO `mob_droplist` VALUES (1833,0,0,1000,20860,76); -- Minos
INSERT INTO `mob_droplist` VALUES (1833,0,0,1000,20717,89); -- Arendsi Fleuret

-- Jailer of Hope
INSERT INTO `mob_droplist` VALUES (1834,0,0,1000,1915,180); -- Sin Of Indulgence
INSERT INTO `mob_droplist` VALUES (1834,0,0,1000,20994,75); -- Shigi
INSERT INTO `mob_droplist` VALUES (1834,0,0,1000,21229,70); -- Cibitshavore

-- Jailer of Justice
INSERT INTO `mob_droplist` VALUES (1835,0,0,1000,1916,187); -- Sin Of Invidious.
INSERT INTO `mob_droplist` VALUES (1835,0,0,1000,20904,63); -- Cronus
INSERT INTO `mob_droplist` VALUES (1835,0,0,1000,21040,69); -- Shokudaikiri

-- Jailer of Love
INSERT INTO `mob_droplist` VALUES (1836,0,0,1000,1917,100); -- Sin Of Insolence
INSERT INTO `mob_droplist` VALUES (1836,0,0,1000,20954,52); --  Eminent Lance
INSERT INTO `mob_droplist` VALUES (1836,0,0,1000,20636,81); -- Izhiikoh

-- Jailer of Prudence
INSERT INTO `mob_droplist` VALUES (1837,0,0,1000,1918,100); -- Sin Of Infatuation
INSERT INTO `mob_droplist` VALUES (1837,0,0,1000,21111,60); -- Bolelabunga
INSERT INTO `mob_droplist` VALUES (1837,0,0,1000,20763,83); --  Kbiroj

-- Jailer of Temperance
INSERT INTO `mob_droplist` VALUES (1838,0,0,1000,1919,160); --  Sin Of Intemper.
INSERT INTO `mob_droplist` VALUES (1838,0,0,1000,20809,73); --  Kumbhakarna
INSERT INTO `mob_droplist` VALUES (1838,0,0,1000,21169,78); --  Keraunos

-- Jormungand
DELETE FROM `mob_droplist` WHERE dropId=1852 and dropType=0 and itemId=658 and itemRate=40; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1852 and dropType=0 and itemId=722 and itemRate=10;
DELETE FROM `mob_droplist` WHERE dropId=1852 and dropType=0 and itemId=836 and itemRate=70;
DELETE FROM `mob_droplist` WHERE dropId=1852 and dropType=0 and itemId=837 and itemRate=70;
DELETE FROM `mob_droplist` WHERE dropId=1852 and dropType=0 and itemId=658 and itemRate=40;
DELETE FROM `mob_droplist` WHERE dropId=1852 and dropType=0 and itemId=860 and itemRate=70;
DELETE FROM `mob_droplist` WHERE dropId=1852 and dropType=0 and itemId=1311 and itemRate=20;
DELETE FROM `mob_droplist` WHERE dropId=1852 and dropType=0 and itemId=1313 and itemRate=670;
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,28159,51);
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,28157,83);
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,27723,94);
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,28158,62);
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,20759,153);
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,279,1000);

-- Juggler Hecatomb
DELETE FROM `mob_droplist` WHERE dropId=1861 and dropType=0 and itemId=16868 and itemRate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (1861,0,0,1000,10610,192); --  Calma Leggings
INSERT INTO `mob_droplist` VALUES (1861,0,0,1000,10885,161); -- Avant Helm +1
INSERT INTO `mob_droplist` VALUES (1861,0,0,1000,10463,190); -- Mustela Harness
INSERT INTO `mob_droplist` VALUES (1861,0,0,1000,10514,127); --  Magavan Mitts
INSERT INTO `mob_droplist` VALUES (1861,0,0,1000,11971,174); --  Rubeus Spats
INSERT INTO `mob_droplist` VALUES (1861,0,0,1000,27781,66); --  Xux hat

-- Khimaira
DELETE FROM `mob_droplist` WHERE dropId=1893 and dropType=0 and itemId=2371 and itemRate=1000;
DELETE FROM `mob_droplist` WHERE dropId=1893 and dropType=0 and itemId=2372 and itemRate=1000;
DELETE FROM `mob_droplist` WHERE dropId=1893 and dropType=0 and itemId=2372 and itemRate=500;
DELETE FROM `mob_droplist` WHERE dropId=1893 and dropType=0 and itemId=2373 and itemRate=1000;
INSERT INTO `mob_droplist` VALUES (1893,0,0,1000,15809,140); -- Jalzahn's Ring
INSERT INTO `mob_droplist` VALUES (1893,0,0,1000,4023,1000); -- Snowsteel Ore
INSERT INTO `mob_droplist` VALUES (1893,0,0,1000,10285,86); -- Beguiler's jerkin
INSERT INTO `mob_droplist` VALUES (1893,0,0,1000,9062,12); -- Dark Matter

-- Khromasoul Bhurborlor
DELETE FROM `mob_droplist` WHERE dropId=1894 and dropType=0 and itemId=15022 and itemRate=190;
DELETE FROM `mob_droplist` WHERE dropId=1894 and dropType=0 and itemId=16343 and itemRate=200;
DELETE FROM `mob_droplist` WHERE dropId=1894 and dropType=0 and itemId=16176 and itemRate=360;
INSERT INTO `mob_droplist` VALUES (1894,0,0,1000,14546,135); --  Ares' Cuirass
INSERT INTO `mob_droplist` VALUES (1894,0,0,1000,10450,86); --  Ogier's Surcoat
INSERT INTO `mob_droplist` VALUES (1894,0,0,1000,10806,114); -- Adamas
INSERT INTO `mob_droplist` VALUES (1894,0,0,1000,18997,130); -- Burtgang
INSERT INTO `mob_droplist` VALUES (1894,0,0,1000,19006,100); -- Tizona

-- King Arthro
DELETE FROM `mob_droplist` WHERE dropId=1935 and dropType=0 and itemId=15899 and itemRate=80; -- comment me
INSERT INTO `mob_droplist` VALUES (1935,0,0,1000,13189,80); -- Speed Belt

-- King Behemoth
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=831 and itemRate=530; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=1527 and itemRate=670; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=1322 and itemRate=320; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=1322 and itemRate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=1328 and itemRate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=1328 and itemRate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=1332 and itemRate=290; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=1332 and itemRate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=860 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=860 and itemRate=400; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=883 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=1334 and itemRate=380; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1936 and dropType=0 and itemId=1334 and itemRate=190; -- comment me
INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,18459,153); -- Heshikiri-hasebe
INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,10636,114); -- Huginn Gambieras
-- INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,10636,87);
INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,10407,160); -- Khepri Bonnet
-- INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,10407,168);
-- INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,10490,166); -- Tenryu Domaru +1
INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,10490,94);
INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,10542,176); -- Spurrina Gages
INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,10574,112); -- Iaso Tights


-- Kukulkan
DELETE FROM `mob_droplist` WHERE dropId=1966 and dropType=0 and itemId=2932 and itemRate=100; -- comment me
INSERT INTO `mob_droplist` VALUES (1966,0,0,1000,657,183);
INSERT INTO `mob_droplist` VALUES (1966,0,0,1000,741,240);
INSERT INTO `mob_droplist` VALUES (1966,0,0,1000,741,151);
INSERT INTO `mob_droplist` VALUES (1966,0,0,1000,3552,170);
INSERT INTO `mob_droplist` VALUES (1966,0,0,1000,3922,120);
INSERT INTO `mob_droplist` VALUES (1966,0,0,1000,4020,299);
INSERT INTO `mob_droplist` VALUES (1966,0,0,1000,2932,1000); --  Kukulkan's Fang
INSERT INTO `mob_droplist` VALUES (1966,0,0,1000,12088,340); --  Ravager's Calligae

-- Kutharei
DELETE FROM `mob_droplist` WHERE dropId=1972 and dropType=0 and itemId=699 and itemRate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and dropType=0 and itemId=702 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and dropType=0 and itemId=1300 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and dropType=0 and itemId=1302 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and dropType=0 and itemId=1305 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and dropType=0 and itemId=1306 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=1972 and dropType=0 and itemId=747 and itemRate=270; -- comment me

-- Leaping Lizzy
DELETE FROM `mob_droplist` WHERE dropId=2036 and dropType=0 and itemId=15351 and itemRate=70; -- Bounding Boots
INSERT INTO `mob_droplist` VALUES (2036,0,0,1000,13014,70); -- Leaping Boots

-- Lentor
INSERT INTO `mob_droplist` VALUES (2041,0,0,1000,27761,108); -- Gorney Morion

-- Light Elemental
INSERT INTO `mob_droplist` VALUES (2059,0,0,1000,1261,5); -- Light Ore

-- Lil' Apkallu
DELETE FROM `mob_droplist` WHERE dropId=2061 and dropType=0 and itemId=11368 and itemRate=470; -- comment me
INSERT INTO `mob_droplist` VALUES (2061,0,0,1000,15015,183); -- Hachiryu Kote
INSERT INTO `mob_droplist` VALUES (2061,0,0,1000,14977,153); -- Morrigan's Cuffs
INSERT INTO `mob_droplist` VALUES (2061,0,0,1000,14973,103); -- Marduk's Dastanas
INSERT INTO `mob_droplist` VALUES (2061,0,0,1000,10321,74); -- Adhara Gages
INSERT INTO `mob_droplist` VALUES (2061,0,0,1000,10323,76); -- Shedir Gages

-- Lividroot Amooshah
DELETE FROM `mob_droplist` WHERE dropId=2065 and dropType=0 and itemId=920 and itemRate=0; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2065 and dropType=0 and itemId=16153 and itemRate=400; -- comment me
INSERT INTO `mob_droplist` VALUES (2065,0,0,1000,2614,1000); -- Amoosh.'s Tendril
INSERT INTO `mob_droplist` VALUES (2065,0,0,1000,11367,151); -- Nobushi Kyahan
INSERT INTO `mob_droplist` VALUES (2065,0,0,1000,11284,176); -- Enkidu's Harness
INSERT INTO `mob_droplist` VALUES (2065,0,0,1000,15629,171); -- Skadi's Chausses
INSERT INTO `mob_droplist` VALUES (2065,0,0,1000,15633,167); -- Usukane Hizayoroi
INSERT INTO `mob_droplist` VALUES (2065,0,0,1000,10326,70); --  Enif Cosciales
INSERT INTO `mob_droplist` VALUES (2065,0,0,1000,11970,191); -- Athos's Tights

-- Battlerigged Chariot
DELETE FROM `mob_droplist` WHERE dropId=2075 and dropType=0 and itemId=4892 and itemRate=100; -- comment me

-- Lord of Onzozo
DELETE FROM `mob_droplist` WHERE dropId=2079 and dropType=0 and itemId=4484 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2079 and dropType=0 and itemId=4484 and itemRate=500; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2079 and dropType=0 and itemId=4484 and itemRate=330; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2079 and dropType=0 and itemId=18852 and itemRate=80; -- comment me
-- INSERT INTO `mob_droplist` VALUES (2079,0,0,1000,10570,330);
INSERT INTO `mob_droplist` VALUES (2079,0,0,1000,10570,175);
INSERT INTO `mob_droplist` VALUES (2079,0,0,1000,10638,154);
-- INSERT INTO `mob_droplist` VALUES (2079,0,0,1000,10406,310);
INSERT INTO `mob_droplist` VALUES (2079,0,0,1000,10406,155);
-- INSERT INTO `mob_droplist` VALUES (2079,0,0,1000,10492,333);
INSERT INTO `mob_droplist` VALUES (2079,0,0,1000,10492,161);
INSERT INTO `mob_droplist` VALUES (2079,0,0,1000,10543,97);


-- Lord Varney
DELETE FROM `mob_droplist` WHERE dropId=2080 and dropType=0 and itemId=3193 and itemRate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and dropType=0 and itemId=3193 and itemRate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and dropType=0 and itemId=3193 and itemRate=90; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and dropType=0 and itemId=3197 and itemRate=330; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and dropType=0 and itemId=3197 and itemRate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and dropType=0 and itemId=3202 and itemRate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and dropType=0 and itemId=3202 and itemRate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and dropType=0 and itemId=3207 and itemRate=190; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2080 and dropType=0 and itemId=2307 and itemRate=130; -- comment me
INSERT INTO `mob_droplist` VALUES (2080,0,0,1000,12100,189); --  Iga Kyahan
INSERT INTO `mob_droplist` VALUES (2080,0,0,1000,3449,24);
INSERT INTO `mob_droplist` VALUES (2080,0,0,1000,4015,285);
INSERT INTO `mob_droplist` VALUES (2080,0,0,1000,3550,244);
INSERT INTO `mob_droplist` VALUES (2080,0,0,1000,8707,200);

-- Mahjiaef the Paintom
DELETE FROM `mob_droplist` WHERE dropId=2133 and dropType=0 and itemId=15021 and itemRate=470; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2133 and dropType=0 and itemId=15021 and itemRate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2133 and dropType=0 and itemId=16177 and itemRate=340; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2133 and dropType=0 and itemId=19031 and itemRate=570; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2133 and dropType=0 and itemId=19035 and itemRate=530; -- comment me
INSERT INTO `mob_droplist` VALUES (2133,0,0,1000,14562,150); -- Morrigan's Robe
INSERT INTO `mob_droplist` VALUES (2133,0,0,1000,10277,91); -- Adhara Manteel
INSERT INTO `mob_droplist` VALUES (2133,0,0,1000,10279,89); -- Shedir Manteel
INSERT INTO `mob_droplist` VALUES (2133,0,0,1000,11669,106); -- Strendu Ring
INSERT INTO `mob_droplist` VALUES (2133,0,0,1000,19008,198); --  Kenkonken
INSERT INTO `mob_droplist` VALUES (2133,0,0,1000,18994,154); -- Laevateinn
INSERT INTO `mob_droplist` VALUES (2133,0,0,1000,18990,163); -- Tupsimati

-- Mee Deggi the Punisher
DELETE FROM `mob_droplist` WHERE dropId=2238 and dropType=0 and itemId=14986 and itemRate=50; -- Ochimusha Kote
INSERT INTO `mob_droplist` VALUES (2238,0,0,1000,13952,74); -- Ochiudo's Kote

-- Megamaw Mikey
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=702 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=823 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=1312 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=1769 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=2315 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=2532 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=4272 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=4377 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=5152 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=2942 and itemRate=1030; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=1997 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=1841 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=887 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=830 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=1312 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2240 and dropType=0 and itemId=1415 and itemRate=10; -- comment me
INSERT INTO `mob_droplist` VALUES (2240,0,0,1000,741,125); -- P. Brass Ore
INSERT INTO `mob_droplist` VALUES (2240,0,0,1000,741,71);

-- Megantereon
INSERT INTO `mob_droplist` VALUES (2241,0,0,1000,27922,143); -- Orvail Robe

-- Morboling
INSERT INTO `mob_droplist` VALUES (2351,0,0,1000,2361,29);

-- Namtar
DELETE FROM `mob_droplist` WHERE dropId=2414
INSERT INTO `mob_droplist` VALUES (2414,0,0,1000,11866,86); -- Toci's Harness
INSERT INTO `mob_droplist` VALUES (2414,0,0,1000,19175,128); -- Hoarfrost Blade
INSERT INTO `mob_droplist` VALUES (2414,0,0,1000,20877,154); -- Iclamar
INSERT INTO `mob_droplist` VALUES (2414,0,0,1000,28203,139); -- Orvail Pants

-- Nguruvilu
INSERT INTO `mob_droplist` VALUES (2423,0,0,1000,27907,124); -- Gorney Haubert

-- Nidhogg
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=865 and itemRate=700; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1526 and itemRate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1320 and itemRate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1320 and itemRate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1325 and itemRate=270; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1325 and itemRate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1330 and itemRate=370; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1330 and itemRate=180; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1342 and itemRate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1342 and itemRate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=865 and itemRate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=865 and itemRate=170; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=867 and itemRate=60; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=903 and itemRate=20; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1133 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=1133 and itemRate=500; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=4272 and itemRate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2425 and dropType=0 and itemId=4486 and itemRate=1000; -- comment me

-- INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,10405,53); -- Huginn Coronet
INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,10405,96);
INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,10491,137); --  Khepri Jacket
INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,10491,90);
-- INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,10540,195); -- Tenryu Tekko +1
INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,10540,91);
-- INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,10573,174); --     Spurrina Slops
INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,10573,85);
INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,10640,83); --  Iaso Boots

-- Ningishzida
DELETE FROM `mob_droplist` WHERE dropId=2473 and dropType=0 and itemId=3130 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and dropType=0 and itemId=3130 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and dropType=0 and itemId=3132 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and dropType=0 and itemId=3132 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and dropType=0 and itemId=3141 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and dropType=0 and itemId=3141 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and dropType=0 and itemId=3145 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2473 and dropType=0 and itemId=3145 and itemRate=30; -- comment me
INSERT INTO `mob_droplist` VALUES (2473,0,0,1000,11904,149); -- Thicket Gages
INSERT INTO `mob_droplist` VALUES (2473,0,0,1000,28467,73); -- Dynamic Belt +1

-- Nosferatu
DELETE FROM `mob_droplist` WHERE dropId=2487 and dropType=0 and itemId=11378 and itemRate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2487 and dropType=0 and itemId=15021 and itemRate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2487 and dropType=0 and itemId=17960 and itemRate=150; -- comment me
INSERT INTO `mob_droplist` VALUES (2487,0,0,1000,14546,154); -- Ares Cuirass
INSERT INTO `mob_droplist` VALUES (2487,0,0,1000,10450,99); --  Ogier's Surcoat
INSERT INTO `mob_droplist` VALUES (2487,0,0,1000,18989,100); -- Terpsichore
INSERT INTO `mob_droplist` VALUES (2487,0,0,1000,19001,100); --  Gastraphetes
INSERT INTO `mob_droplist` VALUES (2487,0,0,1000,19003,100); --  Nagi
INSERT INTO `mob_droplist` VALUES (2487,0,0,1000,28440,74); -- Windbuffet Belt +1

-- Nuhn
DELETE FROM `mob_droplist` WHERE dropId=2491 and dropType=0 and itemId=11377 and itemRate=460; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and dropType=0 and itemId=11377 and itemRate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and dropType=0 and itemId=15023 and itemRate=280; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and dropType=0 and itemId=15023 and itemRate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and dropType=0 and itemId=18430 and itemRate=460; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and dropType=0 and itemId=18430 and itemRate=230; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and dropType=0 and itemId=19033 and itemRate=480; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2491 and dropType=0 and itemId=19037 and itemRate=510; -- comment me
INSERT INTO `mob_droplist` VALUES (2491,0,0,1000,14562,162); --    Morrigan's Robe
INSERT INTO `mob_droplist` VALUES (2491,0,0,1000,14558,141); --  Marduk's Jubbah
INSERT INTO `mob_droplist` VALUES (2491,0,0,1000,10277,72); -- Adhara Manteel
INSERT INTO `mob_droplist` VALUES (2491,0,0,1000,10279,76); -- Shedir Manteel
INSERT INTO `mob_droplist` VALUES (2491,0,0,1000,28450,95); -- Chaac Belt
INSERT INTO `mob_droplist` VALUES (2491,0,0,1000,18999,153); -- Aymur
INSERT INTO `mob_droplist` VALUES (2491,0,0,1000,19002,211); --  Kogarasumaru

-- Ob
DELETE FROM `mob_droplist` WHERE dropId=2496 
INSERT INTO `mob_droplist` VALUES (2496,0,0,1000,15711,250); -- Ares' Sollerets
INSERT INTO `mob_droplist` VALUES (2496,0,0,1000,10600,371); -- Ogier's Leggings
INSERT INTO `mob_droplist` VALUES (2496,0,0,1000,28047,145); -- Shneddick Gloves

-- Ophion

-- Orthrus
DELETE FROM `mob_droplist` WHERE dropId=2721 and dropType=0 and itemId=2168 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and dropType=0 and itemId=2168 and itemRate=500; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and dropType=0 and itemId=4969 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and dropType=0 and itemId=5006 and itemRate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and dropType=0 and itemId=5085 and itemRate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2721 and dropType=0 and itemId=5090 and itemRate=100; -- comment me
REPLACE INTO `mob_droplist` VALUES (2721,0,0,1000,16260,127); -- Atheling Mantle
INSERT INTO `mob_droplist` VALUES (2721,0,0,1000,3287,158); -- orthruss claw
INSERT INTO `mob_droplist` VALUES (2721,0,0,1000,3287,1000); -- orthruss claw

-- Overlord Bakgodek
DELETE FROM `mob_droplist` WHERE dropId=2728
INSERT INTO `mob_droplist` VALUES (2728,0,0,1000,16106,277); -- Askar Zucchetto
INSERT INTO `mob_droplist` VALUES (2728,0,0,1000,14568,307); -- Askar Korazin
INSERT INTO `mob_droplist` VALUES (2728,0,0,1000,15648,420); -- Denali Kecks
INSERT INTO `mob_droplist` VALUES (2728,0,0,1000,15734,371); -- Denali Gamashes
INSERT INTO `mob_droplist` VALUES (2728,0,0,1000,14985,474); -- Goliard Cuffs
INSERT INTO `mob_droplist` VALUES (2728,0,0,1000,21132,187); -- Aedold
INSERT INTO `mob_droplist` VALUES (2728,0,0,1000,28344,108); -- Thurandaut Boots


-- Medusa
INSERT INTO `mob_droplist` VALUES (2237,0,0,1000,27780,93); -- Chocaliztli mask
INSERT INTO `mob_droplist` VALUES (2237,0,0,1000,4023,186);

-- Ouzelum
DELETE FROM `mob_droplist` WHERE dropId=2725 and dropType=0 and itemId=4890 and itemRate=10; -- comment me

-- Ovni
DELETE FROM `mob_droplist` WHERE dropId=2732 and dropType=0 and itemId=4254 and itemRate=1000; -- comment me
INSERT INTO `mob_droplist` VALUES (2732,0,0,1000,18574,116); -- Daurdabla
INSERT INTO `mob_droplist` VALUES (2732,0,0,1000,1279,113);
INSERT INTO `mob_droplist` VALUES (2732,0,0,1000,8990,214);
INSERT INTO `mob_droplist` VALUES (2732,0,0,1000,9063,225);

-- Poroggo Dom Juan
INSERT INTO `mob_droplist` VALUES (2819,0,0,1000,27908,121); -- Shneddick Tabard

-- Quadav Guard/Transporter Fix
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3192 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3192 and itemRate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3192 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3192 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3193 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3193 and itemRate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3193 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3193 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3194 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3194 and itemRate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3194 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3194 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3209 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3209 and itemRate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3209 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=2907 and dropType=0 and itemId=3209 and itemRate=30; -- comment me

-- Quu Domi the Gallant
DELETE FROM `mob_droplist` WHERE dropId=2916 and dropType=0 and itemId=15737 and itemRate=70; -- Sarutobi kyahan
INSERT INTO `mob_droplist` VALUES (2916,0,0,1000,13054,77); -- Fuma Kyahan

-- Rani
DELETE FROM `mob_droplist` WHERE dropId=2925 and dropType=0 and itemId=11698 and itemRate=1000; -- comment me
INSERT INTO `mob_droplist` VALUES (2925,0,0,1000,11651,38); -- Eponas Ring
INSERT INTO `mob_droplist` VALUES (2925,0,0,1000,11698,94); -- Hecates Earring

-- Reaction
DELETE FROM `mob_droplist` WHERE dropId=2936 and dropType=0 and itemId=17316 and itemRate=0; -- comment me
INSERT INTO `mob_droplist` VALUES (2936,0,0,1000,16156,282); -- Oracle's Cap
INSERT INTO `mob_droplist` VALUES (2936,0,0,1000,16084,308); -- Ares' Mask
INSERT INTO `mob_droplist` VALUES (2936,0,0,1000,10876,231); -- Ogier's Helm
INSERT INTO `mob_droplist` VALUES (2936,0,0,1000,27784,135); -- Thurandaut Chapeau

-- Refitted Chariot
DELETE FROM `mob_droplist` WHERE dropId=2946 and dropType=0 and itemId=4890 and itemRate=100; -- comment me

-- Rift Treant
INSERT INTO `mob_droplist` VALUES (2964,0,0,1000,3926,27);

-- Roc
DELETE FROM `mob_droplist` WHERE dropId=2987 and dropType=0 and itemId=18587 and itemRate=120; -- Dryad Staff
INSERT INTO `mob_droplist` VALUES (2987,0,0,1000,17108,80); -- Healing Staff

-- Rock Grinder
INSERT INTO `mob_droplist` VALUES (2998,0,0,1000,4020,44);
INSERT INTO `mob_droplist` VALUES (2998,0,0,1000,756,14);
INSERT INTO `mob_droplist` VALUES (2998,0,0,1000,8747,15);


-- Sarameya
DELETE FROM `mob_droplist` WHERE dropId=3059 and dropType=0 and itemId=2168 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and dropType=0 and itemId=5565 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and dropType=0 and itemId=11283 and itemRate=280; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and dropType=0 and itemId=16155 and itemRate=420; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and dropType=0 and itemId=16156 and itemRate=410; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and dropType=0 and itemId=16337 and itemRate=130; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and dropType=0 and itemId=18446 and itemRate=210; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3059 and dropType=0 and itemId=18497 and itemRate=140; -- comment me
INSERT INTO `mob_droplist` VALUES (3059,0,0,1000,28218,95); -- Ate's Sollerets
INSERT INTO `mob_droplist` VALUES (3059,0,0,1000,27799,99); --  Idi's Jerkin
INSERT INTO `mob_droplist` VALUES (3059,0,0,1000,27939,88); -- Idi's Gloves
INSERT INTO `mob_droplist` VALUES (3059,0,0,1000,27940,97); -- Genta Gote
INSERT INTO `mob_droplist` VALUES (3059,0,0,1000,28083,89); --     Genta-no-Hakama
INSERT INTO `mob_droplist` VALUES (3059,0,0,1000,27802,80); --  Neit's Coat
INSERT INTO `mob_droplist` VALUES (3059,0,0,1000,27662,98); -- Neit's Crown
INSERT INTO `mob_droplist` VALUES (3059,0,0,1000,27661,88); -- Namru's Tiara
INSERT INTO `mob_droplist` VALUES (3059,0,0,1000,28221,65); -- Namru's Crackows

-- Sisyphus
DELETE FROM `mob_droplist` WHERE dropId=3212 and dropType=0 and itemId=4892 and itemRate=100; -- comment me

-- Sozu Rogberry
DELETE FROM `mob_droplist` WHERE dropId=3287 and dropType=0 and itemId=1119 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3287 and dropType=0 and itemId=1162 and itemRate=10; -- comment me
INSERT INTO `mob_droplist` VALUES (3287,0,0,1000,10465,254); -- Fulad-Zereh
INSERT INTO `mob_droplist` VALUES (3287,0,0,1000,19144,288); -- Coruscanti
INSERT INTO `mob_droplist` VALUES (3287,0,0,1000,28061,114); -- Gorney Moufles


-- Sedna
DELETE FROM `mob_droplist` WHERE dropId=3106 and dropType=0 and itemId=2967 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3106 and dropType=0 and itemId=3227 and itemRate=30; -- comment me
-- INSERT INTO `mob_droplist` VALUES (3106,0,0,1000,21051,84); --  Shichishito +1 162 Skill
INSERT INTO `mob_droplist` VALUES (3106,0,0,1000,2967,1000); -- Sedna's Tusk
INSERT INTO `mob_droplist` VALUES (3106,0,0,1000,19398,192); -- twashtar

-- Simurgh
DELETE FROM `mob_droplist` WHERE dropId=3208 and dropType=0 and itemId=15736 and itemRate=100; -- Trotter Boots
INSERT INTO `mob_droplist` VALUES (3208,0,0,1000,14080,76); -- Strider Boots

-- Sippoy
DELETE FROM `mob_droplist` WHERE dropId=3210 and dropType=0 and itemId=655 and itemRate=60; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and dropType=0 and itemId=723 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and dropType=0 and itemId=729 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and dropType=0 and itemId=863 and itemRate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and dropType=0 and itemId=1299 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and dropType=0 and itemId=1303 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3210 and dropType=0 and itemId=1313 and itemRate=670; -- comment me

-- Smok
DELETE FROM `mob_droplist` WHERE dropId=3241 and dropType=0 and itemId=836 and itemRate=70; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and dropType=0 and itemId=1300 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and dropType=0 and itemId=1301 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and dropType=0 and itemId=1313 and itemRate=670; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and dropType=0 and itemId=1313 and itemRate=670; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3241 and dropType=0 and itemId=1740 and itemRate=140; -- comment me
INSERT INTO `mob_droplist` VALUES (3241,0,0,1000,19410,105); --  Armageddon

-- Taisaijin (moved refresh 1&2 to scripted drops)
-- DELETE FROM `mob_droplist` WHERE dropId=3430 and dropType=0 and itemId=4717 and itemRate=1000; -- Refresh

-- Taxim
DELETE FROM `mob_droplist` WHERE dropId=3441
INSERT INTO `mob_droplist` VALUES (3441,0,0,1000,10280,323); --  Laeradr Breastplate
INSERT INTO `mob_droplist` VALUES (3441,0,0,1000,18524,349); -- Huskarl Axe
INSERT INTO `mob_droplist` VALUES (3441,0,0,1000,20787,110); -- Crobaci
INSERT INTO `mob_droplist` VALUES (3441,0,0,1000,28189,118); -- Shneddick Tights

-- Thunder Elemental
INSERT INTO `mob_droplist` VALUES (3482,0,0,1000,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3483,0,0,1000,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3503,0,0,1000,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3507,0,0,1000,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3508,0,0,1000,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3510,0,0,1000,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3511,0,0,1000,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3514,0,0,1000,1259,5); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (3518,0,0,1000,1259,5); -- Lightning Ore

-- Tiamat
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=655 and itemRate=60;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=658 and itemRate=30;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=722 and itemRate=90;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=836 and itemRate=30;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=837 and itemRate=70;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=860 and itemRate=130;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=1110 and itemRate=60;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=1311 and itemRate=110;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=1313 and itemRate=90;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=655 and itemRate=60;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=655 and itemRate=60;
DELETE FROM `mob_droplist` WHERE dropId=3522 and dropType=0 and itemId=655 and itemRate=60;
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,28017,84);
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,27725,79);
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,28015,65);
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,28016,43);
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,20857,180);
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,269,1000);

-- Tinnin
DELETE FROM `mob_droplist` WHERE dropId=3525 and dropType=0 and itemId=2158 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and dropType=0 and itemId=2172 and itemRate=500; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and dropType=0 and itemId=5564 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and dropType=0 and itemId=11284 and itemRate=370; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and dropType=0 and itemId=11364 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and dropType=0 and itemId=16516 and itemRate=300; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and dropType=0 and itemId=16517 and itemRate=320; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and dropType=0 and itemId=18429 and itemRate=150; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3525 and dropType=0 and itemId=18593 and itemRate=130; -- comment me
INSERT INTO `mob_droplist` VALUES (3525,0,0,1000,27942,75); --  Neit's Cuffs
INSERT INTO `mob_droplist` VALUES (3525,0,0,1000,28085,89); -- Neit's Slops
INSERT INTO `mob_droplist` VALUES (3525,0,0,1000,27801,78); --     Namru's Jubbah
INSERT INTO `mob_droplist` VALUES (3525,0,0,1000,27941,94); --  Namru's Dastanas
INSERT INTO `mob_droplist` VALUES (3525,0,0,1000,27658,87); --  Ate's Mask
INSERT INTO `mob_droplist` VALUES (3525,0,0,1000,27798,82); --  Ate's Cuirass
INSERT INTO `mob_droplist` VALUES (3525,0,0,1000,28082,86); --  Idi's Trousers
INSERT INTO `mob_droplist` VALUES (3525,0,0,1000,28220,96); -- Genta Sune-Ate

-- Toppling Tuber
INSERT INTO `mob_droplist` VALUES (3565,0,0,1000,27909,121); -- Weatherspoon Robe

-- Triarius X-XV
INSERT INTO `mob_droplist` VALUES (3588,0,0,1000,18904,347); -- Ephemeron
INSERT INTO `mob_droplist` VALUES (3588,0,0,1000,11872,308); -- Ace's Mail
INSERT INTO `mob_droplist` VALUES (3588,0,0,1000,20553,123); -- Ninzas
INSERT INTO `mob_droplist` VALUES (3588,0,0,1000,28064,103); -- Thurandaut Gloves

-- Turul
DELETE FROM `mob_droplist` WHERE dropId=3632 and dropType=0 and itemId=1262 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3632 and dropType=0 and itemId=2750 and itemRate=10; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3632 and dropType=0 and itemId=2752 and itemRate=100; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3632 and dropType=0 and itemId=2824 and itemRate=10; -- comment me
INSERT INTO `mob_droplist` VALUES (3632,0,0,1000,734,259);
INSERT INTO `mob_droplist` VALUES (3632,0,0,1000,1765,236);
INSERT INTO `mob_droplist` VALUES (3632,0,0,1000,3893,103);
INSERT INTO `mob_droplist` VALUES (3632,0,0,1000,8707,284);
INSERT INTO `mob_droplist` VALUES (3632,0,0,1000,12096,340); -- Ferine Ocreae
INSERT INTO `mob_droplist` VALUES (3632,0,0,1000,19403,340); -- Redemption

-- Tyger
DELETE FROM `mob_droplist` WHERE dropId=3638 and dropType=0 and itemId=2371 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and dropType=0 and itemId=2372 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and dropType=0 and itemId=2373 and itemRate=1000; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and dropType=0 and itemId=11282 and itemRate=360; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and dropType=0 and itemId=15015 and itemRate=180; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and dropType=0 and itemId=16155 and itemRate=360; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and dropType=0 and itemId=16157 and itemRate=400; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and dropType=0 and itemId=18857 and itemRate=120; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3638 and dropType=0 and itemId=18948 and itemRate=160; -- comment me
INSERT INTO `mob_droplist` VALUES (3638,0,0,1000,27938,78); -- Ate's Gauntlets
INSERT INTO `mob_droplist` VALUES (3638,0,0,1000,28081,92); -- Ate's Flanchard
INSERT INTO `mob_droplist` VALUES (3638,0,0,1000,28219,86); -- Idi's Ledelsens
INSERT INTO `mob_droplist` VALUES (3638,0,0,1000,27659,97); -- Idi's Mask
INSERT INTO `mob_droplist` VALUES (3638,0,0,1000,27660,89); -- Genta Kabuto
INSERT INTO `mob_droplist` VALUES (3638,0,0,1000,27800,83); -- Genta Hara-Ate
INSERT INTO `mob_droplist` VALUES (3638,0,0,1000,28222,102); -- Neit's Pigaches
INSERT INTO `mob_droplist` VALUES (3638,0,0,1000,28084,104); -- Namru's Shalwar

-- Tyrannic Tunnok
DELETE FROM `mob_droplist` WHERE dropId=3642
INSERT INTO `mob_droplist` VALUES (3642,0,0,1000,10466,269); -- Gunman Gambison
INSERT INTO `mob_droplist` VALUES (3642,0,0,1000,18457,333); -- Murasamemaru
INSERT INTO `mob_droplist` VALUES (3642,0,0,1000,21058,160); -- Shichishito
INSERT INTO `mob_droplist` VALUES (3642,0,0,1000,28205,119); -- Karieyh Brayettes

-- Tzee Xicu the Manifest
DELETE FROM `mob_droplist` WHERE dropId=3645
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,14983,258); -- Askar Manopolas
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,15647,324); -- Askar Dirs
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,14984,312); -- Denali Wristbands
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,16108,473); -- Goliard Chapeau
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,14570,355); -- Goliard Saio
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,21294,119); -- Hgafircian
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,28345,174); -- Karieyh Sollerets
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,17528,389); -- Astral Signa 

-- Sobek
DELETE FROM `mob_droplist` WHERE dropId=3273 and dropType=0 and itemId=2964 and itemRate=1390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3273 and dropType=0 and itemId=2964 and itemRate=690; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3273 and dropType=0 and itemId=3222 and itemRate=590; -- comment me
INSERT INTO `mob_droplist` VALUES (3273,0,0,1000,2964,1000); --  Sobek's Skin
INSERT INTO `mob_droplist` VALUES (3273,0,0,1000,2964,86); -- comment me
INSERT INTO `mob_droplist` VALUES (3273,0,0,1000,19408,70); --  Hvergelmir
INSERT INTO `mob_droplist` VALUES (3273,0,0,1000,756,162);
INSERT INTO `mob_droplist` VALUES (3273,0,0,1000,4020,279);
INSERT INTO `mob_droplist` VALUES (3273,0,0,1000,741,251);
INSERT INTO `mob_droplist` VALUES (3273,0,0,1000,3922,124);

-- Stroper Chyme
DELETE FROM `mob_droplist` WHERE dropId=3387 and dropType=0 and itemId=15551 and itemRate=20; -- Shikaree Ring
INSERT INTO `mob_droplist` VALUES (3387,0,0,1000,3925,45); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (3387,0,0,1000,13514,35); -- Archer Ring

-- Titlacauan
DELETE FROM `mob_droplist` WHERE dropId=3529 and dropType=0 and itemId=3212 and itemRate=30; -- comment me
INSERT INTO `mob_droplist` VALUES (3529,0,0,1000,12099,141); --  Unkai Sune-Ate

-- Ulhuadshi
DELETE FROM `mob_droplist` WHERE dropId=3648 and dropType=0 and itemId=2963 and itemRate=1020; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3648 and dropType=0 and itemId=2963 and itemRate=510; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3648 and dropType=0 and itemId=3211 and itemRate=350; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=3648 and dropType=0 and itemId=3211 and itemRate=1050; -- comment me
INSERT INTO `mob_droplist` VALUES (3648,0,0,1000,3211,1000); --  Vision Coin
INSERT INTO `mob_droplist` VALUES (3648,0,0,1000,2963,93); --  Ulhuadshi's Fang
INSERT INTO `mob_droplist` VALUES (3648,0,0,1000,2963,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (3648,0,0,1000,19399,94); -- Almace

-- Unut
INSERT INTO `mob_droplist` VALUES (3663,0,0,1000,19302,142); -- Uguisu
INSERT INTO `mob_droplist` VALUES (3663,0,0,1000,4766,100);
INSERT INTO `mob_droplist` VALUES (3663,0,0,1000,5080,100);
INSERT INTO `mob_droplist` VALUES (3663,0,0,1000,4613,100);
INSERT INTO `mob_droplist` VALUES (3663,0,0,1000,5498,100);
INSERT INTO `mob_droplist` VALUES (3663,0,0,1000,4707,100);

-- Valkrum Emperor
DELETE FROM `mob_droplist` WHERE dropId=3678 and dropType=0 and itemId=15224 and itemRate=160; -- comment me
INSERT INTO `mob_droplist` VALUES (3678,0,0,1000,12486,72); -- Emperor Hairpin

-- Velionis
INSERT INTO `mob_droplist` VALUES (4000,0,0,1000,15727,371); -- Morrigan's Pgch.
INSERT INTO `mob_droplist` VALUES (4000,0,0,1000,15723,377); -- Marduk's Crackows
INSERT INTO `mob_droplist` VALUES (4000,0,0,1000,10368,296); -- Adhara Crackows
INSERT INTO `mob_droplist` VALUES (4000,0,0,1000,28048,133); -- Weather. Cuffs

-- Verdelet
INSERT INTO `mob_droplist` VALUES (4007,0,0,1000,11282,580); -- Aurum Cuirass
INSERT INTO `mob_droplist` VALUES (4007,0,0,1000,15641,146); -- Morrigan's Slops
INSERT INTO `mob_droplist` VALUES (4007,0,0,1000,15637,142); -- Marduk's Shalwar
INSERT INTO `mob_droplist` VALUES (4007,0,0,1000,10327,87); -- Adhara Seraweels
INSERT INTO `mob_droplist` VALUES (4007,0,0,1000,10329,75); -- Shedir Seraweels

-- Viscount Morax
INSERT INTO `mob_droplist` VALUES (4019,0,0,1000,18558,294); -- Wroth Scythe
INSERT INTO `mob_droplist` VALUES (4019,0,0,1000,4776,100);
INSERT INTO `mob_droplist` VALUES (4019,0,0,1000,5105,100);
INSERT INTO `mob_droplist` VALUES (4019,0,0,1000,4705,100);
INSERT INTO `mob_droplist` VALUES (4019,0,0,1000,5499,100);
INSERT INTO `mob_droplist` VALUES (4019,0,0,1000,6059,100);

-- Vouivre
INSERT INTO `mob_droplist` VALUES (4031,0,0,1000,18525,303); -- Himthige
INSERT INTO `mob_droplist` VALUES (4031,0,0,1000,19298,274); -- Ikarigiri
INSERT INTO `mob_droplist` VALUES (4031,0,0,1000,21013,149); -- Kannakiri
INSERT INTO `mob_droplist` VALUES (4031,0,0,1000,28190,126); -- Weathersp. Pants

-- Vrtra
DELETE FROM `mob_droplist` WHERE dropId=4033 and dropType=0 and itemId=658 and itemRate=40;
DELETE FROM `mob_droplist` WHERE dropId=4033 and dropType=0 and itemId=836 and itemRate=70;
DELETE FROM `mob_droplist` WHERE dropId=4033 and dropType=0 and itemId=860 and itemRate=380;
DELETE FROM `mob_droplist` WHERE dropId=4033 and dropType=0 and itemId=903 and itemRate=20;
DELETE FROM `mob_droplist` WHERE dropId=4033 and dropType=0 and itemId=1133 and itemRate=10;
DELETE FROM `mob_droplist` WHERE dropId=4033 and dropType=0 and itemId=1816 and itemRate=80;
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,28296,65);
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,28294,90);
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,27724,85);
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,28295,80);
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,20721,136);
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,280,1000);

-- Vulpange
DELETE FROM `mob_droplist` WHERE dropId=4035 and dropType=0 and itemId=16154 and itemRate=380; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4035 and dropType=0 and itemId=17754 and itemRate=340; -- comment me
INSERT INTO `mob_droplist` VALUES (4035,0,0,1000,14965,105); -- Skadi's Bazubands
INSERT INTO `mob_droplist` VALUES (4035,0,0,1000,15715,155); -- Skadi's Jambeaux
INSERT INTO `mob_droplist` VALUES (4035,0,0,1000,14969,165); -- Usukane Gote
INSERT INTO `mob_droplist` VALUES (4035,0,0,1000,15719,167); -- Usukane Sune-Ate
INSERT INTO `mob_droplist` VALUES (4035,0,0,1000,10320,96); -- Enif Manopolas
INSERT INTO `mob_droplist` VALUES (4035,0,0,1000,10367,65); -- Enif Gambieras
INSERT INTO `mob_droplist` VALUES (4035,0,0,1000,10501,124); -- Athos's Gloves
INSERT INTO `mob_droplist` VALUES (4035,0,0,1000,10601,131); -- Athos's Boots

-- Warbler
DELETE FROM `mob_droplist` WHERE dropId=4071 and dropType=0 and itemId=3114 and itemRate=30; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4071 and dropType=0 and itemId=3118 and itemRate=30; -- comment me
INSERT INTO `mob_droplist` VALUES (4071,0,0,1000,12107,108); --  Savant's Loafers

-- Water Elemental
INSERT INTO `mob_droplist` VALUES (4098,0,0,1000,1260,5); -- Water Ore
INSERT INTO `mob_droplist` VALUES (4088,0,0,1000,1260,5); -- Water Ore
INSERT INTO `mob_droplist` VALUES (4102,0,0,1000,1260,5); -- Water Ore
INSERT INTO `mob_droplist` VALUES (4109,0,0,1000,1260,5); -- Water Ore
INSERT INTO `mob_droplist` VALUES (4115,0,0,1000,1260,5); -- Water Ore


-- Western Shadow
DELETE FROM `mob_droplist` WHERE dropId=4137 and dropType=0 and itemId=18752 and itemRate=170;
INSERT INTO `mob_droplist` VALUES (4137,0,0,1000,17472,76);

-- Yaanei

-- Zareehkl the Jubilant
INSERT INTO `mob_droplist` VALUES (4340,0,0,1000,16100,388); -- Morrigan's Coron.
INSERT INTO `mob_droplist` VALUES (4340,0,0,1000,16096,395); -- Marduk's Tiara
INSERT INTO `mob_droplist` VALUES (4340,0,0,1000,10439,298); -- Adhara Turban
INSERT INTO `mob_droplist` VALUES (4340,0,0,1000,27763,91); -- Weather. Corona

-- Kirin
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=658 and itemRate=390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=12562 and itemRate=390; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=17567 and itemRate=470; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=1315 and itemRate=400; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=1315 and itemRate=200; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=1337 and itemRate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=1337 and itemRate=260; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=1340 and itemRate=140; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=1340 and itemRate=280; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=747 and itemRate=220; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=747 and itemRate=110; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=831 and itemRate=320; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=831 and itemRate=160; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=4748 and itemRate=170; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=4748 and itemRate=80; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=4818 and itemRate=170; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4372 and dropType=0 and itemId=4748 and itemRate=150; -- comment me
INSERT INTO `mob_droplist` VALUES (4372,0,0,1000,3924,94); -- Scholar Stone
INSERT INTO `mob_droplist` VALUES (4372,0,0,1000,271,196); --  Alexander Statue

-- Ix'Aern (DRK)
DELETE FROM `mob_droplist` WHERE dropId=4397 and dropType=0 and itemId=1854 and itemRate=810; -- Zero out SQL based drop, scripted drop is in onMobDeath()
DELETE FROM `mob_droplist` WHERE dropId=4397 and dropType=0 and itemId=1902 and itemRate=190; -- Zero out SQL based drop, scripted drop is in onMobDeath()

-- Wulgaru
DELETE FROM `mob_droplist` WHERE dropId=4381 and dropType=0 and itemId=16174 and itemRate=340; -- comment me
INSERT INTO `mob_droplist` VALUES (4381,0,0,1000,16157,540); -- Enkidu's Cap
INSERT INTO `mob_droplist` VALUES (4381,0,0,1000,16100,173); -- Morrigan's Coron.
INSERT INTO `mob_droplist` VALUES (4381,0,0,1000,15641,161); -- Morrigan's Slops
INSERT INTO `mob_droplist` VALUES (4381,0,0,1000,16096,175); -- Marduk's Tiara
INSERT INTO `mob_droplist` VALUES (4381,0,0,1000,15637,179); -- Marduk's Shalwar
INSERT INTO `mob_droplist` VALUES (4381,0,0,1000,10327,64); -- Adhara Seraweels
INSERT INTO `mob_droplist` VALUES (4381,0,0,1000,10439,85); -- Adhara Turban
INSERT INTO `mob_droplist` VALUES (4381,0,0,1000,10329,103); -- Shedir Seraweels

-- Za'Dha Adamantking
DELETE FROM `mob_droplist` WHERE dropId=4383
INSERT INTO `mob_droplist` VALUES (4383,0,0,1000,15733,264); -- Askar Gambieras
INSERT INTO `mob_droplist` VALUES (4383,0,0,1000,16107,342); -- Denali Bonnet
INSERT INTO `mob_droplist` VALUES (4383,0,0,1000,14569,335); -- Denali Jacket
INSERT INTO `mob_droplist` VALUES (4383,0,0,1000,15649,348); -- Goliard Trews
INSERT INTO `mob_droplist` VALUES (4383,0,0,1000,15735,332); -- Goliard Clogs
INSERT INTO `mob_droplist` VALUES (4383,0,0,1000,20924,112); -- Iizamal
INSERT INTO `mob_droplist` VALUES (4383,0,0,1000,28342,102); -- Orvail Souliers

-- Aqueduct Spider
INSERT INTO `mob_droplist` VALUES (8999,0,0,1000,2198,155);

-- Legion

-- Lofty_Behemoth
INSERT INTO `mob_droplist` VALUES (9000,0,0,1000,3925,72); -- Tanzanite Jewel

-- Lofty_Wyrm
INSERT INTO `mob_droplist` VALUES (9001,0,0,1000,3925,74); -- Tanzanite Jewel

-- Lofty_Adamantoise
INSERT INTO `mob_droplist` VALUES (9002,0,0,1000,3925,69); -- Tanzanite Jewel

-- Lofty_Elasmoth
INSERT INTO `mob_droplist` VALUES (9003,0,0,1000,3925,66); -- Tanzanite Jewel

-- Lofty_Zilant
INSERT INTO `mob_droplist` VALUES (9004,0,0,1000,3925,68); -- Tanzanite Jewel

-- Lofty_Ferromantoise
INSERT INTO `mob_droplist` VALUES (9005,0,0,1000,3925,65); -- Tanzanite Jewel

-- Lofty Harpeia (Boss)
INSERT INTO `mob_droplist` VALUES (9006,0,0,1000,3925,1000); -- Harpia - Feet -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9006,0,0,1000,3529,1000); -- Lofty Trophy
INSERT INTO `mob_droplist` VALUES (9006,0,0,1000,3925,62); -- Tanzanite Jewel

-- Mired_Cerberus
INSERT INTO `mob_droplist` VALUES (9007,0,0,1000,3925,74); -- Tanzanite Jewel

-- Mired_Khim
INSERT INTO `mob_droplist` VALUES (9008,0,0,1000,3925,76); -- Tanzanite Jewel

-- Mired_Hydra
INSERT INTO `mob_droplist` VALUES (9009,0,0,1000,3925,70); -- Tanzanite Jewel

-- Mired_Orthrus
INSERT INTO `mob_droplist` VALUES (9010,0,0,1000,3925,78); -- Tanzanite Jewel

-- Mired_Khrysokhimaira
INSERT INTO `mob_droplist` VALUES (9011,0,0,1000,3925,75); -- Tanzanite Jewel

-- Mired_Alfard
INSERT INTO `mob_droplist` VALUES (9012,0,0,1000,3925,72); -- Tanzanite Jewel

-- Mired_Mantis (Boss)
INSERT INTO `mob_droplist` VALUES (9013,0,0,1000,3925,1000); -- Mantis - Legs -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9013,0,0,1000,3530,1000); -- Mired Trophy
INSERT INTO `mob_droplist` VALUES (9013,0,0,1000,3925,74); -- Tanzanite Jewel

-- Soaring_Corse
INSERT INTO `mob_droplist` VALUES (9014,0,0,1000,3925,110); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9014,0,0,1000,3925,130);

-- Soaring_Dvergr
INSERT INTO `mob_droplist` VALUES (9015,0,0,1000,3925,105); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9015,0,0,1000,3925,123);

-- Soaring_Vampyr
INSERT INTO `mob_droplist` VALUES (9016,0,0,1000,3925,103); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9016,0,0,1000,3925,75);

-- Soaring_Kumakatok
INSERT INTO `mob_droplist` VALUES (9017,0,0,1000,3925,97); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9017,0,0,1000,3925,168);

-- Soaring_Dweorg
INSERT INTO `mob_droplist` VALUES (9018,0,0,1000,3925,106); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9018,0,0,1000,3925,105);

-- Soaring_Strigoi
INSERT INTO `mob_droplist` VALUES (9019,0,0,1000,3925,109); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9019,0,0,1000,3925,119);

-- Soaring_Naraka (Boss)
INSERT INTO `mob_droplist` VALUES (9020,0,0,1000,3925,1000); -- Nakara - Hands -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9020,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9020,0,0,1000,3531,1000); -- Soaring Trophy
INSERT INTO `mob_droplist` VALUES (9020,0,0,1000,3925,200); -- Tanzanite Jewel

-- Veiled_Amphiptere
INSERT INTO `mob_droplist` VALUES (9021,0,0,1000,3925,380); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9021,0,0,1000,3925,173); -- Tanzanite Jewel

-- Veiled_Ixion
INSERT INTO `mob_droplist` VALUES (9022,0,0,1000,3925,352); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9022,0,0,1000,3925,185); -- Tanzanite Jewel

-- Veiled_Sandworm
INSERT INTO `mob_droplist` VALUES (9023,0,0,1000,3925,447); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9023,0,0,1000,3925,143); -- Tanzanite Jewel

-- Veiled_Sanguiptere
INSERT INTO `mob_droplist` VALUES (9024,0,0,1000,3925,418); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9024,0,0,1000,3925,112); -- Tanzanite Jewel

-- Veiled_Alicorn
INSERT INTO `mob_droplist` VALUES (9025,0,0,1000,3925,374); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9025,0,0,1000,3925,173); -- Tanzanite Jewel

-- Veiled_Gigaworm
INSERT INTO `mob_droplist` VALUES (9026,0,0,1000,3925,323); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9026,0,0,1000,3925,187); -- Tanzanite Jewel

-- Veiled_Ironclad (Boss)
INSERT INTO `mob_droplist` VALUES (9027,0,0,1000,3925,1000); -- Iron Clad - Heads
INSERT INTO `mob_droplist` VALUES (9027,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9027,0,0,1000,3532,1000); -- Veiled Trophy
INSERT INTO `mob_droplist` VALUES (9027,0,0,1000,3925,82); -- Tanzanite Jewel

-- Lofty_Harpeia (Alt for Hall of Mul)
INSERT INTO `mob_droplist` VALUES (9028,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9028,0,0,1000,3925,500); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9028,0,0,1000,3925,134); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9028,0,0,1000,3529,100); -- Lofty Trophy

-- Mired_Mantis (Alt for Hall of Mul)
INSERT INTO `mob_droplist` VALUES (9029,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9029,0,0,1000,3925,500); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9029,0,0,1000,3925,192); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9029,0,0,1000,3530,100); -- Mired Trophy

-- Soaring_Naraka (Alt for Hall of Mul)
INSERT INTO `mob_droplist` VALUES (9030,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9030,0,0,1000,3925,500); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9030,0,0,1000,3925,155); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9030,0,0,1000,3531,100); -- Soaring Trophy

-- Veiled_Ironclad (Alt for Hall of Mul)
INSERT INTO `mob_droplist` VALUES (9031,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9031,0,0,1000,3925,500); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9031,0,0,1000,3925,122); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9031,0,0,1000,3532,100); -- Veiled Trophy

-- Paramount_Harpeia
INSERT INTO `mob_droplist` VALUES (9032,0,0,1000,3925,1000); -- Harpia -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9032,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9032,0,0,1000,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9032,0,0,1000,4851,73); -- Meteor

-- Paramount_Mantis
INSERT INTO `mob_droplist` VALUES (9033,0,0,1000,3925,1000); -- Mantis -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9033,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9033,0,0,1000,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9033,0,0,1000,4851,115); -- Meteor

-- Paramount_Naraka
INSERT INTO `mob_droplist` VALUES (9034,0,0,1000,3925,1000); -- Nakara -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9034,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9034,0,0,1000,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9034,0,0,1000,4851,104); -- Meteor

-- Paramount_Ironclad
INSERT INTO `mob_droplist` VALUES (9035,0,0,1000,3925,1000); -- ironclad -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9035,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9035,0,0,1000,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9035,0,0,1000,4851,100); -- Meteor

-- Paramount_Gallu (Boss)
INSERT INTO `mob_droplist` VALUES (9036,0,0,1000,3925,1000); -- Gallu - Bodies -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9036,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9036,0,0,1000,3925,200); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9036,0,0,1000,4851,141); -- Meteor

-- Paramount_Botulus (Boss)
INSERT INTO `mob_droplist` VALUES (9037,0,0,1000,3925,1000); -- Botulus -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9037,0,0,1000,3925,1000); -- Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9037,0,0,1000,3925,153); -- Tanzanite Jewel
-- INSERT INTO `mob_droplist` VALUES (9037,0,0,1000,4851,85); -- Meteor

-- 9038-9045  Auspicious Entity (elementals)
INSERT INTO `mob_droplist` VALUES (9038,0,0,1000,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9039,0,0,1000,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9040,0,0,1000,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9041,0,0,1000,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9042,0,0,1000,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9043,0,0,1000,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9044,0,0,1000,3925,1); -- Ultra rare: Tanzanite Jewel
INSERT INTO `mob_droplist` VALUES (9045,0,0,1000,3925,1); -- Ultra rare: Tanzanite Jewel
-- 9046 reserved! Frog_Lady
-- 9048 reserved! Frog
-- 9049 reserved! Son_Goku
-- 9050 reserved!

-- ------End Legion

-- Odin (9082)
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,3925,1000); -- tanz
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,3925,600); -- tanz
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,3925,200); -- tanz
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,3924,200); -- scholar
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,28605,150); -- samanisi_cape
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,27722,50); -- ighwa_cap
INSERT INTO `mob_droplist` VALUES (9082,0,0,1000,28156,50); -- ighwa_trousers

-- Alex (9083)
INSERT INTO `mob_droplist` VALUES (9083,0,0,1000,3925,1000); -- tanz
INSERT INTO `mob_droplist` VALUES (9083,0,0,1000,3925,600); -- tanz
INSERT INTO `mob_droplist` VALUES (9083,0,0,1000,3925,200); -- tanz
INSERT INTO `mob_droplist` VALUES (9083,0,0,1000,3924,200); -- scholar
INSERT INTO `mob_droplist` VALUES (9083,0,0,1000,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9083,0,0,1000,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9083,0,0,1000,4023,1000); -- snow
INSERT INTO `mob_droplist` VALUES (9083,0,0,1000,270,1000); -- odin statue

-- 7 Wonders
-- tchakka
INSERT INTO `mob_droplist` VALUES (9084,0,0,1000,27774,136); -- Whirlpool mask
INSERT INTO `mob_droplist` VALUES (9084,0,0,1000,21389,151); -- Honed tathlum
INSERT INTO `mob_droplist` VALUES (9084,0,0,1000,21429,167); -- Memphitis grip
INSERT INTO `mob_droplist` VALUES (9084,0,0,1000,20818,54); -- Hurlbat
INSERT INTO `mob_droplist` VALUES (9084,0,0,1000,28338,101); -- Mikinaak greaves
INSERT INTO `mob_droplist` VALUES (9084,0,0,1000,10295,52); -- Kokou's earring
INSERT INTO `mob_droplist` VALUES (9084,0,0,1000,27871,10); -- Artsieq Jubbah
INSERT INTO `mob_droplist` VALUES (9084,0,0,1000,4717,10); -- Refresh

-- kumhao
INSERT INTO `mob_droplist` VALUES (9085,0,0,1000,10597,113); -- Akasha chaps
INSERT INTO `mob_droplist` VALUES (9085,0,0,1000,28201,104); -- Xux trousers
INSERT INTO `mob_droplist` VALUES (9085,0,0,1000,28463,163); -- Zoran's belt
INSERT INTO `mob_droplist` VALUES (9085,0,0,1000,27917,140); -- Mikinaak breastplate
INSERT INTO `mob_droplist` VALUES (9085,0,0,1000,10290,106); -- Laudan cuirass
INSERT INTO `mob_droplist` VALUES (9085,0,0,1000,27869,11); -- Xaddi Mail
INSERT INTO `mob_droplist` VALUES (9085,0,0,1000,2877,40);
INSERT INTO `mob_droplist` VALUES (9089,0,0,1000,2875,45);

-- achuka
INSERT INTO `mob_droplist` VALUES (9089,0,0,1000,28381,77); -- Imbodla necklace
INSERT INTO `mob_droplist` VALUES (9089,0,0,1000,28062,74); -- Quauhpilli gloves
INSERT INTO `mob_droplist` VALUES (9089,0,0,1000,28579,123); -- K' ayes Ring
INSERT INTO `mob_droplist` VALUES (9089,0,0,1000,28198,152); -- Mikinaak cussies
INSERT INTO `mob_droplist` VALUES (9089,0,0,1000,10287,59); -- Feverish korazin
INSERT INTO `mob_droplist` VALUES (9089,0,0,1000,27870,10); -- Qaaxo Harness
INSERT INTO `mob_droplist` VALUES (9089,0,0,1000,4947,5); -- Utsetsumi Ni
INSERT INTO `mob_droplist` VALUES (9089,0,0,1000,2875,35);

-- hurkan
INSERT INTO `mob_droplist` VALUES (9090,0,0,1000,28050,197); -- Buremte gloves
INSERT INTO `mob_droplist` VALUES (9090,0,0,1000,28331,136); -- Uk'uxkaj boots
INSERT INTO `mob_droplist` VALUES (9090,0,0,1000,28389,179); -- Agitator's collar
INSERT INTO `mob_droplist` VALUES (9090,0,0,1000,28449,199); -- Metalsinger belt
INSERT INTO `mob_droplist` VALUES (9090,0,0,1000,20819,51); -- Antican axe
INSERT INTO `mob_droplist` VALUES (9090,0,0,1000,10292,74); -- Wikyo Cloak
INSERT INTO `mob_droplist` VALUES (9090,0,0,1000,20901,15); -- Inanna
INSERT INTO `mob_droplist` VALUES (9090,0,0,1000,4751,5); -- Erase

-- darrcuiln
INSERT INTO `mob_droplist` VALUES (9091,0,0,1000,28343,65); -- Chocaliztli boots
INSERT INTO `mob_droplist` VALUES (9091,0,0,1000,28401,69); -- Eddy Necklace
INSERT INTO `mob_droplist` VALUES (9091,0,0,1000,28057,50); -- Mikinaak gauntlets
INSERT INTO `mob_droplist` VALUES (9091,0,0,1000,10289,167); -- Sublime breastplate
INSERT INTO `mob_droplist` VALUES (9091,0,0,1000,2877,35);
INSERT INTO `mob_droplist` VALUES (9091,0,0,1000,9062,14); -- Chunk of Dark Matter
INSERT INTO `mob_droplist` VALUES (9091,0,0,1000,4893,3); -- Scroll of Stoneja
INSERT INTO `mob_droplist` VALUES (9091,0,0,1000,2879,41); -- Igneous Barnacle

-- colkhab
INSERT INTO `mob_droplist` VALUES (9093,0,0,1000,27767,99); -- Buremte hat
INSERT INTO `mob_droplist` VALUES (9093,0,0,1000,28201,72); -- Xux trousers
INSERT INTO `mob_droplist` VALUES (9093,0,0,1000,28354,150); -- Voltsurge torque
INSERT INTO `mob_droplist` VALUES (9093,0,0,1000,27776,50); -- Mikinaak helm
INSERT INTO `mob_droplist` VALUES (9093,0,0,1000,10283,172); -- Vara Brigandine armor
INSERT INTO `mob_droplist` VALUES (9093,0,0,1000,4717,6); -- Phalanx
INSERT INTO `mob_droplist` VALUES (9093,0,0,1000,2875,53);

-- cracklaw
INSERT INTO `mob_droplist` VALUES (9105,0,0,1000,21421,163); -- Immolation grip
INSERT INTO `mob_droplist` VALUES (9105,0,0,1000,28337,80); -- Whirlpool greaves
INSERT INTO `mob_droplist` VALUES (9105,0,0,1000,10282,127); -- Krabat Jacket
INSERT INTO `mob_droplist` VALUES (9105,0,0,1000,10297,52); -- Sortiarius earring
INSERT INTO `mob_droplist` VALUES (9105,0,0,1000,20718,10); -- Claidheamh Soluis
INSERT INTO `mob_droplist` VALUES (9105,0,0,1000,5086,6); -- Regen V
INSERT INTO `mob_droplist` VALUES (9105,0,0,1000,2879,111); -- Igneous Barnacle

-- besieged boss drops
INSERT INTO `mob_droplist` VALUES (9106,0,0,1000,3925,10);
INSERT INTO `mob_droplist` VALUES (9106,0,0,1000,4023,30);
INSERT INTO `mob_droplist` VALUES (2489,0,0,1000,3090,261); -- Shephroid Plate
-- ------------------Alkonost ------------------------------
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,11563,181); -- Mesmeric Cape
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,1311,18); -- Oxblood
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,4377,28); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,1294,24); -- Arachne Thread
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,942,19); -- Philosopher's Stone
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,887,23); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,823,21); -- Gold Thread
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,830,18); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,1634,25); -- Rhodonite
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,1997,25); -- Sailcloth
INSERT INTO `mob_droplist` VALUES (9200,0,0,1000,5152,21); -- Buffalo Meat

-- ------------------Ashtaerth the Gall ------------------------------
INSERT INTO `mob_droplist` VALUES (9201,0,0,1000,11560,222); -- Pedant cape
INSERT INTO `mob_droplist` VALUES (9201,0,0,1000,5152,21); -- Buffalo Meat
INSERT INTO `mob_droplist` VALUES (9201,0,0,1000,1633,28); -- Clot Plasma
INSERT INTO `mob_droplist` VALUES (9201,0,0,1000,830,18); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9201,0,0,1000,1634,25); -- Rhodonite

-- ------------------Bloodeye Vileberry ------------------------------
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,12921,222); -- Ace's Hose
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,13001,740); -- Augur's Gaiters
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,11516,1000); -- Kanja Hachimaki
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,3211,50); -- Coin of Vision
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,3213,519); -- Card of Vision
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,1119,10); -- Tonberry coat
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,1162,5); -- Tonberry lantern
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,646,15); -- Chunk of adaman ore
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,836,15); -- Square of damascene cloth
INSERT INTO `mob_droplist` VALUES (9202,0,0,1000,739,8); -- Chunk of orichalcum ore

-- ------------------Bombadeel ------------------------------
INSERT INTO `mob_droplist` VALUES (9203,0,0,1000,11740,200); -- Thiazi's Belt
INSERT INTO `mob_droplist` VALUES (9203,0,0,1000,1133,28); -- Dragon Blood
INSERT INTO `mob_droplist` VALUES (9203,0,0,1000,830,46); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9203,0,0,1000,887,37); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9203,0,0,1000,942,19); -- Philosopher's Stone
INSERT INTO `mob_droplist` VALUES (9203,0,0,1000,1740,18); -- Iolite

-- ------------------Clingy Clare ------------------------------
INSERT INTO `mob_droplist` VALUES (9204,0,0,1000,11561,315); -- Salvus Mantle
INSERT INTO `mob_droplist` VALUES (9204,0,0,1000,4272,13); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9204,0,0,1000,942,18); -- Philosopher's Stone
INSERT INTO `mob_droplist` VALUES (9204,0,0,1000,1633,27); -- Handful of clot plasma
INSERT INTO `mob_droplist` VALUES (9204,0,0,1000,887,27); -- Coral fragment
INSERT INTO `mob_droplist` VALUES (9204,0,0,1000,1311,29); -- Piece of oxblood
INSERT INTO `mob_droplist` VALUES (9204,0,0,1000,1634,40); -- Rhodonite

-- ------------------Guimauve ------------------------------
INSERT INTO `mob_droplist` VALUES (9205,0,0,1000,11416,300); -- Clout Boots
INSERT INTO `mob_droplist` VALUES (9205,0,0,1000,19247,83); -- Savant's Treatise
INSERT INTO `mob_droplist` VALUES (9205,0,0,1000,1259,9); -- Lightning Ore
INSERT INTO `mob_droplist` VALUES (9205,0,0,1000,887,28); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9205,0,0,1000,1294,21); -- Arachne Thread
INSERT INTO `mob_droplist` VALUES (9205,0,0,1000,1634,24); -- Rhodonite
INSERT INTO `mob_droplist` VALUES (9205,0,0,1000,830,24); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9205,0,0,1000,1311,29); -- Piece of oxblood

-- ------------------Keratyrannos ------------------------------
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,11643,237); -- Odium Ring
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,830,14); -- Rainbow Cloth
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,645,2); -- Darksteel Ore
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,1311,24); -- Piece of oxblood
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,1997,30); -- Sailcloth
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,1829,17); -- Red Grass Cloth
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,1740,14); -- Iolite
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,739,7); -- Orichalcum Ore
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,1262,0); -- Dark Ore
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,1634,19); -- Rhodonite
INSERT INTO `mob_droplist` VALUES (9206,0,0,1000,1133,4); -- Dragon Blood

-- ------------------Pavan - note only temp items drop ------------------------------
INSERT INTO `mob_droplist` VALUES (9207,0,0,1000,5831,50); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,0,1000,5846,50); -- Fool's Tonic-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,0,1000,5439,50); -- Vicar's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,0,1000,5844,50); -- Champion's Gambir-temp item
INSERT INTO `mob_droplist` VALUES (9207,0,0,1000,5845,50); -- Fanatic's Tonic-temp item

-- ------------------Sarcophilus ------------------------------
INSERT INTO `mob_droplist` VALUES (9208,0,0,1000,11526,176); -- Bersail Cap
INSERT INTO `mob_droplist` VALUES (9208,0,0,1000,4272,39); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9208,0,0,1000,645,15); -- Darksteel Ore
INSERT INTO `mob_droplist` VALUES (9208,0,0,1000,1623,20); -- Eft Skin
INSERT INTO `mob_droplist` VALUES (9208,0,0,1000,1741,8); -- High-Quality Eft Skin
INSERT INTO `mob_droplist` VALUES (9208,0,0,1000,1255,15); -- Fire Ore
INSERT INTO `mob_droplist` VALUES (9208,0,0,1000,1829,25); -- Red Grass Cloth
INSERT INTO `mob_droplist` VALUES (9208,0,0,1000,942,45); -- Philosopher's Stone

-- ------------------Siranpa Kamuy ------------------------------
INSERT INTO `mob_droplist` VALUES (9209,0,0,1000,11639,129); -- Blason Ring
INSERT INTO `mob_droplist` VALUES (9209,0,0,1000,4377,246); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9209,0,0,1000,27925,120); -- Karieyh Haubert

-- ------------------Ironclad Sunderer ------------------------------
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,19732,147); -- Miramar Gun
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3148,75); -- Charis Seal: Body DNC
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3148,76); -- Charis Seal: Body DNC
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3148,77); -- Charis Seal: Body DNC
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3136,131); -- Creed Seal: Body PLD
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3136,132); -- Creed Seal: Body PLD
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3136,133); -- Creed Seal: Body PLD
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3138,67); -- Ferine Seal: Body BST
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3138,69); -- Ferine Seal: Body BST
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3138,68); -- Ferine Seal: Body BST
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3140,141); -- Sylvan Seal: Body RNG
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3140,142); -- Sylvan Seal: Body RNG
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3293,210); -- Iron Plate
INSERT INTO `mob_droplist` VALUES (9210,0,0,1000,3293,900); -- Iron Plate

-- ------------------Lorelei ------------------------------
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,11702,224); -- Centaurus Earring
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,3263,257); -- Naiad's Lock
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,3162,171); -- Iga Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,3162,172); -- Iga Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,3166,185); -- Navarch's Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,3166,186); -- Navarch's Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,3151,328); -- Tantra Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,3151,329); -- Tantra Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,3156,228); -- Creed Seal: Hands
INSERT INTO `mob_droplist` VALUES (9211,0,0,1000,3156,229); -- Creed Seal: Hands

-- ------------------Teugghia ------------------------------
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,11907,211); -- Torrid Gages
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3143,55); -- Lancer's Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3143,56); -- Lancer's Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3143,57); -- Lancer's Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3133,81); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3133,82); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3133,83); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3133,84); -- Goetia Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3142,55); -- Iga Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3142,56); -- Iga Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3142,57); -- Iga Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3137,83); -- Bale Seal: Body
INSERT INTO `mob_droplist` VALUES (9212,0,0,1000,3137,84); -- Bale Seal: Body

-- ------------------Fulmotondro - note only temp items drop ------------------------------
INSERT INTO `mob_droplist` VALUES (9213,0,0,1000,5831,50); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,0,1000,5846,50); -- Fool's Tonic-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,0,1000,5439,50); -- Vicar's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,0,1000,5844,50); -- Champion's Gambir-temp item
INSERT INTO `mob_droplist` VALUES (9213,0,0,1000,5845,50); -- Fanatic's Tonic-temp item

-- ------------------Gnawtooth Gary ------------------------------
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,19259,223); -- Clarus Stone
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3193,356); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3193,356); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3193,356); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3193,356); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3204,303); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3204,303); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3204,303); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3204,303); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3207,363); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3207,363); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3207,363); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3207,363); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3199,204); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3199,204); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3199,204); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9214,0,0,1000,3199,204); -- Aoidos' Seal: Feet BRD

-- ------------------Iku-Turso ------------------------------
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,19057,112); -- Caecus Grip
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3191,125); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3191,126); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3191,127); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3191,128); -- Tantra Seal: Feet MNK
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3202,133); -- Iga Seal: Feet NIN
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3202,134); -- Iga Seal: Feet NIN
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3202,132); -- Iga Seal: Feet NIN
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3195,79); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3195,78); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3195,77); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3208,76); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3208,85); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3208,86); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9215,0,0,1000,3208,87); -- Charis Seal: Feet DNC

-- ------------------Kadraeth the Hatespawn ------------------------------
INSERT INTO `mob_droplist` VALUES (9216,0,0,1000,19258,91); -- Qirmiz Tathlum
INSERT INTO `mob_droplist` VALUES (9216,0,0,1000,3199,231); -- Aoidos' Seal: Feet BRD
INSERT INTO `mob_droplist` VALUES (9216,0,0,1000,3196,149); -- Creed Seal: Feet PLD
INSERT INTO `mob_droplist` VALUES (9216,0,0,1000,3196,148); -- Creed Seal: Feet PLD
INSERT INTO `mob_droplist` VALUES (9216,0,0,1000,3205,220); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9216,0,0,1000,3200,237); -- Sylvan Seal: Feet RNG

-- ------------------Karkadann ------------------------------
INSERT INTO `mob_droplist` VALUES (9217,0,0,1000,11615,1000); -- Orison Locket
INSERT INTO `mob_droplist` VALUES (9217,0,0,1000,16207,1000); -- Iga Dochugappa
INSERT INTO `mob_droplist` VALUES (9217,0,0,1000,11935,205); -- Ambusher's Hose
INSERT INTO `mob_droplist` VALUES (9217,0,0,1000,3217,436); -- Card of Ardor
INSERT INTO `mob_droplist` VALUES (9217,0,0,1000,3221,513); -- Card of Wieldance
INSERT INTO `mob_droplist` VALUES (9217,0,0,1000,729,77); -- Bloodwood log
INSERT INTO `mob_droplist` VALUES (9217,0,0,1000,1301,26); -- Wind bead
INSERT INTO `mob_droplist` VALUES (9217,0,0,1000,4448,26); -- Puffball
INSERT INTO `mob_droplist` VALUES (9217,0,0,1000,1299,26); -- Fire bead

-- ------------------Khalkotaur ------------------------------
INSERT INTO `mob_droplist` VALUES (9218,0,0,1000,3197,90); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9218,0,0,1000,3197,91); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9218,0,0,1000,3197,89); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9218,0,0,1000,3203,208); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9218,0,0,1000,3190,331); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9218,0,0,1000,3201,112); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9218,0,0,1000,3201,111); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9218,0,0,1000,19058,154); -- Vox Grip

-- ------------------Quasimodo ------------------------------
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,18968,78); -- Bounty Sickle
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3193,75); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3193,76); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3193,77); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3193,78); -- Goetia Seal: Feet BLM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3194,90); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3194,93); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3194,91); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3194,92); -- Estoqueur's Seal: Feet RDM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3192,79); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3192,78); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3192,80); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3192,81); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3209,69); -- Savant's Seal: Feet SCH
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3209,68); -- Savant's Seal: Feet SCH
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3209,67); -- Savant's Seal: Feet SCH
INSERT INTO `mob_droplist` VALUES (9219,0,0,1000,3209,66); -- Savant's Seal: Feet SCH

-- ------------------Rakshas ------------------------------
INSERT INTO `mob_droplist` VALUES (9220,0,0,1000,19316,316); -- Fetter Lance
INSERT INTO `mob_droplist` VALUES (9220,0,0,1000,4377,20); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9220,0,0,1000,4447,19); -- Scream Fungus
INSERT INTO `mob_droplist` VALUES (9220,0,0,1000,2315,31); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9220,0,0,1000,942,51); -- Philosopher's Stone

-- ------------------Seps ------------------------------
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,17856,298); -- Syrinx
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3194,94); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3194,93); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3194,95); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3194,94); -- Estoqueur's Seal: Feet (RDM)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3209,93); -- Savant's Seal: Feet (SCH)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3209,94); -- Savant's Seal: Feet (SCH)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3209,95); -- Savant's Seal: Feet (SCH)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3198,73); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3198,74); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3198,75); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3198,76); -- Ferine Seal: Feet (BST)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3200,128); -- Sylvan Seal: Feet (RNG)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3200,127); -- Sylvan Seal: Feet (RNG)
INSERT INTO `mob_droplist` VALUES (9221,0,0,1000,3200,129); -- Sylvan Seal: Feet (RNG)

-- ------------------Xan ------------------------------
INSERT INTO `mob_droplist` VALUES (9222,0,0,1000,11753,353); -- Emphatikos Rope
INSERT INTO `mob_droplist` VALUES (9222,0,0,1000,4377,39); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9222,0,0,1000,4272,20); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9222,0,0,1000,2315,98); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9222,0,0,1000,4387,20); -- Wild Onion

-- ------------------Armillaria ------------------------------
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,18803,235); -- Pax Grip
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3203,109); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3203,118); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3203,112); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3203,111); -- Lancer's Seal: Feet DRG
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3190,114); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3190,115); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3190,121); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3190,120); -- Ravager's Seal: Feet WAR
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3195,117); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3195,118); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3195,119); -- Raider's Seal: Feet THF
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3208,75); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3208,76); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3208,77); -- Charis Seal: Feet DNC
INSERT INTO `mob_droplist` VALUES (9223,0,0,1000,3208,78); -- Charis Seal: Feet DNC

-- ------------------Chhir Batti ------------------------------
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,19054,93); -- Fulcio Grip
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3197,96); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3197,97); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3197,98); -- Bale Seal: Feet DRK
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3201,87); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3201,88); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3201,89); -- Unkai Seal: Feet SAM
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3192,82); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3192,85); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3192,86); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3192,84); -- Orison Seal: Feet WHM
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3205,60); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3205,62); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3205,63); -- Mavi Seal: Feet BLU
INSERT INTO `mob_droplist` VALUES (9224,0,0,1000,3205,64); -- Mavi Seal: Feet BLU

-- ------------------Div-e Sepid ------------------------------
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,11434,61); -- Sapientia Sabots
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3208,100); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3208,102); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3208,101); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3208,99); -- Charis Seal: Feet (DNC)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3190,85); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3190,88); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3190,89); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3190,87); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3190,86); -- Ravager's Seal: Feet (WAR)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3192,99); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3192,98); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3192,97); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3192,96); -- Orison Seal: Feet (WHM)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3206,116); -- Navarch's Seal: Feet (COR)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3206,117); -- Navarch's Seal: Feet (COR)
INSERT INTO `mob_droplist` VALUES (9225,0,0,1000,3206,118); -- Navarch's Seal: Feet (COR)

-- ------------------Durinn ------------------------------
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,11431,1000); -- Ballerines
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,18966,114); -- Crisis Scythe
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,3228,800); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,3228,650); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,3228,350); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,3226,550); -- Stone of Voyage
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,3220,550); -- Jewel of Wieldance
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,3221,260); -- Card of Wieldance
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,5564,8); -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,2703,2); -- Khromated Leather
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,729,2); -- Bloodwood Log
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,722,2); -- Divine Lumber
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,1306,1); -- Dark Bead
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,1302,1); -- Earth Bead
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,1300,1); -- Ice Bead
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,1303,1); -- Lightning Bead
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,1304,1); -- Water Bead
INSERT INTO `mob_droplist` VALUES (9226,0,0,1000,1301,1); -- Wind Bead

-- ------------------Dvalinn ------------------------------
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,11649,117); -- Solemn Ring
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3206,86); -- Navarch's Seal: Feet COR
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3206,87); -- Navarch's Seal: Feet COR
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3206,88); -- Navarch's Seal: Feet COR
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3198,102); -- Ferine Seal: Feet BST
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3198,101); -- Ferine Seal: Feet BST
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3198,103); -- Ferine Seal: Feet BST
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3207,134); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3207,135); -- Cirque Seal: Feet PUP
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3204,108); -- Caller's Seal: Feet SMN
INSERT INTO `mob_droplist` VALUES (9227,0,0,1000,3204,109); -- Caller's Seal: Feet SMN

-- ------------------abyssic cluster ------------------------------
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,11621,314); -- Chrysopoeia Torque
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,18778,111); -- Marotte Claws
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,4377,41); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,887,41); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,722,22); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,902,11); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,4272,18); -- Dragon Meat
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,2315,30); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,2152,15); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,4387,41); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,2428,11); -- Wivre Hide
INSERT INTO `mob_droplist` VALUES (9228,0,0,1000,885,26); -- Turtle Shell

-- ------------------avalerion ------------------------------
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,11648,261); -- Spiral Ring
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3183,115); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3183,117); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3183,118); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3183,116); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3179,82); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3179,83); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3179,84); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3179,85); -- Aoidos' Seal: Legs BRD
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3189,102); -- Savant's Seal: Legs SCH
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3189,103); -- Savant's Seal: Legs SCH
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3189,104); -- Savant's Seal: Legs SCH
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3171,59); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3171,57); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3171,60); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9229,0,0,1000,3171,61); -- Tantra Seal: Legs MNK

-- ------------------cep-kamuy ------------------------------
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,11696,140); -- Kemas Earring
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3172,116); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3172,119); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3172,118); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3172,117); -- Orison Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3181,123); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3181,122); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3181,120); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3181,121); -- Unkai Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3177,112); -- Bale Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3177,111); -- Bale Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3177,110); -- Bale Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3185,96); -- Mavi Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3185,95); -- Mavi Seal: Legs
INSERT INTO `mob_droplist` VALUES (9230,0,0,1000,3185,94); -- Mavi Seal: Legs

-- ------------------flame skimmer ------------------------------
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,19313,375); -- Magnus Lance
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3184,94); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3184,93); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3184,91); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3184,92); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3187,96); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3187,97); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3187,98); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3187,99); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3178,147); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3178,137); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3178,127); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3178,107); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3178,117); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3186,86); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3186,87); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3186,88); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9231,0,0,1000,3186,89); -- Navarch's Seal: Legs COR

-- ------------------ironclad observer ------------------------------
INSERT INTO `mob_droplist` VALUES (9232,0,0,1000,19314,261); -- Quint Spear
INSERT INTO `mob_droplist` VALUES (9232,0,0,1000,887,45); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9232,0,0,1000,722,1); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9232,0,0,1000,1447,1); -- Lacquer Tree Lumber
INSERT INTO `mob_droplist` VALUES (9232,0,0,1000,2152,27); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9232,0,0,1000,1311,1); -- Oxblood
INSERT INTO `mob_droplist` VALUES (9232,0,0,1000,4387,81); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9232,0,0,1000,4377,54); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9232,0,0,1000,5455,1); -- Ahtapot

-- ------------------ironclad pulverizer ------------------------------
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,16206,933); -- Unkai Sugemino
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,11620,1000); -- Savant's Chain
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,11936,67); -- Bustle Dirs
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,3215,333); -- Coin of Ardor
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,3219,533); -- Coin of Wieldance
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,655,1); -- Adaman Ingot
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,729,1); -- Bloodwood Log
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,4377,1); -- Coeurl Meat
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,902,1); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,5564,67); -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,2703,67); -- Khromated Leather
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,1447,1); -- Lacquer Tree Lumber
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,1303,1); -- Lightning Bead
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,2152,1); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,1711,1); -- Molybdenum Ingot
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,1313,1); -- Siren's Hair
INSERT INTO `mob_droplist` VALUES (9233,0,0,1000,885,1); -- Turtle Shell

-- ------------------ironclad severer ------------------------------
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,11360,69); -- Taranis's Harness
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,11619,746); -- Caller's Pendant
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,11751,899); -- Cirque Sash
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,16203,788); -- Goetia Mantle
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,655,32); -- Adaman Ingot
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1312,17); -- Angel Skin
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,729,17); -- Bloodwood Log
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,836,33); -- Damascene Cloth
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,902,17); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,722,50); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,723,17); -- Divine Lumber
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1306,17); -- Dark Bead
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1305,17); -- Light Bead
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1302,17); -- Earth Bead
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,5564,50); -- Hydra Meat
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1300,17); -- Ice Bead
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1299,17); -- Fire Bead
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1304,17); -- Water Bead
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1301,17); -- Wind Bead
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1469,17); -- Wootz Ore
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,4387,17); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,1303,17); -- Lightning Bead
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,3216,611); -- Jewel of Ardor
INSERT INTO `mob_droplist` VALUES (9234,0,0,1000,3220,556); -- Jewel of Wieldance

-- ------------------jala - note only temp items drop  ------------------------------
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5831,15); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5440,15); -- Dusty Wing-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5836,15); -- Healing Salve II-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5851,15); -- Berserker's Tonic-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5834,15); -- Lucid Wings I-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5395,15); -- Cleric's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5397,15); -- Sprinter's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5435,15); -- Fool's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5826,15); -- Lucid Potion III-temp item
INSERT INTO `mob_droplist` VALUES (9235,0,0,1000,5829,15); -- Lucid Ether III-temp item

-- ------------------karkatakam ------------------------------
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,16210,536); -- Ebullient Cape
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,2315,33); -- Karakul Wool
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,887,36); -- Coral Fragment
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,793,36); -- Black Pearl
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,902,36); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,1311,36); -- Oxblood
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,719,36); -- Ebony Lumber
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,885,1); -- Turtle Shell
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,722,36); -- Divine Log
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,2152,1); -- Marid Leather
INSERT INTO `mob_droplist` VALUES (9236,0,0,1000,4387,39); -- Wild Onion

-- ------------------manohra ------------------------------
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,11694,123); -- Bloodgem Earring
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3170,80); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3170,83); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3170,82); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3170,81); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3175,147); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3175,145); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3175,146); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3188,89); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3188,86); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3188,87); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3188,88); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3183,89); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3183,86); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3183,87); -- Lancer's Seal: Legs DRG
INSERT INTO `mob_droplist` VALUES (9237,0,0,1000,3183,88); -- Lancer's Seal: Legs DRG

-- ------------------minax bugard ------------------------------
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,19315,264); -- Erebus's Lance
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3171,112); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3171,115); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3171,114); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3171,116); -- Tantra Seal: Legs MNK
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3186,144); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3186,146); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3186,145); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3182,93); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3182,95); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3182,94); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3176,95); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3176,94); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9238,0,0,1000,3176,93); -- Creed Seal: Legs PLD

-- ------------------nehebkau ------------------------------
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,19053,152); -- Curatio Grip
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3176,86); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3176,87); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3176,88); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3176,89); -- Creed Seal: Legs PLD
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3174,75); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3174,76); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3174,77); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3174,78); -- Estoqueur's Seal: Legs RDM
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3181,183); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3181,182); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3181,180); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3181,181); -- Unkai Seal: Legs SAM
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3175,136); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3175,135); -- Raider's Seal: Legs THF
INSERT INTO `mob_droplist` VALUES (9239,0,0,1000,3175,134); -- Raider's Seal: Legs THF

-- ------------------nonno ------------------------------
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,19055,118); -- Macero Grip
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3173,91); -- Goetia Seal: Legs BLM
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3173,93); -- Goetia Seal: Legs BLM
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3173,92); -- Goetia Seal: Legs BLM
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3182,165); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3182,164); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3182,163); -- Iga Seal: Legs NIN
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3177,86); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3177,89); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3177,87); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3177,88); -- Bale Seal: Legs DRK
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3187,94); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3187,96); -- Cirque Seal: Legs PUP
INSERT INTO `mob_droplist` VALUES (9240,0,0,1000,3187,95); -- Cirque Seal: Legs PUP

-- ------------------npfundlwa ------------------------------
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,19059,121); -- Quire Grip
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3172,93); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3172,83); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3172,73); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3172,173); -- Orison Seal: Legs WHM
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3170,88); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3170,78); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3170,68); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3170,168); -- Ravager's Seal: Legs WAR
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3188,68); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3188,98); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3188,78); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3188,88); -- Charis Seal: Legs DNC
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3186,57); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3186,67); -- Navarch's Seal: Legs COR
INSERT INTO `mob_droplist` VALUES (9241,0,0,1000,3186,167); -- Navarch's Seal: Legs COR

-- ------------------tuskertrap ------------------------------
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,11623,100); -- Noetic Torque
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3184,64); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3184,74); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3184,84); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3184,174); -- Caller's Seal: Legs SMN
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3178,103); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3178,123); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3178,113); -- Ferine Seal: Legs BST
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3185,83); -- Mavi Seal: Legs BLU
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3185,93); -- Mavi Seal: Legs BLU
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3185,183); -- Mavi Seal: Legs BLU
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3180,110); -- Sylvan Seal: Legs RNG
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3180,130); -- Sylvan Seal: Legs RNG
INSERT INTO `mob_droplist` VALUES (9242,0,0,1000,3180,120); -- Sylvan Seal: Legs RNG

-- ------------------gaizkin ------------------------------
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,19261,107); -- Jinx Discus
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3119,97); -- Aoidos' Seal: Head BRD
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3119,297); -- Aoidos' Seal: Head BRD
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3119,197); -- Aoidos' Seal: Head BRD
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3123,210); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3123,110); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3123,120); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3111,174); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3111,94); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3111,84); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3111,74); -- Tantra Seal: Head MNK
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3129,140); -- Savant's Seal: Head SCH
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3129,120); -- Savant's Seal: Head SCH
INSERT INTO `mob_droplist` VALUES (9243,0,0,1000,3129,130); -- Savant's Seal: Head SCH

-- ------------------gieremund ------------------------------
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,18456,349); -- Yoshihiro
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3110,65); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3110,55); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3110,395); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3110,295); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3110,195); -- Ravager's Seal: Head WAR
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3115,56); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3115,296); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3115,196); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3115,86); -- Raider's Seal: Head THF
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3123,67); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3123,57); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3123,47); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3123,37); -- Lancer's Seal: Head DRG
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3128,76); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3128,46); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3128,86); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3128,56); -- Charis Seal: Head DNC
INSERT INTO `mob_droplist` VALUES (9244,0,0,1000,3128,66); -- Charis Seal: Head DNC

-- ------------------mielikki ------------------------------
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,16190,153); -- Bloom Buckler
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3118,143); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3118,133); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3118,113); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3118,123); -- Ferine Seal: Head BST
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3126,31); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3126,41); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3126,51); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3126,61); -- Navarch's Seal: Head COR
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3127,147); -- Cirque Seal: Head PUP
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3127,167); -- Cirque Seal: Head PUP
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3127,157); -- Cirque Seal: Head PUP
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3124,55); -- Caller's Seal: Head SMN
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3124,45); -- Caller's Seal: Head SMN
INSERT INTO `mob_droplist` VALUES (9245,0,0,1000,3124,35); -- Caller's Seal: Head SMN

-- ------------------svarbhanu ------------------------------
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,19188,250); -- Killer Shortbow
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,746,25); -- Platinum Ore
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,836,1); -- Damascene Cloth
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,4387,53); -- Wild Onion
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,902,16); -- Demon Horn
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,658,50); -- Damascus Ingot
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,654,49); -- Darksteel Ingot
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,745,29); -- Gold Ingot
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,2951,16); -- Malachite
INSERT INTO `mob_droplist` VALUES (9246,0,0,1000,1740,25); -- Iolite

-- ------------------tejas - note only temp items drop ------------------------------
INSERT INTO `mob_droplist` VALUES (9247,0,0,1000,5395,15); -- Cleric's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,0,1000,2833,15); -- Flask of mana mist-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,0,1000,5435,15); -- Fool's Drink-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,0,1000,5836,15); -- Healing Salve II-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,0,1000,5831,15); -- Lucid Elixir II-temp item
INSERT INTO `mob_droplist` VALUES (9247,0,0,1000,5397,15); -- Sprinter's Drink-temp item

-- ------------------Naul ------------------------------
INSERT INTO `mob_droplist` VALUES (9248,0,0,1000,2490,11); -- Forbidden key 1.1%

-- ------------------Thalassinon ------------------------------
INSERT INTO `mob_droplist` VALUES (9250,0,0,1000,2490,12); -- Forbidden key 1.2%

-- ------------------Vermes Carnium ------------------------------
INSERT INTO `mob_droplist` VALUES (9251,0,0,1000,2490,12); -- Forbidden key 1.2%

-- ------------------Wiederganger ------------------------------
INSERT INTO `mob_droplist` VALUES (9252,0,0,1000,2490,14); -- Forbidden key 1.4%
INSERT INTO `mob_droplist` VALUES (9252,0,0,1000,1639,124); -- Corse robe 12.4%
INSERT INTO `mob_droplist` VALUES (9252,0,0,1000,1614,139); -- Corse bracelet 13.9%

-- ------------------Nematocera ------------------------------
INSERT INTO `mob_droplist` VALUES (9253,0,0,1000,2490,11); -- Forbidden key 1.1%
INSERT INTO `mob_droplist` VALUES (9253,0,0,1000,2522,208); -- Gnat wing 20.8%

-- ------------------Bog Body ------------------------------
INSERT INTO `mob_droplist` VALUES (9254,0,0,1000,2490,64); -- Forbidden key 6.4%
INSERT INTO `mob_droplist` VALUES (9254,0,0,1000,2212,132); -- Gunpowder swathe 13.2%
INSERT INTO `mob_droplist` VALUES (9254,0,0,1000,2165,14); -- Qutrub gorget 1.4%

-- ------------------Cannered Noz ------------------------------
INSERT INTO `mob_droplist` VALUES (9255,0,0,1000,2947,430); -- Exorcised skull 11.3%
INSERT INTO `mob_droplist` VALUES (9255,0,0,1000,11607,14); -- Artemis' Medal 1.4%
INSERT INTO `mob_droplist` VALUES (9255,0,0,1000,786,1); -- Ruby 0.1%
INSERT INTO `mob_droplist` VALUES (9255,0,0,1000,804,5); -- Spinel 0.5%
INSERT INTO `mob_droplist` VALUES (9255,0,0,1000,789,1); -- Topaz 0.1%
INSERT INTO `mob_droplist` VALUES (9255,0,0,1000,4771,1); -- Stone V 0.1%
INSERT INTO `mob_droplist` VALUES (9255,0,0,1000,4781,1); -- Water V 0.1%
INSERT INTO `mob_droplist` VALUES (9255,0,0,1000,5152,1); -- Buffalo Meat 0.1%

-- ------------------Bhumi ------------------------------
INSERT INTO `mob_droplist` VALUES (9256,0,0,1000,2490,12); -- Forbidden key 1.2%

-- ------------------Pasture Funguar ------------------------------
INSERT INTO `mob_droplist` VALUES (9257,0,0,1000,2490,11); -- Forbidden key 1.1%
INSERT INTO `mob_droplist` VALUES (9257,0,0,1000,4375,127); -- Danceshroom 12.7%
INSERT INTO `mob_droplist` VALUES (9257,0,0,1000,4374,134); -- Sleepshroom 13.4%
INSERT INTO `mob_droplist` VALUES (9257,0,0,1000,4373,134); -- Woozyshroom 13.4%

-- ------------------Chasm Gnat ------------------------------
INSERT INTO `mob_droplist` VALUES (9258,0,0,1000,2522,351); -- Gnat wing 35.1%

-- ------------------Funnel Antlion ------------------------------
INSERT INTO `mob_droplist` VALUES (9259,0,0,1000,1616,82); -- Antlion jaw 8.2%
INSERT INTO `mob_droplist` VALUES (9259,0,0,1000,1649,20); -- Scarlet stone 2%

-- ------------------Boartrap ------------------------------
INSERT INTO `mob_droplist` VALUES (9260,0,0,1000,3096,112); -- Spotted flyfrond 11.2%
INSERT INTO `mob_droplist` VALUES (9260,0,0,1000,1617,85); -- Flytrap leaf 8.5%

-- ------------------wily opo-opo ------------------------------
INSERT INTO `mob_droplist` VALUES (9262,0,0,1000,17296,332); -- Pebble 33.2%
INSERT INTO `mob_droplist` VALUES (9262,0,0,1000,4468,166); -- Bunch of pamamas 16.6%
INSERT INTO `mob_droplist` VALUES (9262,0,0,1000,4432,64); -- Kazham pineapple 6.4%
INSERT INTO `mob_droplist` VALUES (9262,0,0,1000,4412,18); -- Thundermelon 1.8%

-- ------------------Desert Clionid ------------------------------
INSERT INTO `mob_droplist` VALUES (9263,0,0,1000,2890,103); -- Clionid wing 10.3%
INSERT INTO `mob_droplist` VALUES (9263,0,0,1000,2888,28); -- Sanguinet 2.8%

-- ------------------Oasis Amoeban ------------------------------
INSERT INTO `mob_droplist` VALUES (9264,0,0,1000,2641,82); -- Amoeban pseudopod 8.2%
INSERT INTO `mob_droplist` VALUES (9264,0,0,1000,2888,8); --  Sanguinet 0.8%

-- ------------------Benumbed Vodoriga ------------------------------
INSERT INTO `mob_droplist` VALUES (9265,0,0,1000,2747,337); -- Gargouille shank 33.7%
INSERT INTO `mob_droplist` VALUES (9265,0,0,1000,3257,83); -- Benumbed eye 8.3%
INSERT INTO `mob_droplist` VALUES (9265,0,0,1000,2823,76); -- Iridium ingot 7.6%
INSERT INTO `mob_droplist` VALUES (9265,0,0,1000,2747,23); -- Gargouille horn 2.3%

-- ------------------Peak Pugil ------------------------------
INSERT INTO `mob_droplist` VALUES (9267,0,0,1000,868,341); -- Handful of pugil scales 34.1%
INSERT INTO `mob_droplist` VALUES (9267,0,0,1000,3270,48); -- High-quality pugil scale 4.8%

-- ------------------Ashtaerh the Gallvexed ------------------------------
INSERT INTO `mob_droplist` VALUES (9268,0,0,1000,11560,25); -- Pedant Cape 25%
INSERT INTO `mob_droplist` VALUES (9268,0,0,1000,5152,1); -- Buffalo Meat 0.1%
INSERT INTO `mob_droplist` VALUES (9268,0,0,1000,1633,1); -- Clot Plasma 0.1%
INSERT INTO `mob_droplist` VALUES (9268,0,0,1000,830,1); -- Rainbow Cloth 0.1%
INSERT INTO `mob_droplist` VALUES (9268,0,0,1000,1634,1); -- Rhodonite 0.1%

-- ------------------Highland Rafflesi ------------------------------
INSERT INTO `mob_droplist` VALUES (9269,0,0,1000,2513,130); -- Rafflesia vine 13%
INSERT INTO `mob_droplist` VALUES (9269,0,0,1000,2514,62); -- Rafflesia petal 6.2%
INSERT INTO `mob_droplist` VALUES (9269,0,0,1000,2490,12); -- Forbidden key 1.2%

-- --------------------Aptant Drops ---------------------------------------
INSERT INTO `mob_droplist` VALUES (9300,0,0,1000,2813,300);
INSERT INTO `mob_droplist` VALUES (9300,0,0,1000,2812,250);
INSERT INTO `mob_droplist` VALUES (9301,0,0,1000,2812,300);
INSERT INTO `mob_droplist` VALUES (9301,0,0,1000,2817,250);
INSERT INTO `mob_droplist` VALUES (9302,0,0,1000,2820,300);
INSERT INTO `mob_droplist` VALUES (9302,0,0,1000,2812,250);
INSERT INTO `mob_droplist` VALUES (9303,0,0,1000,2811,300);
INSERT INTO `mob_droplist` VALUES (9303,0,0,1000,2812,250);
INSERT INTO `mob_droplist` VALUES (9304,0,0,1000,2815,300);
INSERT INTO `mob_droplist` VALUES (9304,0,0,1000,2817,300);
INSERT INTO `mob_droplist` VALUES (9305,0,0,1000,2813,250);
INSERT INTO `mob_droplist` VALUES (9305,0,0,1000,2818,300);
INSERT INTO `mob_droplist` VALUES (9306,0,0,1000,2811,300);
INSERT INTO `mob_droplist` VALUES (9306,0,0,1000,2815,250);
INSERT INTO `mob_droplist` VALUES (9306,0,0,1000,2819,300);
INSERT INTO `mob_droplist` VALUES (9307,0,0,1000,2816,300);
INSERT INTO `mob_droplist` VALUES (9307,0,0,1000,2815,250);
INSERT INTO `mob_droplist` VALUES (9308,0,0,1000,2814,300);
INSERT INTO `mob_droplist` VALUES (9308,0,0,1000,2813,300);
INSERT INTO `mob_droplist` VALUES (9309,0,0,1000,2814,350);
INSERT INTO `mob_droplist` VALUES (9309,0,0,1000,2811,300);
INSERT INTO `mob_droplist` VALUES (9310,0,0,1000,2818,350);
INSERT INTO `mob_droplist` VALUES (9310,0,0,1000,2814,300);
INSERT INTO `mob_droplist` VALUES (9311,0,0,1000,2821,250);
INSERT INTO `mob_droplist` VALUES (9311,0,0,1000,2813,250);
INSERT INTO `mob_droplist` VALUES (9312,0,0,1000,2811,300);
INSERT INTO `mob_droplist` VALUES (9312,0,0,1000,2813,300);
INSERT INTO `mob_droplist` VALUES (9313,0,0,1000,2813,250);
INSERT INTO `mob_droplist` VALUES (9313,0,0,1000,2816,250);
INSERT INTO `mob_droplist` VALUES (9314,0,0,1000,2819,300);
INSERT INTO `mob_droplist` VALUES (9314,0,0,1000,2821,300);
INSERT INTO `mob_droplist` VALUES (9315,0,0,1000,2820,250);
INSERT INTO `mob_droplist` VALUES (9315,0,0,1000,2819,300);
INSERT INTO `mob_droplist` VALUES (9316,0,0,1000,2821,250);
INSERT INTO `mob_droplist` VALUES (9316,0,0,1000,2820,300);
INSERT INTO `mob_droplist` VALUES (9317,0,0,1000,2817,250);
INSERT INTO `mob_droplist` VALUES (9317,0,0,1000,2820,300);
INSERT INTO `mob_droplist` VALUES (9318,0,0,1000,2822,250);
INSERT INTO `mob_droplist` VALUES (9318,0,0,1000,2821,300);
INSERT INTO `mob_droplist` VALUES (9319,0,0,1000,2816,300);
INSERT INTO `mob_droplist` VALUES (9319,0,0,1000,2821,250);
INSERT INTO `mob_droplist` VALUES (9320,0,0,1000,2817,300);
INSERT INTO `mob_droplist` VALUES (9320,0,0,1000,2818,250);
INSERT INTO `mob_droplist` VALUES (9321,0,0,1000,2818,300);
INSERT INTO `mob_droplist` VALUES (9321,0,0,1000,2816,300);
INSERT INTO `mob_droplist` VALUES (9322,0,0,1000,2822,250);
INSERT INTO `mob_droplist` VALUES (9322,0,0,1000,2818,250);
INSERT INTO `mob_droplist` VALUES (9323,0,0,1000,2816,300);
INSERT INTO `mob_droplist` VALUES (9323,0,0,1000,2817,350);

-- ------------------------------Temp Drops to cover Temenos -------------------------------
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1948,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1934,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1930,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1940,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1958,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2716,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1952,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1950,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2660,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1954,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1956,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1944,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2714,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2658,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2656,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1936,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1946,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1948,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1934,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1930,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1940,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1958,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,2716,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1952,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1950,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,2660,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1954,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1956,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1944,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,2714,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,2658,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,2656,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1936,040);
INSERT INTO `mob_droplist` VALUES (4415,0,0,1000,1946,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1948,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1934,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1930,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1940,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1958,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2716,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1952,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1950,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2660,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1954,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1956,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1944,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2714,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2658,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,2656,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1936,040);
INSERT INTO `mob_droplist` VALUES (4413,0,0,1000,1946,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1948,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1934,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1930,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1940,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1958,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,2716,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1952,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1950,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,2660,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1954,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1956,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1944,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,2714,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,2658,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,2656,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1936,040);
INSERT INTO `mob_droplist` VALUES (4411,0,0,1000,1946,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1948,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1934,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1930,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1940,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1958,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,2716,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1952,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1950,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,2660,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1954,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1942,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1956,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1944,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,2714,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,2658,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,2656,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1936,040);
INSERT INTO `mob_droplist` VALUES (4409,0,0,1000,1946,040);

-- -----------------------------END Temp Temenos Fix ----------------------------

-- bahamut (9503)
INSERT INTO `mob_droplist` VALUES (9503,0,0,1000,27871,91);
INSERT INTO `mob_droplist` VALUES (9503,0,0,1000,27869,65);
INSERT INTO `mob_droplist` VALUES (9503,0,0,1000,27870,128);
INSERT INTO `mob_droplist` VALUES (9503,0,0,1000,20901,100);
INSERT INTO `mob_droplist` VALUES (9503,0,0,1000,20616,181);
INSERT INTO `mob_droplist` VALUES (9503,0,0,1000,20718,103);
-- Pandy Warden (2741)
INSERT INTO `mob_droplist` VALUES (2741,0,0,1000,27888,60);
INSERT INTO `mob_droplist` VALUES (2741,0,0,1000,21038,50);
INSERT INTO `mob_droplist` VALUES (2741,0,0,1000,27862,70);
INSERT INTO `mob_droplist` VALUES (2741,0,0,1000,27710,90);
INSERT INTO `mob_droplist` VALUES (2741,0,0,1000,28151,80);
INSERT INTO `mob_droplist` VALUES (2741,0,0,1000,27868,70);
-- yeti (9504)
INSERT INTO `mob_droplist` VALUES (9504,0,0,1000,20989,74); -- Izuna
INSERT INTO `mob_droplist` VALUES (9504,0,0,1000,27886,71); -- mes haub
INSERT INTO `mob_droplist` VALUES (9504,0,0,1000,28009,193); -- kotes
INSERT INTO `mob_droplist` VALUES (9504,0,0,1000,21181,26); -- venebellum
INSERT INTO `mob_droplist` VALUES (9504,0,0,1000,26874,191); -- supay weskit
INSERT INTO `mob_droplist` VALUES (9504,0,0,1000,28172,20); -- mes slacks

-- Voidwatch Chapter 1

-- Sallow Seymour
INSERT INTO `mob_droplist` VALUES (9600,0,0,1000,28351,31); -- Cloud Hairpin +1
INSERT INTO `mob_droplist` VALUES (9600,0,0,1000,28340,147); -- Bokwus Boots
INSERT INTO `mob_droplist` VALUES (9600,0,0,1000,3922,41); -- Rhodium Ore
INSERT INTO `mob_droplist` VALUES (9600,0,0,1000,3922,155);

-- Ushumgal
INSERT INTO `mob_droplist` VALUES (9601,0,0,1000,27634,31); -- thorfinn shield +1
INSERT INTO `mob_droplist` VALUES (9601,0,0,1000,28340,99); -- bokwus_boots


-- Sarimanok
INSERT INTO `mob_droplist` VALUES (9602,0,0,1000,21419,160); -- rigorous grip 1
INSERT INTO `mob_droplist` VALUES (9602,0,0,1000,28339,114); -- manibozho_boots


-- Cottus
INSERT INTO `mob_droplist` VALUES (9603,0,0,1000,28339,66); -- manibozho_boots
INSERT INTO `mob_droplist` VALUES (9603,0,0,1000,28366,39); -- gaudryi necklace

-- Virvatuli
INSERT INTO `mob_droplist` VALUES (9604,0,0,1000,27592,55); -- vengeful ring
INSERT INTO `mob_droplist` VALUES (9604,0,0,1000,28338,135); -- mikinaak greaves

-- Pancimanci
INSERT INTO `mob_droplist` VALUES (9605,0,0,1000,28338,90); -- mikinaak greaves
INSERT INTO `mob_droplist` VALUES (9605,0,0,1000,21403,87); -- Damani Horn +1 -- item_basic fix needed

-- Lorbulcrab
INSERT INTO `mob_droplist` VALUES (9606,0,0,1000,28506,111); -- andoaa_earring
INSERT INTO `mob_droplist` VALUES (9606,0,0,1000,28059,123); -- bokwus_gloves
INSERT INTO `mob_droplist` VALUES (9606,0,0,1000,21425,20); -- lentus_grip
INSERT INTO `mob_droplist` VALUES (9606,0,0,1000,2879,135);

-- Krabimanjaro
INSERT INTO `mob_droplist` VALUES (9607,0,0,1000,28565,49); -- Zanhi Ring -- Item_basic fix needed
INSERT INTO `mob_droplist` VALUES (9607,0,0,1000,28058,167); -- manibozho gloves
INSERT INTO `mob_droplist` VALUES (9607,0,0,1000,21420,159); -- Benthos Grip  -- Item_Basic fix needed

-- Obgunabali
INSERT INTO `mob_droplist` VALUES (9608,0,0,1000,21374,69); -- Paeapua
INSERT INTO `mob_droplist` VALUES (9608,0,0,1000,28057,110); -- mikinaak_gauntlets
INSERT INTO `mob_droplist` VALUES (9608,0,0,1000,28005,169); -- alrunas_gloves_+1

-- Murk-veined Baneberry
INSERT INTO `mob_droplist` VALUES (9609,0,0,1000,28604,83); -- mubvum_mantle
INSERT INTO `mob_droplist` VALUES (9609,0,0,1000,27778,131); -- bokwus_circlet
INSERT INTO `mob_droplist` VALUES (9609,0,0,1000,21359,101); -- Quartz Tathlum +1 -- Item_Basic fix needed

-- Melancholic Moira
INSERT INTO `mob_droplist` VALUES (9610,0,0,1000,28581,77); -- beeline_ring
INSERT INTO `mob_droplist` VALUES (9610,0,0,1000,28200,140); -- bokwus_slops
INSERT INTO `mob_droplist` VALUES (9610,0,0,1000,21371,131); -- ginsen

-- Belphoebe
INSERT INTO `mob_droplist` VALUES (9611,0,0,1000,28507,82); -- gwati_earring
INSERT INTO `mob_droplist` VALUES (9611,0,0,1000,27777,105); -- manibozho_beret
INSERT INTO `mob_droplist` VALUES (9611,0,0,1000,28379,149); -- mizukage-no-kubikazari

-- Kholomodumo
INSERT INTO `mob_droplist` VALUES (9612,0,0,1000,28603,80); -- kumbira_cape
INSERT INTO `mob_droplist` VALUES (9612,0,0,1000,28199,139); -- manibozho_brais
INSERT INTO `mob_droplist` VALUES (9612,0,0,1000,27594,145); -- annealed_mantle

-- Lord Asag
INSERT INTO `mob_droplist` VALUES (9613,0,0,1000,28605,85); -- samanisi_cape
INSERT INTO `mob_droplist` VALUES (9613,0,0,1000,27776,127); -- mikinaak_helm
INSERT INTO `mob_droplist` VALUES (9613,0,0,1000,28445,126); -- shetal_stone

-- Akupara
INSERT INTO `mob_droplist` VALUES (9614,0,0,1000,28580,91); -- sangoma_ring
INSERT INTO `mob_droplist` VALUES (9614,0,0,1000,28198,179); -- mikinaak_cuisses
INSERT INTO `mob_droplist` VALUES (9614,0,0,1000,28493,80); -- neritic_earring

-- Celaeno
INSERT INTO `mob_droplist` VALUES (9615,0,0,1000,21373,30); -- sihirik
INSERT INTO `mob_droplist` VALUES (9615,0,0,1000,27919,144); -- bokwus_robe
INSERT INTO `mob_droplist` VALUES (9615,0,0,1000,28056,48); -- yaoyotl_gloves
INSERT INTO `mob_droplist` VALUES (9615,0,0,1000,27505,99); -- warders_charm_+1
INSERT INTO `mob_droplist` VALUES (9615,0,0,1000,28538,131); -- lebeche_ring
INSERT INTO `mob_droplist` VALUES (9615,0,0,1000,27775,62); -- nahtirah_hat
INSERT INTO `mob_droplist` VALUES (9615,0,0,1000,2878,81); -- Scarlet Kadife

-- Hahava
INSERT INTO `mob_droplist` VALUES (9616,0,0,1000,28403,50);  -- inquisitor_bead_necklace
INSERT INTO `mob_droplist` VALUES (9616,0,0,1000,27918,131); -- manibozho_jerkin
INSERT INTO `mob_droplist` VALUES (9616,0,0,1000,27773,37); -- yaoyotl_helm
INSERT INTO `mob_droplist` VALUES (9616,0,0,1000,28428,67); -- sailfi_belt_+1
INSERT INTO `mob_droplist` VALUES (9616,0,0,1000,21366,129); -- Floestone
INSERT INTO `mob_droplist` VALUES (9616,0,0,1000,27720,53); -- umbani_cap
INSERT INTO `mob_droplist` VALUES (9616,0,0,1000,3445,14); -- Hahava's Mail

-- Voidwrought
INSERT INTO `mob_droplist` VALUES (9617,0,0,1000,21376,131); -- inlamvuyeso
INSERT INTO `mob_droplist` VALUES (9617,0,0,1000,27917,161); -- mikinaak_breastplate
INSERT INTO `mob_droplist` VALUES (9617,0,0,1000,28197,56); -- nahtirah_trousers
INSERT INTO `mob_droplist` VALUES (9617,0,0,1000,27563,74); -- metamorph_ring_+1
INSERT INTO `mob_droplist` VALUES (9617,0,0,1000,28441,111); -- ponente_sash
INSERT INTO `mob_droplist` VALUES (9617,0,0,1000,28293,43); -- umbani_boots
INSERT INTO `mob_droplist` VALUES (9617,0,0,1000,5103,81); -- scroll_of_crusade

-- Voidwatch Chapter 2

-- Goji
INSERT INTO `mob_droplist` VALUES (9620,0,0,1000,28309,77); -- Temachtiani boots
INSERT INTO `mob_droplist` VALUES (9620,0,0,1000,28032,53); -- Temachtiani gloves
INSERT INTO `mob_droplist` VALUES (9620,0,0,1000,28306,120); -- Outrider_Greaves
INSERT INTO `mob_droplist` VALUES (9620,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9620,0,0,1000,21119,53); -- Eminent Wand
INSERT INTO `mob_droplist` VALUES (9620,0,0,1000,28499,34); -- Influx_Earring
INSERT INTO `mob_droplist` VALUES (9620,0,0,1000,4890,15); -- Scroll Of Firaja

-- Gugalanna
INSERT INTO `mob_droplist` VALUES (9621,0,0,1000,10488,95); -- Kudzu_Aketon
INSERT INTO `mob_droplist` VALUES (9621,0,0,1000,28032,53); -- Temachtiani_Gloves
INSERT INTO `mob_droplist` VALUES (9621,0,0,1000,28171,2); -- Temachtiani_Pants
INSERT INTO `mob_droplist` VALUES (9621,0,0,1000,28306,120); -- Outrider_Greaves
INSERT INTO `mob_droplist` VALUES (9621,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9621,0,0,1000,28656,110); -- Eminent_Shield
INSERT INTO `mob_droplist` VALUES (9621,0,0,1000,28499,82); -- Influx_Earring

-- Yatagarasu
INSERT INTO `mob_droplist` VALUES (9622,0,0,1000,10468,93); -- Kumarbi's Akar
INSERT INTO `mob_droplist` VALUES (9622,0,0,1000,28171,13); -- Temachtiani_Pants
INSERT INTO `mob_droplist` VALUES (9622,0,0,1000,27743,74); -- Temachtiani_Headband
INSERT INTO `mob_droplist` VALUES (9622,0,0,1000,28307,120); -- Espial_Socks
INSERT INTO `mob_droplist` VALUES (9622,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9622,0,0,1000,21281,70); -- Eminent_Gun
INSERT INTO `mob_droplist` VALUES (9622,0,0,1000,28500,91); -- Upsurge Earring
INSERT INTO `mob_droplist` VALUES (9622,0,0,1000,4851,6); -- Meteor

-- Agathos
INSERT INTO `mob_droplist` VALUES (9623,0,0,1000,10486,67); -- Porthos_Byrnie
INSERT INTO `mob_droplist` VALUES (9623,0,0,1000,27884,40); -- Temachtiani_Shirt
INSERT INTO `mob_droplist` VALUES (9623,0,0,1000,27743,90); -- Temachtiani_Headband
INSERT INTO `mob_droplist` VALUES (9623,0,0,1000,28307,71); -- Espial_Socks
INSERT INTO `mob_droplist` VALUES (9623,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9623,0,0,1000,21231,95); -- Eminent_Bow
INSERT INTO `mob_droplist` VALUES (9623,0,0,1000,28500,9); -- Upsurge Earring

-- Cherufe
INSERT INTO `mob_droplist` VALUES (9624,0,0,1000,10284,95); -- Grandoynes_Mail
INSERT INTO `mob_droplist` VALUES (9624,0,0,1000,27884,67); -- Temachtiani_Shirt
INSERT INTO `mob_droplist` VALUES (9624,0,0,1000,28309,70); -- Temachtiani boots
INSERT INTO `mob_droplist` VALUES (9624,0,0,1000,28308,92); -- Wayfarer_Clogs
INSERT INTO `mob_droplist` VALUES (9624,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9624,0,0,1000,21183,163); -- Eminent_Pole
INSERT INTO `mob_droplist` VALUES (9624,0,0,1000,28501,40); -- Allegro_Earring

-- Taweret
INSERT INTO `mob_droplist` VALUES (9625,0,0,1000,28309,94); -- Temachtiani boots
INSERT INTO `mob_droplist` VALUES (9625,0,0,1000,27884,102); -- Temachtiani_Shirt
INSERT INTO `mob_droplist` VALUES (9625,0,0,1000,28308,62); -- Wayfarer_Clogs
INSERT INTO `mob_droplist` VALUES (9625,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9625,0,0,1000,20954,81); -- Eminent_Lance
INSERT INTO `mob_droplist` VALUES (9625,0,0,1000,28501,39); -- Allegro_Earring
INSERT INTO `mob_droplist` VALUES (9625,0,0,1000,4856,11); -- Aspir II

-- Roly Poly
INSERT INTO `mob_droplist` VALUES (9626,0,0,1000,28168,47); -- Outrider_Hose
INSERT INTO `mob_droplist` VALUES (9626,0,0,1000,28547,49); -- Merirosvo_Ring
INSERT INTO `mob_droplist` VALUES (9626,0,0,1000,20998,62); -- Kaitsuburi
INSERT INTO `mob_droplist` VALUES (9626,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9626,0,0,1000,26787,180); -- Alhazen_Hat
INSERT INTO `mob_droplist` VALUES (9626,0,0,1000,20766,220); -- Eminent_Sword
INSERT INTO `mob_droplist` VALUES (9626,0,0,1000,28549,37); -- Enlivened_Ring

-- Laidly Laurence
INSERT INTO `mob_droplist` VALUES (9627,0,0,1000,28168,120); -- Outrider_Hose
INSERT INTO `mob_droplist` VALUES (9627,0,0,1000,28547,54); -- Merirosvo_Ring
INSERT INTO `mob_droplist` VALUES (9627,0,0,1000,20998,68); -- Kaitsuburi
INSERT INTO `mob_droplist` VALUES (9627,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9627,0,0,1000,26787,75); -- Alhazen_Hat
INSERT INTO `mob_droplist` VALUES (9627,0,0,1000,20766,220); -- Eminent_Sword
INSERT INTO `mob_droplist` VALUES (9627,0,0,1000,28549,28); -- Enlivened_Ring
INSERT INTO `mob_droplist` VALUES (9627,0,0,1000,4827,6); -- Comet

-- Mellonia
INSERT INTO `mob_droplist` VALUES (9628,0,0,1000,28169,37); -- Espial_Hose
INSERT INTO `mob_droplist` VALUES (9628,0,0,1000,28504,20); -- Spellbreaker_Earring
INSERT INTO `mob_droplist` VALUES (9628,0,0,1000,21044,100); -- Ichimonji_Yofusa
INSERT INTO `mob_droplist` VALUES (9628,0,0,1000,28366,67); -- Gaudryi_Necklace
INSERT INTO `mob_droplist` VALUES (9628,0,0,1000,20624,220); -- Eminent_Dagger
INSERT INTO `mob_droplist` VALUES (9628,0,0,1000,28550,62); -- Vehemance_Ring
INSERT INTO `mob_droplist` VALUES (9628,0,0,1000,4049,1000); -- Rusted_Coin

-- Nympha Eunomia
INSERT INTO `mob_droplist` VALUES (9629,0,0,1000,28169,120); -- Espial_Hose
INSERT INTO `mob_droplist` VALUES (9629,0,0,1000,28504,40); -- Spellbreaker_Earring
INSERT INTO `mob_droplist` VALUES (9629,0,0,1000,21044,100); -- Ichimonji_Yofusa
INSERT INTO `mob_droplist` VALUES (9629,0,0,1000,28366,30); -- Gaudryi_Necklace
INSERT INTO `mob_droplist` VALUES (9629,0,0,1000,20624,220); -- Eminent_Dagger
INSERT INTO `mob_droplist` VALUES (9629,0,0,1000,28550,40); -- Vehemance_Ring
INSERT INTO `mob_droplist` VALUES (9629,0,0,1000,4049,1000); -- Rusted_Coin

-- Gasha
INSERT INTO `mob_droplist` VALUES (9630,0,0,1000,28170,120); -- Wayfarer_Slops
INSERT INTO `mob_droplist` VALUES (9630,0,0,1000,28502,40); -- Impregnable_Earring
INSERT INTO `mob_droplist` VALUES (9630,0,0,1000,20726,117); -- Eminent_Scimitar
INSERT INTO `mob_droplist` VALUES (9630,0,0,1000,21405,33); -- Eminent_Flute
INSERT INTO `mob_droplist` VALUES (9630,0,0,1000,28551,40); -- Longshot_Ring
INSERT INTO `mob_droplist` VALUES (9630,0,0,1000,4049,1000); -- Rusted_Coin

-- Giltine
INSERT INTO `mob_droplist` VALUES (9631,0,0,1000,28170,120); -- Wayfarer_Slops
INSERT INTO `mob_droplist` VALUES (9631,0,0,1000,28502,40); -- Impregnable_Earring
INSERT INTO `mob_droplist` VALUES (9631,0,0,1000,20726,220); -- Eminent_Scimitar
INSERT INTO `mob_droplist` VALUES (9631,0,0,1000,21405,220); -- Eminent_Flute
INSERT INTO `mob_droplist` VALUES (9631,0,0,1000,28551,40); -- Longshot_Ring
INSERT INTO `mob_droplist` VALUES (9631,0,0,1000,4049,1000); -- Rusted_Coin

-- Kaggen
INSERT INTO `mob_droplist` VALUES (9632,0,0,1000,27881,120); -- Outrider_Mail
INSERT INTO `mob_droplist` VALUES (9632,0,0,1000,27410,22); -- Hippomenes_Socks
INSERT INTO `mob_droplist` VALUES (9632,0,0,1000,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9632,0,0,1000,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9632,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9632,0,0,1000,4850,7); -- Refresh II
INSERT INTO `mob_droplist` VALUES (9632,0,0,1000,8752,11); -- Cehuetzi Claw

-- Akvan
INSERT INTO `mob_droplist` VALUES (9633,0,0,1000,27882,120); -- Espial_Gambison
INSERT INTO `mob_droplist` VALUES (9633,0,0,1000,28274,22); -- Regal_Pumps_
INSERT INTO `mob_droplist` VALUES (9633,0,0,1000,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9633,0,0,1000,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9633,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9632,0,0,1000,4996,5); -- Mages Ballad III
INSERT INTO `mob_droplist` VALUES (9632,0,0,1000,4013,15); -- Waktza Crest

-- Pil
INSERT INTO `mob_droplist` VALUES (9634,0,0,1000,27883,120); -- Wayfarer_Robe
INSERT INTO `mob_droplist` VALUES (9634,0,0,1000,26702,22); -- Gavialis_Helm
INSERT INTO `mob_droplist` VALUES (9634,0,0,1000,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9634,0,0,1000,4064,1000); -- Rem's_Tale_Chapter_1
INSERT INTO `mob_droplist` VALUES (9634,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9634,0,0,1000,8728,13); -- Sif's Macrame
INSERT INTO `mob_droplist` VALUES (9634,0,0,1000,4895,7); -- Waterja

-- Lancing Lamorak
INSERT INTO `mob_droplist` VALUES (9635,0,0,1000,28539,40); -- Globidonta_Ring
INSERT INTO `mob_droplist` VALUES (9635,0,0,1000,20817,220); -- Eminent_Axe
INSERT INTO `mob_droplist` VALUES (9635,0,0,1000,28552,30); -- Fistmele_Ring
INSERT INTO `mob_droplist` VALUES (9635,0,0,1000,28029,120); -- Outrider_Mittens
INSERT INTO `mob_droplist` VALUES (9635,0,0,1000,4049,1000); -- Rusted_Coin

-- Bhishani
INSERT INTO `mob_droplist` VALUES (9636,0,0,1000,28442,40); -- Olseni_Belt
INSERT INTO `mob_droplist` VALUES (9636,0,0,1000,20540,220); -- Eminent_Baghnakhs
INSERT INTO `mob_droplist` VALUES (9636,0,0,1000,28553,30); -- Perception_Ring
INSERT INTO `mob_droplist` VALUES (9636,0,0,1000,28030,120); -- Espial_Bracers
INSERT INTO `mob_droplist` VALUES (9636,0,0,1000,4049,1000); -- Rusted_Coin

-- Rw Nw Prt M Hrw
INSERT INTO `mob_droplist` VALUES (9637,0,0,1000,28403,40); -- Inquisitors_Bead_Necklace
INSERT INTO `mob_droplist` VALUES (9637,0,0,1000,10826,120); -- Witful belt
INSERT INTO `mob_droplist` VALUES (9637,0,0,1000,21182,220); -- Eminent_Staff
INSERT INTO `mob_droplist` VALUES (9637,0,0,1000,28554,30); -- Acumen_Ring
INSERT INTO `mob_droplist` VALUES (9637,0,0,1000,28031,120); -- Wayfarer_Cuffs
INSERT INTO `mob_droplist` VALUES (9637,0,0,1000,4049,1000); -- Rusted_Coin

-- Stachysaurus
INSERT INTO `mob_droplist` VALUES (9638,0,0,1000,27506,40); -- Defiant_Collar
INSERT INTO `mob_droplist` VALUES (9638,0,0,1000,28462,22); -- Hurch'lan_Sash
INSERT INTO `mob_droplist` VALUES (9638,0,0,1000,20865,30); -- Eminent_Voulge
INSERT INTO `mob_droplist` VALUES (9638,0,0,1000,27740,120); -- Outrider_Mask
INSERT INTO `mob_droplist` VALUES (9638,0,0,1000,4049,1000); -- Rusted_Coin

-- Gwynn ap Nudd
INSERT INTO `mob_droplist` VALUES (9639,0,0,1000,28496,40); -- Zennaroi_Earring
INSERT INTO `mob_droplist` VALUES (9639,0,0,1000,21119,300); -- Eminent_Wand
INSERT INTO `mob_droplist` VALUES (9639,0,0,1000,27741,12); -- Espial_Cap
INSERT INTO `mob_droplist` VALUES (9639,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9639,0,0,1000,9062,12); -- Dark Matter

-- Smierc
INSERT INTO `mob_droplist` VALUES (9640,0,0,1000,21345,40); -- Focal_Orb
INSERT INTO `mob_droplist` VALUES (9640,0,0,1000,27592,22); -- Vengeful_Ring
INSERT INTO `mob_droplist` VALUES (9640,0,0,1000,20908,300); -- Eminent_Sickle
INSERT INTO `mob_droplist` VALUES (9640,0,0,1000,27742,120); -- Wayfarer_Circlet
INSERT INTO `mob_droplist` VALUES (9640,0,0,1000,4049,1000); -- Rusted_Coin

-- Gaunab
INSERT INTO `mob_droplist` VALUES (9641,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9641,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9641,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9641,0,0,1000,27230,20); -- Zoar_Subligar
INSERT INTO `mob_droplist` VALUES (9641,0,0,1000,27222,12); -- Limbo_Trousers
INSERT INTO `mob_droplist` VALUES (9641,0,0,1000,20610,22); -- Rhadamanthus +242 Skill Weapon
INSERT INTO `mob_droplist` VALUES (9641,0,0,1000,4049,1000); -- Rusted_Coin

-- Ocythoe
INSERT INTO `mob_droplist` VALUES (9642,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9642,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9642,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9642,0,0,1000,27996,20); -- Shigure_Tekko
INSERT INTO `mob_droplist` VALUES (9642,0,0,1000,26869,120); -- Rosette_Jaseran
INSERT INTO `mob_droplist` VALUES (9642,0,0,1000,20614,22); -- Pukulatmuj_
INSERT INTO `mob_droplist` VALUES (9642,0,0,1000,4014,13); -- Yggdreant Bole
INSERT INTO `mob_droplist` VALUES (9642,0,0,1000,4049,1000); -- Rusted_Coin

-- Kalasutrax
INSERT INTO `mob_droplist` VALUES (9643,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9643,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9643,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9643,0,0,1000,28275,20); -- Jute_Boots
INSERT INTO `mob_droplist` VALUES (9643,0,0,1000,27223,120); -- Feast_Hose
INSERT INTO `mob_droplist` VALUES (9643,0,0,1000,21479,220); -- Tsoabichi_Crossbow
INSERT INTO `mob_droplist` VALUES (9643,0,0,1000,4049,1000); -- Rusted_Coin

-- Ig-Alima
INSERT INTO `mob_droplist` VALUES (9644,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9644,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9644,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9644,0,0,1000,26943,20); -- Agony_Jerkin
INSERT INTO `mob_droplist` VALUES (9644,0,0,1000,26710,12); -- Imperial_Wing_Hairpin
INSERT INTO `mob_droplist` VALUES (9644,0,0,1000,20528,220); -- Fists_of_Fury_
INSERT INTO `mob_droplist` VALUES (9644,0,0,1000,4049,1000); -- Rusted_Coin

-- Botulus Rex
INSERT INTO `mob_droplist` VALUES (9645,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9645,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9645,0,0,1000,4065,1000); -- Rem's_Tale_Chapter 2
INSERT INTO `mob_droplist` VALUES (9645,0,0,1000,26874,20); -- Supay_Weskit
INSERT INTO `mob_droplist` VALUES (9645,0,0,1000,28135,120); -- Assiduity_Pants
INSERT INTO `mob_droplist` VALUES (9645,0,0,1000,21112,22); -- Gabaxorea
INSERT INTO `mob_droplist` VALUES (9645,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9645,0,0,1000,4985,4); -- Scroll Of Horde Lullaby II

-- VW Chapter 3 9646-9657
INSERT INTO `mob_droplist` VALUES (9646,0,0,1000,21403,33); -- Damani Horn -- Needs Item_Basic Fix
INSERT INTO `mob_droplist` VALUES (9646,0,0,1000,28442,51); -- Olseni Belt
INSERT INTO `mob_droplist` VALUES (9646,0,0,1000,28636,40); -- Bookworms Cape
INSERT INTO `mob_droplist` VALUES (9646,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9647,0,0,1000,20949,30); --  Kumalo 262 skill weapon
INSERT INTO `mob_droplist` VALUES (9647,0,0,1000,27634,60); -- Thornfin shield +1
INSERT INTO `mob_droplist` VALUES (9647,0,0,1000,28627,75); -- Lutian Cape
INSERT INTO `mob_droplist` VALUES (9647,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9648,0,0,1000,20906,87); --  Vunetshelo
INSERT INTO `mob_droplist` VALUES (9648,0,0,1000,28443,30); -- Yamabuki-no-obi
INSERT INTO `mob_droplist` VALUES (9648,0,0,1000,28633,45); -- Gunslingers Cape
INSERT INTO `mob_droplist` VALUES (9648,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9649,0,0,1000,20620,26); --  Sabeus
INSERT INTO `mob_droplist` VALUES (9649,0,0,1000,28604,30); -- Mubvum Mantle
INSERT INTO `mob_droplist` VALUES (9649,0,0,1000,28630,48); -- Updraft Mantle
INSERT INTO `mob_droplist` VALUES (9649,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9650,0,0,1000,28351,59); --  Cloud Hairpin +1
INSERT INTO `mob_droplist` VALUES (9650,0,0,1000,28443,43); -- Yamabuki-no-obo
INSERT INTO `mob_droplist` VALUES (9650,0,0,1000,28635,55); -- Toetaper Mantle
INSERT INTO `mob_droplist` VALUES (9650,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9651,0,0,1000,20995,65); --  Isuka
INSERT INTO `mob_droplist` VALUES (9651,0,0,1000,28603,23); -- Kumbria Cape
INSERT INTO `mob_droplist` VALUES (9651,0,0,1000,28628,39); -- Takaha Mantle
INSERT INTO `mob_droplist` VALUES (9651,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9652,0,0,1000,27051,13); --  Kachmusha Kote +1
INSERT INTO `mob_droplist` VALUES (9652,0,0,1000,27044,58); -- Crushers Gauntlets
INSERT INTO `mob_droplist` VALUES (9652,0,0,1000,20945,78); -- Nativus Halberd
INSERT INTO `mob_droplist` VALUES (9652,0,0,1000,28625,1000); -- Pastoralist Mantle
INSERT INTO `mob_droplist` VALUES (9652,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9653,0,0,1000,27044,37); --  Crushers Gauntlets
INSERT INTO `mob_droplist` VALUES (9653,0,0,1000,26715,78); -- Adorned Helm
INSERT INTO `mob_droplist` VALUES (9653,0,0,1000,20722,80); -- Usonmunku
INSERT INTO `mob_droplist` VALUES (9653,0,0,1000,28629,1000); -- Yokaze Mantle
INSERT INTO `mob_droplist` VALUES (9653,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9654,0,0,1000,21220,100); --  Paloma +1
INSERT INTO `mob_droplist` VALUES (9654,0,0,1000,21177,90); -- Twebuliij
INSERT INTO `mob_droplist` VALUES (9654,0,0,1000,28626,1000); -- Rhapsodes Cape
INSERT INTO `mob_droplist` VALUES (9654,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9655,0,0,1000,20805,98); --  Perun +_1
INSERT INTO `mob_droplist` VALUES (9655,0,0,1000,26869,25); -- Reosette Jaseran +1
INSERT INTO `mob_droplist` VALUES (9655,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9655,0,0,1000,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9655,0,0,1000,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9655,0,0,1000,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9656,0,0,1000,20612,86); --  Sangarius +1
INSERT INTO `mob_droplist` VALUES (9656,0,0,1000,26873,25); -- Hime Domaru +1
INSERT INTO `mob_droplist` VALUES (9656,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9656,0,0,1000,4692,15); -- Haste II
INSERT INTO `mob_droplist` VALUES (9656,0,0,1000,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9656,0,0,1000,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9656,0,0,1000,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9657,0,0,1000,20988,96); --  Tancho +1
INSERT INTO `mob_droplist` VALUES (9657,0,0,1000,26888,99); -- Shomonjijoe +1
INSERT INTO `mob_droplist` VALUES (9657,0,0,1000,4049,1000); -- Rusted_Coin
INSERT INTO `mob_droplist` VALUES (9657,0,0,1000,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9657,0,0,1000,4066,1000); -- Rems 3
INSERT INTO `mob_droplist` VALUES (9657,0,0,1000,4066,1000); -- Rems 3

-- fjalar
INSERT INTO `mob_droplist` VALUES (9658,0,0,1000,28479,20); -- comment me
INSERT INTO `mob_droplist` VALUES (9658,0,0,1000,21104,42); -- comment me
INSERT INTO `mob_droplist` VALUES (9658,0,0,1000,21276,77); -- comment me
INSERT INTO `mob_droplist` VALUES (9658,0,0,1000,28631,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9658,0,0,1000,4049,1000); -- Rusted_Coin

-- Abununnu
INSERT INTO `mob_droplist` VALUES (9659,0,0,1000,28483,99); -- comment me
INSERT INTO `mob_droplist` VALUES (9659,0,0,1000,20949,61); -- comment me
INSERT INTO `mob_droplist` VALUES (9659,0,0,1000,20813,63); -- comment me
INSERT INTO `mob_droplist` VALUES (9659,0,0,1000,28624,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9659,0,0,1000,4049,1000); -- Rusted_Coin

-- Tsui-Goab
INSERT INTO `mob_droplist` VALUES (9660,0,0,1000,27507,40); -- comment me
INSERT INTO `mob_droplist` VALUES (9660,0,0,1000,20609,96); -- comment me
INSERT INTO `mob_droplist` VALUES (9660,0,0,1000,20862,47); -- comment me
INSERT INTO `mob_droplist` VALUES (9660,0,0,1000,28622,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9660,0,0,1000,4049,1000); -- Rusted_Coin

-- Isarukitsck
INSERT INTO `mob_droplist` VALUES (9661,0,0,1000,28478,78); -- comment me
INSERT INTO `mob_droplist` VALUES (9661,0,0,1000,21350,57); -- comment me
INSERT INTO `mob_droplist` VALUES (9661,0,0,1000,20604,43); -- comment me
INSERT INTO `mob_droplist` VALUES (9661,0,0,1000,28632,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9661,0,0,1000,4049,1000); -- Rusted_Coin

-- Bismark
INSERT INTO `mob_droplist` VALUES (9662,0,0,1000,26896,23); -- comment me
INSERT INTO `mob_droplist` VALUES (9662,0,0,1000,27220,132); -- comment me
INSERT INTO `mob_droplist` VALUES (9662,0,0,1000,27407,81); -- comment me
INSERT INTO `mob_droplist` VALUES (9662,0,0,1000,28617,78); -- comment me
INSERT INTO `mob_droplist` VALUES (9662,0,0,1000,4692,25); -- Haste II
INSERT INTO `mob_droplist` VALUES (9662,0,0,1000,4067,1000); -- Rems 4
INSERT INTO `mob_droplist` VALUES (9662,0,0,1000,4067,1000); -- Rems 4
INSERT INTO `mob_droplist` VALUES (9662,0,0,1000,4067,1000); -- Rems 4
INSERT INTO `mob_droplist` VALUES (9662,0,0,1000,4067,1000); -- Rems 4

-- Dimgruzub
INSERT INTO `mob_droplist` VALUES (9670,0,0,1000,26785,91); -- comment me
INSERT INTO `mob_droplist` VALUES (9670,0,0,1000,21221,2); -- comment me
INSERT INTO `mob_droplist` VALUES (9670,0,0,1000,28620,98); -- comment me
INSERT INTO `mob_droplist` VALUES (9670,0,0,1000,28632,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9670,0,0,1000,4049,1000); -- Rusted_Coin

-- Brekekex
INSERT INTO `mob_droplist` VALUES (9671,0,0,1000,28137,37); -- comment me
INSERT INTO `mob_droplist` VALUES (9671,0,0,1000,28506,38); -- comment me
INSERT INTO `mob_droplist` VALUES (9671,0,0,1000,20986,59); -- comment me
INSERT INTO `mob_droplist` VALUES (9671,0,0,1000,28618,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9671,0,0,1000,4049,1000); -- Rusted_Coin

-- Yalungar
INSERT INTO `mob_droplist` VALUES (9672,0,0,1000,28418,23); -- comment me
INSERT INTO `mob_droplist` VALUES (9672,0,0,1000,28380,50); -- comment me
INSERT INTO `mob_droplist` VALUES (9672,0,0,1000,20900,18); -- comment me
INSERT INTO `mob_droplist` VALUES (9672,0,0,1000,28621,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9672,0,0,1000,4049,1000); -- Rusted_Coin

-- Vanasarvik
INSERT INTO `mob_droplist` VALUES (9673,0,0,1000,27994,94); -- comment me
INSERT INTO `mob_droplist` VALUES (9673,0,0,1000,21161,38); -- comment me
INSERT INTO `mob_droplist` VALUES (9673,0,0,1000,20715,19); -- Acclimator +242 Skill
INSERT INTO `mob_droplist` VALUES (9673,0,0,1000,28619,1000); -- comment me
INSERT INTO `mob_droplist` VALUES (9673,0,0,1000,4049,1000); -- Rusted_Coin

-- Morta
INSERT INTO `mob_droplist` VALUES (9674,0,0,1000,26871,65); -- comment me
INSERT INTO `mob_droplist` VALUES (9674,0,0,1000,27221,91); -- comment me
INSERT INTO `mob_droplist` VALUES (9674,0,0,1000,26732,98); -- comment me
INSERT INTO `mob_droplist` VALUES (9674,0,0,1000,4692,35); -- Haste II
INSERT INTO `mob_droplist` VALUES (9674,0,0,1000,4068,1000); -- Rems 5
INSERT INTO `mob_droplist` VALUES (9674,0,0,1000,4068,1000); -- Rems 5
INSERT INTO `mob_droplist` VALUES (9674,0,0,1000,4068,1000); -- Rems 5

-- Iratham
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,12103,340); --  Mavi Basmak
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,19401,340); -- Farsha
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,13791,420); --  Timarli Jawshan
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,11733,1000); --  Aquiline Belt
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,11637,700); --  Meridian Ring
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,3225,550); --     Balance Card
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,3224,550); --  Balance Jewel
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,4015,39);
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,766,72);
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,3552,103);
INSERT INTO `mob_droplist` VALUES (9706,0,0,1000,8992,210);

-- Abas
DELETE FROM `mob_droplist` WHERE dropId=4520 and dropType=0 and itemId=11409 and itemRate=167; -- comment me
INSERT INTO `mob_droplist` VALUES (9707,0,0,1000,11409,167);
INSERT INTO `mob_droplist` VALUES (9707,0,0,1000,11525,520); -- Maestria Mask
INSERT INTO `mob_droplist` VALUES (9707,0,0,1000,2949,1000); -- Quivering Eft Egg

-- Adze
DELETE FROM `mob_droplist` WHERE dropId=4521 and dropType=0 and itemId=2428 and itemRate=50; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4521 and dropType=0 and itemId=2426 and itemRate=60; -- comment me
DELETE FROM `mob_droplist` WHERE dropId=4521 and dropType=0 and itemId=2427 and itemRate=205; -- comment me
INSERT INTO `mob_droplist` VALUES (9708,0,0,1000,2428,50);
INSERT INTO `mob_droplist` VALUES (9708,0,0,1000,2426,60);
INSERT INTO `mob_droplist` VALUES (9708,0,0,1000,2427,205);
INSERT INTO `mob_droplist` VALUES (9708,0,0,1000,11594,108); --  Estoqueur's Collar
INSERT INTO `mob_droplist` VALUES (9708,0,0,1000,11735,631); --  Impulse Belt

-- Alectryon
DELETE FROM `mob_droplist` WHERE dropId=4522 and dropType=0 and itemId=16374 and itemRate=140; -- comment me
INSERT INTO `mob_droplist` VALUES (9709,0,0,1000,16374,140); -- comment me
INSERT INTO `mob_droplist` VALUES (9709,0,0,1000,11642,250); -- Hoard Ring

-- Chloris
DELETE FROM `mob_droplist` WHERE dropId=4523 and dropType=0 and itemId=19610 and itemRate=384; -- comment me
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,2928,82); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,11509,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,12741,796); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,14888,186); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,3225,193); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,3223,217); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,2928,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,8976,138);
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,9003,113);
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,3936,154);
INSERT INTO `mob_droplist` VALUES (9710,0,0,1000,2361,248);

-- Chukwas
INSERT INTO `mob_droplist` VALUES (9711,0,0,1000,11595,102); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,0,1000,17185,592); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,0,1000,2933,830); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,0,1000,2933,91); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,0,1000,646,500); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9711,0,0,1000,646,130); -- COMMENT ME

-- Cuelebre
INSERT INTO `mob_droplist` VALUES (9712,0,0,1000,17626,373); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9712,0,0,1000,11592,55); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9712,0,0,1000,2939,620); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9712,0,0,1000,2939,120); -- COMMENT ME

-- Gancanagh
INSERT INTO `mob_droplist` VALUES (9713,0,0,1000,19249,300); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9713,0,0,1000,3223,217); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9713,0,0,1000,3225,193); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9713,0,0,1000,2948,1000); -- COMMENT ME

-- Glavoid
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,2927,60); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,2927,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,11508,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,11523,250); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,3222,288); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,3225,266); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,9075,42);
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,8724,96);
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,734,251);
INSERT INTO `mob_droplist` VALUES (9714,0,0,1000,8747,254);

-- Hedetet
INSERT INTO `mob_droplist` VALUES (9715,0,0,1000,12388,500); -- COMMENT ME

-- Halimede
INSERT INTO `mob_droplist` VALUES (9716,0,0,1000,11564,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9716,0,0,1000,2945,1000); -- Shriveled Wing

-- Lachrymater
INSERT INTO `mob_droplist` VALUES (9717,0,0,1000,19250,386); -- COMMENT ME

-- Lacovie
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,11521,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,11729,92); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,11507,231); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,3224,142); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,3222,142); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,12104,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,3940,273);
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,8990,140);
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,8725,223);
INSERT INTO `mob_droplist` VALUES (9718,0,0,1000,3926,255);

-- Manananaggal
INSERT INTO `mob_droplist` VALUES (9719,0,0,1000,11604,250); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,0,1000,11737,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,0,1000,11596,415); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,0,1000,18510,320); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,0,1000,3222,288); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9719,0,0,1000,3224,230); -- COMMENT ME

-- Minhocao
INSERT INTO `mob_droplist` VALUES (9720,0,0,1000,18510,654); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9720,0,0,1000,11596,141); -- COMMENT ME

-- Muscaliet
INSERT INTO `mob_droplist` VALUES (9721,0,0,1000,11596,286); -- COMMENT ME

-- Myrmecoleon
INSERT INTO `mob_droplist` VALUES (9722,0,0,1000,17113,152); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9722,0,0,1000,11548,200); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9722,0,0,1000,11517,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9722,0,0,1000,3222,150); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9722,0,0,1000,3223,151); -- COMMENT ME

-- Ophanim
INSERT INTO `mob_droplist` VALUES (9723,0,0,1000,15429,252); -- COMMENT ME

-- Quetzalli
INSERT INTO `mob_droplist` VALUES (9724,0,0,1000,11551,174); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9724,0,0,1000,11605,230); -- COMMENT ME

-- Tefenet
INSERT INTO `mob_droplist` VALUES (9725,0,0,1000,11741,474); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,0,1000,3225,274); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,0,1000,3223,370); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,0,1000,3224,234); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,0,1000,3222,434); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9725,0,0,1000,2950,1000); -- COMMENT ME

-- Treble_Noctules
INSERT INTO `mob_droplist` VALUES (9726,0,0,1000,11641,320); -- COMMENT ME

-- Vetehinen
INSERT INTO `mob_droplist` VALUES (9727,0,0,1000,11640,420); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9727,0,0,1000,2946,1000); -- Tarnished Pincer

-- Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,28576,96); -- Paqichikaji Ring
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,11646,180); -- Sirona's Ring from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,3196,161); -- Creed seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,3196,115); -- Creed seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,3202,135); -- Iga seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,3202,177); -- Iga seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,3206,172); -- Navarch's seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,3206,143); -- Navarch's seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,3191,145); -- Tantra seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,3191,122); -- Tantra seal feet from Pascerpot
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,12101,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,8976,164);
INSERT INTO `mob_droplist` VALUES (9728,0,0,1000,3550,285);

-- Ironclad Executioner
INSERT INTO `mob_droplist` VALUES (9729,0,0,1000,12089,340); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,0,1000,11361,87); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,0,1000,19255,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,0,1000,19256,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,0,1000,11750,1000); -- COMMENT ME
INSERT INTO `mob_droplist` VALUES (9729,0,0,1000,3893,115);
INSERT INTO `mob_droplist` VALUES (9729,0,0,1000,8710,137);
INSERT INTO `mob_droplist` VALUES (9729,0,0,1000,9063,172);
INSERT INTO `mob_droplist` VALUES (9729,0,0,1000,657,252);

-- Shinryu
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,21227,110); -- Hanqaku-no-yumi
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,20858,120); -- Lightreaver
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,21364,380); -- Elders Grip
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,20991,140); -- Chidori
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,21284,120); -- Vanir_Gun
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,28155,50); -- Scuff._Cosciales
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,28287,50); -- Durgai_Leggings
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,3925,300); -- Tanz
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,3925,300); -- Tanz
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,3925,300); -- Tanz
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,4692,30); -- Haste II
INSERT INTO `mob_droplist` VALUES (9730,0,0,1000,9062,50); -- Dark Matter

-- Hydra
INSERT INTO `mob_droplist` VALUES (9731,0,0,1000,28663,115); -- Steadfast shield
INSERT INTO `mob_droplist` VALUES (9731,0,0,1000,15807,140); -- Balrahn's Ring
INSERT INTO `mob_droplist` VALUES (9731,0,0,1000,4023,50);
INSERT INTO `mob_droplist` VALUES (9731,0,0,1000,2876,36);
INSERT INTO `mob_droplist` VALUES (9731,0,0,1000,9062,12); -- Dark Matter


-- Mictlantecuhtli
INSERT INTO `mob_droplist` VALUES (9732,0,0,1000,15019,386); -- Serpentes Cuffs
INSERT INTO `mob_droplist` VALUES (9732,0,0,1000,11597,84); -- Unkai Nodowa
INSERT INTO `mob_droplist` VALUES (9732,0,0,1000,15942,128);
INSERT INTO `mob_droplist` VALUES (9732,0,0,1000,3544,51);
INSERT INTO `mob_droplist` VALUES (9732,0,0,1000,9075,43);
INSERT INTO `mob_droplist` VALUES (9732,0,0,1000,1767,118);

-- HTB Garuda Prime
-- INSERT INTO `mob_droplist` VALUES (9733,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9733,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9733,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9733,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9733,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9733,0,0,1000,itemID,itemRate);

-- HTB Ramuh Prime
-- INSERT INTO `mob_droplist` VALUES (9734,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9734,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9734,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9734,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9734,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9734,0,0,1000,itemID,itemRate);

-- HTB Shiva Prime
-- INSERT INTO `mob_droplist` VALUES (9735,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9735,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9735,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9735,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9735,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9735,0,0,1000,itemID,itemRate);

-- HTB Ifrit Prime
-- INSERT INTO `mob_droplist` VALUES (9736,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9736,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9736,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9736,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9736,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9736,0,0,1000,itemID,itemRate);

-- HTB Titan Prime
-- INSERT INTO `mob_droplist` VALUES (9737,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9737,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9737,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9737,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9737,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9737,0,0,1000,itemID,itemRate);

-- HTB Leviathan Prime
-- INSERT INTO `mob_droplist` VALUES (9738,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9738,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9738,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9738,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9738,0,0,1000,itemID,itemRate);

-- HTB Avatars: Fenrir Prime
-- INSERT INTO `mob_droplist` VALUES (9739,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9739,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9739,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9739,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9739,0,0,1000,itemID,itemRate);

-- HTB Avatars: Carbuncle Prime
-- INSERT INTO `mob_droplist` VALUES (9740,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9740,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9740,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9740,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9740,0,0,1000,itemID,itemRate);

-- HTB Avatars: Diabolos Prime
-- INSERT INTO `mob_droplist` VALUES (9741,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9741,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9741,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9741,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9741,0,0,1000,itemID,itemRate);

-- HTB Kam'lanaut
-- INSERT INTO `mob_droplist` VALUES (9742,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9742,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9742,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9742,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9742,0,0,1000,itemID,itemRate);

-- HTB Eald'narche
-- INSERT INTO `mob_droplist` VALUES (9743,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9743,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9743,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9743,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9743,0,0,1000,itemID,itemRate);

-- HTB Shadow Lord
-- INSERT INTO `mob_droplist` VALUES (9744,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9744,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9744,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9744,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9744,0,0,1000,itemID,itemRate);

-- HTB Ouryu
-- INSERT INTO `mob_droplist` VALUES (9745,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9745,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9745,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9745,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9745,0,0,1000,itemID,itemRate);

-- HTB Tenzen
-- INSERT INTO `mob_droplist` VALUES (9746,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9746,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9746,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9746,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9746,0,0,1000,itemID,itemRate);

-- HTB Shikaree X
-- INSERT INTO `mob_droplist` VALUES (9747,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9747,0,0,1000,itemID,itemRate);

-- HTB Shikaree Y
-- INSERT INTO `mob_droplist` VALUES (9748,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9748,0,0,1000,itemID,itemRate);

-- HTB Shikaree Z
-- INSERT INTO `mob_droplist` VALUES (9749,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9749,0,0,1000,itemID,itemRate);

-- HTB Omega
-- INSERT INTO `mob_droplist` VALUES (9750,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9750,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9750,0,0,1000,itemID,itemRate);

-- HTB Ultima
-- INSERT INTO `mob_droplist` VALUES (9751,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9751,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9751,0,0,1000,itemID,itemRate);

-- HTB Promathia
-- INSERT INTO `mob_droplist` VALUES (9752,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9752,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9752,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9752,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9752,0,0,1000,itemID,itemRate);

-- HTB Lancelord Gaheel Ja
-- INSERT INTO `mob_droplist` VALUES (9753,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9753,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9753,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9753,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9753,0,0,1000,itemID,itemRate);

-- HTB Gessho
-- INSERT INTO `mob_droplist` VALUES (9754,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9754,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9754,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9754,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9754,0,0,1000,itemID,itemRate);

-- DropID 9755 Reserved (HTB Ark Angel Hume)
-- DropID 9756 Reserved (HTB Ark Angel Tarutaru)
-- DropID 9757 Reserved (HTB Ark Angel Mithra)
-- DropID 9758 Reserved (HTB Ark Angel Elvaan)
-- DropID 9759 Reserved (HTB Ark Angel Galka)
-- DropID 9760 Reserved (HTB Divine Might)
-- DropID 9761 Reserved (HTB Divine Might)
-- DropID 9762 Reserved (HTB Divine Might)
-- DropID 9763 Reserved (HTB Divine Might)
-- DropID 9764 Reserved (HTB Divine Might)

-- Ultimate Zilant
-- INSERT INTO `mob_droplist` VALUES (9765,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9765,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9765,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9765,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9765,0,0,1000,itemID,itemRate);

-- Ultimate Behemoth
-- INSERT INTO `mob_droplist` VALUES (9766,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9766,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9766,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9766,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9766,0,0,1000,itemID,itemRate);

-- Ultimate Adamantoise
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);

-- Augustus
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9767,0,0,1000,itemID,itemRate);

-- Sekolah
-- INSERT INTO `mob_droplist` VALUES (9769,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9769,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9769,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9769,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9769,0,0,1000,itemID,itemRate);

-- Uggalepih's Hand
-- INSERT INTO `mob_droplist` VALUES (9770,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9770,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9770,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9770,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9770,0,0,1000,itemID,itemRate);

-- Air Horror
-- INSERT INTO `mob_droplist` VALUES (9771,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9771,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9771,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9771,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9771,0,0,1000,itemID,itemRate);

-- Cthulhu
-- INSERT INTO `mob_droplist` VALUES (9772,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9772,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9772,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9772,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9772,0,0,1000,itemID,itemRate);

-- Whomping Willow
-- INSERT INTO `mob_droplist` VALUES (9773,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9773,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9773,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9773,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9773,0,0,1000,itemID,itemRate);

-- Sir Mordred
-- INSERT INTO `mob_droplist` VALUES (9774,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9774,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9774,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9774,0,0,1000,itemID,itemRate);
-- INSERT INTO `mob_droplist` VALUES (9774,0,0,1000,itemID,itemRate);

-- Group IDs 9775 to 16600 currently unused
-- New info above this line sorted by Group ID
-- place nothing below this line ---------------

-- Unity NM drops
-- INSERT INTO `mob_droplist` VALUES (16601,0,0,1000,6313,1000); -- Belinda's Coffer
-- INSERT INTO `mob_droplist` VALUES (16602,0,0,1000,6312,1000); -- Harold's Coffer
-- INSERT INTO `mob_droplist` VALUES (16603,0,0,1000,6314,1000); -- Pitriv's Coffer
-- INSERT INTO `mob_droplist` VALUES (16604,0,0,1000,6315,1000); -- Baldurno's Coffer
-- INSERT INTO `mob_droplist` VALUES (16605,0,0,1000,6316,1000); -- Mabel's Coffer
-- INSERT INTO `mob_droplist` VALUES (16606,0,0,1000,6318,1000); -- Ninlil's Coffer
-- INSERT INTO `mob_droplist` VALUES (16607,0,0,1000,6319,1000); -- Abyssdiver's Coffer
-- INSERT INTO `mob_droplist` VALUES (16608,0,0,1000,6357,1000); -- Immani. Coffer
-- INSERT INTO `mob_droplist` VALUES (16609,0,0,1000,6320,1000); -- Intuila's Coffer
-- INSERT INTO `mob_droplist` VALUES (16611,0,0,1000,6330,1000); -- Malatrix's Coffer
-- INSERT INTO `mob_droplist` VALUES (16612,0,0,1000,6322,1000); -- Orcfeltrap's Coffer
-- INSERT INTO `mob_droplist` VALUES (16613,0,0,1000,6350,1000); -- Saman. Coffer
-- INSERT INTO `mob_droplist` VALUES (16614,0,0,1000,6317,1000); -- Imperator's Coffer
-- INSERT INTO `mob_droplist` VALUES (16615,0,0,1000,6331,1000); -- Cactrot Veloz's Coffer
-- INSERT INTO `mob_droplist` VALUES (16616,0,0,1000,6321,1000); -- Emperor Arthro's Coffer
-- INSERT INTO `mob_droplist` VALUES (16617,0,0,1000,6324,1000); -- Joyous Green's Coffer
-- INSERT INTO `mob_droplist` VALUES (16618,0,0,1000,6351,1000); -- Keeper of Heiligtum's Coffer
-- INSERT INTO `mob_droplist` VALUES (16619,0,0,1000,6356,1000); -- Tiyanak's Coffer
-- INSERT INTO `mob_droplist` VALUES (16620,0,0,1000,6360,1000); -- Voso's Coffer
-- INSERT INTO `mob_droplist` VALUES (16621,0,0,1000,6326,1000); -- Warblade Beak's Coffer
-- INSERT INTO `mob_droplist` VALUES (16622,0,0,1000,6332,1000); -- Woodland Mender's Coffer
-- INSERT INTO `mob_droplist` VALUES (16623,0,0,1000,6327,1000); -- Arke's Coffer
-- INSERT INTO `mob_droplist` VALUES (16624,0,0,1000,6363,1000); -- Ayapec's Coffer
-- INSERT INTO `mob_droplist` VALUES (16625,0,0,1000,6329,1000); -- Beist's Coffer
-- INSERT INTO `mob_droplist` VALUES (16626,0,0,1000,6362,1000); -- Coca's Coffer
-- INSERT INTO `mob_droplist` VALUES (16627,0,0,1000,6352,1000); -- Douma Weapon's Coffer
-- INSERT INTO `mob_droplist` VALUES (16628,0,0,1000,6353,1000); -- King Uropygid's Coffer
-- INSERT INTO `mob_droplist` VALUES (16629,0,0,1000,6328,1000); -- Largantua's Coffer
-- INSERT INTO `mob_droplist` VALUES (16630,0,0,1000,6323,1000); -- Lumber Jill's Coffer
-- INSERT INTO `mob_droplist` VALUES (16631,0,0,1000,6361,1000); -- Mephitas's Coffer
-- INSERT INTO `mob_droplist` VALUES (16632,0,0,1000,6358,1000); -- Muut's Coffer
-- INSERT INTO `mob_droplist` VALUES (16633,0,0,1000,6364,1000); -- Specter Worm's Coffer
-- INSERT INTO `mob_droplist` VALUES (16634,0,0,1000,6325,1000); -- Strix's Coffer
-- INSERT INTO `mob_droplist` VALUES (16635,0,0,1000,6365,1000); -- Azrael's Coffer
-- INSERT INTO `mob_droplist` VALUES (16636,0,0,1000,6366,1000); -- Borealis Shadow's Coffer
-- INSERT INTO `mob_droplist` VALUES (16637,0,0,1000,6359,1000); -- Camahueto's Coffer
-- INSERT INTO `mob_droplist` VALUES (16638,0,0,1000,6354,1000); -- Vedrfolnir's Coffer
-- End Unity NM drops

-- Drop IDs 16639 to 16664 reserved

-- The Jumping Crab (please do not add anything to this crab without consulting Teo)
INSERT INTO `mob_droplist` VALUES (16665,0,0,1000,3925,1000); -- Single Tanzenite Jewel 100%
INSERT INTO `mob_droplist` VALUES (16665,0,0,1000,3925,333); -- Second Tanzenite Jewel 33.3%
INSERT INTO `mob_droplist` VALUES (16665,2,0,1000,3925,33); -- Stealable Tanzenite Jewel 3.3% (good luck with that).
-- INSERT INTO `mob_droplist` VALUES (16665,0,0,1000,?,?); -- future mystery item
-- INSERT INTO `mob_droplist` VALUES (16665,0,0,1000,?,?); -- future mystery item
-- INSERT INTO `mob_droplist` VALUES (16665,0,0,1000,?,?); -- future mystery item
-- End of Jumping Crabs Droplist. Other items may be / may become available via script.

-- 16666 Slendy
-- 16760 Mars
-- 16777 Minerva
