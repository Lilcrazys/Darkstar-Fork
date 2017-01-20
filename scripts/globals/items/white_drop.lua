-----------------------------------------
--  ID: 4264
--  Item: White Drop
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
    target:addStatusEffect(EFFECT_CHR_BOOST,5,0,900);
    target:addStatusEffect(EFFECT_MEDICINE,0,0,3600);
    ]]
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,4264);
end;

----------------------------------------
-- onEffectGain
----------------------------------------
function onEffectGain(target,effect)
    target:addMod(MOD_CHR, 6);
    target:addMod(MOD_FOOD_ATTP, 5);
    target:addMod(MOD_FOOD_ATT_CAP, 50);
    target:addMod(MOD_FOOD_ACCP, 5);
    target:addMod(MOD_FOOD_ACC_CAP, 50);
    target:addMod(MOD_HPHEAL, 5);
    target:addMod(MOD_STORETP, 10);
    target:addMod(MOD_WALTZ_POTENTCY, 4);
    target:addMod(MOD_ALL_SONGS_EFFECT, 1);
    target:addPetMod(MOD_STORETP, 10);
    target:addPetMod(MOD_FOOD_ATTP, 9);
    target:addPetMod(MOD_FOOD_ATT_CAP, 99);
    target:addPetMod(MOD_FOOD_RATTP, 9);
    target:addPetMod(MOD_FOOD_RATT_CAP, 99);
    target:addPetMod(MOD_FOOD_ACCP, 8);
    target:addPetMod(MOD_FOOD_ACC_CAP, 75);
    target:addPetMod(MOD_FOOD_RACCP, 8);
    target:addPetMod(MOD_FOOD_RACC_CAP, 75);
    target:addPetMod(MOD_MATT, 15);
    target:addPetMod(MOD_MACC, 15);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------
function onEffectLose(target,effect)
    target:delMod(MOD_CHR, 6);
    target:delMod(MOD_FOOD_ATTP, 5);
    target:delMod(MOD_FOOD_ATT_CAP, 50);
    target:delMod(MOD_FOOD_ACCP, 5);
    target:delMod(MOD_FOOD_ACC_CAP, 50);
    target:delMod(MOD_HPHEAL, 5);
    target:delMod(MOD_STORETP, 10);
    target:delMod(MOD_WALTZ_POTENTCY, 4);
    target:delMod(MOD_ALL_SONGS_EFFECT, 1);
    target:delPetMod(MOD_STORETP, 10);
    target:delPetMod(MOD_FOOD_ATTP, 9);
    target:delPetMod(MOD_FOOD_ATT_CAP, 99);
    target:delPetMod(MOD_FOOD_RATTP, 9);
    target:delPetMod(MOD_FOOD_RATT_CAP, 99);
    target:delPetMod(MOD_FOOD_ACCP, 8);
    target:delPetMod(MOD_FOOD_ACC_CAP, 75);
    target:delPetMod(MOD_FOOD_RACCP, 8);
    target:delPetMod(MOD_FOOD_RACC_CAP, 75);
    target:delPetMod(MOD_MATT, 15);
    target:delPetMod(MOD_MACC, 15);
end;
