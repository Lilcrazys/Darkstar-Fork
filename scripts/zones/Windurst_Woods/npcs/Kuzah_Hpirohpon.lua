-----------------------------------
-- Area: Windurst Woods
-- NPC: Kuzah Hpirohpon
-- Guild Merchant NPC: Clothcrafting Guild
-- !pos -80.068 -3.25 -127.686 241
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
    if (player:sendGuild(5152,6,21,0)) then
        player:showText(npc,KUZAH_HPIROHPON_DIALOG);
    end
    ]]
        player:showText(npc,KUZAH_HPIROHPON_DIALOG);
        local stock =
        {
        2128,   75,      -- Spindle
        2145,   75,      -- Zephyr Thread
        833,    20,      -- Moko Grass
        834,    500,     -- Saruta Cotton
        1845,   200,     -- Red Moko Grass
        819,    150,     -- Linen Thread
        820,    2800,    -- Wool Thread
        2295,   800,     -- Mohbwa Grass
        816,    1500,    -- Silk Thread
        2315,   1400,    -- Karakul Wool
        823,    14500    -- Gold Thread
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

