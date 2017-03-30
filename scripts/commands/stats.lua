---------------------------------------------------------------------------------------------------
-- func: @stats
-- auth: Omni, fixed by Teo
-- desc: Prints current Player stats to the in game chatlog.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    require("scripts/globals/status");
    require("scripts/globals/spoofchat");
    player:SpoofMsg(string.format("Treasure Hunter base bonus: %s", player:getMod(MOD_TREASURE_HUNTER)), nil, MESSAGE_ECHO, nil);
    if (player:getMod(MOD_CRITHITRATE) > 0 or player:getMod(MOD_CRIT_DMG_INCREASE) > 0 or player:getMod(MOD_ENEMYCRITRATE) ~= 0) then
        if (player:getMod(MOD_CRITHITRATE) > 0) then
            player:SpoofMsg(string.format("Crit Rate bonus: %s%%", player:getMod(MOD_CRITHITRATE)), nil, MESSAGE_ECHO, nil);
        end
        if (player:getMod(MOD_CRIT_DMG_INCREASE) > 0) then
            player:SpoofMsg(string.format("Crit Damage bonus: %s%%", player:getMod(MOD_CRITHITRATE)), nil, MESSAGE_ECHO, nil);
        end
        if (player:getMod(MOD_ENEMYCRITRATE) < 0) then
            player:SpoofMsg(string.format("Crit Evasion bonus: %s%%", -player:getMod(MOD_ENEMYCRITRATE)), nil, MESSAGE_ECHO, nil);
        elseif (player:getMod(MOD_ENEMYCRITRATE) > 0) then
            player:SpoofMsg(string.format("Crit Evasion penalty: %s%%", player:getMod(MOD_ENEMYCRITRATE)), nil, MESSAGE_ECHO, nil);
        end
    else
        player:SpoofMsg("No Critical Hit Rate, Crit Damage, or Crit Evasion bonus. ", nil, MESSAGE_ECHO, nil);
    end
    if (player:getMod(MOD_DOUBLE_ATTACK) > 0 or player:getMod(MOD_TRIPLE_ATTACK) > 0 or player:getMod(MOD_QUAD_ATTACK) > 0) then
        if (player:getMod(MOD_DOUBLE_ATTACK) > 0) then
            player:SpoofMsg(string.format("Double Attack rate: %s%%", player:getMod(MOD_DOUBLE_ATTACK)), nil, MESSAGE_ECHO, nil);
        end
        if (player:getMod(MOD_TRIPLE_ATTACK) > 0) then
            player:SpoofMsg(string.format("Triple Attack rate: %s%%", player:getMod(MOD_TRIPLE_ATTACK)), nil, MESSAGE_ECHO, nil);
        end
        if (player:getMod(MOD_QUAD_ATTACK) > 0) then
            player:SpoofMsg(string.format("Quadruple Attack rate: %s%%", player:getMod(MOD_QUAD_ATTACK)), nil, MESSAGE_ECHO, nil);
        end
    else
        player:SpoofMsg("No bonus to Double, Triple, or Quadruple attack. ", nil, MESSAGE_ECHO, nil);
    end
    if (player:getMod(MOD_HASTE_GEAR) > 0 or player:getMod(MOD_HASTE_ABILITY) > 0 or player:getMod(MOD_HASTE_MAGIC) > 0) then
        if (player:getMod(MOD_HASTE_GEAR) > 0) then
            player:SpoofMsg(string.format("Haste from equipment: %s%%", (player:getMod(MOD_HASTE_GEAR)/1024)*100), nil, MESSAGE_ECHO, nil);
        end
        if (player:getMod(MOD_HASTE_ABILITY) > 0) then
            player:SpoofMsg(string.format("Haste from ability: %s%%", (player:getMod(MOD_HASTE_ABILITY)/1024)*100), nil, MESSAGE_ECHO, nil);
        end
        if (player:getMod(MOD_HASTE_MAGIC) > 0) then
            player:SpoofMsg(string.format("Haste from magic: %s%%", (player:getMod(MOD_HASTE_MAGIC)/1024)*100), nil, MESSAGE_ECHO, nil);
        end
    else
        player:SpoofMsg("No Haste bonus from gear, ability, or magic ", nil, MESSAGE_ECHO, nil);
    end
    if (player:getMod(MOD_MDEF) > 0 or player:getMod(MOD_MATT) > 0 or player:getMod(MOD_MACC) > 0) then
    -- if (player:getMod(MOD_MDEF) > 0 or player:getMod(MOD_MATT) > 0 or player:getMod(MOD_MACC) > 0 or player:getMod(MOD_MEVA) > 0) then
        if (player:getMod(MOD_MDEF) > 0) then
            player:SpoofMsg(string.format("Magic Defense bonus: %s", player:getMod(MOD_MDEF)), nil, MESSAGE_ECHO, nil);
        end
        if (player:getMod(MOD_MATT) > 0) then
            player:SpoofMsg(string.format("Magic Attack bonus: %s", player:getMod(MOD_MATT)), nil, MESSAGE_ECHO, nil);
        end
        if (player:getMod(MOD_MACC) > 0) then
            player:SpoofMsg(string.format("Magic Accuracy bonus: %s", player:getMod(MOD_MACC)), nil, MESSAGE_ECHO, nil);
        end
        -- Cannot accurately get Magic Evasion yet..Darkstar does it stupidly.
        -- if (player:getMod(MOD_MEVA) > 0) then
            -- player:SpoofMsg(string.format("Magic Evasion bonus: %s", player:getMod(MOD_MEVA)), MESSAGE_ECHO);
        -- end
    else
        -- player:SpoofMsg("No bonus to Magic Defense, Magic Attack, Magic Accuracy, or Magic Evasion. ", nil, MESSAGE_ECHO, nil);
        player:SpoofMsg("No bonus to Magic Defense, Magic Attack, or Magic Accuracy. ", nil, MESSAGE_ECHO, nil);
    end
    player:SpoofMsg("Get additional info from: /checkparam ", nil, MESSAGE_ECHO, nil);
end;