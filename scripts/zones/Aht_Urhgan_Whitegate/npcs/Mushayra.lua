-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Mushayra
--  Type: Standard NPC
-- !pos -111.551 -6.999 -61.720 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/quests");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local artsAndCrafts = player:getQuestStatus(AHT_URHGAN,ARTS_AND_CRAFTS);

    if (artsAndCrafts == QUEST_ACCEPTED) then
        player:showText(npc,HADAHDA_DIALOG + 16);
    else
        player:startEvent(519);
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
end;

