-----------------------------------------
-- ID: 5718
-- Item: Cream Puff
-- Food Effect: 30 mintutes, All Races
-----------------------------------------
-- Intelligence +7
-- HP -10
-- Resist Slow
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
   target:addStatusEffect(EFFECT_FOOD,0,0,1800,5718);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
   target:addMod(MOD_FASTCAST, 20);
   target:addMod(MOD_INT, 30);
   target:addMod(MOD_MND, 30);
   target:addMod(MOD_HPP, 15);
   target:addMod(MOD_MPP, 30);
   target:addMod(MOD_MATT, 30);
   target:addMod(MOD_MACC, 30);
   target:addMod(MOD_HPHEAL, 15);
   target:addMod(MOD_ENMITY, -15);
   target:addMod(MOD_SLOWRES, 5);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
   target:delMod(MOD_FASTCAST, 20);
   target:delMod(MOD_INT, 30);
   target:delMod(MOD_MND, 30);
   target:delMod(MOD_HPP, 15);
   target:delMod(MOD_MPP, 30);
   target:delMod(MOD_MATT, 30);
   target:delMod(MOD_MACC, 30);
   target:addMod(MOD_HPHEAL, 15);
   target:delMod(MOD_ENMITY, -15);
   target:delMod(MOD_SLOWRES, 5);
end;
