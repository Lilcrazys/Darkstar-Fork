-----------------------------------
-- Area: Legion
-- Veiled_Ironclad

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
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 20);
    mob:setMod(MOD_REGAIN, 35);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_COUNTER, 25);

    -- addMod
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);  
    mob:addMod(MOD_ATT,105);
    mob:addMod(MOD_MDEF,55);
    mob:addMod(MOD_DEF,125);
    mob:addMod(MOD_DOUBLE_ATTACK, 15);

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
    local Veiled_Ironclad_2hr_Used = 0;
    if (mob:getLocalVar("Veiled_Ironclad_2hr_Used") ~= nil) then
        Veiled_Ironclad_2hr_Used = mob:getLocalVar("Veiled_Ironclad_2hr_Used");
    end

    if (mob:getHPP() <= 10) then
        if (Veiled_Ironclad_2hr_Used == 2) then
            mob:useMobAbility(434); -- HF
            mob:setLocalVar("Veiled_Ironclad_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 30) then
        if (Veiled_Ironclad_2hr_Used == 1) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Veiled_Ironclad_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Veiled_Ironclad_2hr_Used == 0) then
            mob:useMobAbility(434); -- HF
            mob:setLocalVar("Veiled_Ironclad_2hr_Used", 1);
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
    killer:addCurrency("legion_point", 100);
    killer:addTitle(SUBJUGATOR_OF_THE_VEILED);
end;