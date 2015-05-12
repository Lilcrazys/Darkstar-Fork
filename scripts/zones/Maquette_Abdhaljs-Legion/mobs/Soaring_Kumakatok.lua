-----------------------------------
-- Area: Legion
-- Soaring_Kumakatok

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
    mob:setMod(MOD_REGEN, 45);
    mob:setMod(MOD_REFRESH, 25);
    mob:setMod(MOD_REGAIN, 35);
    mob:setMod(MOD_HASTE_ABILITY, 10);
    mob:setMod(MOD_UFASTCAST, 65);

    -- addMod
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);  
    mob:addMod(MOD_DEF,145);
    mob:addMod(MOD_MDEF,50); 
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
    local Soaring_Kumakatok_2hr = 0;
    if (mob:getLocalVar("Soaring_Kumakatok") ~= nil) then
        Soaring_Kumakatok = mob:getLocalVar("Soaring_Kumakatok");
    end

    if (mob:getHPP() <= 15) then
        if (Soaring_Kumakatok == 1) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Soaring_Kumakatok", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Soaring_Kumakatok == 0) then
            mob:useMobAbility(435); -- MF
            mob:setLocalVar("Soaring_Kumakatok", 1);
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
    killer:addCurrency("legion_point", 25); 
end;