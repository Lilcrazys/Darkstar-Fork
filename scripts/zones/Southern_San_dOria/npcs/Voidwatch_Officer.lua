-----------------------------------
-- Area: Bastok Markets
--  NPC: Voidwatch Officer
-----------------------------------
package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/zones/Bastok_Markets/TextIDs");
require("scripts/globals/spoofchat");
require("scripts/globals/utils");

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
        player:showText(npc, AT_LEAST_75, 75)
        -- player:SpoofChatPlayer("You must be at least level 75 to participate in Voidwatch.", MESSAGE_ECHO, nil);
    else
        local VW_SANDORIA_ABYSSITE = {CRIMSON_STRATUM_ABYSSITE,CRIMSON_STRATUM_ABYSSITE_II,CRIMSON_STRATUM_ABYSSITE_III,CRIMSON_STRATUM_ABYSSITE_IV}
        local VW_BASTOK_ABYSSITE = {INDIGO_STRATUM_ABYSSITE,INDIGO_STRATUM_ABYSSITE_II,INDIGO_STRATUM_ABYSSITE_III,INDIGO_STRATUM_ABYSSITE_IV}
        local VW_WINDURST_ABYSSITE = {JADE_STRATUM_ABYSSITE,JADE_STRATUM_ABYSSITE_II,JADE_STRATUM_ABYSSITE_III,JADE_STRATUM_ABYSSITE_IV}
        local STATUS = player:getVar("VW_STATUS");
        local VW_OP_BASTOK = player:getVar("VW_OP_BASTOK");
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
            player:showText(npc, I_AM_A_VOIDWATCH_OFFICER);
            player:showText(npc, I_BESEECH_YOU);
            -- player:SpoofChatPlayer("I am a Voidwatch officer dispatched here by the Grand Duchy of Jeuno.", MESSAGE_SYS_SAY, nil);
            -- player:SpoofChatPlayer("My duty is to recruit able-bodied soldiers to assist in repelling the Voidwalker threat.", MESSAGE_SYS_SAY, nil);
            player:setVar("VW_STATUS", 1);
        elseif (CRIMSON0 == false) then
            if (player:hasKeyItem(ADVENTURERS_CERTIFICATE) == false) then
                player:showText(npc, COMMEND_YOUR_ENTHUSIASM, ADVENTURERS_CERTIFICATE)
                player:showText(npc, PROOF_OF_ONES_VALOR, ADVENTURERS_CERTIFICATE)
                -- player:SpoofChatPlayer("Voidwatch Officer : I'm sorry, but only certified adventurers may participate in Voidwatch Ops.", MESSAGE_SYS_SAY, nil);
            elseif (player:getCampaignAllegiance() == 0) then
                player:showText(npc, ENLISTED, player:getNation())
                player:showText(npc, MILITARY_AFFILIATION);
                -- player:SpoofChatPlayer("Voidwatch Officer : I'm sorry, but only those with military affiliation may participate in Voidwatch Ops.", MESSAGE_SYS_SAY, nil);
            else
                player:showText(npc, STRATUM_ABYSSITE);
                player:showText(npc, EACH_STONE_IS_ATTUNED);
                player:showText(npc, VOIDWATCH_OPERATION);
                player:showText(npc, THESE_STONES_ARE_CAPABLE, VOIDSTONE1);
                player:addKeyItem(INDIGO_STRATUM_ABYSSITE);
                player:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE);
                if (player:getVar("VOIDSTONE_TIMER") < os.time()) then
                    player:addCurrency("voidstones", 1);
                    player:setVar("VOIDSTONE_TIMER", os.time()+1728000); -- 20 hours till next voidstone. Slightly less than 1 day, so that player can do VW once a day at aprox same time of day.
                    player:messageSpecial(KEYITEM_OBTAINED, VOIDSTONE1);
                end
                -- Now that we have a KI, we no longer need this var to tell if you have gotten the dialogs preceding that part.
                player:setVar("VW_STATUS", 0);
                -- The same var my be used again during future Voidwatch quests, so its important not to leave it dangling at "1".
            end
        elseif (player:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_ACCEPTED) then
            player:startEvent(11);
        --[[ future use
        elseif
            player:startEvent(12);
        elseif
            player:startEvent(13);
        elseif
            player:startEvent(16);
        elseif
            player:startEvent(17);
        elseif
            player:startEvent(18);
        elseif
            player:startEvent(19);
        elseif
            player:startEvent(21);
        ]]
        else
            if (VW_OP_BASTOK < 9) then
                -- 0:North Gustaberg 1:North Gustaberg 2:the Gusgen Mines
                -- 3:the Pashhow Marshlands 4:the Pashhow Marshlands 5:Dangruf Wadi
                -- 6:South Gustaberg 7:the Konschtat Highlands 8:Grauberg
                -- After 8, cycle back to zero - DO NOT PROCEED TO 9!
                player:messageSpecial(OPERATIONS2, VW_OP_BASTOK);
                player:messageSpecial(REQUEST2, VW_OP_BASTOK);
            end
            if (player:getVar("VOIDSTONE_TIMER") < os.time()) then
                player:showText(npc, THESE_STONES_ARE_CAPABLE, VOIDSTONE1);
                player:addCurrency("voidstones", 1);
                player:setVar("VOIDSTONE_TIMER", os.time()+1728000); -- 20 hours till next voidstone. Slightly less than 1 day, so that player can do VW once a day at aprox same time of day.
                player:messageSpecial(KEYITEM_OBTAINED,VOIDSTONE1);
            else
                player:SpoofChatPlayer("Voidstones are issued once per Earth day.");
            end
        end
    end

--[[ F#$% this cs and its crazy parameters
    local LV = player:getMainLvl();
    local CAMPAIGN = player:getCampaignAllegiance();
    local CERT = 0;
    local STRATUM = player:hasKeyItem(INDIGO_STRATUM_ABYSSITE);
    local OPT = 0x00101000; -- Controls which Menu options appear. 0x10101010
    if (player:hasKeyItem(ADVENTURERS_CERTIFICATE)) then
        CERT = 1;
    end

    player:startEvent(9,OPT,0,CERT,0,0,0,0,0);
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
    if (csid == 11) then
        player:addKeyItem(VOIDWATCH_ALARUM);
        player:completeQuest(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID);
        player:addQuest(CRYSTAL_WAR, DRAFTED_BY_THE_DUCHY);
        player:messageSpecial(KEYITEM_OBTAINED, VOIDWATCH_ALARUM);
    --[[ future use
    elseif (csid == 12) then
        player:addKeyItem(VOIDWATCH_ALARUM);
    elseif (csid == 13) then
        player:addKeyItem(VOIDWATCH_ALARUM);
    elseif (csid == 16) then
        player:addKeyItem(VOIDWATCH_ALARUM);
    elseif (csid == 17) then
        player:addKeyItem(VOIDWATCH_ALARUM);
    elseif (csid == 18) then
        player:addKeyItem(VOIDWATCH_ALARUM);
    elseif (csid == 19) then
        player:addKeyItem(VOIDWATCH_ALARUM);
    elseif (csid == 21) then
        player:addKeyItem(VOIDWATCH_ALARUM);
    ]]
    end
end;