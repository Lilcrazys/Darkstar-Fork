-----------------------------------
-- Area: Kazham
--  NPC: Majjih Bakrhamab
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Kazham/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Kazham/TextIDs");
require("scripts/globals/teleports");
require("scripts/globals/settings");
require("scripts/globals/msg");
-----------------------------------

function onTrade(player,npc,trade)
    if (TRAVEL_SKIP >= 1) then
        if (trade:getGil() >= TRAVEL_SKIP and trade:getItemCount() == 1) then
            player:PrintToPlayer(string.format("eye's the %d gil.. ", TRAVEL_SKIP), chatType.EMOTION, npc:getName());
            player:PrintToPlayer("Well..I guess I can let you aboard the express freight Vessel.. ", chatType.SAY, npc:getName());
            player:delGil(TRAVEL_SKIP);
            -- player:setPos(-26,12,120,64,246);
            player:addStatusEffectEx(EFFECT_COMMUTE,0,COMMUTE.AISHIP_TO_JEUNO_K,0,2);
        end
    end
end;

function onTrigger(player,npc)

    local vHour = VanadielHour();
    local vMin  = VanadielMinute();

    while vHour >= 1 do
        vHour = vHour - 6;
    end

    if (     vHour == -5) then vHour = 1;
    elseif ( vHour == -4) then vHour = 2;
    elseif ( vHour == -3) then vHour = 3;
    elseif ( vHour == -2) then vHour = 4;
    elseif ( vHour == -1) then vHour = 5;
    end

    local seconds = math.floor(2.4 * ((vHour * 60) + vMin));

    player:startEvent( 261, seconds, 0, 0, 0, 0, 0, 0, 0);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
