----------------------------------
-- Abyssea ATMA handling
----------------------------------
require("scripts/globals/common");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/status");

----------------------------------
-- Returns total lunar abyssites
----------------------------------
function countLunars(player)
    local LUNAR_COUNT = 0;
    if (player:hasKeyItem(LUNAR_ABYSSITE1)) then
        LUNAR_COUNT = LUNAR_COUNT +1;
    end
    if (player:hasKeyItem(LUNAR_ABYSSITE2)) then
        LUNAR_COUNT = LUNAR_COUNT +1;
    end
    if (player:hasKeyItem(LUNAR_ABYSSITE3)) then
        LUNAR_COUNT = LUNAR_COUNT +1;
    end

    return LUNAR_COUNT;
end

----------------------------------
-- ATMA KI list
----------------------------------
function hasATMA_KI(player)
    -- This is temp just to make sure player has the an ATMA KI (any ATMA KI)
    -- Later this will be replaced by loading WHICH ones they have into the mask(s) for the event.
    local result = false;
    local ATMA_KI =
    {
        1279,1280,1281,1282,1283,1284,1285,1286,
        1287,1288,1289,1290,1291,1292,1293,1294,
        1295,1296,1297,1298,1299,1300,1301,1302,
        1303,1304,1305,1306,1307,1308,1309,1310,
        1311,1312,1313,1314,1315,1316,1317,1318,
        1319,1320,1321,1322,1323,1324,1325,1326,
        1327,1328,1329,1330,1331,1332,1333,1334,
        1335,1336,1337,1338,1339,1340,1341,1342,
        1343,1344,1345,1346,1347,1348,1349,1350,
        1351,1352,1353,1354,1355,1356,1357,1358,
        1359,1360,1361,1362,1363,1364,1365,1366,
        1367,1368,1369,1370,1371,1372,1373,1374,
        1375,1376,1377,1378,1655,1656,1657,1658,
        1659,1660,1661,1662,1663,1664,1665,1666,
        1667,1668,1669,1670,1671,1672,1673,1674,
        1675,1676,1677,1678,1679,1680,1681,1682,
        1683,1684,1685,1686,1687,1688,1689,1690,
        1691,1692,1693,1694,1695,1696,1697,1698,
        1699
    }

    for index, value in ipairs(ATMA_KI) do
        if (player:hasKeyItem(value)) then
            result = true;
        end
    end

    return result;

    -- A quick breakdown of which bytes of param mask bytes hold which KI's:
    -- local param3_byte1 = {1279,1280,1281,1282,1283,1284,1285,1286};
    -- local param3_byte2 = {1287,1288,1289,1290,1291,1292,1293,1294};
    -- local param3_byte3 = {1295,1296,1297,1298,1299,1300,1301,1302};
    -- local param3_byte4 = {1303,1304,1305,1306,1307,1308,1309,1310};
    -- local param4_byte1 = {1311,1312,1313,1314,1315,1316,1317,1318};
    -- local param4_byte2 = {1319,1320,1321,1322,1323,1324,1325,1326};
    -- local param4_byte3 = {1327,1328,1329,1330,1331,1332,1333,1334};
    -- local param4_byte4 = {1335,1336,1337,1338,1339,1340,1341,1342};
    -- local param5_byte1 = {1343,1344,1345,1346,1347,1348,1349,1350};
    -- local param5_byte2 = {1351,1352,1353,1354,1355,1356,1357,1358};
    -- local param5_byte3 = {1359,1360,1361,1362,1363,1364,1365,1366};
    -- local param5_byte4 = {1367,1368,1369,1370,1371,1372,1373,1374};
    -- local param6_byte1 = {1375,1376,1377,1378,1655,1656,1657,1658};
    -- local param6_byte2 = {1659,1660,1661,1662,1663,1664,1665,1666};
    -- local param6_byte3 = {1667,1668,1669,1670,1671,1672,1673,1674};
    -- local param6_byte4 = {1675,1676,1677,1678,1679,1680,1681,1682};
    -- local param7_byte1 = {1683,1684,1685,1686,1687,1688,1689,1690};
    -- local param7_byte2 = {1691,1692,1693,1694,1695,1696,1697,1698};
    -- local param7_byte3 = {1699};
    -- local param7_byte4 = {};
    -- local param8_byte1 = {};
    -- local param8_byte2 = {};
    -- local param8_byte3 = {};
    -- local param8_byte4 = {};
    -- Filling a byte past what it is supposed to have results in non ATMA key items displaying.
end

----------------------------------
-- Check for a single ATMA KI
----------------------------------
function getATMA(player, pwr)
    -- This needs redone to be much shorter.
    -- Since ATMA ID is sequential, should be able to just get 3rd or 5th or whatever KI ID from array
    -- Instead of copying what was done for sanction NPC's item list
    local ATMA = {}
    ATMA[1] = 1279;
    ATMA[2] = 1280;
    ATMA[3] = 1281;
    ATMA[4] = 1282;
    ATMA[5] = 1283;
    ATMA[6] = 1284;
    ATMA[7] = 1285;
    ATMA[8] = 1286;
    ATMA[9] = 1287;
    ATMA[10] = 1288;
    ATMA[11] = 1289;
    ATMA[12] = 1290;
    ATMA[13] = 1291;
    ATMA[14] = 1292;
    ATMA[15] = 1293;
    ATMA[16] = 1294;
    ATMA[17] = 1295;
    ATMA[18] = 1296;
    ATMA[19] = 1297;
    ATMA[20] = 1298;
    ATMA[21] = 1299;
    ATMA[22] = 1300;
    ATMA[23] = 1301;
    ATMA[24] = 1302;
    ATMA[25] = 1303;
    ATMA[26] = 1304;
    ATMA[27] = 1305;
    ATMA[28] = 1306;
    ATMA[29] = 1307;
    ATMA[30] = 1308;
    ATMA[31] = 1309;
    ATMA[32] = 1310;
    ATMA[33] = 1311;
    ATMA[34] = 1312;
    ATMA[35] = 1313;
    ATMA[36] = 1314;
    ATMA[37] = 1315;
    ATMA[38] = 1316;
    ATMA[39] = 1317;
    ATMA[40] = 1318;
    ATMA[41] = 1319;
    ATMA[42] = 1320;
    ATMA[43] = 1321;
    ATMA[44] = 1322;
    ATMA[45] = 1323;
    ATMA[46] = 1324;
    ATMA[47] = 1325;
    ATMA[48] = 1326;
    ATMA[49] = 1327;
    ATMA[50] = 1328;
    ATMA[51] = 1329;
    ATMA[52] = 1330;
    ATMA[53] = 1331;
    ATMA[54] = 1332;
    ATMA[55] = 1333;
    ATMA[56] = 1334;
    ATMA[57] = 1335;
    ATMA[58] = 1336;
    ATMA[59] = 1337;
    ATMA[60] = 1338;
    ATMA[61] = 1339;
    ATMA[62] = 1340;
    ATMA[63] = 1341;
    ATMA[64] = 1342;
    ATMA[65] = 1343;
    ATMA[66] = 1344;
    ATMA[67] = 1345;
    ATMA[68] = 1346;
    ATMA[69] = 1347;
    ATMA[70] = 1348;
    ATMA[71] = 1349;
    ATMA[72] = 1350;
    ATMA[73] = 1351;
    ATMA[74] = 1352;
    ATMA[75] = 1353;
    ATMA[76] = 1354;
    ATMA[77] = 1355;
    ATMA[78] = 1356;
    ATMA[79] = 1357;
    ATMA[80] = 1358;
    ATMA[81] = 1359;
    ATMA[82] = 1360;
    ATMA[83] = 1361;
    ATMA[84] = 1362;
    ATMA[85] = 1363;
    ATMA[86] = 1364;
    ATMA[87] = 1365;
    ATMA[88] = 1366;
    ATMA[89] = 1367;
    ATMA[90] = 1368;
    ATMA[91] = 1369;
    ATMA[92] = 1370;
    ATMA[93] = 1371;
    ATMA[94] = 1372;
    ATMA[95] = 1373;
    ATMA[96] = 1374;
    ATMA[97] = 1375;
    ATMA[98] = 1376;
    ATMA[99] = 1377;
    ATMA[100] = 1378;
    ATMA[101] = 1655;
    ATMA[102] = 1656;
    ATMA[103] = 1657;
    ATMA[104] = 1658;
    ATMA[105] = 1659;
    ATMA[106] = 1660;
    ATMA[107] = 1661;
    ATMA[108] = 1662;
    ATMA[109] = 1663;
    ATMA[120] = 1664;
    ATMA[121] = 1665;
    ATMA[122] = 1666;
    ATMA[123] = 1667;
    ATMA[124] = 1668;
    ATMA[125] = 1669;
    ATMA[126] = 1670;
    ATMA[127] = 1671;
    ATMA[128] = 1672;
    ATMA[129] = 1673;
    ATMA[120] = 1674;
    ATMA[121] = 1675;
    ATMA[122] = 1676;
    ATMA[123] = 1677;
    ATMA[124] = 1678;
    ATMA[125] = 1679;
    ATMA[126] = 1680;
    ATMA[127] = 1681;
    ATMA[128] = 1682;
    ATMA[129] = 1683;
    ATMA[130] = 1684;
    ATMA[131] = 1685;
    ATMA[132] = 1686;
    ATMA[133] = 1687;
    ATMA[134] = 1688;
    ATMA[135] = 1689;
    ATMA[136] = 1690;
    ATMA[137] = 1691;
    ATMA[138] = 1692;
    ATMA[139] = 1693;
    ATMA[140] = 1694;
    ATMA[141] = 1695;
    ATMA[142] = 1696;
    ATMA[143] = 1697;
    ATMA[144] = 1698;
    ATMA[145] = 1699;

    return ATMA[pwr]
end;

----------------------------------
-- Apply an ATMA effect
----------------------------------
function applyATMA(player, pwr)
    local tick = 0;

    if (pwr == 13 or pwr == 15 or pwr == 21 or pwr == 44 or pwr == 46 or pwr == 53 or pwr == 54
    or pwr == 56 or pwr == 77 or pwr == 89 or pwr == 90 or pwr == 92 or pwr == 94) then
        tick = 3;
    end

    if (player:getVar("ACTIVE_ATMA_COUNT") == 0) then
        -- Nuke stale vars..
        player:setVar("ATMA_1", 0);
        player:setVar("ATMA_2", 0);
        player:setVar("ATMA_3", 0);
    end

    if (player:getVar("ATMA_1") == pwr or player:getVar("ATMA_2") == pwr or player:getVar("ATMA_3") == pwr) then
        player:PrintToPlayer("Can't apply same ATMA twice!")
    elseif (player:hasKeyItem(getATMA(player, pwr)) == true) then
        if (player:getVar("ATMA_1") == 0) then
            player:setVar("ATMA_1", pwr);
        elseif (player:getVar("ATMA_2") == 0) then
            player:setVar("ATMA_2", pwr);
        elseif (player:getVar("ATMA_3") == 0) then
            player:setVar("ATMA_3", pwr);
        else
            player:PrintToPlayer("ERROR!")
        end

        player:setVar("ACTIVE_ATMA_COUNT", player:getVar("ACTIVE_ATMA_COUNT") +1);

        if (player:hasStatusEffect(EFFECT_ATMA_2)) then
            player:addStatusEffectEx(EFFECT_ATMA_3, EFFECT_ATMA, pwr, tick, 0); -- Duration zero should be infinite, effect will be lost on zone/dc/logout.
        elseif (player:hasStatusEffect(EFFECT_ATMA)) then
            player:addStatusEffectEx(EFFECT_ATMA_2, EFFECT_ATMA, pwr, tick, 0); -- Duration zero should be infinite, effect will be lost on zone/dc/logout.
        else
            player:addStatusEffect(EFFECT_ATMA, pwr, tick, 0); -- Duration zero should be infinite, effect will be lost on zone/dc/logout.
        end
    else
        player:PrintToPlayer("Can't apply that ATMA, key item not found.")
    end

end;

----------------------------------
-- Remove ALL ATMA effects
----------------------------------
function removeATMA(player)
    if (player:hasStatusEffect(EFFECT_ATMA_3)) then
        player:delStatusEffect(EFFECT_ATMA_3);
    end
    if (player:hasStatusEffect(EFFECT_ATMA_2)) then
        player:delStatusEffect(EFFECT_ATMA_2);
    end
    if (player:hasStatusEffect(EFFECT_ATMA)) then
        player:delStatusEffect(EFFECT_ATMA);
    end
    player:setVar("ACTIVE_ATMA_COUNT", 0);
    -- This line only needed if using single effect with the duplicates allowed flag. Commented out now that I am using 2 dummy effects.
    -- player:setPos(player:getXPos(),player:getYPos(),player:getZPos(),player:getRotPos(),player:getZoneID()); -- Temp hotfix for stupid onEffectLose BS. https://github.com/DarkstarProject/darkstar/issues/1151 
end;