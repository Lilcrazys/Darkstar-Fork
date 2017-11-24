-----------------------------------------
--  ID: 4259
--  Item: Clear Drop
--  Intelligence 5
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
    target:addStatusEffect(EFFECT_INT_BOOST,5,0,600);
    target:addStatusEffect(EFFECT_MEDICINE,0,0,3600);
    ]]
    target:addStatusEffect(EFFECT_FOOD,0,0,2700,4259);
end;

----------------------------------------
-- onEffectGain
----------------------------------------
function onEffectGain(target,effect)
    target:addMod(MOD_INT, 6);
    target:addMod(MOD_MP, 40);
    target:addMod(MOD_MATT, 12);
    target:addMod(MOD_MDEF, 5);
    target:addMod(MOD_MACC, 8);
    target:addMod(MOD_MEVA, 10);
    target:addMod(MOD_FASTCAST, 4);
    target:addMod(MOD_BLACK_MAGIC_CAST, -4);
    target:addMod(MOD_BLACK_MAGIC_RECAST, -4);
    target:addMod(MOD_MAG_BURST_BONUS, 5);
    target:addMod(MOD_MAGIC_CRITHITRATE, 5);
    target:addMod(MOD_MPHEAL, 5);
    target:addMod(MOD_ETUDE_EFFECT, 2);
    target:addMod(MOD_BALLAD_EFFECT, 2);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------
function onEffectLose(target,effect)
    target:delMod(MOD_INT, 6);
    target:delMod(MOD_MP, 40);
    target:delMod(MOD_MATT, 11);
    target:delMod(MOD_MDEF, 5);
    target:delMod(MOD_MACC, 8);
    target:delMod(MOD_MEVA, 10);
    target:delMod(MOD_FASTCAST, 4);
    target:delMod(MOD_BLACK_MAGIC_CAST, -4);
    target:delMod(MOD_BLACK_MAGIC_RECAST, -4);
    target:delMod(MOD_MAG_BURST_BONUS, 5);
    target:delMod(MOD_MAGIC_CRITHITRATE, 5);
    target:delMod(MOD_MPHEAL, 5);
    target:delMod(MOD_ETUDE_EFFECT, 2);
    target:delMod(MOD_BALLAD_EFFECT, 2);
end;
