-----------------------------------
-- Area: Legion
-- Paramount_Harpeia
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
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);
    -- addMod
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 10);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_HASTE_ABILITY, 15);
    mob:setMod(MOD_UFASTCAST, 25);

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
    local Paramount_Harpeia_2hr_Used = 0;
    if (mob:getLocalVar("Paramount_Harpeia_2hr_Used") ~= nil) then
        Paramount_Harpeia_2hr_Used = mob:getLocalVar("Paramount_Harpeia_2hr_Used");
    end

    if (mob:getHPP() <= 15) then
        if (Paramount_Harpeia_2hr_Used == 2) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Paramount_Harpeia_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 40) then
        if (Paramount_Harpeia_2hr_Used == 1) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Paramount_Harpeia_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Paramount_Harpeia_2hr_Used == 0) then
            mob:useMobAbility(433); -- Ben
            mob:setLocalVar("Paramount_Harpeia_2hr_Used", 1);
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

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 75);
    local popBoss = true;
    local MobIDs = {17526853, 17526851, 17526854, 17526856};
    -- Paramount_Harpeia 17526852

    for Veiled, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17526856, 300);
    end
end;