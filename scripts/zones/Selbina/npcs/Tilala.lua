-----------------------------------
-- Area: Selbina
--  NPC: Tilala
-- Guild Merchant NPC: Clothcrafting Guild
-- !pos 14.344 -7.912 10.276 248
-----------------------------------
package.loaded["scripts/zones/Selbina/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Selbina/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(516,6,21,0)) then
        player:showText(npc,CLOTHCRAFT_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,CLOTHCRAFT_SHOP_DIALOG);
        local stock =
        {
            816,    592,     -- Silk Thread
            817,    45,      -- Grass Thread
            818,    144,     -- Cotton Thread
            819,    850,     -- Linen Thread
            820,    2700,    -- Wool Thread
            822,    585,     -- Silver Thread
            823,    13338,   -- Gold Thread
            824,    240,     -- Grass Cloth
            825,    480,     -- Cotton Cloth
            832,    675,     -- Sheep Wool
            833,    15,      -- Moko Grass
            835,    187      -- Flax Flower
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

