-----------------------------------------
-- ID: 5229
-- Item: plate_of_homemade_risotto
-- Food Effect: 30Min, All Races
-----------------------------------------
-- Mind 1
-- Accuracy +12% (cap 80)
-- Attack +10% (cap 40)
-- Ranged Accuracy +12% (cap 80)
-- Ranged Attack +10% (cap 40)
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,5229);
end;

function onEffectGain(target, effect)
    target:addMod(MOD_MND, 1);
    target:addMod(MOD_FOOD_ACCP, 12);
    target:addMod(MOD_FOOD_ACC_CAP, 80);
    target:addMod(MOD_FOOD_ATTP, 10);
    target:addMod(MOD_FOOD_ATT_CAP, 40);
    target:addMod(MOD_FOOD_RACCP, 12);
    target:addMod(MOD_FOOD_RACC_CAP, 80);
    target:addMod(MOD_FOOD_RATTP, 10);
    target:addMod(MOD_FOOD_RATT_CAP, 40);
end;

function onEffectLose(target, effect)
    target:delMod(MOD_MND, 1);
    target:delMod(MOD_FOOD_ACCP, 12);
    target:delMod(MOD_FOOD_ACC_CAP, 80);
    target:delMod(MOD_FOOD_ATTP, 10);
    target:delMod(MOD_FOOD_ATT_CAP, 40);
    target:delMod(MOD_FOOD_RACCP, 12);
    target:delMod(MOD_FOOD_RACC_CAP, 80);
    target:delMod(MOD_FOOD_RATTP, 10);
    target:delMod(MOD_FOOD_RATT_CAP, 40);
end;
