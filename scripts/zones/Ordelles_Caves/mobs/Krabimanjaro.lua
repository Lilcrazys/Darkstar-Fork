-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Krabimanjaro
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 35);
    mob:setMod(MOD_MACC,1900);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_TRIPLE_ATTACK,15);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,125);
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
            mob:setMod(MOD_TRIPLE_ATTACK,30);
            mob:setMod(MOD_UFASTCAST, 75);
            mob:setMod(MOD_REGAIN, 30);
            mob:setLocalVar("Boost", 2);
        end
    elseif (mob:getHPP() <= 50) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_TRIPLE_ATTACK,20);
            mob:setMod(MOD_UFASTCAST, 50);
            mob:setMod(MOD_REGAIN, 10);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
if (killer:hasKeyItem("CRIMSON_STRATUM_ABYSSITE_II")) then -- Krabimanjaro Kill
    if  (killer:getMaskBit(killer:getVar("CRIMSON_STRATUM_ABYSSITE_II"), 1) == false) then
	    killer:setMaskBit(killer:getVar("CRIMSON_STRATUM_ABYSSITE_II"),"CRIMSON_STRATUM_ABYSSITE_II",1,true);
    end
    if (killer:isMaskFull("CRIMSON_STRATUM_ABYSSITE_II",1) == true) then
             killer:addKeyItem("CRIMSON_STRATUM_ABYSSITE_III");
             killer:delKeyItem("CRIMSON_STRATUM_ABYSSITE_II");
    end
end
killer:addCurrency("bayld", 50);
killer:addExp(10000);
end;