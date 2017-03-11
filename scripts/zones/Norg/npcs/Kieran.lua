-----------------------------------
-- Area: Norg
--  NPC: Kieran
-- @pos ? ? ? 252
-- Functions as a Voidwatch Officer
-----------------------------------
package.loaded["scripts/zones/Norg/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/zones/Norg/TextIDs");

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
    local zepwellDetour = player:getQuestStatus(OUTLANDS, VW_OP_101_DETOUR_TO_ZEPWELL);
    local litelorVariant = player:getQuestStatus(OUTLANDS, VW_OP_115_LI_TELOR_VARIANT);
    local status = player:getVar("NORG_VW_STATUS");

    if (elshimoList == QUEST_ACCEPTED and player:isMaskFull(player:getVar("VW_OP_054"),3)) then
        player:PrintToPlayer("VW_OP_054_ELSHIMO_LIST not finished!");
        player:PrintToPlayer("Go back to Kazham and talk to Hildegard!");
    end

    if (zepwellDetour == QUEST_ACCEPTED and player:isMaskFull(player:getVar("VW_OP_101"),3)) then
        player:PrintToPlayer("VW_OP_101_DETOUR_TO_ZEPWELL not finished!");
        player:PrintToPlayer("Go back to Rabao and talk to Gushing spring!");
    end

    if (player:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) ~= QUEST_COMPLETED) then
        player:startEvent(249); -- No Voidwatch
    elseif (VWBC == QUEST_AVAILABLE) then
        player:startEvent(250); -- Ask to join
    elseif (VWBC == QUEST_ACCEPTED and elshimoList ~= QUEST_COMPLETED and zepwellDetour ~= QUEST_COMPLETED) then
        player:startEvent(251); -- Started VOIDWATCH_OPS_BORDER_CROSSING
    ------------------------------
    -- Unused for now
    -- player:startEvent(252);
    -- player:startEvent(253);
    ------------------------------
    elseif (VWBC == QUEST_ACCEPTED and elshimoList == QUEST_COMPLETED and zepwellDetour == QUEST_COMPLETED) then
        player:startEvent(254); -- Told to go see Gilgamesh
    elseif (litelorVariant == QUEST_AVAILABLE and VWBC == QUEST_COMPLETED and status == 0) then
        player:startEvent(255); -- Reminder to go see Gilgamesh
    elseif (litelorVariant == QUEST_AVAILABLE and VWBC == QUEST_COMPLETED and status == 1) then
        player:startEvent(258); -- Spoke with Gilgamesh
    elseif (litelorVariant == QUEST_ACCEPTED and player:isMaskFull(player:getVar("ASHEN_STRATUM_II"),3) == true) then
        player:startEvent(260); -- To Sky!
    -- elseif
        -- player:startEvent(261); -- Return from sky, part 1
    else
        player:startEvent(259); -- menu
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
    -- player:PrintToPlayer(string.format("CSID: %u",csid));
    -- player:PrintToPlayer(string.format("RESULT: %u",option));
    if (csid == 250 and option == 1) then
        player:addQuest(OUTLANDS, VOIDWATCH_OPS_BORDER_CROSSING);
        player:addKeyItem(ASHEN_STRATUM_ABYSSITE);
        player:messageSpecial(KEYITEM_OBTAINED, ASHEN_STRATUM_ABYSSITE);
    elseif (csid == 254) then
        player:completeQuest(OUTLANDS, VOIDWATCH_OPS_BORDER_CROSSING);
    elseif (csid == 258) then
        player:addKeyItem(ASHEN_STRATUM_ABYSSITE_II);
        player:addQuest(OUTLANDS, VW_OP_115_LI_TELOR_VARIANT);
        player:delKeyItem(ASHEN_STRATUM_ABYSSITE);
        player:messageSpecial(KEYITEM_OBTAINED, ASHEN_STRATUM_ABYSSITE_II);
    elseif (csid == 259) then
        if (player:getVar("VOIDSTONE_TIMER") < os.time()) then
            player:addCurrency("voidstones", 1);
            player:addKeyItem(VOIDSTONE1); -- so morons stop showing us their KI screenshots..
            player:setVar("VOIDSTONE_TIMER", os.time()+72000);
            -- 20 hours till next voidstone. Slightly less than 1 day,
            -- so that player can do VW once a day at aprox same time of day.
            player:messageSpecial(KEYITEM_OBTAINED, VOIDSTONE1);
        else
            player:SpoofMsg("Voidstones are issued once per Earth day.");
        end
    elseif (csid == 260) then
        player:addKeyItem(ASHEN_STRATUM_ABYSSITE_III);
        player:delKeyItem(ASHEN_STRATUM_ABYSSITE_II);
        player:completeQuest(OUTLANDS, VW_OP_115_LI_TELOR_VARIANT);
        player:addQuest(OUTLANDS, SKYWARD_HO_VOIDWATCHER);
        player:messageSpecial(KEYITEM_OBTAINED, ASHEN_STRATUM_ABYSSITE_III);
    end
end;