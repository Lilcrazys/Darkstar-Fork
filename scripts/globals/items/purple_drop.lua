-----------------------------------------
--  ID: 4262
--  Item: Purple Drop
--  Dexterity 5
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");

function onItemCheck(target)
    --[[
    if (target:hasStatusEffect(EFFECT_MEDICINE)) then
        return msgBasic.ITEM_NO_USE_MEDICATED;
    end
    ]]
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        return 246;
    end
    return 0;
end;

function onItemUse(target)
    --[[
    target:addStatusEffect(EFFECT_DEX_BOOST,5,0,900);
    target:addStatusEffect(EFFECT_MEDICINE,0,0,3600);
    ]]
    target:addStatusEffect(EFFECT_FOOD,0,0,2700,4262);
end;

----------------------------------------
-- onEffectGain
----------------------------------------
function onEffectGain(target,effect)
    target:addMod(MOD_DEX, 6);
    target:addMod(MOD_FOOD_ATTP, 5);
    target:addMod(MOD_FOOD_ATT_CAP, 50);
    target:addMod(MOD_FOOD_RATTP, 5);
    target:addMod(MOD_FOOD_RATT_CAP, 50);
    target:addMod(MOD_FOOD_ACCP, 13);
    target:addMod(MOD_FOOD_ACC_CAP, 88);
    target:addMod(MOD_FOOD_RACCP, 6);
    target:addMod(MOD_FOOD_RACC_CAP, 66);
    target:addMod(MOD_MADRIGAL_EFFECT, 2);
    target:addMod(MOD_PRELUDE_EFFECT, 2);
    target:addMod(MOD_QUICK_DRAW_DMG, 10);
    target:addMod(MOD_MATT, 3);
    target:addMod(MOD_MACC, 2);
    target:addMod(MOD_WSACC, 15);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------
function onEffectLose(target,effect)
    target:delMod(MOD_DEX, 6);
    target:delMod(MOD_FOOD_ATTP, 5);
    target:delMod(MOD_FOOD_ATT_CAP, 50);
    target:delMod(MOD_FOOD_RATTP, 5);
    target:delMod(MOD_FOOD_RATT_CAP, 50);
    target:delMod(MOD_FOOD_ACCP, 13);
    target:delMod(MOD_FOOD_ACC_CAP, 88);
    target:delMod(MOD_FOOD_RACCP, 6);
    target:delMod(MOD_FOOD_RACC_CAP, 66);
    target:delMod(MOD_MADRIGAL_EFFECT, 2);
    target:delMod(MOD_PRELUDE_EFFECT, 2);
    target:delMod(MOD_QUICK_DRAW_DMG, 10);
    target:delMod(MOD_MATT, 3);
    target:delMod(MOD_MACC, 2);
    target:delMod(MOD_WSACC, 15);
end;
