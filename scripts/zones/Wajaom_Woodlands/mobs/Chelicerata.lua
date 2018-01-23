-----------------------------------
-- Zone: Wajaom Woodlands
-- Mob: Chelicerata
-----------------------------------
--[[
--require("scripts/globals/titles");
mixins = { require("scripts/mixins/families/chigoe") }
]]
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT, 1);

    -- addMod
    mob:addMod(MOD_TRIPLE_ATTACK, 30)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REGAIN, 20);
end;

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) ~= 5) or (target:hasStatusEffect(EFFECT_SLOW) == true)) then
        return 0,0,0;
    else
        local duration = 30;
        target:addStatusEffect(EFFECT_SLOW,1,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_NONE,0,EFFECT_SLOW;
    end
end;

function onMobDeath(mob, player, isKiller)
end;
