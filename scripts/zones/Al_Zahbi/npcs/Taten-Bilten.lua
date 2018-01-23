-----------------------------------
-- Area: Al Zahbi
--  NPC: Taten-Bilten
--  Guild Merchant NPC: Clothcraft Guild
-- !pos 71.598 -6.000 -56.930 48
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
    if (player:sendGuild(60430,6,21,0)) then
        player:showText(npc,TATEN_BILTEN_SHOP_DIALOG);
    end
    ]]
        player:showText(npc, TATEN_BILTEN_SHOP_DIALOG);
        local stock =
        {
            825,     486,   -- Cotton Cloth
            818,     159,   -- Cotton Thread
            839,     173,   -- Crawler Cocoon
            835,     187,   -- Flax Flower
            824,     240,   -- Grass Cloth
            817,     45,    -- Grass Thread
            2287,    2700,  -- Karakul Thread
            819,     750,   -- Linen Thread
            833,     15,    -- Moko Grass
            834,     200,   -- Saruta Cotton
            832,     675,   -- Sheep Wool
            822,     1800,  -- Silver Thread
            2128,    75,    -- Spindle
            2173,    405,   -- Wamoura Cocoon
            2145,    75     -- Zephyr Thread
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

