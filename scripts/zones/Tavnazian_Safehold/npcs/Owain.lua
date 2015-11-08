-----------------------------------
-- Area: Tavnazian_Safehold
-- NPC: Owain
-- Functions as a Voidwatch Officer
-----------------------------------
package.loaded["scripts/zones/Tavnazian_Safehold/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/zones/Tavnazian_Safehold/TextIDs");  

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local skyward = player:getQuestStatus(OUTLANDS, SKYWARD_HO_VOIDWATCHER);
    local terrors = player:getQuestStatus(OUTLANDS, VW_OP_026_TAVNAZIAN_TERRORS);
    local bibiki = player:getQuestStatus(OUTLANDS, VW_OP_004_BIBIKI_BOMBARDMENT);    

    if (skyward == QUEST_COMPLETED) or (player:getMaskBit(player:getVar("ZILART_VW"), 3) == true) then
        player:startEvent(001); -- start VW_OP_026_TAVNAZIAN_TERRORS
    elseif (terrors == QUEST_COMPLETED) then
        player:startEvent(002); -- start VW_OP_004_BIBIKI_BOMBARDMENT
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
    if (csid == 001 and option == 1) then
        player:addQuest(OUTLANDS, VW_OP_026_TAVNAZIAN_TERRORS);
        player:addKeyItem(HYACINTH_STRATUM_ABYSSITE);
        player:messageSpecial(KEYITEM_OBTAINED, HYACINTH_STRATUM_ABYSSITE);
    elseif (csid == 002) then
        player:addKeyItem(HYACINTH_STRATUM_ABYSSITE_II);
        player:addQuest(OUTLANDS, VW_OP_004_BIBIKI_BOMBARDMENT);
        player:messageSpecial(KEYITEM_OBTAINED, HYACINTH_STRATUM_ABYSSITE_II);
    elseif (csid == 259) then
        if (player:getVar("VOIDSTONE_TIMER") < os.time()) then
            player:addCurrency("voidstones", 1);
            player:addKeyItem(VOIDSTONE1); -- so morons stop showing us their KI screenshots..
            player:setVar("VOIDSTONE_TIMER", os.time()+72000);
            -- 20 hours till next voidstone. Slightly less than 1 day,
            -- so that player can do VW once a day at aprox same time of day.
            player:messageSpecial(KEYITEM_OBTAINED, VOIDSTONE1);
        else
            player:SpoofChatPlayer("Voidstones are issued once per Earth day.");
        end
    end
end;