---------------------------------------------------------------------------------------------------
-- func: getstats
-- desc: prints stats of cursor target into chatlog, for debugging.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    require("scripts/globals/status");
    require("scripts/globals/spoofchat");
    local target = player:getCursorTarget();
    if (target ~= nil) then
        player:SpoofMsg(string.format("MainJob(jID:%s) Level: %s", target:getMainJob(), target:getMainLvl()), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("SubJob(jID:%s) Level: %s", target:getSubJob(), target:getSubLvl()), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Food Accuracy%% bonus: %s", target:getMod(MOD_FOOD_ACCP)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Accuracy bonus: %s", target:getMod(MOD_ACC)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("EVA Bonus: %s", target:getMod(MOD_EVA)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Total STR: %s", target:getStat(MOD_STR)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Total DEX: %s", target:getStat(MOD_DEX)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Total VIT: %s", target:getStat(MOD_VIT)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Total AGI: %s", target:getStat(MOD_AGI)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Total MND: %s", target:getStat(MOD_MND)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Total INT: %s", target:getStat(MOD_INT)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Total CHR: %s", target:getStat(MOD_CHR)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Attack bonus: %s", target:getMod(MOD_ATT)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Total Attack: %s", target:getStat(MOD_ATT)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Defense bonus: %s", target:getMod(MOD_DEF)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Total Defense: %s", target:getStat(MOD_DEF)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Magic Attack bonus: %s", target:getMod(MOD_MATT)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Magic Defense bonus: %s", target:getMod(MOD_MDEF)), nil, MESSAGE_ECHO, nil);
        player:SpoofMsg(string.format("Magic Accuracy bonus: %s", target:getMod(MOD_MACC)), nil, MESSAGE_ECHO, nil);
        player:PrintToPlayer("Cannot accurately get Magic Evasion yet..Darkstar does it stupidly.");
    else
        player:PrintToPlayer("Target something first.");
    end
end;
