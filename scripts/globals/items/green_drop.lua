-----------------------------------------
--  ID: 4260
--  Item: Green Drop
-----------------------------------------
--  Agility 5
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    --[[
    if (target:hasStatusEffect(EFFECT_MEDICINE)) then
        result = 111;
    end
    ]]
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    --[[
    target:addStatusEffect(EFFECT_AGI_BOOST,5,0,900);
    target:addStatusEffect(EFFECT_MEDICINE,0,0,3600);
    ]]
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,4260);
end;

----------------------------------------
-- onEffectGain
----------------------------------------
function onEffectGain(target,effect)
    target:addMod(MOD_AGI, 6);
    target:addMod(MOD_EVA, 9);
    target:addMod(MOD_FOOD_ATTP, 5);
    target:addMod(MOD_FOOD_ATT_CAP, 50);
    target:addMod(MOD_FOOD_RATTP, 5);
    target:addMod(MOD_FOOD_RATT_CAP, 50);
    target:addMod(MOD_FOOD_ACCP, 6);
    target:addMod(MOD_FOOD_ACC_CAP, 66);
    target:addMod(MOD_FOOD_RACCP, 13);
    target:addMod(MOD_FOOD_RACC_CAP, 88);
    target:addMod(MOD_MADRIGAL_EFFECT, 2);
    target:addMod(MOD_PRELUDE_EFFECT, 2);
    target:addMod(MOD_QUICK_DRAW_DMG, 5);
    target:addMod(MOD_MATT, 2);
    target:addMod(MOD_MACC, 4);
    target:addMod(MOD_ALL_WSDMG_FIRST_HIT, 8);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------
function onEffectLose(target,effect)
    target:delMod(MOD_AGI, 6);
    target:delMod(MOD_EVA, 9);
    target:delMod(MOD_FOOD_ATTP, 5);
    target:delMod(MOD_FOOD_ATT_CAP, 50);
    target:delMod(MOD_FOOD_RATTP, 5);
    target:delMod(MOD_FOOD_RATT_CAP, 50);
    target:delMod(MOD_FOOD_ACCP, 6);
    target:delMod(MOD_FOOD_ACC_CAP, 55);
    target:delMod(MOD_FOOD_RACCP, 13);
    target:delMod(MOD_FOOD_RACC_CAP, 88);
    target:delMod(MOD_MADRIGAL_EFFECT, 2);
    target:delMod(MOD_PRELUDE_EFFECT, 2);
    target:delMod(MOD_QUICK_DRAW_DMG, 5);
    target:delMod(MOD_MATT, 2);
    target:delMod(MOD_MACC, 4);
    target:delMod(MOD_ALL_WSDMG_FIRST_HIT, 8);
end;
