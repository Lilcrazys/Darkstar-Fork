-----------------------------------
-- Area: Kazham
--  NPC: Hildegard
-- @pos -65 -10 -82.5 250
-- Functions as a Voidwatch Officer
-----------------------------------
package.loaded["scripts/zones/Kazham/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/zones/Kazham/TextIDs");
require("scripts/globals/msg");

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
    local elshimoList = player:getQuestStatus(OUTLANDS, VW_OP_054_ELSHIMO_LIST);
    local bitMaskFull = player:isMaskFull(player:getVar("VW_OP_054"),3);

    if (elshimoList == QUEST_ACCEPTED and bitMaskFull == false) then
        player:PrintToPlayer(string.format("Quest variable: %u and needs to be 7!", player:getVar("VW_OP_054")));
    end

    if (VWBC == QUEST_AVAILABLE) then
        player:startEvent(312); -- Go away.
    elseif (elshimoList == QUEST_AVAILABLE) then
        player:startEvent(313); -- Flag VW_OP_054_ELSHIMO_LIST.
    elseif (bitMaskFull == true and VWBC ~= QUEST_COMPLETED) then
        player:startEvent(315) -- VW_OP_054_ELSHIMO_LIST completion.
    else
        player:startEvent(314); -- Effing menu.
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
    if (csid == 313) then
        player:addQuest(OUTLANDS, VW_OP_054_ELSHIMO_LIST);
    elseif (csid == 314) then
        if (player:getVar("VOIDSTONE_TIMER") < os.time()) then
            player:addCurrency("voidstones", 1);
            player:addKeyItem(VOIDSTONE1); -- so morons stop showing us their KI screenshots..
            player:setVar("VOIDSTONE_TIMER", os.time()+72000);
            -- 20 hours till next voidstone. Slightly less than 1 day,
            -- so that player can do VW once a day at aprox same time of day.
            player:messageSpecial(KEYITEM_OBTAINED, VOIDSTONE1);
            player:PrintToPlayer(string.format("You now posses %d Voidstones in total. ", player:getCurrency("voidstones")), chatType.SYSTEM_3);
        else
            player:PrintToPlayer("Voidstones are issued once per Earth day. ", chatType.SYSTEM_3);
            player:PrintToPlayer(string.format("You now posses %d Voidstones in total. ", player:getCurrency("voidstones")), chatType.SYSTEM_3);
        end
    elseif (csid == 315) then
        player:completeQuest(OUTLANDS, VW_OP_054_ELSHIMO_LIST);
        player:setVar("VW_OP_054", 0)
    end
end;
