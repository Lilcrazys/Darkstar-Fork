-----------------------------------
-- Area: Legion
-- Lofty_Zilant
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
    mob:addMod(MOD_DEF,75);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN,35);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
end;

-----------------------------------

-- onMobEngaged Action
-----------------------------------

-- function onMobEngaged(mob, target)
--end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Lofty_Zilant_2hr = 0;
    if (mob:getLocalVar("Lofty_Zilant_2hr") ~= nil) then
        Lofty_Zilant_2hr = mob:getLocalVar("Lofty_Zilant_2hr");
    end

    if (mob:getHPP() <= 15) then
        if (Lofty_Zilant_2hr == 1) then
            mob:useMobAbility(439); -- BW
            mob:setLocalVar("Lofty_Zilant_2hr", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Lofty_Zilant_2hr == 0) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Lofty_Zilant_2hr", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
-- function onAdditionalEffect(mob,target,damage)   --end;

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
    -- for Hall = 17526785, 17526790 do
        -- if (GetMobAction(Hall) ~= ACTION_NONE or GetMobAction(Hall) ~= ACTION_SPAWN) then
            -- break;
        -- end
        SpawnMob(17526791, 300);
    -- end
    killer:addCurrency("legion_point", 50);
end;