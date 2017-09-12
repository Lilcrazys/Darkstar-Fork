-----------------------------------
-- Area: Sauromugue Champaign [S]
--  NPC: Bulwark Gate
-- !pos -445 0 342
-- Quest NPC
-----------------------------------
package.loaded["scripts/zones/Sauromugue_Champaign_[S]/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/campaign");
require("scripts/zones/Sauromugue_Champaign_[S]/TextIDs");
require("scripts/globals/titles");
require("scripts/globals/quests");
require("scripts/globals/settings");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (player:getQuestStatus(CRYSTAL_WAR, KNOT_QUITE_THERE) == QUEST_ACCEPTED and player:getVar("KnotQuiteThere") == 1) then
        if (trade:hasItemQty(2562,1) == true and trade:getGil() == 0 and trade:getItemCount() == 1) then
            player:startEvent(0x006A);
        end
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:getQuestStatus(CRYSTAL_WAR, KNOT_QUITE_THERE) == QUEST_ACCEPTED) then
        if (player:getVar("KnotQuiteThere") == 0) then
            player:startEvent(0x0069);
        end
--------------------------------------
    -- Begin VW stuff
    elseif (player:hasKeyItem(VOIDWATCH_ALARUM)) then
        if (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED
        and player:getQuestStatus(CRYSTAL_WAR, NO_REST_FOR_THE_WEARY) ~= QUEST_COMPLETED
        and player:getVar("BattleNewFrontGil") == 0) then
            player:startEvent(21);
        elseif (player:getQuestStatus(CRYSTAL_WAR, NO_REST_FOR_THE_WEARY) == QUEST_ACCEPTED
        and player:getVar("BattleNewFrontGil") == 1) then
            player:startEvent(22);
        -- elseif
            -- player:startEvent(27);
        -- elseif
            -- player:startEvent(28);
        -- elseif
            -- player:startEvent(30);
        -- End VW stuffs
        end
--------------------------------------
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
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID:",csid);
    -- printf("RESULT:",option);
    if (csid == 0x0069) then
        player:setVar("KnotQuiteThere",1);
    elseif (csid == 0x006A) then
        player:tradeComplete();
        player:setVar("KnotQuiteThere",2);
--------------------------------------
    -- Begin VW stuff
    elseif (csid == 21) then
        -- Don't delete the ALARUM KI on this one in case player waited to do the CS
        player:setVar("BattleNewFrontGil", 1);
        player:addGil(30000 * GIL_RATE);
        player:messageSpecial(GIL_OBTAINED, 30000 * GIL_RATE);
    elseif (csid == 22) then
        player:delKeyItem(WHITE_STRATUM_ABYSSITE_V);
        player:addKeyItem(WHITE_STRATUM_ABYSSITE_VI);
        player:setVar("BattleNewFrontGil", 0);
        player:completeQuest(CRYSTAL_WAR, NO_REST_FOR_THE_WEARY);
        player:addQuest(CRYSTAL_WAR, A_WORLD_IN_FLUX);
        player:delKeyItem(VOIDWATCH_ALARUM);
        player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_VI);
    -- elseif (csid == 27) then
    -- elseif (csid == 28) then
    -- elseif (csid == 39) then
    -- End VW stuffs
--------------------------------------
    end
end;