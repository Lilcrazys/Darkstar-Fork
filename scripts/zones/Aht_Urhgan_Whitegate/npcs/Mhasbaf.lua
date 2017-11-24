-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Mhasbaf
--  Type: Standard NPC
-- !pos 54.701 -6.999 11.387 50
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
    local artsAndCrafts_Mhasbaf = player:getVar("QUEST_ARTSANDCRAFTS_MHASBAF");

    if (artsAndCrafts == 1 and artsAndCrafts_Mhasbaf ~= 1) then
        player:startEvent(0x01FE);
    else
        player:startEvent(542);
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
    if (csid == 0x01FE) then
        player:setVar("QUEST_ARTSANDCRAFTS_MHASBAF",1);
    end
end;

