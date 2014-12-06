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

-- Don't use a var here, it doesn't get cleared when the effects get removed by causes other than GM command...
function onTrigger(player)
	-- Clear any existing...
	player:delStatusEffect(EFFECT_REGEN);
	player:delStatusEffect(EFFECT_REFRESH);
	player:delStatusEffect(EFFECT_REGAIN);
	-- And replace with fresh status...
	player:addStatusEffect(EFFECT_REGEN,10,0,0);
	player:addStatusEffect(EFFECT_REFRESH,6,0,0);
	player:addStatusEffect(EFFECT_REGAIN,5,1,0);
end

