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
            player:SpoofMsg("I don't have a trial to give you for that item, kupo.. ", npc, MESSAGE_SAY, nil);
        else
            if (itemInfo.t ~= "relic") then
                player:SpoofMsg("I only handle Relic Weapons, kupo.. ", npc, MESSAGE_SAY, nil);
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
                player:SpoofMsg("Use '$trial' to review your progress! ", npc, MESSAGE_SAY, nil);
            end
        end

    -- Stage 4 Relic weapon Tanzenites.
    -- For now this requires all the items to be traded at once.
    elseif (trade:hasItemQty(trialInfo.trade, trialInfo.count) and itemCount == trialInfo.count) then
        -- player:setVar("cTrialCount[relic]", player:getVar("cTrialCount[mythic]")+1);
        player:tradeComplete(trade);
        player:setVar("cTrialComplete[relic]", 1);
        player:SpoofMsg("The lady mogs love Cool James. ", npc, MESSAGE_SAY, nil);
        player:SpoofMsg("Oh! It looks like you finished! Hand it over, kupo. ", npc, MESSAGE_SAY, nil);

    -- Completed trial, trade for upgrade
    elseif (trade:hasItemQty(cTrial, 1) and cStatus == 1 and itemCount == 1) then
        player:injectActionPacket(6, 206, 0, 0, 0);
        player:SpoofMsg("This ought to put some spark into it..KUPOW! ", npc, MESSAGE_SAY, nil);
        player:injectActionPacket(6, 205, 0, 0, 0);
        cTrialEnd(player, "relic");

    -- Cancel a trial
    elseif (trade:hasItemQty(2184,1) and cStatus == 0 and itemCount == 1 and cTrial > 0) then
        player:setVar("cTrialItem[relic]", 0);
        player:setVar("cTrialCount[relic]", 0);
        player:tradeComplete();
        player:SpoofMsg("Thats a shame..Well, your Relic trial has been canceled. ", npc, MESSAGE_SAY, nil);
        player:SpoofMsg("You can now begin a new trial, if you so choose. ", npc, MESSAGE_SAY, nil);

    -- Other
    else -- Trading anything other than expected during an active trial triggers this.
        if (cTrial > 0) then
            player:SpoofMsg("If you wish to cancel your Relic trial.. ", npc, MESSAGE_SAY, nil);
            player:SpoofMsg("The fee for wasting our time is: ", npc, MESSAGE_SAY, nil);
            player:SpoofMsg("1 Imperial Bronze Piece. ", npc, MESSAGE_SAY, nil);
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
        player:SpoofMsg("Hand me a RELIC weapon to begin a trial, Kupo! ", npc, MESSAGE_SAY, nil);
    elseif (cStatus > 0 and cTrial > 0) then
        player:SpoofMsg("C.J. thinks he's so cool.. ", npc, MESSAGE_SAY, nil);
        player:SpoofMsg("Oh, you finished your trial? Show me the weapon, kupo. ", npc, MESSAGE_SAY, nil);
    elseif (cStatus == 0 and cTrial > 0) then
        player:SpoofMsg("If you wish to cancel your current trial.. ", npc, MESSAGE_SAY, nil);
        player:SpoofMsg("The fee for wasting my time is: ", npc, MESSAGE_SAY, nil);
        player:SpoofMsg("1 Imperial Bronze Piece. ", npc, MESSAGE_SAY, nil);
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
