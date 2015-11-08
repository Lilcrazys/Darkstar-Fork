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
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,30);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,2000);
    mob:setMod(MOD_MATT,80);
    mob:SetMobSkillAttack(true);
    mob:setMod(MOD_ACC,2200);
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

    if (os.time() - popTime > 90) then
        for Helper = mob:getID()+1, mob:getID()+2 do
            if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                SpawnMob(Helper, 300):updateEnmity(target);
                helper:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
                mob:setLocalVar("lastPetPop", os.time());
            end
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 750);
    killer:addExp(10000);

    if (killer:hasKeyItem(HYACINTH_STRATUM_ABYSSITE)) then -- Tsui-Goab Kill
        if (killer:getMaskBit(killer:getVar("HYACINTH_STRATUM"), 2) == false) then
           killer:setMaskBit(killer:getVar("HYACINTH_STRATUM"),"HYACINTH_STRATUM",2,true);
        end
        if (killer:isMaskFull(killer:getVar("HYACINTH_STRATUM"),4) == true) then
           killer:completeQuest(OUTLANDS, VW_OP_026_TAVNAZIAN_TERRORS);
           killer:delKeyItem(HYACINTH_STRATUM_ABYSSITE);
        end
    end;
end;