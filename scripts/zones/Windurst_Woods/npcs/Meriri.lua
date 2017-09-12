-----------------------------------
-- Area: Windurst Woods
-- NPC: Meriri
-- Guild Merchant NPC: Clothcrafting Guild
-- !pos -76.471 -3.55 -128.341 241
-----------------------------------
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Windurst_Woods/TextIDs");

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
    if (player:sendGuild(515,6,21,0)) then
        player:showText(npc,MERIRI_DIALOG);
    end
    ]]
        player:showText(npc,MERIRI_DIALOG);
        local stock =
        {
            816,     592,    -- Silk Thread
            817,     45,     -- Grass Thread
            818,     144,    -- Cotton Thread
            819,     750,    -- Linen Thread
            820,     2700,   -- Wool Thread
            822,     585,    -- Silver Thread
            823,     13338,  -- Gold Thread
            824,     240,    -- Grass Cloth
            825,     480,    -- Cotton Cloth
            826,     12840,  -- Linen Cloth
            832,     675,    -- Sheep Wool
            833,     15,     -- Moko Grass
            834,     79,     -- Saruta Cotton
            835,     187,    -- Flax Flower
            839,     172,    -- Crawler Cocoon
            2128,    75,     -- Spindle
            2145,    75,     -- Zephyr Thread
            12856,   936     -- Slops
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

