---------------------------------------------------------------------------------------------------
-- @troll2 -- Spawns 2nd wave of Trolls
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
      SpawnMob('16973962'); --War_Wamouracampa
      SpawnMob('16973963'); --War_Wamouracampa
      SpawnMob('16973964'); --Incendiary_Bombs
      SpawnMob('16973965'); --Incendiary_Bombs
      SpawnMob('16973966'); --Incendiary_Bombs
      SpawnMob('16973967'); --Incendiary_Bombs
      SpawnMob('16973968'); --Incendiary_Bombs
      SpawnMob('16973969'); --Fighting_Flan
      SpawnMob('16973970'); --Fighting_Flan
      SpawnMob('16973971'); --Fighting_Flan
      SpawnMob('16973972'); --Fighting_Flan
      SpawnMob('16973973'); --Fighting_Flan
      SpawnMob('16973974'); --Siege_Scorpion
      SpawnMob('16973975'); --Siege_Scorpion
      SpawnMob('16973976'); --Siege_Scorpion
      SpawnMob('16973977'); --Siege_Scorpion
      SpawnMob('16973978'); --Siege_Scorpion
      SpawnMob('16973979'); --War_Wamoura
      SpawnMob('16973980'); --War_Wamoura
      SpawnMob('16973981'); --War_Wamoura
      SpawnMob('16973982'); --War_Wamoura
      SpawnMob('16973983'); --War_Wamoura
      SpawnMob('16973984'); --Aerial_Torpedo
      SpawnMob('16973985'); --Bombshells
      SpawnMob('16973986'); --Bombshells
      SpawnMob('16973987'); --Bombshells
      SpawnMob('16973988'); --Bombshells
      SpawnMob('16973989'); --Aerial_Torpedo
      SpawnMob('16973990'); --Bombshells
      SpawnMob('16973991'); --Bombshells
      SpawnMob('16973992'); --Bombshells
      SpawnMob('16973993'); --Bombshells
      SpawnMob('16973994'); --Vyurvarjur_the_Nimble
      SpawnMob('16973995'); --Troll_Forager
      SpawnMob('16973996'); --Troll_Forager
      SpawnMob('16973997'); --Troll_Forager
      SpawnMob('16973998'); --Killing_Claw
      SpawnMob('16973999'); --Slaughterous_Scorpion
      SpawnMob('16974000'); --Slaughterous_Scorpion
   end   
end;

