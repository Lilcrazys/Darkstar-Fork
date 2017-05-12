-----------------------------------------------
-- func: @trial
-- desc: checks custom trial progress.
-----------------------------------------------
require("scripts/globals/custom_trials");
-----------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player,trialType)
    local relicTrial = player:getVar("cTrialItem[relic]");
    local relicStatus = player:getVar("cTrialComplete[relic]");
    local relicInfo = custom_trials[relicTrial];
    local mythicTrial = player:getVar("cTrialItem[mythic]");
    local mythicStatus = player:getVar("cTrialComplete[mythic]");
    local mythicInfo = custom_trials[mythicTrial];
    local empyreanTrial = player:getVar("cTrialItem[empyrean]");
    local empyreanStatus = player:getVar("cTrialComplete[empyrean]");
    local empyreanInfo = custom_trials[mythicTrial];
    -- Info.r, Info.s, Info.t, Info.trade, Info.count;

    if (relicTrial == 0 and mythicTrial == 0 and empyreanTrial == 0) then
        player:PrintToPlayer("You don't appear to any active trials.");
        return;
    end

    -- Handle case sensitivity and any possible nil comparisons..
    if (trialType == nil) then
        trialType = "all";
    else
        trialType = string.lower(trialType);
    end

    if (relicTrial > 0 and (trialType ~= "mythic" and trialType ~= "empyrean")) then
        player:PrintToPlayer(string.format("Relic trial ID : %d", relicTrial));
        player:PrintToPlayer(string.format("Completion status : %d", player:getVar("cTrialComplete[relic]")));
        player:PrintToPlayer(string.format("Relic trial stage : %d", relicInfo.s));
        player:PrintToPlayer(string.format("Objectives completed : %d of %d", player:getVar("cTrialCount[relic]"), relicInfo.count));
    end

    if (mythicTrial > 0 and (trialType ~= "relic" and trialType ~= "empyrean")) then
        player:PrintToPlayer(string.format("Mythic trial ID : %d", mythicTrial));
        player:PrintToPlayer(string.format("Completion status : %d", player:getVar("cTrialComplete[mythic]")));
        player:PrintToPlayer(string.format("Mythic trial stage : %d", mythicInfo.s));
        player:PrintToPlayer(string.format("Objectives completed : %d of %d", player:getVar("cTrialCount[mythic]"), mythicInfo.count));
    end

    if (empyreanTrial > 0 and (trialType ~= "relic" and trialType ~= "mythic")) then
        player:PrintToPlayer(string.format("Empyrean trial ID : %d", empyreanTrial));
        player:PrintToPlayer(string.format("Completion status : %d", player:getVar("cTrialComplete[empyrean]")));
        player:PrintToPlayer(string.format("Empyrean trial stage : %d", relicInfo.s));
        player:PrintToPlayer(string.format("Objectives completed : %d of %d", player:getVar("cTrialCount[empyrean]"), empyreanInfo.count));
    end
end;
