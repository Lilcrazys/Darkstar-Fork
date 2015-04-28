---------------------------------------------------------------------------------------------------
-- @undead3 -- Spawns 3rd wave of Undead
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
      SpawnMob('16974095'); --Lamia_Freebooter
      SpawnMob('16974096'); --Lamia_Freebooter
      SpawnMob('16974097'); --Lamia_Freebooter
      SpawnMob('16974098'); --Pining_Abazohn
      SpawnMob('16974099'); --Qutrub_Forayer
      SpawnMob('16974100'); --Qutrub_Forayer
      SpawnMob('16974101'); --Qutrub_Forayer
      SpawnMob('16974102'); --Medusa
      SpawnMob('16974103'); --Nemean_Lion
      SpawnMob('16974104'); --Lamia_No.34
      SpawnMob('16974105'); --Lamia_No.212
      SpawnMob('16974106'); --Lamia_No.15
      SpawnMob('16974107'); --Merrow_No.11
      SpawnMob('16974108'); --Lamia_No.9
      SpawnMob('16974109'); --Lamia_Elemental
      SpawnMob('16974110'); --Lamia_Elemental
      SpawnMob('16974111'); --Lamia_Elemental
      SpawnMob('16974112'); --Lamia_Avatar
      SpawnMob('16974113'); --Lamia_Avatar
      SpawnMob('16974114'); --Lamia_Avatar
      SpawnMob('16974115'); --Merrow_No.12
      SpawnMob('16974116'); --Lamia_No.3
      SpawnMob('16974117'); --Lamia_No.2
      SpawnMob('16974118'); --Acrolith
      SpawnMob('16974119'); --Acrolith
      SpawnMob('16974120'); --Acrolith
      SpawnMob('16974121'); --Acrolith
      SpawnMob('16974122'); --Acrolith
      SpawnMob('16974123'); --Acrolith
      SpawnMob('16974124'); --Acrolith
      SpawnMob('16974125'); --Acrolith
      SpawnMob('16974126'); --Acrolith
   end   
end;

