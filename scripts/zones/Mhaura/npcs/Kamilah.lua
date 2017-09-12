-----------------------------------
-- Area: Mhaura
-- NPC: Kamilah
-- Guild Merchant NPC: Blacksmithing Guild
-- !pos -64.302 -16.000 35.261 249
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
    if (player:sendGuild(532,8,23,2)) then
        player:showText(npc,SMITHING_GUILD);
    end
    ]]
        player:showText(npc,SMITHING_GUILD);
        local stock =
        {
            640,    9,      -- Copper Ore
            641,    30,     -- Tin Ore
            643,    675,    -- Iron Ore
            652,    3517,   -- Steel Ingot
            660,    81      -- Bronze Sheet
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