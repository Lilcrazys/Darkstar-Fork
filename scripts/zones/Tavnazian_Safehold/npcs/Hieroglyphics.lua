-----------------------------------
-- Area:  Tavnazian_Safehold
-- NPC:   Hieroglyphics
-- Notes: Dynamis Tavnazia Enter
-- @pos 3.674 -7.278 -27.856 26
-----------------------------------
package.loaded["scripts/zones/Tavnazian_Safehold/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/dynamis");
require("scripts/globals/missions");
require("scripts/zones/Tavnazian_Safehold/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:setVar("dynaWaitxDay", 0); -- Temp
    player:PrintToPlayer("Dual Boxing here will crash the server!");
    player:PrintToPlayer("First log out ALL characters, then log in ONLY ONE for Dynamis!");

    if ( (player:hasCompletedMission(COP,DARKNESS_NAMED) or FREE_COP_DYNAMIS == 1) and player:hasKeyItem(DYNAMIS_BUBURIMU_SLIVER ) and player:hasKeyItem(DYNAMIS_QUFIM_SLIVER ) and player:hasKeyItem(DYNAMIS_VALKURM_SLIVER )) then
        local firstDyna = 0;
        local realDay = os.time();
        local dynaWaitxDay = player:getVar("dynaWaitxDay");

        if (checkFirstDyna(player,10)) then
             player:startEvent(0x0266);
        elseif (player:getMainLvl() < DYNA_LEVEL_MIN) then
            player:messageSpecial(PLAYERS_HAVE_NOT_REACHED_LEVEL,DYNA_LEVEL_MIN);
        elseif dynaWaitxDay + (BETWEEN_2DYNA_WAIT_TIME * 24 * 60 * 60) < realDay then
            player:startEvent(0x024C,10,0,0,BETWEEN_2DYNA_WAIT_TIME,32,VIAL_OF_SHROUDED_SAND,4236,4237);
        else
            dayRemaining = math.floor(((dynaWaitxDay + (BETWEEN_2DYNA_WAIT_TIME * 24 * 60 * 60)) - realDay)/3456);
            player:messageSpecial(YOU_CANNOT_ENTER_DYNAMIS,dayRemaining,10);
        end
    else
        player:messageSpecial(MYSTERIOUS_VOICE);
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

    if (csid == 0x0266) then
        if (checkFirstDyna(player,10)) then
            player:setVar("Dynamis_Status",bit.bor(player:getVar("Dynamis_Status"),1024));
        end
    elseif (csid == 0x024C and option == 0) then
        player:setVar("enteringDynamis",1);
        player:setPos(0.1,-7,-21,190,42);
    end
end;