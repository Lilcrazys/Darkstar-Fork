-----------------------------------
-- windhurst Waters Anniversary Moogle
-- anniversary band every day if not in inventory and free slot
-- Random effect applied once an hour when player talks to moogle
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Windurst_Waters/TextIDs");
require("scripts/globals/events/LegionDarkAnniversary");
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------

function onTrade(player,npc,trade)
    if (trade:getItemCount() == 1) then
        if (player:getFreeSlotsCount() == 0) then
            player:PrintToPlayer("Hey, you don't have inventory space, kupo! ", chatType.SAY, underscore2space(npc:getName()));
        else
            -- Note: most complete trade first because item is rare flagged!
            if (trade:hasItemQty(13216, 1)) then -- Gold Mog Belt
                player:tradeComplete(trade);
                player:addItem(13216, 1, 551, 2, 37, 1); -- STR+3, VIT+3, Mag.Evasion+2
                player:PrintToPlayer("A Gold Mog belt!!! Here, let me unlock its latent powers.. ", chatType.SAY, underscore2space(npc:getName()));
                player:injectActionPacket(6, 207, 0, 0, 0);
                player:messageSpecial(ITEM_OBTAINED, 13216);
            elseif (trade:hasItemQty(13217, 1)) then -- Silver Mog Belt
                player:tradeComplete(trade);
                player:addItem(13217, 1, 554, 2, 1806, 1); -- INT+3, MND+3, Pet: STR+2 DEX+2 VIT+2
                player:PrintToPlayer("A Silver Mog belt!!! Here, let me unlock its latent powers.. ", chatType.SAY, underscore2space(npc:getName()));
                player:injectActionPacket(6, 207, 0, 0, 0);
                player:messageSpecial(ITEM_OBTAINED, 13217);
            elseif (trade:hasItemQty(13218, 1)) then -- Bronze Mog Belt
                player:tradeComplete(trade);
                player:addItem(13218, 1, 553, 2, 332, 1); -- DEX+3, AGI+3, Sklchn.dmg.+2%
                player:PrintToPlayer("A Bronze Mog belt!!! Here, let me unlock its latent powers.. ", chatType.SAY, underscore2space(npc:getName()));
                player:injectActionPacket(6, 207, 0, 0, 0);
                player:messageSpecial(ITEM_OBTAINED, 13218);
            else
                player:PrintToPlayer("Have you ever heard of the legendary mog belts? In ages past we moogles had amazing girdled of magnificent kupower! ", chatType.SAY, underscore2space(npc:getName()));
            end
        end
    else
        player:PrintToPlayer("Hey, one item at a time, don't kupo'ing confuse me. ", chatType.SAY, underscore2space(npc:getName()));
    end
end;

function onTrigger(player,npc)
    local month = tonumber(os.date("%m"));
    local day = tonumber(os.date("%d"));

    if ((month == 12 and day >= 1 and day <= 10)) then
        --[[ old code
        -- Anniversary ring
        if (player:getFreeSlotsCount() >= 1) then
            if (player:getVar("AnniversaryLootGet") < os.time()) then
                player:messageSpecial(ITEM_OBTAINED, 15793);
                player:addItem(15793, 1);
                player:setVar("AnniversaryLootGet", os.time()+86400);
            else
                player:PrintToPlayer("Check back later. Rings are issued once a day. ", chatType.SAY, npc:getName());
            end
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 15793);
        end
        ]]

        -- Convert old varname..
        if (player:getVar("ANNIRING_TIMER") ~=0) then
            player:setVar("AnniversaryLootGet", player:getVar("ANNIRING_TIMER"));
            player:setVar("ANNIRING_TIMER", 0);
        end

        if (player:getVar("AnniversaryBuff_TIMER") ~=0) then
            player:setVar("AnniversaryBuffGet", player:getVar("AnniversaryBuff_TIMER"));
            player:setVar("AnniversaryBuff_TIMER", 0);
        end

        -- One per day random reward
        -- Todo: make this into random past event rewards, after we have more working events
        if (player:getVar("AnniversaryLootGet") < os.time()) then
            local itemID = getAnniversaryEventItem(player);
            if (itemID ~= nil) then
                if (player:addItem(itemID, 1)) then
                    player:setVar("AnniversaryLootGet", os.time()+86400);
                    player:messageSpecial(ITEM_OBTAINED, itemID);
                else
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, itemID);
                end
            else
                player:PrintToPlayer("An error occurred, could not find the item ID. Please bug report.");
            end
        else
            player:PrintToPlayer("Anniversary event prizes are awarded once per earth day. ", chatType.SAY, underscore2space(npc:getName()));
        end

        local AnniversaryBuff = math.random(1,10);
        if (player:getVar("AnniversaryBuffGet") < os.time()) then
            if (AnniversaryBuff == 1) then
                player:addStatusEffect(EFFECT_FLEE,50,0,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
                player:injectActionPacket(6, 207, 0, 0, 0);
                player:addStatusEffect(EFFECT_COSTUME,2744,0,1800);
            elseif (AnniversaryBuff == 2) then
                player:addStatusEffect(EFFECT_REGEN, 10,1,1800);
                player:addStatusEffect(EFFECT_REFRESH, 10,1,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
                player:injectActionPacket(6, 207, 0, 0, 0);
            elseif (AnniversaryBuff == 3) then
                player:addStatusEffect(EFFECT_REGAIN, 10,1,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
                player:injectActionPacket(6, 207, 0, 0, 0);
            elseif (AnniversaryBuff == 4) then
                player:addStatusEffect(EFFECT_MAX_HP_BOOST,40,0,1800);
                player:addStatusEffect(EFFECT_MAX_MP_BOOST,40,0,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
                player:injectActionPacket(6, 207, 0, 0, 0);
            elseif (AnniversaryBuff == 5) then
                player:addStatusEffect(EFFECT_STR_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_DEX_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_VIT_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_AGI_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_INT_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_MND_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_CHR_BOOST,50,0,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
                player:injectActionPacket(6, 207, 0, 0, 0);
            elseif (AnniversaryBuff == 6) then
                player:addStatusEffect(EFFECT_CHAINSPELL, 1,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 7) then
                player:addStatusEffect(EFFECT_HUNDRED_FISTS,1,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
                player:injectActionPacket(6, 207, 0, 0, 0);
            elseif (AnniversaryBuff == 8) then
                player:addStatusEffect(EFFECT_MIGHTY_STRIKES,1,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 9) then
                player:addStatusEffect(EFFECT_MANAFONT,1,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
                player:injectActionPacket(6, 207, 0, 0, 0);
            elseif (AnniversaryBuff == 10) then
                player:addStatusEffect(EFFECT_MAX_HP_BOOST,1000,0,900);
                player:addStatusEffect(EFFECT_MAX_MP_BOOST,1000,0,900);
                player:addStatusEffect(EFFECT_MIGHTY_STRIKES,1,0,900);
                player:addStatusEffect(EFFECT_HUNDRED_FISTS,1,0,900);
                player:addStatusEffect(EFFECT_CHAINSPELL,1,0,900);
                player:addStatusEffect(EFFECT_PERFECT_DODGE,1,0,900);
                player:addStatusEffect(EFFECT_INVINCIBLE,1,0,900);
                player:addStatusEffect(EFFECT_ELEMENTAL_SFORZO,1,0,900);
                player:addStatusEffect(EFFECT_MANAFONT,1,0,900);
                player:addStatusEffect(EFFECT_REGAIN,150,0,900);
                player:addStatusEffect(EFFECT_REFRESH,99,0,900);
                player:addStatusEffect(EFFECT_REGEN,99,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
                player:injectActionPacket(6, 207, 0, 0, 0);
            end
        else
            player:PrintToPlayer("Anniversary power-up buffs are issued once an hour. ", chatType.SAY, underscore2space(npc:getName()));
        end
        player:PrintToPlayer("Have you ever heard of the legendary mog belts? In ages past we moogles had amazing girdled of magnificent kupower! ", chatType.SAY, underscore2space(npc:getName()));
    else
        player:PrintToPlayer("The Anniversary Event begins December 1st and lasts to December 10th. ", chatType.SAY, underscore2space(npc:getName()));
        player:PrintToPlayer("Have you ever heard of the legendary mog belts? In ages past we moogles had amazing girdled of magnificent kupower! ", chatType.SAY, underscore2space(npc:getName()));
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("updateRESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("finishRESULT: %u",option);
end;
