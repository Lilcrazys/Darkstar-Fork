---------------------------------------------------------------------------------------------------
-- func: @stats
-- auth: Omni, fixed by Teo
-- desc: Prints current Player stats to the in game chatlog.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    require("scripts/globals/status");
    require("scripts/globals/spoofchat");

  if (player:getGMLevel() > 0) then -- TEMP RESTRICTED TO GMs. PAY NO MIND TO MY ABNORMAL INDENT..
    player:SpoofChatPlayer(string.format("Treasure Hunter base bonus: %s", player:getMod(MOD_TREASURE_HUNTER)), MESSAGE_ECHO);
    if (player:getMod(MOD_CRITHITRATE) > 0 or player:getMod(MOD_CRIT_DMG_INCREASE) > 0 or player:getMod(MOD_ENEMYCRITRATE) ~= 0) then
        if (player:getMod(MOD_CRITHITRATE) > 0) then
            player:SpoofChatPlayer(string.format("Crit Rate bonus: %s%%", player:getMod(MOD_CRITHITRATE)), MESSAGE_ECHO);
        end
        if (player:getMod(MOD_CRIT_DMG_INCREASE) > 0) then
            player:SpoofChatPlayer(string.format("Crit Damage bonus: %s%%", player:getMod(MOD_CRITHITRATE)), MESSAGE_ECHO);
        end
        if (player:getMod(MOD_ENEMYCRITRATE) < 0) then
            player:SpoofChatPlayer(string.format("Crit Evasion bonus: %s%%", -player:getMod(MOD_ENEMYCRITRATE)), MESSAGE_ECHO);
        elseif (player:getMod(MOD_ENEMYCRITRATE) > 0) then
            player:SpoofChatPlayer(string.format("Crit Evasion penalty: %s%%", player:getMod(MOD_ENEMYCRITRATE)), MESSAGE_ECHO);
        end
    else
        player:SpoofChatPlayer("No Critical Hit Rate, Crit Damage, or Crit Evasion bonus.", MESSAGE_ECHO);
    end
    if (player:getMod(MOD_DOUBLE_ATTACK) > 0 or player:getMod(MOD_TRIPLE_ATTACK) > 0 or player:getMod(MOD_QUAD_ATTACK) > 0) then
        if (player:getMod(MOD_DOUBLE_ATTACK) > 0) then
            player:SpoofChatPlayer(string.format("Double Attack rate: %s%%", player:getMod(MOD_DOUBLE_ATTACK)), MESSAGE_ECHO);
        end
        if (player:getMod(MOD_TRIPLE_ATTACK) > 0) then
            player:SpoofChatPlayer(string.format("Triple Attack rate: %s%%", player:getMod(MOD_TRIPLE_ATTACK)), MESSAGE_ECHO);
        end
        if (player:getMod(MOD_QUAD_ATTACK) > 0) then
            player:SpoofChatPlayer(string.format("Quadruple Attack rate: %s%%", player:getMod(MOD_QUAD_ATTACK)), MESSAGE_ECHO);
        end
    else
        player:SpoofChatPlayer("No bonus to Double, Triple, or Quadruple attack.", MESSAGE_ECHO);
    end
    if (player:getMod(MOD_HASTE_GEAR) > 0 or player:getMod(MOD_HASTE_ABILITY) > 0 or player:getMod(MOD_HASTE_MAGIC) > 0) then
        if (player:getMod(MOD_HASTE_GEAR) > 0) then
            player:SpoofChatPlayer(string.format("Haste from equipment: %s%%", (player:getMod(MOD_HASTE_GEAR)/1024)*100), MESSAGE_ECHO);
        end
        if (player:getMod(MOD_HASTE_ABILITY) > 0) then
            player:SpoofChatPlayer(string.format("Haste from ability: %s%%", (player:getMod(MOD_HASTE_ABILITY)/1024)*100), MESSAGE_ECHO);
        end
        if (player:getMod(MOD_HASTE_MAGIC) > 0) then
            player:SpoofChatPlayer(string.format("Haste from magic: %s%%", (player:getMod(MOD_HASTE_MAGIC)/1024)*100), MESSAGE_ECHO);
        end
    else
        player:SpoofChatPlayer("No Haste bonus from gear, ability, or magic", MESSAGE_ECHO);
    end
    if (player:getMod(MOD_MDEF) > 0 or player:getMod(MOD_MATT) > 0 or player:getMod(MOD_MACC) > 0) then
    -- if (player:getMod(MOD_MDEF) > 0 or player:getMod(MOD_MATT) > 0 or player:getMod(MOD_MACC) > 0 or player:getMod(MOD_MEVA) > 0) then
        if (player:getMod(MOD_MDEF) > 0) then
            player:SpoofChatPlayer(string.format("Magic Defense bonus: %s", player:getMod(MOD_MDEF)), MESSAGE_ECHO);
        end
        if (player:getMod(MOD_MATT) > 0) then
            player:SpoofChatPlayer(string.format("Magic Attack bonus: %s", player:getMod(MOD_MATT)), MESSAGE_ECHO);
        end
        if (player:getMod(MOD_MACC) > 0) then
            player:SpoofChatPlayer(string.format("Magic Accuracy bonus: %s", player:getMod(MOD_MACC)), MESSAGE_ECHO);
        end
        -- Cannot accurately get Magic Evasion yet..Darkstar does it stupidly.
        -- if (player:getMod(MOD_MEVA) > 0) then
            -- player:SpoofChatPlayer(string.format("Magic Evasion bonus: %s", player:getMod(MOD_MEVA)), MESSAGE_ECHO);
        -- end
    else
        -- player:SpoofChatPlayer("No bonus to Magic Defense, Magic Attack, Magic Accuracy, or Magic Evasion.", MESSAGE_ECHO);
        player:SpoofChatPlayer("No bonus to Magic Defense, Magic Attack, or Magic Accuracy.", MESSAGE_ECHO);
    end
    player:SpoofChatPlayer("Get additional info from: /checkparam", MESSAGE_ECHO);
  else -- TEMP RESTRICTED TO GMs. PAY NO MIND TO MY ABNORMAL INDENT..
    player:PrintToPlayer("Use /checkparam");
  end
end;