-----------------------------------
-- Area: Hazhalm Testing Grounds
-- Name: The Rider Cometh
-----------------------------------
package.loaded["scripts/zones/Hazhalm_Testing_Grounds/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Hazhalm_Testing_Grounds/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/globals/quests");
require("scripts/globals/titles");

-----------------------------------
-- onBcnmRegister
-----------------------------------

-- After registering the BCNM via bcnmRegister(bcnmid)
function onBcnmRegister(player,instance)
end;

-----------------------------------
-- onBcnmEnter
-----------------------------------

-- Physically entering the BCNM via bcnmEnter(bcnmid)
function onBcnmEnter(player,instance)
end;

-----------------------------------
-- onBcnmLeave
--
-- Leaving the BCNM by every mean possible, given by the LeaveCode
-- 1=Select Exit on circle
-- 2=Winning the BC
-- 3=Disconnected or warped out
-- 4=Losing the BC
-- via bcnmLeave(1) or bcnmLeave(2). LeaveCodes 3 and 4 are called
-- from the core when a player disconnects or the time limit is up, etc
-----------------------------------

function onBcnmLeave(player,instance,leavecode)
    -- print("leave code "..leavecode);
    if (leavecode == 2) then -- play end CS. Need time and battle id for record keeping + storage
        player:startEvent(0x7d01,1,1,1,instance:getTimeInside(),1,1,0);
    elseif (leavecode == 4) then
        player:startEvent(0x7d02);
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
