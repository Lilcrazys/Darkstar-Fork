-----------------------------------
-- Area: VoiddWatch NM
-- NPC: Stachysaurus
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");

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
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK,25);


    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,150);
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
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 400);
    killer:addExp(10000);

    if (killer:hasKeyItem(WHITE_STRATUM_ABYSSITE_V)) then -- Stachysaurus Kill
        if (killer:getMaskBit(killer:getVar("WHITE_STRATUM_V"), 0) == false) then
           killer:setMaskBit(killer:getVar("WHITE_STRATUM_V"),"WHITE_STRATUM_V",0,true);
        end
        if (killer:isMaskFull(killer:getVar("WHITE_STRATUM_V"),3) == true) then
           killer:addKeyItem(WHITE_STRATUM_ABYSSITE_VI);
           killer:delKeyItem(WHITE_STRATUM_ABYSSITE_V);
           killer:setVar("WHITE_STRATUM_V", 0);
        end
    end;
end;