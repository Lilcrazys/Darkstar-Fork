-----------------------------------
-- Area: Legion
-- Veiled_Sanguiptere
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
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
    mob:addMod(MOD_DEF,125);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 30);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_REGAIN, 35);
    mob:setMod(MOD_HASTE_ABILITY, 15);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_COUNTER, 15);
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
    local Veiled_Sanguiptere_2hr = 0;
    if (mob:getLocalVar("Veiled_Sanguiptere_2hr") ~= nil) then
        Veiled_Sanguiptere_2hr = mob:getLocalVar("Veiled_Sanguiptere_2hr");
    end

    if (mob:getHPP() <= 15) then
        if (Veiled_Sanguiptere_2hr == 1) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Veiled_Sanguiptere_2hr", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Veiled_Sanguiptere_2hr == 0) then
            mob:useMobAbility(434); -- HF
            mob:setLocalVar("Veiled_Sanguiptere_2hr", 1);
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
    -- for Veiled = 17526833, 17526838 do
       -- if (GetMobAction(Veiled) ~= ACTION_NONE or GetMobAction(Veiled) ~= ACTION_SPAWN) then
           -- break;
        -- end
        SpawnMob(17526839, 300);
    -- end
    killer:addCurrency("legion_point", 50);
end;