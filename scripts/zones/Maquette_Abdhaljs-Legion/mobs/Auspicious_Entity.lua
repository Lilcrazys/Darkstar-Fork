-----------------------------------
-- Area: Legion
--  Mob: Auspicious Entity
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-- require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMod(MOD_MACC,1800);
    mob:setMod(MOD_MATT,125);
    mob:addMod(MOD_DEF,200);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
end;

-----------------------------------

-- onMobEngaged Action
-----------------------------------

-- function onMobEngaged(mob, target)
-- end;

-----------------------------------
-- onMobFight Action
-----------------------------------

-- function onMobFight(mob, target)
-- end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
-- function onAdditionalEffect(mob,target,damage)
    -- come back later and set added effect on ele type
-- end;

-----------------------------------
-- onMagicHit
-----------------------------------

-- function onMagicHit(caster, target, spell)
-- end

-----------------------------------
-- onSpikesDamage
-----------------------------------

-- function onSpikesDamage(mob,target,damage)
    -- come back later and set spikes depending on ele type
-- end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:delStatusEffect(EFFECT_WEAKNESS);
    ally:restoreHP(3000);
    ally:messageBasic(024,(ally:getMaxHP()-ally:getHP()));
    ally:restoreMP(3000);
    ally:messageBasic(025,(ally:getMaxMP()-ally:getMP()));
end;