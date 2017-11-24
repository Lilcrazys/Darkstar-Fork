-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Mathlouq
--  Type: Standard NPC
-- !pos -92.892 -7 129.277 50
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
    local artsAndCrafts_Mathloug = player:getVar("QUEST_ARTSANDCRAFTS_MATHLOUQ");

    if (artsAndCrafts == 1 and artsAndCrafts_Mathloug ~= 1) then
        player:startEvent(0x01FF);
    else
        player:startEvent(543);
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
    if (csid == 0x01FF) then
        player:setVar("QUEST_ARTSANDCRAFTS_MATHLOUQ",1);
    end
end;

