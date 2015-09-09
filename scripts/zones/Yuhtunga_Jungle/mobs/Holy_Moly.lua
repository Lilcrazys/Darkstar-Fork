-----------------------------------
-- Area: ?
-- VWNM:
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
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_ACC,1950);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK,25);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,75);
    mob:addMod(MOD_ATT,200);
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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
        for Helper = mob:getID()+1, mob:getID()+2 do
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

    if (killer:hasKeyItem(ASHEN_STRATUM_ABYSSITE)) then -- Holy Moly Kill
        if (player:getQuestStatus(OUTLANDS, VW_OP_054_ELSHIMO_LIST) == QUEST_ACCEPTED) then
            if (killer:getMaskBit(killer:getVar("VW_OP_101"), 0) == false) then
               killer:setMaskBit(killer:getVar("VW_OP_101"),"VW_OP_101",0,true);
            end
        else
            if (killer:getMaskBit(killer:getVar("ASHEN_STRATUM"), 3) == false) then
               killer:setMaskBit(killer:getVar("ASHEN_STRATUM"),"ASHEN_STRATUM",3,true);
            end

            if (killer:isMaskFull(killer:getVar("ASHEN_STRATUM"),6) == true) then
                killer:addKeyItem(ASHEN_STRATUM_ABYSSITE_II);
                killer:delKeyItem(ASHEN_STRATUM_ABYSSITE);
                killer:setVar("ASHEN_STRATUM", 0);
            end
        end
    end
end;