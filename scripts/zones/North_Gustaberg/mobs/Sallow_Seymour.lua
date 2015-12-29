-----------------------------------
-- Area: ?
-- VWNM: Sallow_Seymour
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/North_Gustaberg/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
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
    mob:setMod(MOD_REGEN, 50);
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(INDIGO_STRATUM_ABYSSITE)) then -- Sallow Seymour Kill
        if (ally:getMaskBit(ally:getVar("INDIGO_STRATUM"), 0) == false) then
            ally:setMaskBit(ally:getVar("INDIGO_STRATUM"),"INDIGO_STRATUM",0,true);
        end

        if (ally:isMaskFull(ally:getVar("INDIGO_STRATUM"),2) == true) then
            ally:addKeyItem(INDIGO_STRATUM_ABYSSITE_II);
            ally:delKeyItem(INDIGO_STRATUM_ABYSSITE);
            ally:setVar("INDIGO_STRATUM", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE_II);
        end
    end

    ally:addExp(10000);
end;