-----------------------------------
-- Area: Legion
--  Mob: Auspicious Entity
-- Notes:
-- 17526873 Water type Elemental
-- 17526874 Wind type Elemental
-- 17526875 water type Elemental
-- 17526876 Ice type Elemental
-- 17526877 Light type Elemental
-- 17526878 Ice type Elemental
-- 17526879 Light type Elemental
-- 17526880 Dark type Elemental
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-- require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_MACC,1500);
    mob:addMod(MOD_MATT,90);
    mob:addMod(MOD_DEF,200);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
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

function onMobDeath(mob,killer)
    killer:resetRecasts();
    killer:injectActionPacket( 6, 312 );
end;