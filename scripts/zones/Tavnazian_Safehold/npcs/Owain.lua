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
        player:addQuest(OUTLANDS, VW_OP_026_TAVNAZIAN_TERRORS);
        player:addKeyItem(HYACINTH_STRATUM_ABYSSITE);
        player:messageSpecial(KEYITEM_OBTAINED, HYACINTH_STRATUM_ABYSSITE);
    elseif (terrors == QUEST_COMPLETED) then
        player:addKeyItem(HYACINTH_STRATUM_ABYSSITE_II);
        player:addQuest(OUTLANDS, VW_OP_004_BIBIKI_BOMBARDMENT);
        player:messageSpecial(KEYITEM_OBTAINED, HYACINTH_STRATUM_ABYSSITE_II);
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

