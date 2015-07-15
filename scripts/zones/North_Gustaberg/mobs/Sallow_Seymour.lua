-----------------------------------
-- Area: VoiddWatch NM
--  VNM: Sallow_Seymour
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
    mob:setMobMod(MOBMOD_DRAW_IN, 2); -- Alliance Draw In
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,25);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,200);
    mob:addMod(MOD_ACC,180);
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
    mob:setMod(MOD_MACC,1900);
    mob:setMod(MOD_MATT,105);

    -- Vars
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
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target)
    target:addStatusEffect(EFFECT_BIND, 1, 0, 3);
    mob:useMobAbility(2389); -- Mud_Stream
    mob:addTP(100);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    if (killer:hasKeyItem(INDIGO_STRATUM_ABYSSITE)) then -- Sallow Seymour Kill
        if (killer:getMaskBit(killer:getVar("INDIGO_STRATUM"), 0) == false) then
	       killer:setMaskBit(killer:getVar("INDIGO_STRATUM"),"INDIGO_STRATUM",0,true);
        end
        if (killer:isMaskFull(killer:getVar("INDIGO_STRATUM"),2) == true) then
           killer:addKeyItem(INDIGO_STRATUM_ABYSSITE_II);
           killer:delKeyItem(INDIGO_STRATUM_ABYSSITE);
           killer:setVar("INDIGO_STRATUM", 0);
        end
    end
    killer:addExp(10000);
end;