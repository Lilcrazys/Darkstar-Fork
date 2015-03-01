-----------------------------------
--
--
--
-----------------------------------

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	if (effect:getPower() == 1) then
		target:addMod(MOD_REGEN,1); -- Todo: should be latent
	elseif (effect:getPower() == 2) then
		target:addMod(MOD_REFRESH,1); -- Todo: should be latent
	elseif (effect:getPower() == 3) then
		-- food duration not implemented.
	end

	-- Begin Custom stuff
	target:addMod(MOD_RERAISE_II,1);
	target:addMod(MOD_EXP_BONUS,5);
	-- End Custom Stuff
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
	if (effect:getPower() == 1) then
		target:delMod(MOD_REGEN,1);
	elseif (effect:getPower() == 2) then
		target:delMod(MOD_REFRESH,1);
	elseif (effect:getPower() == 3) then
		-- food duration not implemented.
	end

	-- Begin Custom stuff
	target:delMod(MOD_RERAISE_II,1);
	target:delMod(MOD_EXP_BONUS,5);
	-- End Custom Stuff
end;