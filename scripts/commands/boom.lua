---------------------------------------------------------------------------------------------------
-- func: boom
-- auth:
-- desc: .toggles regen
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	if (player:getVar("Boom") == 0) then
   		  -- Toggle Regen on..
        player:setVar("Boom", 1);

        -- Add bonus effects to the player..
		player:addStatusEffect(EFFECT_MANAFONT,1,0,0);
        player:addStatusEffect(EFFECT_CHAINSPELL,1,0,0);
		player:addStatusEffect(EFFECT_INVINCIBLE,1,0,0);
		player:addStatusEffect(EFFECT_PERFECT_DODGE,1,0,0);
		player:addStatusEffect(EFFECT_REFRESH,99,0,0);
		player:addStatusEffect(EFFECT_REGAIN,100,1,0);
		-- Add mods

    else
            -- Toggle Regen off..
        player:setVar("Boom", 0);

        -- Remove bonus effects..
		player:delStatusEffect(EFFECT_MANAFONT);
        player:delStatusEffect(EFFECT_CHAINSPELL);
		player:delStatusEffect(EFFECT_INVINCIBLE);
		player:delStatusEffect(EFFECT_PERFECT_DODGE);
		player:delStatusEffect(EFFECT_REFRESH);
		player:delStatusEffect(EFFECT_REGEN);
		--Remove mods

    end
end

