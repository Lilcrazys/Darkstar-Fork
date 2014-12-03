---------------------------------------------------------------------------------------------------
-- func: regen
-- auth:
-- desc: .toggles regen
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	if (player:getVar("Regen") == 0) then
   		  -- Toggle Regen on..
        player:setVar("Regen", 1);

        -- Add bonus effects to the player..
		player:addStatusEffect(EFFECT_REGAIN,5,1,0);
        player:addStatusEffect(EFFECT_REFRESH,50,0,0);
        player:addStatusEffect(EFFECT_REGEN,50,0,0);
    else
            -- Toggle Regen off..
        player:setVar("Regen", 0);

        -- Remove bonus effects..
		player:delStatusEffect(EFFECT_REGAIN);
        player:delStatusEffect(EFFECT_REFRESH);
        player:delStatusEffect(EFFECT_REGEN);
    end
end

