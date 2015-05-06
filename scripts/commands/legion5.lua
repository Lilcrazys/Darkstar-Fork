---------------------------------------------------------------------------------------------------
-- @legion1 spawns hall of Mul first wave
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
       SpawnMob('17526851'); -- Paramount_Naraka
       SpawnMob('17526852'); -- Paramount_Harpeia
       SpawnMob('17526853'); -- Paramount_Mantis
       SpawnMob('17526854'); -- Paramount_Ironclad
       SpawnMob('17526856'); -- Paramount_Botulus
       player:setPos(-20, 12, 68, 64, 183);
    end
end;