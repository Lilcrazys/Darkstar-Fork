-----------------------------------
-- Area: ?
-- VWNM: Virvatuli
-----------------------------------
package.loaded["scripts/zones/West_Sarutabaruta/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/West_Sarutabaruta/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MDEF,75);
    mob:addMod(MOD_ATT,250);
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
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DEF,1000);

    -- vars
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

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(JADE_STRATUM_ABYSSITE)) then -- Virvatuli Kill
        if (ally:getMaskBit(ally:getVar("JADE_STRATUM"), 0) == false) then
            ally:setMaskBit(ally:getVar("JADE_STRATUM"),"JADE_STRATUM",0,true);
        end

        if (ally:isMaskFull(ally:getVar("JADE_STRATUM"),2) == true) then
            ally:addKeyItem(JADE_STRATUM_ABYSSITE_II);
            ally:delKeyItem(JADE_STRATUM_ABYSSITE);
            ally:setVar("JADE_STRATUM", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE_II);
        end
    end

    ally:addExp(10000);
end;