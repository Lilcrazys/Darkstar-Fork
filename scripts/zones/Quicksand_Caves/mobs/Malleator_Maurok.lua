-----------------------------------
-- Area: Quicksand Caves
-- VWNM: Malleator Maurrok
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
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
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK,25);
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
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) > 4) or (target:hasStatusEffect(EFFECT_SLOW) == true)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_SLOW,50,0,20);
    end
    return SUBEFFECT_SILENCE,163,EFFECT_SLOW;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 550);
    killer:addExp(10000);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);

    if (killer:hasKeyItem(ASHEN_STRATUM_ABYSSITE)) then -- MAlleator Maurok Kill
        if (killer:getQuestStatus(OUTLANDS, VW_OP_101_DETOUR_TO_ZEPWELL) == QUEST_ACCEPTED) then
            if (killer:getMaskBit(killer:getVar("VW_OP_101"), 1) == false) then
                killer:setMaskBit(killer:getVar("VW_OP_101"),"VW_OP_101",1,true);
            end
        else
            if (killer:getMaskBit(killer:getVar("ASHEN_STRATUM"), 1) == false) then
                killer:setMaskBit(killer:getVar("ASHEN_STRATUM"),"ASHEN_STRATUM",1,true);
            end

            if (killer:isMaskFull(killer:getVar("ASHEN_STRATUM"),6) == true) then
                killer:addKeyItem(ASHEN_STRATUM_ABYSSITE_II);
                killer:delKeyItem(ASHEN_STRATUM_ABYSSITE);
                killer:setVar("ASHEN_STRATUM", 0);
            end
        end
    end;
end;