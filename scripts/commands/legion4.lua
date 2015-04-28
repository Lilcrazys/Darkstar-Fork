---------------------------------------------------------------------------------------------------
-- @legion1 spawns hall of Muru first wave
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
       SpawnMob('17526833'); -- Veiled_Amphiptere
       SpawnMob('17526834'); -- Veiled_Ixion
       SpawnMob('17526835'); -- Veiled_Sandworm
       player:setPos(-170, 12, -140, 128, 183);
    end
end;