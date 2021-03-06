-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Papal Chambers
--  Finish Mission: The Davoi Report
-- !pos 131 -11 122 231
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
package.loaded["scripts/globals/missions"] = nil;
-----------------------------------
require("scripts/globals/missions");
require("scripts/globals/keyitems");
require("scripts/zones/Northern_San_dOria/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    if (player:getCurrentMission(SANDORIA) == THE_DAVOI_REPORT and player:hasKeyItem(TEMPLE_KNIGHTS_DAVOI_REPORT)) then
        player:startEvent(695); -- Finish Mission "The Davoi Report"
    elseif (player:getCurrentMission(SANDORIA) == PRESTIGE_OF_THE_PAPSQUE and player:getVar("MissionStatus") == 0) then
        player:startEvent(7);
    elseif (player:getCurrentMission(SANDORIA) == PRESTIGE_OF_THE_PAPSQUE and player:getVar("MissionStatus") == 1) then
        player:startEvent(9);
    elseif (player:getCurrentMission(SANDORIA) == PRESTIGE_OF_THE_PAPSQUE and player:hasKeyItem(ANCIENT_SANDORIAN_TABLET)) then
        player:startEvent(8);
    end
    return 1;

end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);

    if (csid == 695 or csid == 7 or csid == 8) then
        finishMissionTimeline(player,3,csid,option);
    end

end;
