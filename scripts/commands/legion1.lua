---------------------------------------------------------------------------------------------------
-- @legion1 spawns hall of An first wave
--
-- Legion
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};
function onTrigger(player)
   SpawnMob('17526785'); -- Lofty_Behemoth
   SpawnMob('17526786'); -- Lofty_Wyrm
   SpawnMob('17526787'); -- Lofty_Adamantoise
end