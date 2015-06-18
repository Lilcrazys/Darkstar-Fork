-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Virvatuli
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");


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
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DEF,1000);

    -- addMod
    mob:addMod(MOD_MDEF,75);
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
    local depopTime = mob:getLocalVar("depopTime");

    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    if (killer:hasKeyItem(JADE_STRATUM_ABYSSITE)) then -- Virvatuli Kill
        if (killer:getMaskBit(killer:getVar("JADE_STRATUM"), 0) == false) then
	       killer:setMaskBit(killer:getVar("JADE_STRATUM"),"JADE_STRATUM",0,true);
        end
        if (killer:isMaskFull(killer:getVar("JADE_STRATUM"),1) == true) then
           killer:addKeyItem(JADE_STRATUM_ABYSSITE_II);
           killer:delKeyItem(JADE_STRATUM_ABYSSITE);
        end
    end
    killer:addExp(10000);
end;