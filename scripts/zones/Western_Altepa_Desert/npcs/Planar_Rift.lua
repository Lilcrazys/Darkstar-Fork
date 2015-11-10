-----------------------------------
-- Area: Western_Altepa_Desert
--  NPC: Planar Rift
-----------------------------------
package.loaded["scripts/zones/Western_Altepa_Desert/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/zones/Western_Altepa_Desert/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local QUEST = player:getQuestStatus(OUTLANDS, VW_OP_101_DETOUR_TO_ZEPWELL);
    local STRATUM = player:hasKeyItem(ASHEN_STRATUM_ABYSSITE);
    local mobID = 17289658, 17289662;
    local mobNotUp = false
    local correctNPC = false

    if (GetMobAction(mobID) == ACTION_NONE or GetMobAction(mobID) == ACTION_SPAWN) then
        mobNotUp = true;
    end

    if (npc:getXPos(554) and npc:getYPos(0.699) and npc:getZPos(260)) then
        correctNPC = true;
    end

    if (QUEST ~= QUEST_AVAILABLE and STRATUM == true and mobNotUp == true and correctNPC == true) then
        if (player:getCurrency("voidstones") > 0) then
            player:startEvent(6000, 7);
        else
            player:startEvent(6000, 2);
        end
    else
        player:startEvent(6000);
    end
end;


-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID2: %u",csid);
    -- printf("RESULT2: %u",option);
end;


-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (csid == 6000 and option == 1) then
        player:delCurrency("voidstones", 1);
        SpawnMob(17289658):updateClaim(player);
        SpawnMob(17289659):updateClaim(player);
        SpawnMob(17289660):updateClaim(player);
        SpawnMob(17289661):updateClaim(player);
        SpawnMob(17289662):updateClaim(player);
    end
end;