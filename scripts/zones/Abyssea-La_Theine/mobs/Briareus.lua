-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Briareus
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
require("scripts/zones/Abyssea-La_Theine/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_MACC,1925);
    mob:setMod(MOD_MATT,50);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);

    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,100);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)

    local Bria_2hr_Used =  mob:getLocalVar("Bria_2hr");

    if (mob:getHPP() <= 10) then
        if (Bria_2hr_Used == 3) then
            mob:useMobAbility(474);
            mob:setLocalVar("Bria_2hr", 4);
        end
    elseif (mob:getHPP() <= 25) then
        if (Bria_2hr_Used == 2) then
            mob:useMobAbility(474);
            mob:setLocalVar("Bria_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (Bria_2hr_Used == 1) then
            mob:useMobAbility(474);
            mob:setLocalVar("Bria_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (Bria_2hr_Used == 0) then
            mob:useMobAbility(474);
            mob:setLocalVar("Bria_2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;
    player:addTitle(BRIAREUS_FELLER);
    

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(BLOOD_SMEARED_GIGAS_HELM) == false) then
        player:addKeyItem(BLOOD_SMEARED_GIGAS_HELM);
        player:messageSpecial(6385, BLOOD_SMEARED_GIGAS_HELM);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_STOUT_ARM) == false) then
        player:addKeyItem(ATMA_OF_THE_STOUT_ARM);
        player:messageSpecial(6385, ATMA_OF_THE_STOUT_ARM);
    end
end;