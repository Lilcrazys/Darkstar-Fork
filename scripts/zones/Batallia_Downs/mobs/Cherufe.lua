-----------------------------------
-- Area: Batallia Downs
-- VWNM: Cherufe
-----------------------------------
package.loaded["scripts/zones/Batallia_Downs/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Batallia_Downs/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 15);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,25);

    -- addMod
    mob:addMod(MOD_ATT,150);

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
    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)

    local EFFECT = EFFECT_NONE;

    if (math.random(0,99) < 60) then
        EFFECT = target:dispelStatusEffect(bit.bor(EFFECTFLAG_DISPELABLE, EFFECTFLAG_FOOD));
    end

    if (EFFECT ~= EFFECT_NONE) then
        return SUBEFFECT_DARKNESS_DAMAGE, 168, EFFECT;
    else
        return 0, 0, 0;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 100);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE)) then -- Cherufe Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM"), 4) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM"),"WHITE_STRATUM",4,true);
        end
        if (ally:isMaskFull(ally:getVar("WHITE_STRATUM"),6) == true) then
           ally:addKeyItem(WHITE_STRATUM_ABYSSITE_II);
           ally:delKeyItem(WHITE_STRATUM_ABYSSITE);
           ally:setVar("WHITE_STRATUM", 0);
           ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_II);
        end
    end;
end;