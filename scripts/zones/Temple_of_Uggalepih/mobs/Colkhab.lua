-----------------------------------
-- Area: Temple of Ulg
-- NPC:  Colkhab
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_DOUBLE_ATTACK,10);
    mob:setMod(MOD_MACC, 900);
    mob:setMod(MOD_MATT, 100);
    mob:setMod(MOD_ZANSHIN, 20);

    -- addMod
    mob:addMod(MOD_ACC,150);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_DEF,80);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobDisEngage Action
-----------------------------------

function onMobDisEngage(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------


function onMobFight(mob, target)
    local BattleTime = mob:getBattleTime();
    local Colkhab_2hr_Used = 0;

    if (mob:getLocalVar("Colkhab_2hr") ~= nil) then
        Colkhab_2hr_Used = mob:getLocalVar("Colkhab_2hr");
    end

    if (mob:getHPP() <= 10) then
        if (Colkhab_2hr_Used == 2) then
            mob:useMobAbility(474); -- SAM
            mob:setLocalVar("Colkhab_2hr", 3);
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);
        end
    elseif (mob:getHPP() <= 30) then
        if (Colkhab_2hr_Used == 1) then
            mob:useMobAbility(474); -- SAM
            mob:setLocalVar("Colkhab_2hr", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Colkhab_2hr_Used == 0) then
            mob:useMobAbility(474); -- SAM
            mob:setLocalVar("Colkhab_2hr", 1);
        end
    elseif (BattleTime - os.time() > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
   -- mob:setRespawnTime(math.random((259200),(432000)));   -- 3 to 5 days
end;