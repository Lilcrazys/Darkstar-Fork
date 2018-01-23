-----------------------------------
-- Area: Port San d'Oria
--   NPC: Nazar
-- Type: Standard NPC
-----------------------------------
package.loaded["scripts/zones/Port_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_San_dOria/TextIDs");
require("scripts/globals/teleports");
require("scripts/globals/settings");
require("scripts/globals/msg");
-----------------------------------

function onTrade(player,npc,trade)
    if (TRAVEL_SKIP >= 1) then
        if (trade:getGil() >= TRAVEL_SKIP and trade:getItemCount() == 1) then
            player:SpoofMsg(string.format("eye's the %d gil.. ", TRAVEL_SKIP), npc, chatType.EMOTION, nil);
            player:SpoofMsg("Well..I guess I can let you aboard the express freight Vessel.. ", npc, chatType.SAY, nil);
            if (player:hasKeyItem(AIRSHIP_PASS)) then
                player:delGil(TRAVEL_SKIP);
                -- player:setPos(-90,12,120,64,246);
                player:addStatusEffectEx(EFFECT_COMMUTE,0,COMMUTE.AISHIP_TO_JEUNO_S,0,2);
            else
                player:setVar("HasDoorHacked", player:getVar("HasDoorHacked") +1);
                print(player:getName() .. " tried to TRAVEL_SKIP an airship but didn't have a Airship Pass..");
                player:SpoofMsg("Wait a minute, You don't have a AIRSHIP PASS, how'd you even get through the door?.. ", npc, chatType.SAY, nil);
            end
        end
    end
end;

function onTrigger(player,npc)

    local vHour = VanadielHour();
    local vMin  = VanadielMinute();

    while vHour >= 3 do
        vHour = vHour - 6;
    end

    if (     vHour == -3) then vHour = 3;
    elseif ( vHour == -2) then vHour = 4;
    elseif ( vHour == -1) then vHour = 5;
    end

    local seconds = math.floor(2.4 * ((vHour * 60) + vMin));

    player:startEvent( 703, seconds, 0, 0, 0, 0, 0, 0, 0);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
