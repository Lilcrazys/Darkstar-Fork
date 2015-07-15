-----------------------------------
-- Area: ?
--  VNM: Lorbulcrud
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
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);

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
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 30);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,135);

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
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    if (killer:hasKeyItem(JADE_STRATUM_ABYSSITE_III)) then -- Akupara Kill
        if (killer:getMaskBit(killer:getVar("JADE_STRATUM_III"), 1) == false) then
            killer:setMaskBit(killer:getVar("JADE_STRATUM_III"),"JADE_STRATUM_III",1,true);
        end
        if (killer:isMaskFull(killer:getVar("JADE_STRATUM_III"),2) == true) then
           killer:addKeyItem(JADE_STRATUM_ABYSSITE_IV);
           killer:delKeyItem(JADE_STRATUM_ABYSSITE_III);
           killer:setVar("JADE_STRATUM_III", 0);
        end
    end
    killer:addCurrency("bayld", 75);
    killer:addExp(10000);
end;