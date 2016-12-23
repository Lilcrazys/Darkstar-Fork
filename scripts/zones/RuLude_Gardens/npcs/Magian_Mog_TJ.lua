-----------------------------------
-- Area: Rulude Gardens
--  NPC: Custom (Relic) Magian Moogle
-----------------------------------
package.loaded["scripts/zones/Rulude_Gardens/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/custom_trials");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local itemID = trade:getItem():getID();
    local itemCount = trade:getItemCount();
    local cTrial = player:getVar("cTrialItem[relic]");
    local cStatus = player:getVar("cTrialComplete[relic]");
    local itemInfo = custom_trials[itemID];
    local trialInfo = custom_trials[cTrial];
    -- Info.r, Info.s, Info.t, Info.trade, Info.count;

    -- Begin a new trial
    if (cTrial == 0 and cStatus == 0) then
        if (custom_trials[itemID] == nil) then -- Invalid
            player:SpoofChatPlayer("I don't have a trial to give you for that item, kupo.. ", MESSAGE_SAY, npc:getID());
        else
            if (itemInfo.t ~= "relic") then
                player:SpoofChatPlayer("I only handle Relic Weapons, kupo..", MESSAGE_SAY, npc:getID());
            elseif (itemInfo.s > 0) then
                if (itemInfo.s == 1) then
                    player:PrintToPlayer("Defeat any of these foes 9 times total..");
                    player:PrintToPlayer("Mischievous Micholas, Megalobugard, Dune Widow, Intulo, Keeper of Halidom..");
                elseif (itemInfo.s == 2) then
                    player:PrintToPlayer("Defeat any of these foes 9 times total..");
                    player:PrintToPlayer("Adamantoise.. Behemoth.. Fafnir..");
                elseif (itemInfo.s == 3) then
                    player:PrintToPlayer("Defeat any of these foes 9 times total..");
                    player:PrintToPlayer("Aspidochelone, King Behemoth, Nidhogg..");
                elseif (itemInfo.s == 4) then
                    player:PrintToPlayer("Deliver 50 Tanzenite Jewels to Magian Mog T.J.");
                end
                player:setVar("cTrialItem[relic]", itemID); -- Sets new trial.
                player:injectActionPacket(6, 203, 0, 0, 0);
                player:SpoofChatPlayer("Use '$trial' to review your progress!", MESSAGE_SAY, npc:getID());
            end
        end

    -- Stage 4 Relic weapon Tanzenites.
    -- For now this requires all the items to be traded at once.
    elseif (trade:hasItemQty(trialInfo.trade, trialInfo.count) and itemCount == trialInfo.count) then
        -- player:setVar("cTrialCount[relic]", player:getVar("cTrialCount[mythic]")+1);
        player:tradeComplete(trade);
        player:setVar("cTrialComplete[relic]", 1);
        player:SpoofChatPlayer("The lady mogs love Cool James.", MESSAGE_SAY, npc:getID());
        player:SpoofChatPlayer("Oh! It looks like you finished! Hand it over, kupo.", MESSAGE_SAY, npc:getID());

    -- Completed trial, trade for upgrade
    elseif (trade:hasItemQty(cTrial, 1) and cStatus == 1 and itemCount == 1) then
        player:injectActionPacket(6, 206, 0, 0, 0);
        player:SpoofChatPlayer("This ought to put some spark into it..KUPOW!", MESSAGE_SAY, npc:getID());
        player:injectActionPacket(6, 205, 0, 0, 0);
        cTrialEnd(player, "relic");

    -- Cancel a trial
    elseif (trade:hasItemQty(2184,1) and COUNT == 1 and cTrial > 0) then
        player:setVar("cTrialItem[relic]", 0);
        player:setVar("cTrialCount[relic]", 0);
        player:tradeComplete();
        player:SpoofChatPlayer("Thats a shame..Well, your Relic trial has been canceled.", MESSAGE_SAY, npc:getID());
        player:SpoofChatPlayer("You can now begin a new trial, if you so choose.", MESSAGE_SAY, npc:getID());

    -- Other
    else -- Trading anything other than expected during an active trial triggers this.
        if (cTrial > 0) then
            player:SpoofChatPlayer("If you wish to cancel your Relic trial.. ", MESSAGE_SAY, npc:getID());
            player:SpoofChatPlayer("The fee for wasting our time is: ", MESSAGE_SAY, npc:getID());
            player:SpoofChatPlayer("1 Imperial Bronze Piece. ", MESSAGE_ECHO, nil);
        end
    end
end;


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local cTrial = player:getVar("cTrialItem[relic]");
    local cStatus = player:getVar("cTrialComplete[relic]");
    if (cTrial == 0) then
        player:SpoofChatPlayer("Hand me a RELIC weapon to begin a trial, Kupo!", MESSAGE_SAY, npc:getID() );
    elseif (cStatus > 0 and cTrial > 0) then
        player:SpoofChatPlayer("C.J. thinks he's so cool..", MESSAGE_SAY, npc:getID());
        player:SpoofChatPlayer("Oh, you finished your trial? Show me the weapon, kupo.", MESSAGE_SAY, npc:getID());
    elseif (cStatus == 0 and cTrial > 0) then
        player:SpoofChatPlayer("If you wish to cancel your current trial.. ", MESSAGE_SAY, npc:getID());
        player:SpoofChatPlayer("The fee for wasting my time is: ", MESSAGE_SAY, npc:getID());
        player:SpoofChatPlayer("1 Imperial Bronze Piece. ", MESSAGE_ECHO, nil);
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
