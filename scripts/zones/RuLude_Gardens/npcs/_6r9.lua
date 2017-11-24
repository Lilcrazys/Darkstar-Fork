-----------------------------------
-- Area: Ru'Lude Gardens
-- NPC:  Audience Chamber
-- Involved in Mission: Magicite
-- !pos 0 -5 66 243
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/missions");
require("scripts/zones/RuLude_Gardens/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

    CurrentMission = player:getCurrentMission(player:getNation());
    if ( player:getCurrentMission(COP) ==MORE_QUESTIONS_THAN_ANSWERS and player:getVar("PromathiaStatus")==1) then
        player:startEvent(10050);
    elseif (player:hasKeyItem(ARCHDUCAL_AUDIENCE_PERMIT) and CurrentMission == 255 and player:getVar("MissionStatus") == 1) then
        player:startEvent(128);
    elseif (player:hasKeyItem(MAGICITE_OPTISTONE) and player:hasKeyItem(MAGICITE_AURASTONE) and player:hasKeyItem(MAGICITE_ORASTONE)) then
        if (player:hasKeyItem(AIRSHIP_PASS)) then
            player:startEvent(60,1);
        else
            player:startEvent(60);
        end
--------------------------------------
    -- Begin VW stuff
    elseif (player:hasKeyItem(VOIDWATCH_ALARUM)) then
        if (player:getQuestStatus(CRYSTAL_WAR, DRAFTED_BY_THE_DUCHY) == QUEST_ACCEPTED) then
            if (player:getRank() > 5) then
                player:startEvent(10188,0,0,0,0,0,0,0,1);
            else -- The diff is which NPC you see in CS..Rank 6 starts Zilart, so shouldn't see the Duke.
                player:startEvent(10188);
            end
        elseif (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_ACCEPTED) then
            if (player:getRank() > 5) then
                player:startEvent(10189,0,0,0,0,0,0,0,1);
            else
                player:startEvent(10189);
            end
        elseif (player:getQuestStatus(CRYSTAL_WAR, VOIDWALKER_OP_126) == QUEST_ACCEPTED) then
            if (player:getRank() > 5) then
                player:startEvent(10190,0,0,0,0,0,0,0,1);
            else
                player:startEvent(10190);
            end
        elseif (player:getQuestStatus(CRYSTAL_WAR, REDRAFTED_BY_THE_DUCHY) == QUEST_ACCEPTED) then
            if (player:getRank() > 5) then
                player:startEvent(10199,0,0,0,0,0,0,0,1);
            else
                player:startEvent(10199);
            end
        elseif (player:getQuestStatus(CRYSTAL_WAR, A_NEW_MENACE) == QUEST_ACCEPTED) then
            if (player:getRank() > 5) then
                player:startEvent(10200,0,0,0,0,0,0,0,1);
            else
                player:startEvent(10200);
            end
        end
    -- End VW stuff
--------------------------------------
    elseif (player:hasKeyItem(ARCHDUCAL_AUDIENCE_PERMIT)) then
        player:messageSpecial(SOVEREIGN_WITHOUT_AN_APPOINTMENT);
    else
        player:startEvent(138); -- you don't have a permit
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

    if (csid == 128) then
        player:setVar("MissionStatus",2);
        player:addMission(player:getNation(),13);
        player:addKeyItem(LETTERS_TO_ALDO);
        player:messageSpecial(KEYITEM_OBTAINED,LETTERS_TO_ALDO);
    elseif (csid == 60) then
        player:delKeyItem(MAGICITE_OPTISTONE);
        player:delKeyItem(MAGICITE_AURASTONE);
        player:delKeyItem(MAGICITE_ORASTONE);
        if (player:hasKeyItem(AIRSHIP_PASS)) then
            player:addGil(GIL_RATE*20000);
            player:messageSpecial(GIL_OBTAINED,GIL_RATE*20000);
            player:addTitle(CONQUEROR_OF_FATE);
        else
            player:addKeyItem(AIRSHIP_PASS);
            player:messageSpecial(KEYITEM_OBTAINED,AIRSHIP_PASS);
            player:addTitle(HAVE_WINGS_WILL_FLY);
        end
        player:setVar("MissionStatus",6); -- all that's left is to go back to the embassy
    elseif (csid == 10050) then
        player:setVar("PromathiaStatus",2);
--------------------------------------
    -- Begin VW stuff
    elseif (csid == 10188) then
        player:addKeyItem(WHITE_STRATUM_ABYSSITE);
        player:addKeyItem(VOIDWATCHERS_EMBLEM_JEUNO);
        player:completeQuest(CRYSTAL_WAR, DRAFTED_BY_THE_DUCHY);
        player:addQuest(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT);
        player:delKeyItem(VOIDWATCH_ALARUM);
        player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCHERS_EMBLEM_JEUNO);
    elseif (csid == 10189) then
        player:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
        player:addKeyItem(VOIDWATCHERS_EMBLEM_QUFIM);
        player:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
        player:completeQuest(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT);
        player:addQuest(CRYSTAL_WAR, VOIDWALKER_OP_126);
        player:delKeyItem(VOIDWATCH_ALARUM);
        player:setVar("WHITE_STRATUM_II", 0);
        player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_III);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCHERS_EMBLEM_QUFIM);
    elseif (csid == 10190) then
        player:completeQuest(CRYSTAL_WAR, VOIDWALKER_OP_126);
        player:addQuest(CRYSTAL_WAR, A_CAIT_CALLS);
        player:delKeyItem(VOIDWATCH_ALARUM);
        player:addGil(50000 * GIL_RATE);
        player:messageSpecial(GIL_OBTAINED, 50000 * GIL_RATE);
    elseif (csid == 10199) then
        player:addKeyItem(WHITE_STRATUM_ABYSSITE_IV);
        player:addKeyItem(TRICOLOR_VOIDWATCHERS_EMBLEM);
        player:delKeyItem(WHITE_STRATUM_ABYSSITE_III);
        player:completeQuest(CRYSTAL_WAR, REDRAFTED_BY_THE_DUCHY);
        player:addQuest(CRYSTAL_WAR, A_NEW_MENACE);
        player:delKeyItem(VOIDWATCH_ALARUM);
        player:setVar("WHITE_STRATUM_III", 0);
        player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_IV);
        player:messageSpecial(KEYITEM_OBTAINED, TRICOLOR_VOIDWATCHERS_EMBLEM);
    elseif (csid == 10200) then
        player:completeQuest(CRYSTAL_WAR, A_NEW_MENACE);
        player:addQuest(JEUNO, VW_OP_115_VALKURM_DUSTER);
        player:addQuest(JEUNO, VW_OP_118_BUBURIMU_SQUALL);
        player:addQuest(CRYSTAL_WAR, NO_REST_FOR_THE_WEARY);
        player:delKeyItem(VOIDWATCH_ALARUM);
        player:addGil(50000 * GIL_RATE);
        player:messageSpecial(GIL_OBTAINED, 50000 * GIL_RATE);
    -- End VW stuff
--------------------------------------
    end

end;