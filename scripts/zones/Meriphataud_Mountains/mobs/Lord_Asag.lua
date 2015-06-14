-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Lord_Asag
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);
    mob:setMod(MOD_STUNRES, 75);



    -- addMod
    mob:addMod(MOD_MDEF,100);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,200);
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
    local depopTime = mob:getLocalVar("depopTime");

    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    if (killer:hasKeyItem(JADE_STRATUM_ABYSSITE_III)) then -- Lord Asag Kill
        if  (killer:getMaskBit(killer:getVar("JADE_STRATUM_III"), 1) == false) then
                killer:setMaskBit(killer:getVar("JADE_STRATUM_III"),"JADE_STRATUM_III",1,true);
        end
        if (killer:isMaskFull(kill:getVar("JADE_STRATUM_III"),2) == true) then
                 killer:addKeyItem(JADE_STRATUM_ABYSSITE_IV);
                 killer:delKeyItem(JADE_STRATUM_ABYSSITE_III);
        end
    end
    killer:addCurrency("bayld", 75);
    killer:addExp(10000);
end;