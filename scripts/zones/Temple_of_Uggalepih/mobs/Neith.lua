-----------------------------------
-- Area: EDIT ME
-- VWNM: ME TO
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_DOUBLE_ATTACK,25);
    mob:setMod(MOD_TERRORRES, 1000);
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local popTime = mob:getLocalVar("lastPetPop");

    if (os.time() - popTime > 120) then
        for Helper = mob:getID()+1, mob:getID()+4 do
            if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                SpawnMob(Helper, 300):updateEnmity(target);
                mob:setLocalVar("lastPetPop", os.time());
            end
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 550);
    killer:addExp(10000);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);
    DespawnMob(mob:getID()+3);
    DespawnMob(mob:getID()+4);

    if (killer:hasKeyItem(ASHEN_STRATUM_ABYSSITE)) then -- Neith Kill
        if (player:getQuestStatus(OUTLANDS, VW_OP_054_ELSHIMO_LIST) == QUEST_ACCEPTED) then
            if (killer:getMaskBit(killer:getVar("VW_OP_101"), 1) == false) then
               killer:setMaskBit(killer:getVar("VW_OP_101"),"VW_OP_101",1,true);
            end
        else
            if (killer:getMaskBit(killer:getVar("ASHEN_STRATUM"), 4) == false) then
               killer:setMaskBit(killer:getVar("ASHEN_STRATUM"),"ASHEN_STRATUM",4,true);
            end

            if (killer:isMaskFull(killer:getVar("ASHEN_STRATUM"),6) == true) then
                killer:addKeyItem(ASHEN_STRATUM_ABYSSITE_II);
                killer:delKeyItem(ASHEN_STRATUM_ABYSSITE);
                killer:setVar("ASHEN_STRATUM", 0);
            end
        end
    end
end;