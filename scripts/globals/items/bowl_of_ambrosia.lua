-----------------------------------------
-- ID: 4511
-- Item: Bowl of Ambrosia
-- Food Effect: 240Min, All Races
-----------------------------------------
-- HP +7
-- MP +7
-- STR +7
-- DEX +7
-- VIT +7
-- AGI +7
-- INT +7
-- MND +7
-- CHR +7
-- Accuracy +7
-- Ranged Accuracy +7
-- Attack +7
-- Ranged Attack +7
-- Evasion +7
-- Defense +7
-- HP recovered while healing +7
-- MP recovered while healing +7
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
    target:addStatusEffect(EFFECT_FOOD,0,0,14400,4511);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_HP, 7);
    target:addMod(MOD_MP, 7);
    target:addMod(MOD_STR, 7);
    target:addMod(MOD_DEX, 7);
    target:addMod(MOD_VIT, 7);
    target:addMod(MOD_AGI, 7);
    target:addMod(MOD_INT, 7);
    target:addMod(MOD_MND, 7);
    target:addMod(MOD_CHR, 7);
    target:addMod(MOD_ATT, 7);
    target:addMod(MOD_RATT, 7);
    target:addMod(MOD_ACC, 7);
    target:addMod(MOD_RACC, 7);
    target:addMod(MOD_HPHEAL, 7);
    target:addMod(MOD_MPHEAL, 7);
    target:addMod(MOD_DEF, 7);
    target:addMod(MOD_EVA, 7);

    -- Begin custom
    target:addMod(MOD_REGAIN, 7);
    target:addMod(MOD_REFRESH, 7);
    target:addMod(MOD_REGEN, 7);
    target:addMod(MOD_MATT, 7);
    target:addMod(MOD_MDEF, 7);
    target:addMod(MOD_MACC, 7);
    target:addMod(MOD_MEVA, 7);
    target:addMod(MOD_FOOD_HPP, 7);
    target:addMod(MOD_FOOD_HP_CAP, 210);
    target:addMod(MOD_FOOD_MPP, 7);
    target:addMod(MOD_FOOD_MP_CAP, 210);
    target:addMod(MOD_TERRORRES, 7);
    target:addMod(MOD_DOOMRES, 7);;
    target:addMod(MOD_WSACC, 7);
    target:addMod(MOD_ALL_WSDMG_FIRST_HIT, 7)
    -- End custom
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
    target:delMod(MOD_HP, 7);
    target:delMod(MOD_MP, 7);
    target:delMod(MOD_STR, 7);
    target:delMod(MOD_DEX, 7);
    target:delMod(MOD_VIT, 7);
    target:delMod(MOD_AGI, 7);
    target:delMod(MOD_INT, 7);
    target:delMod(MOD_MND, 7);
    target:delMod(MOD_CHR, 7);
    target:delMod(MOD_ATT, 7);
    target:delMod(MOD_RATT, 7);
    target:delMod(MOD_ACC, 7);
    target:delMod(MOD_RACC, 7);
    target:delMod(MOD_HPHEAL, 7);
    target:delMod(MOD_MPHEAL, 7);
    target:delMod(MOD_DEF, 7);
    target:delMod(MOD_EVA, 7);

    -- Begin custom
    target:delMod(MOD_REGAIN, 7);
    target:delMod(MOD_REFRESH, 7);
    target:delMod(MOD_REGEN, 7);
    target:delMod(MOD_MATT, 7);
    target:delMod(MOD_MDEF, 7);
    target:delMod(MOD_MACC, 7);
    target:delMod(MOD_MEVA, 7);
    target:delMod(MOD_FOOD_HPP, 7);
    target:delMod(MOD_FOOD_HP_CAP, 210);
    target:delMod(MOD_FOOD_MPP, 7);
    target:delMod(MOD_FOOD_MP_CAP, 210);
    target:delMod(MOD_TERRORRES, 7);
    target:delMod(MOD_DOOMRES, 7);
    target:delMod(MOD_WSACC, 7);
    target:delMod(MOD_ALL_WSDMG_FIRST_HIT, 7);
    -- End custom
end;
