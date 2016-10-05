-----------------------------------
-- Area: Hazhalm
--  NPC: _260 (Entry Gate)
-- BCNM: The Rider Cometh (Odin Prime)
-- Also involved in Einherjar
-----------------------------------
package.loaded["scripts/zones/Hazhalm_Testing_Grounds/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Hazhalm_Testing_Grounds/TextIDs");
require("scripts/globals/missions");
require("scripts/globals/quests");
require("scripts/globals/bcnm");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (TradeBCNM(player,player:getZoneID(),trade,npc)) then
        return;
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (EventTriggerBCNM(player,npc)) then
        return;
    else
        npc:openDoor(10); -- Temp
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (EventUpdateBCNM(player,csid,option)) then
        return;
    end
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (EventFinishBCNM(player,csid,option)) then
        return;
    end
end;
