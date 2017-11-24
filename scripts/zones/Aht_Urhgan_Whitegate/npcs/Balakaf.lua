-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Balakaf
--  Type: Standard NPC
-- !pos 25.505 -6.999 126.478 50
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
    local artsAndCrafts_Balakaf = player:getVar("QUEST_ARTSANDCRAFTS_BALAKAF");

    if (artsAndCrafts == QUEST_ACCEPTED and artsAndCrafts_Balakaf ~= 1) then
        player:startEvent(515);
    else
        player:startEvent(0x0221);
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
    if (csid == 0x0203) then
        player:setVar("QUEST_ARTSANDCRAFTS_BALAKAF",1);
    end
end;

