---------------------------------------------------------------------------------------------------
-- @mamool1 -- Spawns 1st wave of Mamool
--
-- Besieged
---------------------------------------------------------------------------------------------------


cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)

   local assistant = false;
    if (player:getVar("AssistantGM") == 1 and (player:checkNameFlags(0x02002000) or player:checkNameFlags(0x02022000))) then
      assistant = true;
    end

   local gmlvl = player:getGMLevel();
   -- Char must be an actual GM, or an assistant.
    if (gmlvl >= 1 or assistant == true) then
      SpawnMob('16973825'); --Mamool Ja Sapper
      SpawnMob('16973903'); --Thunderclap_Sareel_Ja
      SpawnMob('16973826'); --Mamool Ja Hosplitaler
      SpawnMob('16973827'); --Mamool Ja Fetial
      SpawnMob('16973828'); --Mamool Ja Spotter
      SpawnMob('16973829'); --Mamool Ja Handler
      SpawnMob('16973830'); --Mamool Ja Lizard
      SpawnMob('16973831'); --Mamool Ja Cataphract
      SpawnMob('16973832'); --Mamool Ja Wyvern
      SpawnMob('16973833'); --Mamool_Ja_Entrancer
      SpawnMob('16973834'); --Mamool_Ja_Sapper
      SpawnMob('16973835'); --Mamool_Ja_Hospitaler
      SpawnMob('16973836'); --Mamool_Ja_Fetial
      SpawnMob('16973837'); --Mamool_Ja_Spotter
      SpawnMob('16973838'); --Mamool_Ja_Handler
      SpawnMob('16973839'); --Mamool_Ja_Lizard
      SpawnMob('16973840'); --Mamool_Ja_Cataphract
      SpawnMob('16973841'); --Mamool_Ja_Wyvern
      SpawnMob('16973842'); --Mamool_Ja_Entrancer
      SpawnMob('16973843'); --Mamool Ja Sapper
      SpawnMob('16973844'); --Mamool_Ja_Hosplitaler
      SpawnMob('16973845'); --Mamool Ja Fetial
      SpawnMob('16973846'); --Mamool_Ja_Spotter
      SpawnMob('16973847'); --Mamool_Ja_Handler
      SpawnMob('16973848'); --Mamool_Ja_Lizard
      SpawnMob('16973849'); --Mamool_Ja_Cataphract
      SpawnMob('16973850'); --Mamool_Ja_Wyvern
      SpawnMob('16973851'); --Mamool_Ja_Entrancer
      SpawnMob('16973852'); --Scout_Puk
      SpawnMob('16973853'); --Scout_Puk
      SpawnMob('16973854'); --Scout_Puk
      SpawnMob('16973855'); --Scout_Puk
      SpawnMob('16973856'); --Scout_Puk
      SpawnMob('16973857'); --Raid_Raptor
      SpawnMob('16973858'); --Raid_Raptor
      SpawnMob('16973859'); --Raid_Raptor
      SpawnMob('16973860'); --Raid_Raptor
      SpawnMob('16973861'); --Raid_Raptor
    end
end;
