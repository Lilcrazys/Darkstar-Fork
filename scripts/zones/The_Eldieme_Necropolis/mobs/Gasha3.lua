-----------------------------------
-- Area: ?
-- VWNM: Gasha 3
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 30);
    mob:setMod(MOD_HASTE_ABILITY, 25);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,105);

    -- Vars
    mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
end;
-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Gasha_2hr_Used = mob:getLocalVar("Gasha_2hr");

    if (os.time(t) > mob:getLocalVar("depopTime")) then
        if (mob:actionQueueEmpty() == true) then
            DespawnMob(mob:getID());
        end
    end

    if (mob:getHPP() <= 40) then
        if (Gasha_2hr_Used == 0) then
            mob:useMobAbility(474); -- SAM
            mob:setLocalVar("Gasha_2hr", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) > 4) or (target:hasStatusEffect(EFFECT_PARALYSIS) == true)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_PARALYSIS,1,0,10);
    end

    return SUBEFFECT_PARALYSIS,163,EFFECT_PARALYSIS;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 200);
    killer:addExp(10000);

    if (killer:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Gasha Kill
        if (killer:getMaskBit(killer:getVar("WHITE_STRATUM_II"), 4) == false) then
           killer:setMaskBit(killer:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",4,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (killer:isMaskFull(killer:getVar("WHITE_STRATUM_II"),6) == true) then
                killer:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                killer:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                killer:setVar("WHITE_STRATUM_II", 0);
            end
        end
    end
end;