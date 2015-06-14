-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Pancimanci
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_HASTE_ABILITY, 35);
    mob:setMod(MOD_MACC,2000);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_TRIPLE_ATTACK, 20);
    mob:setMod(MOD_DEF,1400);
    mob:setMod(MOD_ACC,1400);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ATT,350);
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
    if (killer:hasKeyItem(JADE_STRATUM_ABYSSITE)) then -- Pancimanci Kill
        if  (killer:getMaskBit(killer:getVar("JADE_STRATUM"), 2) == false) then
	       killer:setMaskBit(killer:getVar("JADE_STRATUM"),"JADE_STRATUM",2,true);
        end
        if (killer:isMaskFull(killer:getVar("JADE_STRATUM"),2) == true) then
                 killer:addKeyItem(JADE_STRATUM_ABYSSITE_II);
                 killer:delKeyItem(JADE_STRATUM_ABYSSITE);
        end
    end
    killer:addExp(10000);
end;