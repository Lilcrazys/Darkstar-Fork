-----------------------------------
-- Area: Norg
--  NPC: Achika
-- Type: Tenshodo Merchant
-- !pos 1.300 0.000 19.259 252
-----------------------------------
package.loaded["scripts/zones/Norg/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
require("scripts/zones/Norg/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then
        --[[
        if (player:sendGuild(60421,9,23,7)) then
            player:showText(npc, ACHIKA_SHOP_DIALOG);
        end
        ]]
        player:showText(npc, ACHIKA_SHOP_DIALOG);
        local stock =
        {
            12456,    552,       -- Hachimaki
            12458,    8972,      -- Soil Hachimaki
            12537,    3272,      -- Cotton Hachimaki
            12584,    833,       -- Kenpogi
            12585,    4931,      -- Cotton Dogi
            12586,    13266,     -- Soil Gi
            12712,    458,       -- Tekko
            12713,    2713,      -- Cotton Tekko
            12714,    2713,      -- Soil Tekko
            12840,    666,       -- Sitabaki
            12841,    3951,      -- Cotton Sitabaki
            12842,    10805,     -- Soil Sitabaki
            12968,    424,       -- Kyahan
            12969,    2528,      -- Cotton Kyahan
            12970,    11071,     -- Soil Kyahan
            13088,    43890,     -- Darksteel Nodowa
            13111,    20061      -- Nodowa
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

