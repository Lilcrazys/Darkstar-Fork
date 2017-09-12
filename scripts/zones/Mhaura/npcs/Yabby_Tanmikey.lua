-----------------------------------
-- Area: Mhaura
-- NPC: Yabby Tanmikey
--  Guild Merchant NPC: Goldsmithing Guild
-- !pos -36.459 -16.000 76.840 249
-----------------------------------
package.loaded["scripts/zones/Mhaura/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Mhaura/TextIDs");

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
    if (player:sendGuild(528,8,23,4)) then
        player:showText(npc,GOLDSMITHING_GUILD);
    end
    ]]
        player:showText(npc, GOLDSMITHING_GUILD);
        local stock =
        {
            640,    9,      -- Copper Ore
            736,    315,    -- Silver Ore
            769,    1288,   -- Red Rock
            770,    1288,   -- Blue Rock
            771,    1288,   -- Yellow Rock
            772,    1288,   -- Green Rock
            773,    1288,   -- Translucent Rock
            774,    1288,   -- Purple Rock
            775,    1288,   -- Black Rock
            776,    1288,   -- White Rock
            2143,   75,     -- Mandrel
            2144,   75      -- Workshop Anvil
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
