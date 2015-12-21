-----------------------------------
-- Area: EDIT ME
-- VWNM: Bhishani
-----------------------------------
package.loaded["scripts/zones/South_Gustaberg/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/South_Gustaberg/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_ATT,200);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,80);
    mob:setMod(MOD_DOUBLE_ATTACK,25);

    -- var
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
    if (os.time(t) > depopTime) then
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
        --[[
        if (target:isPC()) then
            target:PrintToPlayer(string.format("Effect ID: %i", EFFECT));
        end
        ]]
        return SUBEFFECT_DARKNESS_DAMAGE, 168, EFFECT;
    else
        return 0, 0, 0;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 300);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_IV)) then -- Bhishani Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_IV"), 1) == false) then
            ally:setMaskBit(ally:getVar("WHITE_STRATUM_IV"),"WHITE_STRATUM_IV",1,true);
        end

        if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_IV"),3) == true) then
            ally:addKeyItem(WHITE_STRATUM_ABYSSITE_V);
            ally:delKeyItem(WHITE_STRATUM_ABYSSITE_IV);
            ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_V);
            ally:setVar("WHITE_STRATUM_IV", 0);
        end
    end;
end;