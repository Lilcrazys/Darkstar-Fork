-----------------------------------
-- Area: Rabao
--  NPC: Gushing Spring
-- @pos 3 8 32 247
-- Functions as a Voidwatch Officer
-----------------------------------
package.loaded["scripts/zones/Kazham/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/zones/Kazham/TextIDs");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local VWBC = player:getQuestStatus(OUTLANDS, VOIDWATCH_OPS_BORDER_CROSSING);
    local zepwellDetour = player:getQuestStatus(OUTLANDS, VW_OP_101_DETOUR_TO_ZEPWELL);
    local bitMaskFull = player:isMaskFull(player:getVar("VW_OP_101"),3);

    if (VWBC == QUEST_AVAILABLE) then
        player:startEvent(12); -- Go away.
    elseif (zepwellDetour == QUEST_AVAILABLE) then
        player:startEvent(13); -- Flag VW_OP_101_DETOUR_TO_ZEPWELL.
    elseif (bitMaskFull == true and VWBC ~= QUEST_COMPLETED) then
        player:startEvent(15) -- VW_OP_101_DETOUR_TO_ZEPWELL completion.
    else
        player:startEvent(14); -- Effing menu.
        player:PrintToPlayer("This menu doesn't work yet.");
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
    if (csid == 13) then
        player:addQuest(OUTLANDS, VW_OP_101_DETOUR_TO_ZEPWELL);
    elseif (csid == 14) then
        if (player:getVar("VOIDSTONE_TIMER") < os.time()) then
            player:addCurrency("voidstones", 1);
            player:setVar("VOIDSTONE_TIMER", os.time()+72000); -- 20 hours till next voidstone. Slightly less than 1 day, so that player can do VW once a day at aprox same time of day.
            player:messageSpecial(KEYITEM_OBTAINED,VOIDSTONE1);
        else
            player:SpoofChatPlayer("Voidstones are issued once per Earth day.");
        end
    elseif (csid == 15) then
        player:completeQuest(OUTLANDS, VW_OP_101_DETOUR_TO_ZEPWELL);
        player:setVar("VW_OP_101", 0)
    end
end;