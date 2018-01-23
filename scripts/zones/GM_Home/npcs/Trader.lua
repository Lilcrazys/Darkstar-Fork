-----------------------------------
-- Area: GM Home
--  NPC: Trader
-- @pos 5 0 180 210
-- Type: Debug NPC for testing trades.
-----------------------------------
package.loaded["scripts/zones/GM_Home/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/GM_Home/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
    if (trade:hasItemQty(4096,1) and trade:getItemCount() == 1) then
        -- player:setLocalVar("xTal", 4096);
        player:startEvent(126);
    end
end;

function onTrigger(player,npc)
    player:startEvent(127);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    player:PrintToPlayer(string.format("[onEventUpdate] CSID: %u",csid));
    player:PrintToPlayer(string.format("[onEventUpdate] RESULT: %u",option));
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    player:PrintToPlayer(string.format("[onEventFinish] CSID: %u",csid));
    player:PrintToPlayer(string.format("[onEventFinish] RESULT: %u",option));
    -- if (csid == 126) then
    --     player:tradeComplete();
    --     player:addItem(player:getLocalVar("xTal"));
    -- end
end;