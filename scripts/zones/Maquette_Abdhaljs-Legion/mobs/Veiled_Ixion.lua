-----------------------------------
-- Area: Legion
-- Veiled_Ixion
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);
    mob:setMobMod(MOBMOD_HP_STANDBACK, 0);
    mob:setMobMod(MOBMOD_AUTO_SPIKES, 1); -- Needed for auto spikes

    -- Effects
    mob:addStatusEffect(EFFECT_DAMAGE_SPIKES,5,0,0); -- Needed for auto spikes
    mob:getStatusEffect(EFFECT_DAMAGE_SPIKES):setFlag(32); -- Make spikes undispelable.

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 10);
    mob:addMod(MOD_TRIPLE_ATTACK, 15);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
    mob:addMod(MOD_ATT,105);
    mob:addMod(MOD_DEF,95);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,35);
    mob:setMod(MOD_REGEN,35);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local did2hr = mob:getLocalVar("did2hr");

    if (mob:getHPP() <= 10 and did2hr == 0) then
        mob:useMobAbility(693); -- PD
        mob:setLocalVar("did2hr", 1);
    end
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    -- Set to always proc.
    local dmg = math.random(1,3);
    local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
    if (INT_diff > 20) then
        INT_diff = 20 + (INT_diff - 20);
    end
    dmg = dmg + (INT_diff * 0.25);
    dmg = utils.clamp(dmg, 1, 99);
    -- Shockspikes stun is handled in the C++ core.
    return SUBEFFECT_SHOCK_SPIKES,44,dmg;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 75);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    SpawnMob(17526837); -- Veiled Alicorn
    SpawnMob(17527790); -- Auspicious_Entity : Restore
end;
