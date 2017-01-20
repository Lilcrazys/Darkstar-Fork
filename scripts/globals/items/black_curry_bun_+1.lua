-----------------------------------------
-- ID: 5764
-- Item: black_curry_bun+1
-- Food Effect: 60 minutes, All Races
-----------------------------------------
-- Intelligence +1
-- Vitality +4
-- Dexterity +2
-- Defense +~16%

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
    target:addStatusEffect(EFFECT_FOOD,0,0,3600,5764);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
  --[[
    target:addMod(MOD_DEX, 4);
    target:addMod(MOD_VIT, 6);
    target:addMod(MOD_INT, 3);
    target:addMod(MOD_MND, 1);
    target:addMod(MOD_ACC, 7);
    target:addMod(MOD_RACC, 7);
    target:addMod(MOD_EVA, 7);
    target:addMod(MOD_FOOD_DEFP, 25);
    target:addMod(MOD_FOOD_DEF_CAP, 200);
    target:addMod(MOD_SLEEPRES, 5);
    target:addMod(MOD_HPHEAL, 6);
    target:addMod(MOD_MPHEAL, 3);
  ]]
    target:addMod(MOD_HPP, 40);
    target:addMod(MOD_VIT, 20);
    target:addMod(MOD_ACC, 15);
    target:addMod(MOD_ENMITY, 20);
    target:addMod(MOD_FOOD_DEFP, 25);
    target:addMod(MOD_FOOD_DEF_CAP, 250);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
  --[[
    target:delMod(MOD_DEX, 4);
    target:delMod(MOD_VIT, 6);
    target:delMod(MOD_INT, 3);
    target:delMod(MOD_MND, 1);
    target:delMod(MOD_ACC, 7);
    target:delMod(MOD_RACC, 7);
    target:delMod(MOD_EVA, 7);
    target:delMod(MOD_FOOD_DEFP, 25);
    target:delMod(MOD_FOOD_DEF_CAP, 200);
    target:delMod(MOD_SLEEPRES, 5);
    target:delMod(MOD_HPHEAL, 6);
    target:delMod(MOD_MPHEAL, 3);
  ]]
    target:delMod(MOD_HPP, 40);
    target:delMod(MOD_VIT, 20);
    target:delMod(MOD_ACC, 15);
    target:delMod(MOD_ENMITY, 20);
    target:delMod(MOD_FOOD_DEFP, 25);
    target:delMod(MOD_FOOD_DEF_CAP, 250);
end;