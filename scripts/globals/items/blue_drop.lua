-----------------------------------------
--  ID: 4263
--  Item: Blue Drop
--  Mind 5
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
    target:addStatusEffect(EFFECT_MND_BOOST,5,0,900);
    target:addStatusEffect(EFFECT_MEDICINE,0,0,3600);
    ]]
    target:addStatusEffect(EFFECT_FOOD,0,0,2700,4263);
end;

----------------------------------------
-- onEffectGain
----------------------------------------
function onEffectGain(target,effect)
    target:addMod(MOD_MND, 6);
    target:addMod(MOD_MP, 40);
    target:addMod(MOD_MATT, 12);
    target:addMod(MOD_MDEF, 10);
    target:addMod(MOD_MACC, 8);
    target:addMod(MOD_MEVA, 5);
    target:addMod(MOD_FASTCAST, 5);
    target:addMod(MOD_WHITE_MAGIC_CAST, -4);
    target:addMod(MOD_WHITE_MAGIC_RECAST, -4);
    target:addMod(MOD_ENMITY, -10);
    target:addMod(MOD_CURE_POTENCY, 4);
    target:addMod(MOD_MPHEAL, 5);
    target:addMod(MOD_LULLABY_EFFECT, 2);
    target:addMod(MOD_FINALE_EFFECT, 2);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------
function onEffectLose(target,effect)
    target:delMod(MOD_MND, 6);
    target:delMod(MOD_MP, 40);
    target:delMod(MOD_MATT, 12);
    target:delMod(MOD_MDEF, 10);
    target:delMod(MOD_MACC, 7);
    target:delMod(MOD_MEVA, 5);
    target:delMod(MOD_FASTCAST, 5);
    target:delMod(MOD_WHITE_MAGIC_CAST, -4);
    target:delMod(MOD_WHITE_MAGIC_RECAST, -4);
    target:delMod(MOD_ENMITY, -10);
    target:delMod(MOD_CURE_POTENCY, 4);
    target:delMod(MOD_MPHEAL, 5);
    target:delMod(MOD_LULLABY_EFFECT, 2);
    target:delMod(MOD_FINALE_EFFECT, 2);
end;
