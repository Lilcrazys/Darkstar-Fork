-----------------------------------
-- Area: Port Bastok
-- NPC: Bodaway
-- Standard Info NPC
-----------------------------------

package.loaded["scripts/zones/Port_Bastok/TextIDs"] = nil;

require("scripts/zones/Port_Bastok/TextIDs");
require("scripts/globals/teleports");
require("scripts/globals/settings");
require("scripts/globals/msg");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (TRAVEL_SKIP >= 1) then
        if (trade:getGil() >= TRAVEL_SKIP and trade:getItemCount() == 1) then
            player:SpoofMsg(string.format("eye's the %d gil.. ", TRAVEL_SKIP), npc, chatType.EMOTION, nil);
            player:SpoofMsg("Well..I guess I can let you aboard the express freight Vessel.. ", npc, chatType.SAY, nil);
            if (player:hasKeyItem(AIRSHIP_PASS)) then
                player:delGil(TRAVEL_SKIP);
                -- player:setPos(-48,12,-120,192,246);
                player:addStatusEffectEx(EFFECT_COMMUTE,0,COMMUTE.AISHIP_TO_JEUNO_B,0,2);
            else
                player:setVar("HasDoorHacked", player:getVar("HasDoorHacked") +1);
                print(player:getName() .. " tried to TRAVEL_SKIP an airship but didn't have a Airship Pass..");
                player:SpoofMsg("Wait a minute, You don't have a AIRSHIP PASS, how'd you even get through the door?.. ", npc, chatType.SAY, nil);
            end
        end
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

    local vHour = VanadielHour();
    local vMin  = VanadielMinute();

    while vHour >= 0 do
        vHour = vHour - 6;
    end

    if (     vHour == -6) then vHour = 0;
    elseif ( vHour == -5) then vHour = 1;
    elseif ( vHour == -4) then vHour = 2;
    elseif ( vHour == -3) then vHour = 3;
    elseif ( vHour == -2) then vHour = 4;
    elseif ( vHour == -1) then vHour = 5;
    end

    local seconds = math.floor(2.4 * ((vHour * 60) + vMin));

    player:startEvent( 45, seconds, 0, 0, 0, 0, 0, 0, 0);
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
end;
