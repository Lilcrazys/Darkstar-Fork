-----------------------------------
-- Area: ?
-- VWNM: Ushumgal
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/North_Gustaberg_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ACC,200);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 25);

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
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 10 or target:hasStatusEffect(EFFECT_SLOW) == true) then
        return 0,0,0;
    else
        local duration = 15;
        target:addStatusEffect(EFFECT_SLOW,10,0,duration);
        return SUBEFFECT_NONE,0,EFFECT_SLOW;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(INDIGO_STRATUM_ABYSSITE)) then -- Ushumgal Kill
        if (ally:getMaskBit(ally:getVar("INDIGO_STRATUM"), 1) == false) then
            ally:setMaskBit(ally:getVar("INDIGO_STRATUM"),"INDIGO_STRATUM",1,true);
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