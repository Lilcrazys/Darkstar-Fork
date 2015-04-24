---------------------------------------------------------------------------------------------------
-- @legion1 spawns hall of Ki first wave
--
-- Legion
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iiii"
};
function onTrigger(player)
   SpawnMob('17526805'); -- Mired_Cerberus
   SpawnMob('17526806'); -- Mired_Khimaira
   SpawnMob('17526807'); -- Mired_Hydra
end