-----------------------------------
--  Area: Lower Jeuno
--  NPC: Akamafula
--  Type: Tenshodo Merchant
-- !pos 28.465 2.899 -46.699 245
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
require("scripts/zones/Lower_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then
        --[[
        if (player:sendGuild(60417,1,23,1)) then
            player:showText(npc, AKAMAFULA_SHOP_DIALOG);
        end
        ]]
        player:showText(npc, AKAMAFULA_SHOP_DIALOG);
        local stock =
        {
            12456,    552,        -- Hachimaki
            12458,    8972,       -- Soil Hachimaki
            12537,    3272,       -- Cotton Hachimaki
            12584,    833,        -- Kenpogi
            12585,    4931,       -- Cotton Dogi
            12586,    13266,      -- Soil Gi
            12712,    458,        -- Tekko
            12713,    2713,       -- Cotton Tekko
            12714,    2713,       -- Soil Tekko
            12840,    666,        -- Sitabaki
            12841,    3951,       -- Cotton Sitabaki
            12842,    10805,      -- Soil Sitabaki
            12968,    424,        -- Kyahan
            12969,    2528,       -- Cotton Kyahan
            12970,    11071,      -- Soil Kyahan
            13111,    20061,      -- Nodowa
            16896,    517,        -- Kunai
            16900,    1404,       -- Wakizashi
            16960,    3121,       -- Uchigatana
            16966,    1836,       -- Tachi
            16974,    30000,      -- Dotanuki (224510 gil on wiki, 30000 in AH bot..)
            16975,    11583,      -- Kanesada
            16987,    12253,      -- Okanehira
            17265,    25732,      -- Tanegashima
            17301,    29          -- Shuriken
        };
        showShop(player, STATIC, stock);
    else
        -- player:startEvent(0x0096);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

