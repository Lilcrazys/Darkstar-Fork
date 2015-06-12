-----------------------------------
-- Area: VoiddWatch NM
--  NM:  Murk-Veined_Baneberry
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 35);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,150);
    mob:addMod(MOD_EVASION,150);
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
    local Boost_Used = mob:getLocalVar("Boost");
    local STABBINGS = mob:getLocalVar("TripleStab");
    local DELAY = mob:getLocalVar("DELAY");
    local depopTime = mob:getLocalVar("depopTime");

    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end

    if (STABBINGS > 0) then
        if (DELAY >= 2) then
            if (STABBINGS >= 3) then
                mob:setLocalVar("TripleStab", 0);
            else
                -- Suddenly move mob very close to player
                mob:setPos(target:getXPos()+math.random(-0.2, 0.2), target:getYPos(), target:getZPos()+math.random(-0.2, 0.2), 0);
                -- We should actually use a teleport skill prior to this,
                -- but being lazy with setPos for now.
                mob:useMobAbility(532);
                mob:setLocalVar("TripleStab", STABBINGS +1);
            end
            mob:setLocalVar("DELAY", 0);
        else
            mob:setLocalVar("DELAY", DELAY+1);
        end
    elseif (mob:getHPP() <= 25) then
        if (Boost_Used == 1) then
            mob:setMod(MOD_MATT,130);
            mob:setMod(MOD_UFASTCAST, 75);
            mob:setLocalVar("Boost", 2);
        end
    elseif (mob:getHPP() <= 50) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_MATT,110);
            mob:setMod(MOD_UFASTCAST, 50);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
if (killer:hasKeyItem("INDIGO_STRATUM_ABYSSITE_III")) then -- Baneberry Kill
    if  (killer:getMaskBit(killer:getVar("INDIGO_STRATUM_ABYSSITE_III"), 1) == false) then
	   killer:setMaskBit(killer:getVar("INDIGO_STRATUM_ABYSSITE_III"),"INDIGO_STRATUM_ABYSSITE_III",1,true);
    end
    if (killer:isMaskFull("INDIGO_STRATUM_ABYSSITE_III",2) == true) then
             killer:addKeyItem("INDIGO_STRATUM_ABYSSITE_IV");
             killer:delKeyItem("INDIGO_STRATUM_ABYSSITE_III");
    end
end
killer:addCurrency("bayld", 75);
killer:addExp(10000);
end;