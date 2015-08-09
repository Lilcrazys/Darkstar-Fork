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
    local mobAct1 = GetMobAction(17526823);
    local mobAct2 = GetMobAction(17526822);
    killer:addCurrency("legion_point", 50);

    if (mobAct1 == ACTION_NONE or mobAct1 == ACTION_SPAWN) and (mobAct2 == ACTION_NONE or mobAct2 == ACTION_SPAWN) then
        SpawnMob(17526825, 300); -- Soaring_Naraka Spawn
    end
end;