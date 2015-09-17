-----------------------------------
-- Area: Legion
-- Soaring_Strigoi
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_MDEF,25);
    mob:addMod(MOD_DEF,125);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
    mob:setMod(MOD_REGEN, 30);
    mob:setMod(MOD_REFRESH, 20);
    mob:setMod(MOD_REGAIN, 35);
    mob:setMod(MOD_HASTE_ABILITY, 10);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMod(MOBMOD_SOUND_RANGE,20);
end;

-----------------------------------

-- onMobEngaged Action
-----------------------------------

-- function onMobEngaged(mob, target)
-- end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Soaring_Strigoi_2hr = 0;
    if (mob:getLocalVar("Soaring_Strigoi_2hr") ~= nil) then
        Soaring_Strigoi_2hr = mob:getLocalVar("Soaring_Strigoi_2hr");
    end

    if (mob:getHPP() <= 15) then
        if (Soaring_Strigoi_2hr == 1) then
            mob:useMobAbility(439); -- BW
            mob:setLocalVar("Soaring_Strigoi_2hr", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Soaring_Strigoi_2hr == 0) then
            mob:useMobAbility(435); -- MF
            mob:setLocalVar("Soaring_Strigoi_2hr", 1);
        end
    end
end;

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

function onMobDeath(mob, killer)
    killer:addCurrency("legion_point", 75);
    local popBoss = true;
    local MobIDs = {17526819, 17526820, 17526821, 17526822, 17526823, 17526825};
    -- Soaring_Strigoi 17526824

    for Veiled, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17526825, 300);
    end
end;