-----------------------------------
-- Area: Southern Sandoria
--  NPC: Voidwatch Officer
-----------------------------------
package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Bastok_Markets/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
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
    -- NOTE: Deliberately left out the Walk of Echoes requirement retail has.
    if (player:getMainLvl() < 75) then
        player:SpoofMsg("You must be at least level 75 to participate in Voidwatch. ", npc, chatType.ECHO, nil);
    else
        local VW_SANDORIA_ABYSSITE = {CRIMSON_STRATUM_ABYSSITE,CRIMSON_STRATUM_ABYSSITE_II,CRIMSON_STRATUM_ABYSSITE_III,CRIMSON_STRATUM_ABYSSITE_IV}
        local VW_BASTOK_ABYSSITE = {INDIGO_STRATUM_ABYSSITE,INDIGO_STRATUM_ABYSSITE_II,INDIGO_STRATUM_ABYSSITE_III,INDIGO_STRATUM_ABYSSITE_IV}
        local VW_WINDURST_ABYSSITE = {JADE_STRATUM_ABYSSITE,JADE_STRATUM_ABYSSITE_II,JADE_STRATUM_ABYSSITE_III,JADE_STRATUM_ABYSSITE_IV}
        local STATUS = player:getVar("VW_STATUS");
        -- local VW_OP_SANDORIA = player:getVar("VW_OP_SANDORIA");
        local CRIMSON = false;
        local INDIGO = false;
        local JADE = false;

        for index, value in ipairs(VW_SANDORIA_ABYSSITE) do
            if (player:hasKeyItem(value)) then
                CRIMSON = true;
            end
        end

        for index, value in ipairs(VW_BASTOK_ABYSSITE) do
            if (player:hasKeyItem(value)) then
                INDIGO = true;
            end
        end

        for index, value in ipairs(VW_WINDURST_ABYSSITE) do
            if (player:hasKeyItem(value)) then
                JADE = true;
            end
        end

        if (CRIMSON == false and INDIGO == false and JADE == false and STATUS == 0) then
            player:SpoofMsg("Voidwatch Officer: I am a Voidwatch officer dispatched here to recruit soldiers to repel the Voidwalker threat. ", npc, chatType.SYS_SAY, nil);
            player:SpoofMsg("Voidwatch Officer: I beseech you, friend. Lend your aid to our cause! ", npc, chatType.SYS_SAY, nil);
            player:setVar("VW_STATUS", 1);
        elseif (CRIMSON == false) then
            player:PrintToPlayer("DEBUG: Initial Abyssite check started.");
            if (player:hasKeyItem(ADVENTURERS_CERTIFICATE) == false) then
                player:SpoofMsg("Voidwatch Officer: I'm sorry, but only certified adventurers may participate in Voidwatch Ops. ", npc, chatType.SYS_SAY, nil);
                player:SpoofMsg("Voidwatch Officer: Serve your country well, and your rank is sure to improve. ", npc, chatType.SYS_SAY, nil);
            elseif (player:getCampaignAllegiance() == 0) then
                player:SpoofMsg("Voidwatch Officer: Hmm? I can't seem to find any military record.. ", npc, chatType.SYS_SAY, nil);
                player:SpoofMsg("Voidwatch Officer: I'm sorry, but only those with military affiliation may participate in Voidwatch Ops. ", npc, chatType.SYS_SAY, nil);
            else
                player:SpoofMsg("Voidwatch Officer: Stratum abyssite for each region is needed to battle a Voidwalker at the many planar rifts that have manifested across the land. ", npc, chatType.SYS_SAY, nil);
                player:SpoofMsg("Voidwatch Officer: You will also need a Voidstone to see the beast. Their powers can only be tapped when used in conjunction with a Stratum abyssite. ", npc, chatType.SYS_SAY, nil);
                player:addKeyItem(CRIMSON_STRATUM_ABYSSITE);
                player:messageSpecial(KEYITEM_OBTAINED, CRIMSON_STRATUM_ABYSSITE);
                if (player:getVar("VOIDSTONE_TIMER") < os.time()) then
                    player:addCurrency("voidstones", 1);
                    player:addKeyItem(VOIDSTONE1); -- so morons stop showing us their KI screenshots..
                    player:setVar("VOIDSTONE_TIMER", os.time()+72000);
                    -- 20 hours till next voidstone. Slightly less than 1 day,
                    -- so that player can do VW once a day at aprox same time of day.
                    player:messageSpecial(KEYITEM_OBTAINED, VOIDSTONE1);
                end
                -- Now that we have a KI, we no longer need this var to tell if you have gotten the dialogs preceding that part.
                player:setVar("VW_STATUS", 0);
                -- The same var my be used again during future Voidwatch quests, so its important not to leave it dangling at "1".
            end
        elseif (player:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_ACCEPTED and player:hasKeyItem(VOIDWATCH_ALARUM) == false) then
            player:PrintToPlayer("DEBUG: GUARDIAN_OF_THE_VOID");
            player:startEvent(977);
        elseif (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_ACCEPTED and player:isMaskFull(player:getVar("WHITE_STRATUM_II"),6) == true and player:hasKeyItem(VOIDWATCH_ALARUM) == false) then
            player:PrintToPlayer("DEBUG: BATTLE_ON_A_NEW_FRONT");
            player:startEvent(978);
        elseif (player:getQuestStatus(CRYSTAL_WAR, VOIDWALKER_OP_126) == QUEST_ACCEPTED and player:isMaskFull(player:getVar("WHITE_STRATUM_III"),3) == true and player:hasKeyItem(VOIDWATCH_ALARUM) == false) then
            player:PrintToPlayer("DEBUG: VOIDWALKER_OP_126");
            player:startEvent(979);
        elseif (player:getQuestStatus(CRYSTAL_WAR, THE_TRUTH_IS_OUT_THERE) == QUEST_ACCEPTED and player:hasKeyItem(VOIDWATCH_ALARUM) == false) then
            player:PrintToPlayer("DEBUG: THE_TRUTH_IS_OUT_THERE");
            player:startEvent(981);
        --[[ future use
        elseif
            player:startEvent(982);
        elseif
            player:startEvent(983);
        elseif
            player:startEvent(984);
        elseif
            player:startEvent(985);
        ]]
        else
            if (player:getVar("VOIDSTONE_TIMER") < os.time()) then
                player:PrintToPlayer("DEBUG: VOIDSTONE CHECK (SUCCESS)");
                player:SpoofMsg("Voidwatch Officer: While these stones are capable of rendering Voidwalkers visible to their bearers.. ", npc, chatType.SYS_SAY, nil);
                player:SpoofMsg("Voidwatch Officer: ..Their powers can only be tapped when used in conjunction with a Stratum Abyssite. ", npc, chatType.SYS_SAY, nil);
                player:addCurrency("voidstones", 1);
                player:addKeyItem(VOIDSTONE1); -- so morons stop showing us their KI screenshots..
                player:setVar("VOIDSTONE_TIMER", os.time()+72000);
                -- 20 hours till next voidstone. Slightly less than 1 day,
                -- so that player can do VW once a day at aprox same time of day.
                player:messageSpecial(KEYITEM_OBTAINED, VOIDSTONE1);
                player:SpoofMsg(string.format("You now posses %d Voidstones in total. ", player:getCurrency("voidstones")), npc, chatType.ECHO, nil);
            else
                player:PrintToPlayer("DEBUG: VOIDSTONE CHECK (FAIL)");
                player:SpoofMsg("Voidstones are issued once per Earth day. ", nil, chatType.ECHO, nil);
                player:SpoofMsg(string.format("You now posses %d Voidstones in total. ", player:getCurrency("voidstones")), npc, chatType.ECHO, nil);
            end
        end
    end

--[[ F#$% this cs and its crazy parameters
    local LV = player:getMainLvl();
    local CAMPAIGN = player:getCampaignAllegiance();
    local CERT = 0;
    local STRATUM = player:hasKeyItem(CRIMSON_STRATUM_ABYSSITE);
    local OPT = 0x00101000; -- Controls which Menu options appear. 0x10101010
    if (player:hasKeyItem(ADVENTURERS_CERTIFICATE)) then
        CERT = 1;
    end

    player:startEvent(963,OPT,0,CERT,0,0,0,0,0);
]]
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
    if (csid == 977) then
        player:addKeyItem(VOIDWATCH_ALARUM);
        player:completeQuest(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID);
        player:addQuest(CRYSTAL_WAR, DRAFTED_BY_THE_DUCHY);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCH_ALARUM);
    elseif (csid == 978) then
        player:addKeyItem(VOIDWATCH_ALARUM);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCH_ALARUM);
    elseif (csid == 979) then
        player:addKeyItem(VOIDWATCH_ALARUM);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCH_ALARUM);
    elseif (csid == 981) then
        player:addKeyItem(VOIDWATCH_ALARUM);
        player:completeQuest(CRYSTAL_WAR, THE_TRUTH_IS_OUT_THERE);
        player:addQuest(CRYSTAL_WAR, REDRAFTED_BY_THE_DUCHY);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCH_ALARUM);
    --[[ future use
    elseif (csid == 982) then
        player:addKeyItem(VOIDWATCH_ALARUM);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCH_ALARUM);
    elseif (csid == 983) then
        player:addKeyItem(VOIDWATCH_ALARUM);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCH_ALARUM);
    elseif (csid == 984) then
        player:addKeyItem(VOIDWATCH_ALARUM);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCH_ALARUM);
    elseif (csid == 985) then
        player:addKeyItem(VOIDWATCH_ALARUM);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCH_ALARUM);
    ]]
    end
end;