-----------------------------------
-- Area: Lower Jeuno
-- NPC:  Garnev
-- Starts and Finishes Quest: Deal with Tenshodo
-- @zone 245
-- @pos 30 4 -36
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
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (player:getQuestStatus(JEUNO,DEAL_WITH_TENSHODO) == QUEST_ACCEPTED and trade:hasItemQty(554,1) == true and trade:getItemCount() == 1) then
        player:startEvent(0x00a6); -- Ending quest
    ------------------------
    -- Begin Custom
    elseif (TRAVEL_SKIP >= 1 and player:getLocalVar("BRIBED_GARVEV") == 0) then
        if (trade:getGil() >= TRAVEL_SKIP and trade:getItemCount() == 1) then
            player:SpoofMsg(string.format("eye's the %d gil.. ", TRAVEL_SKIP), npc, MESSAGE_EMOTION, nil);
            player:SpoofMsg("Alright, I'll pretend I don't see you boarding the secret express freight to Norg.. ", npc, MESSAGE_SAY, nil);
            player:SpoofMsg("Hurry up and go before someone notices. ", npc, MESSAGE_SAY, nil);
            player:delGil(TRAVEL_SKIP);
            player:setLocalVar("BRIBED_GARVEV");
        end
    -- End custom
    ------------------------
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:getQuestStatus(JEUNO,A_CLOCK_MOST_DELICATE) == QUEST_ACCEPTED and player:getQuestStatus(JEUNO,DEAL_WITH_TENSHODO) == QUEST_AVAILABLE) then
        if (player:getFameLevel(NORG) >= 2) then
            player:startEvent(0x00a7); -- Start quest
        else
            player:startEvent(0x00a8); -- dialog without correct tenshodo/norg fame
        end
    else
        player:startEvent(0x00CF); -- Standard dialog
    end
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
    if (csid == 0x00a7) then
        player:addQuest(JEUNO,DEAL_WITH_TENSHODO);
    elseif (csid == 0x00a6) then
        player:addTitle(TRADER_OF_RENOWN);
        player:addKeyItem(CLOCK_TOWER_OIL);
        player:messageSpecial(KEYITEM_OBTAINED,CLOCK_TOWER_OIL);
        player:addFame(JEUNO,30);
        player:tradeComplete(trade);
        player:completeQuest(JEUNO,DEAL_WITH_TENSHODO);
    end
end;

