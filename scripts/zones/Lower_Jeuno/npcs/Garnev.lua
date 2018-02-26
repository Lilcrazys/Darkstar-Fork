-----------------------------------
-- Area: Lower Jeuno
--  NPC: Garnev
-- Starts and Finishes Quest: Deal with Tenshodo
-- @zone 245
-- !pos 30 4 -36
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
package.loaded["scripts/globals/settings"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Lower_Jeuno/TextIDs");
require("scripts/globals/msg");
-----------------------------------

function onTrade(player,npc,trade)
    if (player:getQuestStatus(JEUNO,DEAL_WITH_TENSHODO) == QUEST_ACCEPTED and trade:hasItemQty(554,1) == true and trade:getItemCount() == 1) then
        player:startEvent(166); -- Ending quest
    ------------------------
    -- Begin Custom
    elseif (TRAVEL_SKIP >= 1 and player:getLocalVar("BRIBED_GARVEV") == 0) then
        if (trade:getGil() >= TRAVEL_SKIP and trade:getItemCount() == 1) then
            player:PrintToPlayer(string.format("eye's the %d gil.. ", TRAVEL_SKIP), chatType.EMOTION, npc:getName());
            player:PrintToPlayer("Alright, I'll pretend I don't see you boarding the secret express freight to Norg.. ", chatType.SAY, npc:getName());
            player:PrintToPlayer("Hurry up and go before someone notices. ", chatType.SAY, npc:getName());
            player:delGil(TRAVEL_SKIP);
            player:setLocalVar("BRIBED_GARVEV");
        end
    -- End custom
    ------------------------
    end
end;

function onTrigger(player,npc)
    if (player:getQuestStatus(JEUNO,A_CLOCK_MOST_DELICATE) == QUEST_ACCEPTED and player:getQuestStatus(JEUNO,DEAL_WITH_TENSHODO) == QUEST_AVAILABLE) then
        if (player:getFameLevel(NORG) >= 2) then
            player:startEvent(167); -- Start quest
        else
            player:startEvent(168); -- dialog without correct tenshodo/norg fame
        end
    else
        player:startEvent(207); -- Standard dialog
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (csid == 167) then
        player:addQuest(JEUNO,DEAL_WITH_TENSHODO);
    elseif (csid == 166) then
        player:addTitle(TRADER_OF_RENOWN);
        player:addKeyItem(CLOCK_TOWER_OIL);
        player:messageSpecial(KEYITEM_OBTAINED,CLOCK_TOWER_OIL);
        player:addFame(JEUNO,30);
        player:tradeComplete(trade);
        player:completeQuest(JEUNO,DEAL_WITH_TENSHODO);
    end
end;

