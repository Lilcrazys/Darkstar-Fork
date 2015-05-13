-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Briareus
-----------------------------------
require("scripts/zones/Abyssea-La_Theine/textIDs");
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

function onMobDeath(mob,killer)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;
    killer:addTitle(BRIAREUS_FELLER);
    

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(BLOOD_SMEARED_GIGAS_HELM) == false) then
        killer:addKeyItem(BLOOD_SMEARED_GIGAS_HELM);
        killer:messageSpecial(6385, BLOOD_SMEARED_GIGAS_HELM);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_STOUT_ARM) == false) then
        killer:addKeyItem(ATMA_OF_THE_STOUT_ARM);
        killer:messageSpecial(6385, ATMA_OF_THE_STOUT_ARM);
    end
end;