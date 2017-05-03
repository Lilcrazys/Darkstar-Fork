-----------------------------------
-- Area: Tavnazian_Safehold
--  NPC: Owain
-- Functions as a Voidwatch Officer
-----------------------------------
package.loaded["scripts/zones/Tavnazian_Safehold/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Tavnazian_Safehold/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");
require("scripts/globals/spoofchat"); -- temp

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local vwStatus = player:getVar("VW_STATUS[Tavnazia]");
    local skyward = player:getQuestStatus(OUTLANDS, SKYWARD_HO_VOIDWATCHER);
    local terrors = player:getQuestStatus(OTHER_AREAS, VW_OP_026_TAVNAZIAN_TERRORS);
    local bombardment = player:getQuestStatus(OTHER_AREAS, VW_OP_004_BIBIKI_BOMBARDMENT);

    if (skyward ~= QUEST_COMPLETED) then
        player:startEvent(625); -- Get lost
    elseif (skyward == QUEST_COMPLETED and terrors == QUEST_AVAILABLE) then
        player:startEvent(628);
    elseif (terrors == QUEST_COMPLETED and bombardment == QUEST_ACCEPTED and vwStatus < 2) then
        player:startEvent(629); -- optional CS event, can be skipped to go direct to Bismarck
    elseif (terrors == QUEST_COMPLETED and bombardment == QUEST_ACCEPTED and vwStatus > 2) then
        player:startEvent(630);
    else
        player:startEvent(626); -- Effing menu.
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
    if (csid == 630) then
        player:setVar("VW_STATUS[Tavnazia]", 0);
        player:completeQuest(OTHER_AREAS, VW_OP_004_BIBIKI_BOMBARDMENT);
    elseif (csid == 629) then
        player:setVar("VW_STATUS[Tavnazia]", 2);
    elseif (csid == 628 and option == 1) then
        player:setVar("VW_STATUS[Tavnazia]", 1);
        player:addQuest(OTHER_AREAS, VW_OP_026_TAVNAZIAN_TERRORS);
        player:addKeyItem(HYACINTH_STRATUM_ABYSSITE);
        player:messageSpecial(KEYITEM_OBTAINED, HYACINTH_STRATUM_ABYSSITE);
    elseif (csid == 626) then
        if (player:getVar("VOIDSTONE_TIMER") < os.time()) then
            player:addCurrency("voidstones", 1);
            player:addKeyItem(VOIDSTONE1); -- so morons stop showing us their KI screenshots..
            player:setVar("VOIDSTONE_TIMER", os.time()+72000);
            -- 20 hours till next voidstone. Slightly less than 1 day,
            -- so that player can do VW once a day at aprox same time of day.
            player:messageSpecial(KEYITEM_OBTAINED, VOIDSTONE1);
            player:SpoofMsg(string.format("You now posses %d Voidstones in total. ", player:getCurrency("voidstones")), nil, MESSAGE_ECHO, nil);
        else
            player:SpoofMsg("Voidstones are issued once per Earth day. ", nil, MESSAGE_ECHO, nil);
            player:SpoofMsg(string.format("You now posses %d Voidstones in total. ", player:getCurrency("voidstones")), nil, MESSAGE_ECHO, nil);
        end
    end
end;
