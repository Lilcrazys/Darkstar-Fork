-----------------------------------
-- Area: Halvunf
--  NPC: Operating_Lever
-----------------------------------
package.loaded["scripts/zones/Halvung/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Halvung/TextIDs");

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    -- Totally nawt retail
    GetNPCByID(npc:getID() +1):openDoor(20);
    GetNPCByID(npc:getID() -1):openDoor(20);
    GetNPCByID(npc:getID() -2):openDoor(20);
    GetNPCByID(npc:getID() -3):openDoor(20);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;