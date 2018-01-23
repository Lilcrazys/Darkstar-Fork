-----------------------------------
-- Area: Port Bastok
--  NPC: Silver Owl
-- Type: Tenshodo Merchant
-- !pos -99.155 4.649 23.292 236
-----------------------------------
package.loaded["scripts/zones/Port_Bastok/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
require("scripts/zones/Port_Bastok/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then
        --[[
        if (player:sendGuild(60420, 1, 23, 4)) then
            player:showText(npc,TENSHODO_SHOP_OPEN_DIALOG);
        end
        ]]
        player:showText(npc,TENSHODO_SHOP_OPEN_DIALOG);
        local stock =
        {
            16896,    517,       -- Kunai
            16919,    2728,      -- Shinobi-Gatana
            16975,    11583,     -- Kanesada
            16966,    1836,      -- Tachi
            16988,    14676,     -- Kotetsu
            12456,    552,       -- Hachimaki
            12537,    3272,      -- Cotton Hachimaki
            12584,    833,       -- Kenpogi
            12585,    4931,      -- Cotton Dogi
            12712,    458,       -- Tekko
            12713,    2000,      -- Cotton Tekko
            12840,    666,       -- Sitabaki
            12841,    2000,      -- Cotton Sitabaki
            12968,    424,       -- Kyahan
            12969,    2528       -- Cotton Kyahan
        };
        showShop(player, STATIC, stock);
    else
        player:startEvent(150,1)
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
