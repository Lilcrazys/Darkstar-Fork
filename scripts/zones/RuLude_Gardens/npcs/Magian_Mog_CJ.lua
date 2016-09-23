-----------------------------------
-- Area: Rulude Gardens
--  NPC: Custom Magian Moogle
-----------------------------------
package.loaded["scripts/zones/Rulude_Gardens/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local ITEM = trade:getItem();
    local COUNT = trade:getItemCount();
    local TRIAL = player:getVar("C_TRIAL_ITEM");
    local STATUS = player:getVar("C_TRIAL_COMPLETE");
    local NEXT_RELIC = getNextTrialID(RELIC, ITEM);
    local NEXT_MYTHIC = getNextTrialID(MYTHIC, ITEM);
    local RELIC_STAGE = getCurrentStage(RELIC, TRIAL);
    local MYTHIC_STAGE = getCurrentStage(MYTHIC, TRIAL);
    local BAD_RELIC = (NEXT_RELIC == ITEM or NEXT_RELIC == 0 or NEXT_RELIC == nil);
    local BAD_MYTHIC = (NEXT_MYTHIC == ITEM or NEXT_MYTHIC == 0 or NEXT_MYTHIC == nil);

    if (TRIAL == 0 and COUNT == 1) then
        if (BAD_RELIC and BAD_MYTHIC) then
            player:SpoofChatPlayer("I don't have a trial for that item, kupo..", MESSAGE_SAY, npc:getID());
        else
            local MSG = string.format("Ok, Trial %d has begun, kupo! Use '@trial' to review your progress!", ITEM);
            cTrialCleanUp(player); -- If any previous trial var left dangling, kill them
            player:setVar("C_TRIAL_ITEM", ITEM); -- Sets new trial.
            player:injectActionPacket(6, 203, 0, 0, 0);
            player:SpoofChatPlayer(MSG, MESSAGE_SAY, npc:getID());
        end
    elseif (STATUS == 1 and trade:hasItemQty(TRIAL, 1) and COUNT == 1) then
        player:injectActionPacket(6, 206, 0, 0, 0);
        cTrialEnd(player);
        player:injectActionPacket(6, 205, 0, 0, 0);
        player:SpoofChatPlayer("KUPOW!", MESSAGE_SAY, npc:getID());
    --[[ This is commented out because of Tanzenites stacking at 12
         and I do not currently have time to write code to check
         the correct free space and how many stacks should be returned to the player.
    elseif (trade:hasItemQty(3925,COUNT) and trade:getItemCount() == COUNT
    and (RELIC_STAGE == 4 or MYTHIC_STAGE == 4)) then -- Tanzenites
        local TOTAL = (COUNT + player:getVar("C_TRIAL_OBJ_1"));
        if (TOTAL <= 50) then
            player:setVar("C_TRIAL_OBJ_1", TOTAL);
            player:tradeComplete(trade);
            cTrialProgress(player);
        elseif (TOTAL > 50) then
            player:PrintToPlayer(string.format("You only need to trade %d not %d", TOTAL -50, trade:getItemQty(3925)));
        end
    ]]
    -- For now we'll keep the older requirement of all 50 at one time.
    elseif (trade:hasItemQty(3925, 50) and trade:getItemCount() == 50
    and (RELIC_STAGE == 4 or MYTHIC_STAGE == 4)) then -- Tanzenites
        player:tradeComplete(trade);
        player:setVar("C_TRIAL_COMPLETE", 1);
        player:SpoofChatPlayer( "The lady mogs love Cool James.", MESSAGE_SAY, npc:getID() );
        player:SpoofChatPlayer( "Oh! It looks like you finished! Hand it over, kupo.", MESSAGE_SAY, npc:getID() );
    -- End Temp 50 tanzenite check
    elseif (trade:hasItemQty(2184,1) and COUNT == 1 and TRIAL > 0) then
        --[[ Temp disabled.
        if (player:getVar("C_TRIAL_OBJ_1") > 0 and (RELIC_STAGE == 4 or MYTHIC_STAGE == 4)) then
            if (player:getFreeSlotsCount() >= 1) then
                player:addItem(3925, player:getVar("C_TRIAL_OBJ_1"));
                player:PrintToPlayer("Your trial items are refunded.");
                player:messageSpecial(ITEM_OBTAINED,3925);
                cTrialCleanUp(player);
                player:tradeComplete();
            else
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,3925);
            end
        else
        ]]
            cTrialCleanUp(player);
            player:tradeComplete();
            player:SpoofChatPlayer( "Ok your trial has been canceled.", MESSAGE_SAY, npc:getID() );
            player:SpoofChatPlayer( "You can now begin a new trial.", MESSAGE_SAY, npc:getID() );
        -- end
    else -- Trading anything other than expected during an active trial triggers this.
        if (TRIAL > 0) then
            player:SpoofChatPlayer( "If you wish to cancel your current trial...", MESSAGE_SAY, npc:getID() );
            player:SpoofChatPlayer( "The fee for wasting my time is:", MESSAGE_SAY, npc:getID() );
            player:SpoofChatPlayer( "1 Imperial Bronze Piece. ", MESSAGE_ECHO, nil );
        else
            player:SpoofChatPlayer("Are you trying to give me gifts? I WILL NOT SUCCUMB TO BRIBERY!", MESSAGE_SAY, npc:getID());
        end
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
        player:SpoofChatPlayer( "The lady mogs love Cool James.", MESSAGE_SAY, npc:getID() );
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