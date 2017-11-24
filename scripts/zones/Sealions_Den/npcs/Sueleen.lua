-----------------------------------
-- Area: Sealion's Den
--  NPC: Sueleen
-- !pos 612 132 774 32
-----------------------------------
package.loaded["scripts/zones/Sealions_Den/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Sealions_Den/TextIDs");
require("scripts/globals/teleports");
require("scripts/globals/missions");
require("scripts/globals/keyitems");
-----------------------------------

function onTrade(player,npc,trade)
    local aug_1 = 0;
    local val_1 = 0;
    local aug_2 = 0;
    local val_2 = 0;
    local aug_3 = 0;
    local val_3 = 0;
    local PRIZE = 0;

    if (player:getFreeSlotsCount() >= 1) then
        if (trade:hasItemQty(15513,1) and trade:getItemCount() == 1)then -- Temperance -- WS DMG 5%, Charm +5, Dbl Att +4
            PRIZE = 15513
            aug_1 = 327; val_1 = 4; aug_2 = 43; val_2 = 4; aug_3 = 143; val_3 = 3;
        elseif (trade:hasItemQty(15512,1) and trade:getItemCount() == 1)then -- Faith -- WS DMG 5%,Counter +5, Subtle Blow +7
            PRIZE = 15512
            aug_1 = 327; val_1 = 4; aug_2 = 145; val_2 = 4; aug_3 = 195; val_3 = 6;
        elseif (trade:hasItemQty(15511,1) and trade:getItemCount() == 1)then -- Fortitude -- WS DMG 5%,Dmg -3%, Regen +1
            PRIZE = 15511
            aug_1 = 327; val_1 = 4; aug_2 = 71; val_2 = 2; aug_3 = 137; val_3 = 0;
        elseif (trade:hasItemQty(15510,1) and trade:getItemCount() == 1)then -- Prudence -- WS DMG 5%,MaB 7, Refresh +1
            PRIZE = 15510
            aug_1 = 327; val_1 = 4; aug_2 = 133; val_2 = 6; aug_3 = 138; val_3 = 1;
        elseif (trade:hasItemQty(15508,1) and trade:getItemCount() == 1)then -- Justice -- WS DMG 5%, Zanshin 5, Trip Att +2
            PRIZE = 15508
            aug_1 = 327; val_1 = 4; aug_2 = 198; val_2 = 4; aug_3 = 144; val_3 = 1;
        elseif (trade:hasItemQty(15514,1) and trade:getItemCount() == 1)then -- Love -- WS DMG 5%,Trip Att 3, Crit 2
            PRIZE = 15514
            aug_1 = 327; val_1 = 4; aug_2 = 144; val_2 = 2; aug_3 = 41; val_3 = 1;
        elseif (trade:hasItemQty(15509,1) and trade:getItemCount() == 1)then -- Hope -- WS DMG 5%,RATT 14, Dual Wield 3
            PRIZE = 15509
            aug_1 = 327; val_1 = 4; aug_2 = 29; val_2 = 13; aug_3 = 146; val_3 = 2;
        end

        if (PRIZE > 0) then
            player:messageSpecial(ITEM_OBTAINED, PRIZE);
            player:tradeComplete();
            player:addItem(PRIZE, 1, aug_1, val_1, aug_2, val_2, aug_3, val_3);
        end
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, PRIZE);
    end
end;

function onTrigger(player,npc)
    if (player:getCurrentMission(COP) > THE_WARRIOR_S_PATH) then
        player:startEvent(12);
    elseif (player:getCurrentMission(COP) == FLAMES_IN_THE_DARKNESS and player:getVar("PromathiaStatus") == 1) then
      player:startEvent(16);
    elseif (player:getCurrentMission(COP) == CALM_BEFORE_THE_STORM and player:hasKeyItem(LETTERS_FROM_ULMIA_AND_PRISHE)) then
      player:startEvent(17);
    else
      player:startEvent(20);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("onUpdate CSID: %u",csid);
    -- printf("onUpdate RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("onFinish CSID: %u",csid);
    -- printf("onFinish RESULT: %u",option);

    if (csid == 12 and option == 1) then
        toPalaceEntrance(player);
    elseif (csid == 16) then
      player:setVar("PromathiaStatus",2);
    elseif (csid == 17) then
        player:completeMission(COP,CALM_BEFORE_THE_STORM);
        player:addMission(COP,THE_WARRIOR_S_PATH);
        player:setVar("PromathiaStatus",0);
        player:setVar("COP_Dalham_KILL",0);
        player:setVar("COP_Boggelmann_KILL",0);
        player:setVar("Cryptonberry_Executor_KILL",0);
    end
end;
