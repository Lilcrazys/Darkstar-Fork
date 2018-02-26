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
    require("scripts/globals/msg");
    require("scripts/globals/status");
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
    player:PrintToPlayer(string.format("MainJob(jID: %s) LV: %i / SubJob(jID: %s) LV: %i ",
    target:getMainJob(), target:getMainLvl(), target:getSubJob(), target:getSubLvl()), chatType.SYSTEM_3);

    player:PrintToPlayer(string.format("HP: %i/%i  MP: %i/%i (current/max) ",
    target:getHP(), target:getMaxHP(), target:getMP(), target:getMaxMP()), chatType.SYSTEM_3);

    player:PrintToPlayer(string.format("Food Accuracy%% bonus: %i ", target:getMod(MOD_FOOD_ACCP)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Accuracy bonus: %i ", target:getMod(MOD_ACC)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("EVA Bonus: %i ", target:getMod(MOD_EVA)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Total STR: %i ", target:getStat(MOD_STR)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Total DEX: %i ", target:getStat(MOD_DEX)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Total VIT: %i ", target:getStat(MOD_VIT)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Total AGI: %i ", target:getStat(MOD_AGI)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Total MND: %i ", target:getStat(MOD_MND)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Total INT: %i ", target:getStat(MOD_INT)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Total CHR: %i ", target:getStat(MOD_CHR)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Attack bonus: %i ", target:getMod(MOD_ATT)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Total Attack: %i ", target:getStat(MOD_ATT)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Defense bonus: %i ", target:getMod(MOD_DEF)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Total Defense: %i ", target:getStat(MOD_DEF)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Magic Attack bonus: %i ", target:getMod(MOD_MATT)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Magic Defense bonus: %i ", target:getMod(MOD_MDEF)), chatType.SYSTEM_3);
    player:PrintToPlayer(string.format("Magic Accuracy bonus: %i ", target:getMod(MOD_MACC)), chatType.SYSTEM_3);
    player:PrintToPlayer("Cannot accurately get Magic Evasion yet..Darkstar does it stupidly.");

    if (target:isMob()) then
        player:PrintToPlayer(string.format("Mob's current Treasure Hunter Tier: %i", target:getTHlevel()), chatType.SYSTEM_3);
    elseif (target:isPC()) then
        player:PrintToPlayer(string.format("%s's Base Treasure Hunter w/current equipment: %i",
        target:getName(), target:getMod(MOD_TREASURE_HUNTER)), chatType.SYSTEM_3);
    end

    --[[ future use: print resistances etc..
    if (extendedMode == "some string") then
    end
    ]]
end;
