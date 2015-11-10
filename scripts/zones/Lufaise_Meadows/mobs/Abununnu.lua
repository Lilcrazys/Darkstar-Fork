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
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 10);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 35);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,60);
    mob:setMod(MOD_DOUBLE_ATTACK,15);
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 750);
    killer:addExp(10000);

    if (killer:hasKeyItem(HYACINTH_STRATUM_ABYSSITE)) then -- Abununnu Kill
        if (killer:getMaskBit(killer:getVar("HYACINTH_STRATUM"), 1) == false) then
           killer:setMaskBit(killer:getVar("HYACINTH_STRATUM"),"HYACINTH_STRATUM",1,true);
        end
        if (killer:isMaskFull(killer:getVar("HYACINTH_STRATUM"),4) == true) then
           killer:completeQuest(OTHER_AREAS, VW_OP_026_TAVNAZIAN_TERRORS);
           killer:delKeyItem(HYACINTH_STRATUM_ABYSSITE);
        end
    end;
end;