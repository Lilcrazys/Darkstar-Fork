---------------------------------------------------------------------------------------------------
-- @legion1 spawns hall of Ki first wave
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
	    SpawnMob('17526805'); -- Mired_Cerberus
	    SpawnMob('17526806'); -- Mired_Khimaira
	    SpawnMob('17526807'); -- Mired_Hydra
	    player:setPos(130, 12, 220, 0, 183);
	end    
end;