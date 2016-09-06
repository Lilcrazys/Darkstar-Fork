-----------------------------------
-- Area: Legion
-- Lofty_Harpeia
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
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);

    -- addMod
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
    mob:addMod(MOD_ACC,125);
    mob:addMod(MOD_ATT,125);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN,35);
    mob:setMod(MOD_HASTE_ABILITY, 10);
    mob:setMod(MOD_UFASTCAST, 15);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Lofty_Harpeia_2hr_Used = mob:getLocalVar("Lofty_Harpeia_2hr_Used");

    if (mob:getHPP() <= 10) then
        if (Lofty_Harpeia_2hr_Used == 2) then
            mob:useMobAbility(692); -- CS
            mob:setLocalVar("Lofty_Harpeia_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 30) then
        if (Lofty_Harpeia_2hr_Used == 1) then
            mob:useMobAbility(691); -- MF
            mob:setLocalVar("Lofty_Harpeia_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Lofty_Harpeia_2hr_Used == 0) then
            mob:useMobAbility(692); -- CS
            mob:setLocalVar("Lofty_Harpeia_2hr_Used", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 100);
    player:addTitle(SUBJUGATOR_OF_THE_LOFTY);
end;