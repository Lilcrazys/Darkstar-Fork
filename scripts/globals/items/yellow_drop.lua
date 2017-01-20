-----------------------------------------
--  ID: 4261
--  Item: Yellow Drop
-----------------------------------------
--  Charisma 5
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
    target:addStatusEffect(EFFECT_VIT_BOOST,5,0,900);
    target:addStatusEffect(EFFECT_MEDICINE,0,0,3600);
    ]]
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,4261);
end;

----------------------------------------
-- onEffectGain
----------------------------------------
function onEffectGain(target,effect)
    target:addMod(MOD_VIT, 6);
    target:addMod(MOD_FOOD_ATTP, 20);
    target:addMod(MOD_FOOD_ATT_CAP, 150);
    target:addMod(MOD_FOOD_DEFP, 20);
    target:addMod(MOD_FOOD_DEF_CAP, 175);
    target:addMod(MOD_FOOD_ACCP, 5);
    target:addMod(MOD_FOOD_ACC_CAP, 50);
    target:addMod(MOD_ENMITY, 10);
    target:addMod(MOD_CURE_POTENCY_RCVD, 3);
    target:addMod(MOD_HPHEAL, 5);
    target:addMod(MOD_MINNE_EFFECT, 2);
    target:addMod(MOD_ELEGY_EFFECT, 2);
    target:addMod(MOD_WS_PWR_BONUS, 6);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------
function onEffectLose(target,effect)
    target:delMod(MOD_VIT, 6);
    target:delMod(MOD_FOOD_ATTP, 20);
    target:delMod(MOD_FOOD_ATT_CAP, 150);
    target:delMod(MOD_FOOD_DEFP, 20);
    target:delMod(MOD_FOOD_DEF_CAP, 175);
    target:delMod(MOD_FOOD_ACCP, 5);
    target:delMod(MOD_FOOD_ACC_CAP, 50);
    target:delMod(MOD_ENMITY, 10);
    target:delMod(MOD_CURE_POTENCY_RCVD, 3);
    target:delMod(MOD_HPHEAL, 5);
    target:delMod(MOD_MINNE_EFFECT, 2);
    target:delMod(MOD_ELEGY_EFFECT, 2);
    target:delMod(MOD_WS_PWR_BONUS, 6);
end;
