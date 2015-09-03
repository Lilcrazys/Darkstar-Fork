-----------------------------------
-- Area: Buburimu Peninsula
-- VWNM: Botulus Rex
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,20);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_DMGMAGIC,32);

    -- Other
    mob:SetMobSkillAttack(true);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,80);

    -- var
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
    local Botulus_Used = mob:getLocalVar("Botulus");
    local notBusy = mob:actionQueueEmpty();

    if (os.time(t) > mob:getLocalVar("depopTime") and notBusy == true) then
        DespawnMob(mob:getID());
    end

    if (mob:getHPP() <= 80) then
        if (Botulus_Used == 0) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Botulus", 1);
        end
    elseif (mob:getHPP() <= 60) then
        if (Botulus_Used == 1) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Botulus", 2);
        end
    elseif (mob:getHPP() <= 40) then
        if (Botulus_Used == 2) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Botulus", 3);
        end
    elseif (mob:getHPP() <= 20) then
        if (Botulus_Used == 3) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Botulus", 4);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 600);
    killer:addExp(10000);

    if (killer:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then -- Botulus Rex Kill
        if (killer:getMaskBit(killer:getVar("JEUNO_VW"), 4) == false) then
           killer:setMaskBit(killer:getVar("JEUNO_VW"),"JEUNO_VW",4,true);
        end
        if (killer:isMaskFull(killer:getVar("JEUNO_VW"),5) == true) then
           killer:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
        end
    end

    if (player:getQuestStatus(JEUNO, VW_OP_118_BUBURIMU_SQUALL) == QUEST_ACCEPTED) then
        player:completeQuest(JEUNO, VW_OP_118_BUBURIMU_SQUALL);
    end
end;