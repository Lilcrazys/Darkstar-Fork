---------------------------------------------------------------------------------------------------
-- func: batfix <fix> <target player>
-- desc: This file will change pretty much everything I have to fix something.
---------------------------------------------------------------------------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/titles");
require("scripts/globals/quests");

cmdprops =
{
    permission = 1,
    parameters = "ss"
};

function onTrigger(player, fix, target)
    if (fix == nil) then
        player:PrintToPlayer("You didn't specify the fix!");
        player:PrintToPlayer("use '@batfix blunlock name' to fix broken blue mage unlock quest");
        player:PrintToPlayer("use '@batfix 99cap name' to fix someone who's cap is 75 and should be 99");
        return;
    end

    if (target == nil) then
        player:PrintToPlayer("You must enter a valid player name.");
        return;
    end

    local targ = GetPlayerByName( target );
    if (targ == nil) then
        player:PrintToPlayer("Didn't find that target.");
        return;
    end

    if (fix == "99cap") then
        if (targ:levelCap() == 75) then
            targ:addTitle(STAR_BREAKER);
            targ:addTitle(BUSHIN_ASPIRANT);
            targ:levelCap(99);
            targ:PrintToPlayer("Your level limit is now 99.");
            targ:addQuest(JEUNO,NEW_WORLDS_AWAIT);
            targ:completeQuest(JEUNO,NEW_WORLDS_AWAIT);
            targ:addQuest(JEUNO,EXPANDING_HORIZONS);
            targ:completeQuest(JEUNO,EXPANDING_HORIZONS);
            targ:addQuest(JEUNO,BEYOND_THE_STARS);
            targ:completeQuest(JEUNO,BEYOND_THE_STARS);
            targ:addQuest(JEUNO,DORMANT_POWERS_DISLODGED);
            targ:completeQuest(JEUNO,DORMANT_POWERS_DISLODGED);
            targ:addQuest(JEUNO,PRELUDE_TO_PUISSANCE);
            targ:completeQuest(JEUNO,PRELUDE_TO_PUISSANCE);
            targ:addQuest(JEUNO,BEYOND_INFINITY);
            targ:completeQuest(JEUNO,BEYOND_INFINITY);
            player:PrintToPlayer("Done.");
        else
            player:PrintToPlayer("Cap was not 75...Doesn't seem to have beaten Maat yet...");
        end
    elseif (fix == "blunlock") then
        targ:setVar("EmptyVesselStone",0);
        targ:addKeyItem(MARK_OF_ZAHAK);
        targ:unlockJob(16);
        targ:addTitle(BEARER_OF_THE_MARK_OF_ZAHAK);
        targ:completeQuest(AHT_URHGAN,AN_EMPTY_VESSEL);
        targ:setPos(148,-2,0,130,50);
    else
        player:PrintToPlayer("Unrecognized batfix.");
        player:PrintToPlayer("use '@batfix 99cap name' to fix someone who's cap is 75 and should be 99");
    end

end;