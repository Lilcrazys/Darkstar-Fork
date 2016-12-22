-----------------------------------------------
-- func: @checktrial <target>
-- desc: checks custom trial progress.
-----------------------------------------------
require("scripts/globals/custom_trials");
-----------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "ss"
};

function onTrigger(player, trialType, target)
    if (target == nil and player:getCursorTarget() == nil) then
        player:PrintToPlayer("You must target or name the player to check, while on the same map server.");
        player:PrintToPlayer("@checktrial trialType target");
        return;
    end

    local thisDude;

    if (target == nil and player:getCursorTarget() ~= nil) then
        thisDude = player:getCursorTarget();
    elseif (target ~= nil and GetPlayerByName(target) == nil) then
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
        player:PrintToPlayer("Make sure the target is online and you are on the same map server.");
        return;
    else
        thisDude = GetPlayerByName(target);
    end

    local relicTrial = thisDude:getVar("cTrialItem[relic]");
    local relicStatus = thisDude:getVar("cTrialComplete[relic]");
    local relicInfo = custom_trials[relicTrial];
    local mythicTrial = thisDude:getVar("cTrialItem[mythic]");
    local mythicStatus = thisDude:getVar("cTrialComplete[mythic]");
    local mythicInfo = custom_trials[mythicTrial];
    local empyreanTrial = thisDude:getVar("cTrialItem[empyrean]");
    local empyreanStatus = thisDude:getVar("cTrialComplete[empyrean]");
    local empyreanInfo = custom_trials[mythicTrial];
    -- Info.r, Info.s, Info.t, Info.trade, Info.count;

    if (relicTrial == 0 and mythicTrial == 0 and empyreanTrial == 0) then
        player:PrintToPlayer(string.format("Target '%s' doesn't appear to any active trials."));
        return;
    end

    if (relicTrial > 0 and (trialType ~= "mythic" and trialType ~= "empyrean")) then
        player:PrintToPlayer(string.format("Relic trial ID : %d", relicTrial));
        player:PrintToPlayer(string.format("Completion status : %d", thisDude:getVar("cTrialComplete[relic]")));
        player:PrintToPlayer(string.format("Relic trial stage : %d", relicInfo.s));
        player:PrintToPlayer(string.format("Objectives completed : %d of %d", thisDude:getVar("cTrialCount[relic]"), relicInfo.count));
    end

    if (mythicTrial > 0 and (trialType ~= "relic" and trialType ~= "empyrean")) then
        player:PrintToPlayer(string.format("Mythic trial ID : %d", mythicTrial));
        player:PrintToPlayer(string.format("Completion status : %d", thisDude:getVar("cTrialComplete[mythic]")));
        player:PrintToPlayer(string.format("Mythic trial stage : %d", mythicInfo.s));
        player:PrintToPlayer(string.format("Objectives completed : %d of %d", thisDude:getVar("cTrialCount[mythic]"), mythicInfo.count));
    end

    if (empyreanTrial > 0 and (trialType ~= "relic" and trialType ~= "mythic")) then
        player:PrintToPlayer(string.format("Empyrean trial ID : %d", empyreanTrial));
        player:PrintToPlayer(string.format("Completion status : %d", thisDude:getVar("cTrialComplete[empyrean]")));
        player:PrintToPlayer(string.format("Empyrean trial stage : %d", relicInfo.s));
        player:PrintToPlayer(string.format("Objectives completed : %d of %d", thisDude:getVar("cTrialCount[empyrean]"), empyreanInfo.count));
    end
end;