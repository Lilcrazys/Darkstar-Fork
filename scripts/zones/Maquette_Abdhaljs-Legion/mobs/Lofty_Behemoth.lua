-----------------------------------
-- Area: Legion
-- Lofty_Behemoth
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
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,15);
    mob:setMod(MOD_REGEN,25);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);

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
    local Lofty_Behemoth_2hr = 0;
    if (mob:getLocalVar("Lofty_Behemoth_2hr") ~= nil) then
        Lofty_Behemoth_2hr = mob:getLocalVar("Lofty_Behemoth_2hr");
    end

    if (mob:getHPP() <= 10) then
        if (Lofty_Behemoth_2hr == 0) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Lofty_Behemoth_2hr", 1);
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

function onMobDeath(mob, killer, ally)
    ally:addCurrency("legion_point", 10);
    SpawnMob(mob:getID()+3) -- Spawns Lofty_Elasmoth
end;