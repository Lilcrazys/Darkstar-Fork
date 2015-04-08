-----------------------------------
-- Area: Al'Taieu
--  NM:  Jailer of Hope
-----------------------------------

-- require("scripts/globals/titles");
require("scripts/globals/status");
-- Don't add "require" lines until actually using them.
-- require("scripts/globals/magic");
-- require("scripts/globals/utils");
-- require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 25);
    mob:setMod(MOD_HASTE_ABILITY, 30);
    mob:setMod(MOD_TRIPLE_ATTACK, 35);


    -- addMod
    mob:addMod(MOD_MDEF,100);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_ACC,100);
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
    local JoP_2hr_Used =  mob:getLocalVar("JoP_2hr");

    if (mob:getHPP() <= 10) then
        if (JoP_2hr_Used == 3) then
            mob:useMobAbility(437);
            mob:setLocalVar("JoP_2hr", 4);
        end
    elseif (mob:getHPP() <= 25) then
        if (JoP_2hr_Used == 2) then
            mob:useMobAbility(437);
            mob:setLocalVar("JoP_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (JoP_2hr_Used == 1) then
            mob:useMobAbility(437);
            mob:setLocalVar("JoP_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (JoP_2hr_Used == 0) then
            mob:useMobAbility(437);
            mob:setLocalVar("JoP_2hr", 1);
        end
    end

    if (BattleTime > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;