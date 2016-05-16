-----------------------------------
-- Area: Besieged
--

-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/zones/Al_Zahbi/TextIDs");



-----------------------------------
-- onMobInitialize Action
-----------------------------------

-- function onMobInitialize(mob)
-- end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MACC,425);
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
-- end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:restoreHP(3000);
    player:messageBasic(024,(player:getMaxHP()-player:getHP()));
    player:restoreMP(3000);
    player:messageBasic(025,(player:getMaxMP()-player:getMP()));
end;