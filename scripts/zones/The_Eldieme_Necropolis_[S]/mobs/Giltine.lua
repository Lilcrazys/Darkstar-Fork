-----------------------------------
-- Area: VoiddWatch NM
-- NPC: Gilitine
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
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,2200);
    mob:setMod(MOD_MATT,100);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,120);
    mob:addMod(MOD_ATT,250);
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

    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end
    if (mob:getHPP() <= 40) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_REGAIN, 40);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(50,150);
    mob:addStatusEffect(EFFECT_SHOCK_SPIKES,power,0,30);
    mob:getStatusEffect(EFFECT_SHOCK_SPIKES):setFlag(32);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 150);
    killer:addExp(10000);

    if (killer:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Gilitine Kill
        if (killer:getMaskBit(killer:getVar("WHITE_STRATUM_II"), 5) == false) then
           killer:setMaskBit(killer:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",5,true);
        end
        if (killer:isMaskFull(killer:getVar("WHITE_STRATUM_II"),6) == true) then
           killer:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
           killer:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
           killer:setVar("WHITE_STRATUM_II", 0);
        end
    end;
end;