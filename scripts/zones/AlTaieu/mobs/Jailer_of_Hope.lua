-----------------------------------
-- Area: Al'Taieu
--  NM:  Jailer of Hope
-----------------------------------

-- require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
-- require("scripts/globals/utils");
-- require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REFRESH, 500);
    mob:setMod(MOD_REGAIN, 25);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 30);


    -- addMod
    mob:addMod(MOD_MDEF,100);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,100);
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
    local BattleTime = mob:getBattleTime();
    local JoH_2hr_Used = mob:getLocalVar("JoH_2hr");

    if (mob:getHPP() <= 10) then
        if (JoH_2hr_Used == 3) then
            mob:useMobAbility(432);
            mob:setLocalVar("JoH_2hr", 4);
        end
    elseif (mob:getHPP() <= 25) then
        if (JoH_2hr_Used == 2) then
            mob:useMobAbility(432);
            mob:setLocalVar("JoH_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (JoH_2hr_Used == 1) then
            mob:useMobAbility(432);
            mob:setLocalVar("JoH_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (JoH_2hr_Used == 0) then
            mob:useMobAbility(432);
            mob:setLocalVar("JoH_2hr", 1);
        end
    end

    if (BattleTime > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 5 or (target:hasStatusEffect(EFFECT_TERROR) == true)) then
        return 0,0,0;
    else
        local duration = 5;
        target:addStatusEffect(EFFECT_TERROR,1,0,duration);
        return SUBEFFECT_NONE,0,EFFECT_TERROR;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;