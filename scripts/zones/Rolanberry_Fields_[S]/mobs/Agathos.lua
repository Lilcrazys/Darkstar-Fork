-----------------------------------
-- Area: VoiddWatch NM
-- NPC: Agathos
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);

    -- addMod
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,250);
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
    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 100);
    killer:addExp(10000);

    if (killer:hasKeyItem(WHITE_STRATUM_ABYSSITE)) then -- Agathos Kill
        if (killer:getMaskBit(killer:getVar("WHITE_STRATUM"), 3) == false) then
           killer:setMaskBit(killer:getVar("WHITE_STRATUM"),"WHITE_STRATUM",3,true);
        end
        if (killer:isMaskFull(killer:getVar("WHITE_STRATUM"),6) == true) then
           killer:addKeyItem(WHITE_STRATUM_ABYSSITE_II);
           killer:delKeyItem(WHITE_STRATUM_ABYSSITE);
           killer:setVar("WHITE_STRATUM", 0);
        end
    end;
end;