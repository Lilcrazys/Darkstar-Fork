-----------------------------------
-- Area: Legion
-- Paramount_Ironclad

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
    mob:setMod(MOD_REGEN, 30);
    mob:setMod(MOD_REGAIN, 15);
    mob:setMod(MOD_HASTE_ABILITY, 15);
    mob:setMod(MOD_COUNTER, 15);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);  

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
    local Paramount_Ironclad_2hr_Used = 0;
    if (mob:getLocalVar("Paramount_Ironclad_2hr_Used") ~= nil) then
        Paramount_Ironclad_2hr_Used = mob:getLocalVar("Paramount_Ironclad_2hr_Used");
    end

    if (mob:getHPP() <= 10) then
        if (Paramount_Ironclad_2hr_Used == 2) then
            mob:useMobAbility(434); -- HF
            mob:setLocalVar("Paramount_Ironclad_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 30) then
        if (Paramount_Ironclad_2hr_Used == 1) then
            mob:useMobAbility(434); -- HF
            mob:setLocalVar("Paramount_Ironclad_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Paramount_Ironclad_2hr_Used == 0) then
            mob:useMobAbility(434); -- HF
            mob:setLocalVar("Paramount_Ironclad_2hr_Used", 1);
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
end;