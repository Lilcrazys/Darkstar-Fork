-----------------------------------
-- Area: Legion
-- Paramount_Gallu

-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");
require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 70);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 65);
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    

    -- addMod
    mob:setMod(MOD_MACC,925);
    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
    
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
    local Paramount_Gallu_2hr_Used = 0;
    if (mob:getLocalVar("Paramount_Gallu_2hr_Used") ~= nil) then
        Paramount_Gallu_2hr_Used = mob:getLocalVar("Paramount_Gallu_2hr_Used");
    end

    if (mob:getHPP() <= 10) then
        if (Paramount_Gallu_2hr_Used == 3) then
            mob:useMobAbility(435);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 4);
        elseif (Paramount_Gallu_2hr_Used == 4) then
            mob:useMobAbility(439);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 5);
        end
    elseif (mob:getHPP() <= 25) then
        if (Paramount_Gallu_2hr_Used == 2) then
            mob:useMobAbility(439);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (Paramount_Gallu_2hr_Used == 1) then
            mob:useMobAbility(439);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (Paramount_Gallu_2hr_Used == 0) then
            mob:useMobAbility(439);
            mob:setLocalVar("Paramount_Gallu_2hr_Used", 1);
        end
    end
end;


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
    killer:addCurrency("legion_point", 150);
    killer:addTitle(LEGENDARY_LEGIONNAIRE);
end;