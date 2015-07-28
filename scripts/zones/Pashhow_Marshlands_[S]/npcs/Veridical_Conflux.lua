-----------------------------------
-- Area: Pashhow Marshlands [S]
--  NPC: Veridical Conflux
-----------------------------------
package.loaded["scripts/zones/Pashhow_Marshlands_[S]/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/quests");
require("scripts/zones/Pashhow_Marshlands_[S]/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_AVAILABLE) then
        -- For stage IV Crimson, Indigo, and Jade, we set 1 bit each
        -- for VW_3_NATIONS instead of for a var named for the KIs.
        if (player:isMaskFull(player:getVar("VW_3_NATIONS"),3) == true) then
            player:startEvent(7);
        end
    elseif (player:getQuestStatus(CRYSTAL_WAR, A_CAIT_CALLS) == QUEST_ACCEPTED) then
        player:startEvent(9);
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
    if (csid == 7) then
        player:addQuest(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID); -- Should actually be at end of cs 8...
        player:setVar("VW_3_NATIONS", 0); -- Should actually be at end of cs 8...
        player:startEvent(8);
    elseif (csid == 8) then
        -- This damned thing won't exec any code here, so temp moved to end of cs 7
        -- until dsp fixes their bugs with daisy-chained cs events..
    elseif (csid == 9) then
        player:completeQuest(CRYSTAL_WAR, A_CAIT_CALLS); -- Should actually be at end of cs 10...
        player:addQuest(CRYSTAL_WAR, THE_TRUTH_IS_OUT_THERE); -- Should actually be at end of cs 10...
        player:startEvent(10);
    elseif (csid == 10) then
        -- This damned thing won't exec any code here, so temp moved to end of cs 9
        -- until dsp fixes their bugs with daisy-chained cs events..
    elseif (csid == 12) then
        -- player:addQuest(CRYSTAL_WAR, ???);
    end
end;