-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Melancholic_Moira
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
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,175);
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

function onMobDeath(mob, killer)
    if (killer:hasKeyItem(INDIGO_STRATUM_ABYSSITE_III)) then -- Melancholic Kill
        if (killer:getMaskBit(killer:getVar("INDIGO_STRATUM_III"), 1) == false) then
	        killer:setMaskBit(killer:getVar("INDIGO_STRATUM_III"),"INDIGO_STRATUM_III",1,true);
        end
        if (killer:isMaskFull(killer:getVar("INDIGO_STRATUM_III"),2) == true) then
           killer:addKeyItem(INDIGO_STRATUM_ABYSSITE_IV);
           killer:delKeyItem(INDIGO_STRATUM_ABYSSITE_III);
           killer:setVar("INDIGO_STRATUM_III", 0);
        end
    end
    killer:addCurrency("bayld", 75);
    killer:addExp(10000);
end;