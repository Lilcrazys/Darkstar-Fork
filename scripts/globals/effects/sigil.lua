-----------------------------------
--
--
--
-----------------------------------

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	-- 1= regen, 2= refresh, 4= meal duration, 8= exp loss reduction, 15 = all
	if (effect:getPower() == 1) then
		target:addMod(MOD_REGEN,1); -- Todo: should be latent
	elseif (effect:getPower() == 2) then
		target:addMod(MOD_REFRESH,1); -- Todo: should be latent
	elseif (effect:getPower() == 3) then
		target:addMod(MOD_REGEN,1); -- Todo: should be latent
		target:addMod(MOD_REFRESH,1); -- Todo: should be latent
	elseif (effect:getPower() == 4) then
		-- food duration not implemented.
	elseif (effect:getPower() == 5) then
		target:addMod(MOD_REGEN,1); -- Todo: should be latent
		-- food duration not implemented.
	elseif (effect:getPower() == 6) then
		target:addMod(MOD_REFRESH,1); -- Todo: should be latent
		-- food duration not implemented.
	elseif (effect:getPower() == 7) then
		target:addMod(MOD_REGEN,1); -- Todo: should be latent
		target:addMod(MOD_REFRESH,1); -- Todo: should be latent
		-- food duration not implemented.
	elseif (effect:getPower() == 8) then
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 9) then
		target:addMod(MOD_REGEN,1); -- Todo: should be latent
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 10) then
		target:addMod(MOD_REFRESH,1); -- Todo: should be latent
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 11) then
		target:addMod(MOD_REGEN,1); -- Todo: should be latent
		target:addMod(MOD_REFRESH,1); -- Todo: should be latent
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 12) then
		-- food duration not implemented.
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 13) then
		target:addMod(MOD_REGEN,1); -- Todo: should be latent
		-- food duration not implemented.
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 14) then
		target:addMod(MOD_REFRESH,1); -- Todo: should be latent
		-- food duration not implemented.
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 15) then
		target:addMod(MOD_REGEN,1); -- Todo: should be latent
		target:addMod(MOD_REFRESH,1); -- Todo: should be latent
		-- food duration not implemented.
		-- exp loss reduction not implemented.
	end

	-- Begin Custom stuff
	target:addMod(MOD_RERAISE_III,1);
	target:addMod(MOD_EXP_BONUS,10);
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
	-- 1= regen, 2= refresh, 4= meal duration, 8= exp loss reduction, 15 = all
	if (effect:getPower() == 1) then
		target:delMod(MOD_REGEN,1); -- Todo: should be latent
	elseif (effect:getPower() == 2) then
		target:delMod(MOD_REFRESH,1); -- Todo: should be latent
	elseif (effect:getPower() == 3) then
		target:delMod(MOD_REGEN,1); -- Todo: should be latent
		target:delMod(MOD_REFRESH,1); -- Todo: should be latent
	elseif (effect:getPower() == 4) then
		-- food duration not implemented.
	elseif (effect:getPower() == 5) then
		target:delMod(MOD_REGEN,1); -- Todo: should be latent
		-- food duration not implemented.
	elseif (effect:getPower() == 6) then
		target:delMod(MOD_REFRESH,1); -- Todo: should be latent
		-- food duration not implemented.
	elseif (effect:getPower() == 7) then
		target:delMod(MOD_REGEN,1); -- Todo: should be latent
		target:delMod(MOD_REFRESH,1); -- Todo: should be latent
		-- food duration not implemented.
	elseif (effect:getPower() == 8) then
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 9) then
		target:delMod(MOD_REGEN,1); -- Todo: should be latent
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 10) then
		target:delMod(MOD_REFRESH,1); -- Todo: should be latent
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 11) then
		target:delMod(MOD_REGEN,1); -- Todo: should be latent
		target:delMod(MOD_REFRESH,1); -- Todo: should be latent
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 12) then
		-- food duration not implemented.
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 13) then
		target:delMod(MOD_REGEN,1); -- Todo: should be latent
		-- food duration not implemented.
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 14) then
		target:delMod(MOD_REFRESH,1); -- Todo: should be latent
		-- food duration not implemented.
		-- exp loss reduction not implemented.
	elseif (effect:getPower() == 15) then
		target:delMod(MOD_REGEN,1); -- Todo: should be latent
		target:delMod(MOD_REFRESH,1); -- Todo: should be latent
		-- food duration not implemented.
		-- exp loss reduction not implemented.
	end

	-- Begin Custom stuff
	target:delMod(MOD_RERAISE_III,1);
	target:delMod(MOD_EXP_BONUS,10);
	-- End Custom Stuff
end;