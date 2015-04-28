---------------------------------------------------------------------------------------------------
-- @legion1 spawns hall of An first wave
--
-- Legion
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};
function onTrigger(player)

    local assistant = false;
    if (player:getVar("AssistantGM") == 1 and (player:checkNameFlags(0x02002000) or player:checkNameFlags(0x02022000))) then
        assistant = true;
    end

    local gmlvl = player:getGMLevel();
   -- Char must be an actual GM, or an assistant.
    if (gmlvl >= 1 or assistant == true) then
        SpawnMob('17526785'); -- Lofty_Behemoth
        SpawnMob('17526786'); -- Lofty_Wyrm
        SpawnMob('17526787'); -- Lofty_Adamantoise
        player:setPos(-180, 12, 212, 192, 183);
    end
end;