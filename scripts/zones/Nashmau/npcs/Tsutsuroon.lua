-----------------------------------
-- Area: Nashmau
--  NPC: Tsutsuroon
-- Type: Tenshodo Merchant
-- !pos -15.193 0.000 31.356 53
-----------------------------------
package.loaded["scripts/zones/Nashmau/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
require("scripts/zones/Nashmau/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then
        --[[
        if (player:sendGuild(60431, 1, 23, 7)) then
            player:showText(npc,TSUTSUROON_SHOP_DIALOG);
        end
        ]]
        if (math.random(1,50) == 5) then
            require("scripts/globals/msg");
            player:SpoofMsg("SUE! SUE! RUIN! ", npc, chatType.SAY, chatType.SAY);
            player:SpoofMsg("Tsutsuroon sorry, Tsutsuroon sometimes has nervous tick.. ", npc, chatType.SAY, chatType.SAY);
        else
            player:showText(npc,TSUTSUROON_SHOP_DIALOG);
        end
        local stock =
        {
            704,      96,       -- Bamboo Stick
            1134,     810,      -- Bast Parchment
            17340,    58,       -- Bullet
            1555,     1061,     -- Coriander
            12585,    4931,     -- Cotton Dogi
            12457,    3272,     -- Cotton Hachimaki
            12969,    2528,     -- Cotton Kyahan
            12841,    3951,     -- Cotton Sitabaki
            12713,    2713,     -- Cotton Tekko
            1475,     579,      -- Curry Powder
            17322,    81,       -- Fire Arrow
            17304,    1472,     -- Fuma Shuriken
            1472,     369,      -- Gardenia Seed
            5164,     1945,     -- Ground Wasabi
            12456,    552,      -- Hachimaki
            1173,     56,       -- Hiraishin
            1590,     536,      -- Holy Basil
            1155,     436,      -- Iron Sand
            17302,    347,      -- Juji Shuriken
            16871,    183516,   -- Kamayari
            16975,    11583,    -- Kanesada
            1167,     58,       -- Kawahori-Ogi
            12584,    833,      -- Kenpogi
            17802,    189945,   -- Kiku-Ichimonji
            16988,    14676,    -- Kotetsu
            16896,    517,      -- Kunai
            12968,    424,      -- Kyahan
            1170,     58,       -- Makibishi
            1176,     44,       -- Mizu-Deppo
            5235,     187,      -- Napa
            16982,    4752,     -- Nodachi
            13111,    20061,    -- Nodowa
            16987,    12253,    -- Okanehira
            17259,    72144,    -- Pirate's Gun
            1652,     150,      -- Rice Vinegar
            16919,    2728,     -- Shinobi Gatana
            17301,    29,       -- Shuriken
            12840,    666,      -- Sitabaki
            12586,    13266,    -- Soil Gi
            12458,    8972,     -- Soil Hachimaki
            12970,    11071,    -- Soil Kyahan
            12842,    10805,    -- Soil Sitabaki
            12714,    2713,     -- Soil Tekko
            16917,    4226,     -- Suzume
            16966,    1836,     -- Tachi
            657,      4690,     -- Tama-Hagane
            12712,    458,      -- Tekko
            915,      2700,     -- Toad Oil
            1164,     30,       -- Tsurara
            1554,     431,      -- Turmeric
            16960,    3121,     -- Uchigatana
            1161,     66,       -- Uchitake
            1415,     55,       -- Urushi
            16900,    1404      -- Wakizashi
        };
        showShop(player, STATIC, stock);
    else
        -- player:startEvent(150);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
