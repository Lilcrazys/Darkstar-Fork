-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Cauzeriste
-- Guild Merchant NPC: Woodworking Guild
-- !pos -175.946 3.999 280.301 231
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
    if (player:sendGuild(513,6,21,0)) then
        player:showText(npc,CAUZERISTE_SHOP_DIALOG);
    end
    ]]
        player:showText(npc, CAUZERISTE_SHOP_DIALOG);
        local stock =
        {
            1657,   100,       -- Bundling Twine
            688,    25,        -- Arrowwood Log
            689,    50,        -- Lauan Log
            691,    70,        -- Maple Log
            697,    3000,      -- Holly Log
            695,    5000,      -- Willow Log
            693,    1000,      -- Walnut Log
            696,    1000,      -- Yew Log
            690,    3800,      -- Elm Log
            694,    3000,      -- Chestnut Log
            727,    2000,      -- Dogwood Log
            699,    4000,      -- Oak Log
            701,    4500,      -- Rosewood Log
            700,    4500,      -- Mahogany Log
            702,    5000,      -- Ebony Log
            2761,   5500       -- Feyweald Log
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


