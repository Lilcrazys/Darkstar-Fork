-----------------------------------
--  Area: Al Zahbi
--  NPC: Dehbi Moshal
--  Guild Merchant NPC: Woodworking Guild 
-- @pos -71.563 -5.999 -57.544 48
-----------------------------------
package.loaded["scripts/zones/Al_Zahbi/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Al_Zahbi/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

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
            688,     15,        -- Arrowwood Log
            689,     27,        -- Lauan Log
            690,     1401,      -- Elm Log
            691,     45,        -- Maple Log
            693,     640,       -- Walnut Log
            694,     2119,      -- Chestnut Log
            695,     120,       -- Willow Log
            696,     330,       -- Yew Log
            697,     528,       -- Holly Log
            698,     72,        -- Ash Log
            699,     4740,      -- Oak Log
            700,     9075,      -- Mahogany Log
            701,     6615,      -- Rosewood Log
            702,     9600,      -- Ebony Log
            704,     108,       -- Bamboo Stick
            705,     7,         -- Arrowwood Lumber
            706,     27,        -- Lauan Lumber
            707,     1723,      -- Elm Lumber
            708,     45,        -- Maple Lumber
            710,     2119,      -- Chestnut Lumber
            712,     120,       -- Willow Lumber
            713,     330,       -- Yew Lumber
            714,     607,       -- Holly Lumber
            715,     72,        -- Ash Lumber
            716,     4740,      -- Oak Lumber
            721,     704,       -- Rattan Lumber
            17318,   13,        -- Wooden Arrow
            17320,   26,        -- Iron Arrow
            17321,   60         -- Silver Arrow
        };
        showShop(player, STATIC, stock);
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

