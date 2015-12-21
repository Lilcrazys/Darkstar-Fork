-----------------------------------
-- Area: ?
-- VWNM: Melancholic_Moira
-----------------------------------
package.loaded["scripts/zones/Pashhow_Marshlands_[S][/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Pashhow_Marshlands_[S]/TextIDs");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,175);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);

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
    local Boost_Used = mob:getLocalVar("Boost");
    local depopTime = mob:getLocalVar("depopTime");

    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end

    if (mob:getHPP() <= 25) then
        if (Boost_Used == 1) then
            mob:setMod(MOD_DOUBLE_ATTACK, 50);
            mob:setLocalVar("Boost", 2);
        end
    elseif (mob:getHPP() <= 50) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_DOUBLE_ATTACK,25);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(INDIGO_STRATUM_ABYSSITE_III)) then -- Melancholic Kill
        if (ally:getMaskBit(ally:getVar("INDIGO_STRATUM_III"), 1) == false) then
            ally:setMaskBit(ally:getVar("INDIGO_STRATUM_III"),"INDIGO_STRATUM_III",1,true);
        end

        if (ally:isMaskFull(ally:getVar("INDIGO_STRATUM_III"),2) == true) then
            ally:addKeyItem(INDIGO_STRATUM_ABYSSITE_IV);
            ally:delKeyItem(INDIGO_STRATUM_ABYSSITE_III);
            ally:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE_IV);
            ally:setVar("INDIGO_STRATUM_III", 0);
        end
    end

    ally:addCurrency("bayld", 75);
    ally:addExp(10000);
end;