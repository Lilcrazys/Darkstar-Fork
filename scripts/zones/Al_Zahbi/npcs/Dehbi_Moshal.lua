-----------------------------------
-- Area: Al Zahbi
--  NPC: Dehbi Moshal
--  Guild Merchant NPC: Woodworking Guild
-- !pos -71.563 -5.999 -57.544 48
-----------------------------------
package.loaded["scripts/zones/Al_Zahbi/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Al_Zahbi/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(60428,6,21,0)) then
        player:showText(npc,DEHBI_MOSHAL_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,DEHBI_MOSHAL_SHOP_DIALOG);
        local stock =
        {
            23,      829,       -- Maple Table
            688,     18,        -- Arrowwood Log
            689,     32,        -- Lauan Log
            690,     1000,      -- Elm Log
            691,     54,        -- Maple Log
            693,     1000,       -- Walnut Log
            694,     1000,      -- Chestnut Log
            695,     5000,       -- Willow Log
            696,     1000,       -- Yew Log
            697,     3000,       -- Holly Log
            698,     86,        -- Ash Log
            699,     2000,      -- Oak Log
            700,     9075,      -- Mahogany Log
            701,     6615,      -- Rosewood Log
            702,     9600,      -- Ebony Log
            704,     108,       -- Bamboo Stick
            705,     27,         -- Arrowwood Lumber
            706,     47,        -- Lauan Lumber
            707,     1723,      -- Elm Lumber
            708,     90,        -- Maple Lumber
            710,     2119,      -- Chestnut Lumber
            712,     6000,       -- Willow Lumber
            713,     1330,       -- Yew Lumber
            714,     3607,       -- Holly Lumber
            715,     172,        -- Ash Lumber
            716,     2740,      -- Oak Lumber
            721,     704,       -- Rattan Lumber
            17318,   3,        -- Wooden Arrow
            17320,   8,        -- Iron Arrow
            17321,   16,         -- Silver Arrow
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

