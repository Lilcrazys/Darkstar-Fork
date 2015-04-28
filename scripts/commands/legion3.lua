---------------------------------------------------------------------------------------------------
-- @legion1 spawns hall of Im first wave
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
        SpawnMob('17526819'); -- Soaring_Corse
        SpawnMob('17526820'); -- Soaring_Dvergr
        SpawnMob('17526821'); -- Soaring_Vampyr
        player:setPos(140, 12, -132, 64, 183);
    end
end;