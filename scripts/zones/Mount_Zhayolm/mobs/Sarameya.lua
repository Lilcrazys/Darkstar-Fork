-----------------------------------
-- Area: Mount Z
-- NPC:  Sarameya
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN,15);
    mob:setMod(MOD_UFASTCAST, 45);

    -- addMod
    mob:addMod(MOD_ACC,150);
    mob:addMod(MOD_DOUBLE_ATTACK,10)
    mob:setMod(MOD_MACC,950);
    mob:setMod(MOD_MATT,80);
    mob:addMod(MOD_MDEF, 50);
    mob:addMod(MOD_DEF, 50);
    mob:addMod(MOD_ATT, 50);
end;



-----------------------------------
-- onMobDisEngage Action
-----------------------------------

function onMobDisEngage(mob, target)
    mob:setLocalVar("RAGED", 0);
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------


function onMobFight(mob, target)
    local Sara_2hr_Used = 0;
    if (mob:getLocalVar("Sara_2hr") ~= nil) then
        Sara_2hr_Used = mob:getLocalVar("Sara_2hr");
    end

    if (mob:getHPP() <= 9) then
        if (Sara_2hr_Used == 4) then
            mob:useMobAbility(436);
            mob:setLocalVar("Sara_2hr", 5);
        end
    elseif (mob:getHPP() <= 29) then
        if (Sara_2hr_Used == 3) then
            mob:useMobAbility(436);
            mob:setLocalVar("Sara_2hr", 4);
        end
    elseif (mob:getHPP() <= 49) then
        if (Sara_2hr_Used == 2) then
            mob:useMobAbility(436);
            mob:setLocalVar("Sara_2hr", 3);
        end
    elseif (mob:getHPP() <= 69) then
        if (Sara_2hr_Used == 1) then
            mob:useMobAbility(436);
            mob:setLocalVar("Sara_2hr", 2);
        end
    elseif (mob:getHPP() <= 89) then
        if (Sara_2hr_Used == 0) then
            mob:useMobAbility(436);
            mob:setLocalVar("Sara_2hr", 1);
        end
    end

    if (mob:getBattleTime() and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) ~= 3) or (target:hasStatusEffect(EFFECT_POISON) == true)) then
        return 0,0,0;
    else
        local duration = 30;
        target:addStatusEffect(EFFECT_POISON, 50, 3, duration);
        return SUBEFFECT_POISON, 160, EFFECT_POISON;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    mob:setLocalVar("RAGED", 0);
end;