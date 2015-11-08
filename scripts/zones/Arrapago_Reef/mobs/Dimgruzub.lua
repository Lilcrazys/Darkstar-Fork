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
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK,25);
    mob:setMod(MOD_DMG,1000);

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
    killer:addCurrency("bayld", 900);
    killer:addExp(10000);

    if (killer:hasKeyItem(AMBER_STRATUM_ABYSSITE)) then -- Dimgruzub Kill
        if (killer:getMaskBit(killer:getVar("AMBER_STRATUM"), 0) == false) then
           killer:setMaskBit(killer:getVar("AMBER_STRATUM"),"AMBER_STRATUM",0,true);
        end
        if (killer:isMaskFull(killer:getVar("AMBER_STRATUM"),4) == true) then
           killer:completeQuest(AHT_URHGAN, VW_OP_050_AHT_URGAN_ASSAULT);
           killer:setVar("AMBER_STRATUM", 0);
        end
    end;
end;