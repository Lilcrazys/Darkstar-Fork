---------------------------------------------------------------------------------------------------
-- func: @stats
-- desc: Prints current Player stats to the in game chatlog.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    if (player:getVar("SoftBan") > 0) then
        player:PrintToPlayer("Error.");
        return;
    end

    require("scripts/globals/status");
    require("scripts/globals/msg");

    player:PrintToPlayer(string.format("Treasure Hunter base bonus: %s", player:getMod(MOD_TREASURE_HUNTER)), chatType.SYSTEM_3);
    if (player:getMod(MOD_CRITHITRATE) > 0 or player:getMod(MOD_CRIT_DMG_INCREASE) > 0 or player:getMod(MOD_ENEMYCRITRATE) ~= 0) then
        if (player:getMod(MOD_CRITHITRATE) > 0) then
            player:PrintToPlayer(string.format("Crit Rate bonus: %s%%", player:getMod(MOD_CRITHITRATE)), chatType.SYSTEM_3);
        end
        if (player:getMod(MOD_CRIT_DMG_INCREASE) > 0) then
            player:PrintToPlayer(string.format("Crit Damage bonus: %s%%", player:getMod(MOD_CRITHITRATE)), chatType.SYSTEM_3);
        end
        if (player:getMod(MOD_ENEMYCRITRATE) < 0) then
            player:PrintToPlayer(string.format("Crit Evasion bonus: %s%%", -player:getMod(MOD_ENEMYCRITRATE)), chatType.SYSTEM_3);
        elseif (player:getMod(MOD_ENEMYCRITRATE) > 0) then
            player:PrintToPlayer(string.format("Crit Evasion penalty: %s%%", player:getMod(MOD_ENEMYCRITRATE)), chatType.SYSTEM_3);
        end
    else
        player:PrintToPlayer("No Critical Hit Rate, Crit Damage, or Crit Evasion bonus. ", chatType.SYSTEM_3);
    end
    if (player:getMod(MOD_DOUBLE_ATTACK) > 0 or player:getMod(MOD_TRIPLE_ATTACK) > 0 or player:getMod(MOD_QUAD_ATTACK) > 0) then
        if (player:getMod(MOD_DOUBLE_ATTACK) > 0) then
            player:PrintToPlayer(string.format("Double Attack rate: %s%%", player:getMod(MOD_DOUBLE_ATTACK)), chatType.SYSTEM_3);
        end
        if (player:getMod(MOD_TRIPLE_ATTACK) > 0) then
            player:PrintToPlayer(string.format("Triple Attack rate: %s%%", player:getMod(MOD_TRIPLE_ATTACK)), chatType.SYSTEM_3);
        end
        if (player:getMod(MOD_QUAD_ATTACK) > 0) then
            player:PrintToPlayer(string.format("Quadruple Attack rate: %s%%", player:getMod(MOD_QUAD_ATTACK)), chatType.SYSTEM_3);
        end
    else
        player:PrintToPlayer("No bonus to Double, Triple, or Quadruple attack. ", chatType.SYSTEM_3);
    end
    if (player:getMod(MOD_HASTE_GEAR) > 0 or player:getMod(MOD_HASTE_ABILITY) > 0 or player:getMod(MOD_HASTE_MAGIC) > 0) then
        if (player:getMod(MOD_HASTE_GEAR) > 0) then
            player:PrintToPlayer(string.format("Haste from equipment: %s%%", (player:getMod(MOD_HASTE_GEAR)/1024)*100), chatType.SYSTEM_3);
        end
        if (player:getMod(MOD_HASTE_ABILITY) > 0) then
            player:PrintToPlayer(string.format("Haste from ability: %s%%", (player:getMod(MOD_HASTE_ABILITY)/1024)*100), chatType.SYSTEM_3);
        end
        if (player:getMod(MOD_HASTE_MAGIC) > 0) then
            player:PrintToPlayer(string.format("Haste from magic: %s%%", (player:getMod(MOD_HASTE_MAGIC)/1024)*100), chatType.SYSTEM_3);
        end
    else
        player:PrintToPlayer("No Haste bonus from gear, ability, or magic ", chatType.SYSTEM_3);
    end
    if (player:getMod(MOD_MDEF) > 0 or player:getMod(MOD_MATT) > 0 or player:getMod(MOD_MACC) > 0) then
    -- if (player:getMod(MOD_MDEF) > 0 or player:getMod(MOD_MATT) > 0 or player:getMod(MOD_MACC) > 0 or player:getMod(MOD_MEVA) > 0) then
        if (player:getMod(MOD_MDEF) > 0) then
            player:PrintToPlayer(string.format("Magic Defense bonus: %s", player:getMod(MOD_MDEF)), chatType.SYSTEM_3);
        end
        if (player:getMod(MOD_MATT) > 0) then
            player:PrintToPlayer(string.format("Magic Attack bonus: %s", player:getMod(MOD_MATT)), chatType.SYSTEM_3);
        end
        if (player:getMod(MOD_MACC) > 0) then
            player:PrintToPlayer(string.format("Magic Accuracy bonus: %s", player:getMod(MOD_MACC)), chatType.SYSTEM_3);
        end
        -- Cannot accurately get Magic Evasion yet..Darkstar does it stupidly.
        -- if (player:getMod(MOD_MEVA) > 0) then
            -- player:PrintToPlayer(string.format("Magic Evasion bonus: %s", player:getMod(MOD_MEVA)), chatType.SYSTEM_3);
        -- end
    else
        -- player:PrintToPlayer("No bonus to Magic Defense, Magic Attack, Magic Accuracy, or Magic Evasion. ", chatType.SYSTEM_3);
        player:PrintToPlayer("No bonus to Magic Defense, Magic Attack, or Magic Accuracy. ", chatType.SYSTEM_3);
    end
    player:PrintToPlayer("Get additional info from: /checkparam ", chatType.SYSTEM_3);
end;