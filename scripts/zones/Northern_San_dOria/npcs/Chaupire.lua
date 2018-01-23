-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Chaupire
-- Guild Merchant NPC: Woodworking Guild
-- !pos -174.476 3.999 281.854 231
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Northern_San_dOria/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(5132,6,21,0)) then
        player:showText(npc,CHAUPIRE_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,CHAUPIRE_SHOP_DIALOG);
        local stock =
        {
            688,    25,        -- Arrowwood Log
            705,    3,         -- Arrowwood Lumber
            698,    60,        -- Ash Log
            715,    72,        -- Ash Lumber
            704,    96,        -- Bamboo Stick
            694,    2119,      -- Chestnut Log
            710,    2119,      -- Chestnut Lumber
            702,    9600,      -- Ebony Log
            719,    23552,     -- Ebony Lumber
            690,    1723,      -- Elm Log
            707,    1723,      -- Elm Lumber
            697,    528,       -- Holly Log
            714,    607,       -- Holly Lumber
            689,    27,        -- Lauan Log
            706,    27,        -- Lauan Lumber
            700,    9075,      -- Mahogany Log
            691,    45,        -- Maple Log
            708,    45,        -- Maple Lumber
            699,    4740,      -- Oak Log
            716,    4740,      -- Oak Lumber
            701,    6615,      -- Rosewood Log
            693,    640,       -- Walnut Log
            695,    120,       -- Willow Log
            712,    120,       -- Willow Lumber
            696,    330,       -- Yew Log
            713,    330        -- Yew Lumber
        };
        showShop(player, STATIC, stock);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;


