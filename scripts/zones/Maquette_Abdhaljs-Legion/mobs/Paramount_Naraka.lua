-----------------------------------
-- Area: Legion
-- Paramount_Naraka

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
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_HASTE_ABILITY, 10);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_COUNTER, 10);
    mob:setMod(MOD_QUAD_ATTACK, 25);

    -- addMod
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
    mob:addMod(MOD_DEF,-100);
    mob:addMod(MOD_MDEF,-40);

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
    local Paramount_Naraka_2hr_Used = 0;
    if (mob:getLocalVar("Paramount_Naraka_2hr_Used") ~= nil) then
        Paramount_Naraka_2hr_Used = mob:getLocalVar("Paramount_Naraka_2hr_Used");
    end

    if (mob:getHPP() <= 10) then
        if (Paramount_Naraka_2hr_Used == 2) then
            mob:useMobAbility(474); -- MK
            mob:setLocalVar("Paramount_Naraka_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 30) then
        if (Paramount_Naraka_2hr_Used == 1) then
            mob:useMobAbility(474); -- MK
            mob:setLocalVar("Paramount_Naraka_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Paramount_Naraka_2hr_Used == 0) then
            mob:useMobAbility(474); -- MK
            mob:setLocalVar("Paramount_Naraka_2hr_Used", 1);
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

function onMobDeath(mob,killer)
    killer:addCurrency("legion_point", 100);
end;