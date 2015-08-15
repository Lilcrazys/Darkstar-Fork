-----------------------------------
-- Area: Rulude Gardens
--  NPC: Custom Magian Moogle
-----------------------------------
package.loaded["scripts/zones/Rulude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/common");
require("scripts/globals/settings");
require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local COUNT = trade:getItemCount();
    local TRIAL = player:getVar("C_TRIAL_ITEM");
    local STATUS = player:getVar("C_TRIAL_COMPLETE");
    local RELIC_LV = getCurrentStage(RELIC, TRIAL);
    local MYTHIC_LV = getCurrentStage(MYTHIC, TRIAL);

    if (TRIAL == 0 and COUNT == 1) then
        if (RELIC_LV == 0 and MYTHIC_LV == 0) then
            player:SpoofChatPlayer("I don't have a trial for that item, kupo..", MESSAGE_SAY, npc:getID());
        elseif (RELIC_LV < MAX_RELIC or MYTHIC_LV < MAX_MYTHIC) then
            local MSG = string.format("Ok, Trial %d has begun, kupo!", trade:getItem());
            player:setVar("C_TRIAL_ITEM", trade:getItem());
            -- player:injectActionPacket(6, 206);
            player:SpoofChatPlayer(MSG, MESSAGE_SAY, npc:getID());
        end
    elseif (STATUS == 1 and TRIAL == trade:getItem() and COUNT == 1) then
        local REWARD = 0;
        if (RELIC_LV == 0 and MYTHIC_LV == 0) then
            player:SpoofChatPlayer("I don't have a trial for that item, kupo..", MESSAGE_SAY, npc:getID());
        elseif (RELIC_LV < MAX_RELIC or MYTHIC_LV < MAX_MYTHIC) then
            player:injectActionPacket(6, 206);
            cTrialEnd(TRIAL);
            player:SpoofChatPlayer("KUPOW!", MESSAGE_SAY, npc:getID());
        end
    elseif (trade:getItem() == 3925 and (RELIC_LV == 4 or MYTHIC_LV == 4)) then -- Tanzenites
        local TOTAL = (trade:getItemQty(3925) + player:getVar("C_TRIAL_OBJ_1"));
        trade:confirmItem(3925); -- Sets item 3925 as only item to remove
        if (TOTAL <= 50) then
            player:setVar("C_TRIAL_OBJ_1", trade:getItemQty(3925));
            player:confirmTrade(); -- Remove all of item 3925
        elseif (TOTAL > 50) then
            player:PrintToPlayer(string.format("You only need to trade %d not %d", TOTAL -50, trade:getItemQty(3925)));
        end
        cTrialProgress(player);
    elseif (trade:hasItemQty(2184,1) and COUNT == 1) then
        if (STAGE4 == true and player:getVar("C_TRIAL_OBJ_1") > 0) then
            if (player:getFreeSlotsCount() >= 1) then
                player:addItem(3925, player:setVar("C_TRIAL_OBJ_1"));
                player:PrintToPlayer("Your trial items are refunded.");
                player:messageSpecial(ITEM_OBTAINED,3925);
                cTrialCleanUp(player);
                player:tradeComplete();
            else
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,3925);
            end
        else
            cTrialCleanUp(player);
            player:tradeComplete();
            player:SpoofChatPlayer( "Ok your trial has been canceled.", MESSAGE_SAY, npc:getID() );
            player:SpoofChatPlayer( "You can now begin a new trial.", MESSAGE_SAY, npc:getID() );
        end

    else
        -- Trading anything other than expected during an active trial triggers this.
        player:SpoofChatPlayer( "If you wish to cancel your current trial...", MESSAGE_SAY, npc:getID() );
        player:SpoofChatPlayer( "The fee for wasting my time is:", MESSAGE_SAY, npc:getID() );
        player:SpoofChatPlayer( "1 Imperial Bronze Piece. ", MESSAGE_ECHO, nil );
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local TRIAL = player:getVar("C_TRIAL_ITEM");
    local STATUS = player:getVar("C_TRIAL_COMPLETE");
    if (TRIAL == 0) then
        player:SpoofChatPlayer( "Hand me a RELIC or MYTHIC item to begin a trial, Kupo!", MESSAGE_SAY, npc:getID() );
    elseif (STATUS > 0 and TRIAL > 0) then
        player:SpoofChatPlayer( "Oh! It looks like you finished! Hand it over, kupo.", MESSAGE_SAY, npc:getID() );
    elseif (STATUS == 0 and TRIAL > 0) then
        player:SpoofChatPlayer( "If you wish to cancel your current trial...", MESSAGE_SAY, npc:getID() );
        player:SpoofChatPlayer( "The fee for wasting my time is:", MESSAGE_SAY, npc:getID() );
        player:SpoofChatPlayer( "1 Imperial Bronze Piece. ", MESSAGE_ECHO, nil );
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("updateRESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("finishRESULT: %u",option);
end;