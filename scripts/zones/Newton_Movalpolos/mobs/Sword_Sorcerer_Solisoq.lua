-----------------------------------
-- Zone: Newton Movalpolos
-- Mob: Sword Sorcerer Solisoq
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC, 950);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 30)

end;


-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Sorcerer_2hr_Used =  mob:getLocalVar("Sorcerer_2hr");

    if (mob:getHPP() <= 10) then
        if (Sorcerer_2hr_Used == 3) then
            mob:useMobAbility(436);
            mob:setLocalVar("Sorcerer_2hr", 4);
        end
    elseif (mob:getHPP() <= 25) then
        if (Sorcerer_2hr_Used == 2) then
            mob:useMobAbility(436);
            mob:setLocalVar("Sorcerer_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (Sorcerer_2hr_Used == 1) then
            mob:useMobAbility(436);
            mob:setLocalVar("Sorcerer_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (Sorcerer_2hr_Used == 0) then
            mob:useMobAbility(436);
            mob:setLocalVar("Sorcerer_2hr", 1);
        end
    end
end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
end;

