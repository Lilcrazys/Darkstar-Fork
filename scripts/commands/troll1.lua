---------------------------------------------------------------------------------------------------
-- @troll1 -- Spawns 1st wave of Trolls
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
      SpawnMob('16973930'); -- Troll_Paviser
      SpawnMob('16974002'); -- Gurlufur_The_Menacing
      SpawnMob('16973931'); -- Troll_Stormer
      SpawnMob('16973932'); -- Troll_Hoplite
      SpawnMob('16973933'); -- Troll_Pezhetairoi
      SpawnMob('16973934'); -- Troll_Cannoneer
      SpawnMob('16973935'); -- Troll_Velites
      SpawnMob('16973936'); -- Troll_Speculator
      SpawnMob('16973937'); -- Troll_Automaton
      SpawnMob('16973938'); -- Troll_Paviser
      SpawnMob('16973939'); -- Troll_Stormer
      SpawnMob('16973940'); -- Troll_Hoplite
      SpawnMob('16973941'); -- Troll_Pezhetairoi
      SpawnMob('16973942'); -- Troll_Cannoneer
      SpawnMob('16973943'); -- Troll_Velites
      SpawnMob('16973944'); -- Troll_Speculator
      SpawnMob('16973945'); -- Troll_Automaton
      SpawnMob('16973946'); -- Troll_Paviser
      SpawnMob('16973947'); -- Troll_Stormer
      SpawnMob('16973948'); -- Troll_Hoplite
      SpawnMob('16973949'); -- Troll_Pezhetairoi
      SpawnMob('16973950'); -- Troll_Cannoneer
      SpawnMob('16973951'); -- Troll_Velites
      SpawnMob('16973952'); -- Troll_Speculator
      SpawnMob('16973953'); -- Troll_Automaton
      SpawnMob('16973954'); -- Flame_Eruca
      SpawnMob('16973955'); -- Flame_Eruca
      SpawnMob('16973956'); -- Flame_Eruca
      SpawnMob('16973957'); -- Flame_Eruca
      SpawnMob('16973958'); -- Flame_Eruca
      SpawnMob('16973959'); -- War_Wamouracampa
      SpawnMob('16973960'); -- War_Wamouracampa
      SpawnMob('16973961'); -- War_Wamouracampa
   end
end;