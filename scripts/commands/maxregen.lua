---------------------------------------------------------------------------------------------------
-- func: regen2
-- auth:
-- desc: .toggles regen
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	if (player:getVar("MaxRegen") == 0) then
   		  -- Toggle Regen on..
        player:setVar("MaxRegen", 1);

        -- Add bonus effects to the player..
		player:addStatusEffect(EFFECT_REGAIN,100,1,0);
        player:addStatusEffect(EFFECT_REFRESH,99,0,0);
        player:addStatusEffect(EFFECT_REGEN,99,0,0);
    else
            -- Toggle Regen off..
        player:setVar("MaxRegen", 0);

        -- Remove bonus effects..
		player:delStatusEffect(EFFECT_REGAIN);
        player:delStatusEffect(EFFECT_REFRESH);
        player:delStatusEffect(EFFECT_REGEN);
    end
end

