-----------------------------------
-- Area: Wajaom_Woodlands
-- NPC: Camile
-- Functions as a Voidwatch Officer
-----------------------------------
package.loaded["scripts/zones/Wajaom_Woodlands/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/zones/Wajaom_Woodlands/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local assult = player:getQuestStatus(AHT_URHGAN, VW_OP_050_AHT_URGAN_ASSAULT);
    local skirmish = player:getQuestStatus(AHT_URHGAN, VW_OP_068_SUBTERRAINEAN_SKIRMISH);
    local bibiki = player:getQuestStatus(OTHER_AREAS, VW_OP_004_BIBIKI_BOMBARDMENT);
    local status = player:getVar("TOAU_VW_STATUS");


    if (skirmish == QUEST_COMPLETED and status == 0) then
        player:addKeyItem(AMBER_STRATUM_ABYSSITE);
        player:messageSpecial(KEYITEM_OBTAINED, AMBER_STRATUM_ABYSSITE);
    elseif (assult == QUEST_COMPLETED and status == 1) then
        player:addKeyItem(AMBER_STRATUM_ABYSSITE_II);
        player:addQuest(AHT_URHGAN, VW_OP_068_SUBTERRAINEAN_SKIRMISH);
        player:messageSpecial(KEYITEM_OBTAINED, AMBER_STRATUM_ABYSSITE_II);
        player:setVar("TOAU_VW_STATUS",0);
    elseif (bibiki == QUEST_COMPLETED) then
        if (status == 0) then
            player:addQuest(AHT_URHGAN, VW_OP_050_AHT_URGAN_ASSAULT);
            player:addKeyItem(AMBER_STRATUM_ABYSSITE);
            player:messageSpecial(KEYITEM_OBTAINED, AMBER_STRATUM_ABYSSITE);
            player:setVar("TOAU_VW_STATUS",1);
        end
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

