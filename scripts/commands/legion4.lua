---------------------------------------------------------------------------------------------------
-- @legion1 spawns hall of Muru first wave
--
-- Legion
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};
function onTrigger(player)
   SpawnMob('17526833'); -- Veiled_Amphiptere
   SpawnMob('17526834'); -- Veiled_Ixion
   SpawnMob('17526835'); -- Veiled_Sandworm
end