-----------------------------------
-- Area: Legion
-- Veiled_Alicorn
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- mobMods
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);
    mob:setMobMod(MOBMOD_AUTO_SPIKES, 1); -- Needed for auto spikes

    -- Effects
    mob:addStatusEffect(EFFECT_DAMAGE_SPIKES,5,0,0); -- Needed for auto spikes
    mob:getStatusEffect(EFFECT_DAMAGE_SPIKES):setFlag(32); -- Make spikes undispelable.

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 20);
    mob:addMod(MOD_TRIPLE_ATTACK, 15);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
    mob:addMod(MOD_ACC,225);
    mob:addMod(MOD_MDEF,55);
    mob:addMod(MOD_DEF,95);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,30);
    mob:setMod(MOD_REGEN,35);
    mob:setMod(MOD_HASTE_ABILITY, 10);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local did2hr = mob:getLocalVar("did2hr");

    if (mob:getHPP() <= 15 and did2hr == 1) then
        mob:useMobAbility(693); -- PD
        mob:setLocalVar("did2hr", 2);
    elseif (mob:getHPP() <= 60 and did2hr == 0) then
        mob:useMobAbility(688); -- MS
        mob:setLocalVar("did2hr", 1);
    end
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    -- Set to always proc.
    local dmg = math.random(1,3);
    local MND_diff = mob:getStat(MOD_MND) - target:getStat(MOD_MND);
    if (MND_diff > 20) then
        MND_diff = 20 + (MND_diff - 20);
    end
    dmg = dmg + (MND_diff * 0.25);
    dmg = utils.clamp(dmg, 1, 99);
    target:addTP(-dmg*5); -- Veiled Ixion got stun to slow down melee dmg..I figure Veiled Alicorn can -tp the melees instead.
    return SUBEFFECT_REPRISAL,44,dmg; -- Mobs can do this without a shield, eat your heart out Paladins!
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local popBoss = true;
    local MobIDs = {17526833, 17526834, 17526835, 17526836, 17526838, 17526839};
    -- Veiled_Alicorn 17526837

    for deezNuts, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17526839); -- Veiled Ironclad
        SpawnMob(17527791); -- Auspicious_Entity : Extension
    end
end;
