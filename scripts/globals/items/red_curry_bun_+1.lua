-----------------------------------------
-- ID: 5765
-- Item: red_curry_bun_+1
-- Food Effect: 30 Min, All Races
-----------------------------------------
-- Health 35
-- Strength 7
-- Agility 3
-- Attack % 24.7
-- Attack Cap 150
-- Ranged ATT % 24.7
-- Ranged ATT Cap 150

-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
		result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addStatusEffect(EFFECT_FOOD,0,0,1800,5765);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_HPP, 20);
	target:addMod(MOD_DEX, 30);
	target:addMod(MOD_AGI, 30);
	target:addMod(MOD_FOOD_RACCP, 20);
	target:addMod(MOD_FOOD_RACC_CAP, 200);
	target:addMod(MOD_FOOD_RATTP, 20);
	target:addMod(MOD_FOOD_RATT_CAP, 200);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_HPP, 20);
	target:delMod(MOD_DEX, 30);
    target:delMod(MOD_AGI, 30);
	target:delMod(MOD_FOOD_RACCP, 20);
	target:delMod(MOD_FOOD_RACC_CAP, 200);
	target:delMod(MOD_FOOD_RATTP, 20);
	target:delMod(MOD_FOOD_RATT_CAP, 200);
end;