-----------------------------------
-- Zone: The Eldieme Necropolis (S)
-- Mob: Laelaps
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REGAIN, 20);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 30)
    mob:addMod(MOD_ATT, 100);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
end;
-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) ~= 5) or (target:hasStatusEffect(EFFECT_PLAGUE) == true)) then
        return 0,0,0;
    else
        local duration = 30;
        target:addStatusEffect(EFFECT_PLAGUE,1,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_PLAGUE,0,EFFECT_PLAGUE;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
end;

