-----------------------------------
-- Area: Legion
--  MOB: Paramount_Gallu
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");
require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 70);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_MACC, 1925);
    mob:setMod(MOD_MATT, 120);
    mob:setMod(MOD_ACC, 1925);
    mob:setMod(MOD_DARK_AFFINITY_DMG, 20);
    mob:setMod(MOD_DARK_AFFINITY_ACC, 20);

    mob:SetMobSkillAttack(4168); -- Enable Special Animation for melee attacks.
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Paramount_Gallu_2hr_Used = 0;
    if (mob:getLocalVar("Paramount_Gallu_2hr_Used") ~= nil) then
        Paramount_Gallu_2hr_Used = mob:getLocalVar("Paramount_Gallu_2hr_Used");
    end

    if (mob:getHPP() <= 10) then
        if (Paramount_Gallu_2hr_Used == 3) then
            mob:useMobAbility(691);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 4);
        elseif (Paramount_Gallu_2hr_Used == 4) then
            mob:useMobAbility(695);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 5);
        end
    elseif (mob:getHPP() <= 25) then
        if (Paramount_Gallu_2hr_Used == 2) then
            mob:useMobAbility(695);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (Paramount_Gallu_2hr_Used == 1) then
            mob:useMobAbility(695);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (Paramount_Gallu_2hr_Used == 0) then
            mob:useMobAbility(695);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,15) ~= 5) or (target:hasStatusEffect(EFFECT_TERROR) == true)) then
        return 0,0,0;
    else
        local duration = 5;
        target:addStatusEffect(EFFECT_TERROR,1,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_NONE,0,EFFECT_TERROR;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 400);
    player:addTitle(LEGENDARY_LEGIONNAIRE);
end;
