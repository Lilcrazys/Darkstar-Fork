---------------------------------------------------------------------------------------------------
-- func: getstats
-- desc: prints stats of cursor target into chatlog, for debugging.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    -- parameters = "s"
    parameters = ""
};

-- function onTrigger(player, extendedMode)
function onTrigger(player)
    -- require("scripts/globals/msg");
    require("scripts/globals/status");
    require("scripts/globals/spoofchat");
    local target = player:getCursorTarget();
    if (target == nil) then
        player:PrintToPlayer("Target something first.");
        return;
    end

    if (target:isNPC()) then
        player:PrintToPlayer("Target something other than an NPC..They don't have stats!");
        return;
    end

    -- Now down to biznaz!
    player:SpoofMsg(string.format("MainJob(jID: %s) LV: %i / SubJob(jID: %s) LV: %i ",
    target:getMainJob(), target:getMainLvl(), target:getSubJob(), target:getSubLvl()), nil, MESSAGE_ECHO, nil);

    player:SpoofMsg(string.format("CurrentHP: %i / MaxHP: %i | CurrentHP: %d / Max MP: %i ",
    target:getHP(), target:getMaxHP(), target:getMP(), target:getMaxMP()), nil, MESSAGE_ECHO, nil);

    player:SpoofMsg(string.format("Food Accuracy%% bonus: %i ", target:getMod(MOD_FOOD_ACCP)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Accuracy bonus: %i ", target:getMod(MOD_ACC)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("EVA Bonus: %i ", target:getMod(MOD_EVA)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Total STR: %i ", target:getStat(MOD_STR)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Total DEX: %i ", target:getStat(MOD_DEX)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Total VIT: %i ", target:getStat(MOD_VIT)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Total AGI: %i ", target:getStat(MOD_AGI)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Total MND: %i ", target:getStat(MOD_MND)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Total INT: %i ", target:getStat(MOD_INT)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Total CHR: %i ", target:getStat(MOD_CHR)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Attack bonus: %i ", target:getMod(MOD_ATT)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Total Attack: %i ", target:getStat(MOD_ATT)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Defense bonus: %i ", target:getMod(MOD_DEF)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Total Defense: %i ", target:getStat(MOD_DEF)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Magic Attack bonus: %i ", target:getMod(MOD_MATT)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Magic Defense bonus: %i ", target:getMod(MOD_MDEF)), nil, MESSAGE_ECHO, nil);
    player:SpoofMsg(string.format("Magic Accuracy bonus: %i ", target:getMod(MOD_MACC)), nil, MESSAGE_ECHO, nil);
    player:PrintToPlayer("Cannot accurately get Magic Evasion yet..Darkstar does it stupidly.");

    if (target:isMob()) then
        player:SpoofMsg(string.format("Mob's current Treasure Hunter Tier: %i", target:getTHlevel()), nil, MESSAGE_ECHO, nil);
    elseif (target:isPC()) then
        player:SpoofMsg(string.format("%s's Base Treasure Hunter w/current equipment: %i",
        target:getName(), target:getMod(MOD_TREASURE_HUNTER)), nil, MESSAGE_ECHO, nil);
    end

    --[[ future use: print resistances etc..
    if (extendedMode == "some string") then
    end
    ]]
end;
