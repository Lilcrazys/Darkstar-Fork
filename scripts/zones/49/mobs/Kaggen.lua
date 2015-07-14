-----------------------------------
-- Area: VoiddWatch NM
-- NPC: Kaggen
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
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_MACC,2000);
    mob:setMod(MOD_MATT,90);
    mob:SetMobSkillAttack(true);
    mob:setMod(MOD_ACC,1600);


    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_ATT,150);
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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

    -- if (os.time(t) > mob:getLocalVar("depopTime")) then
       -- DespawnMob(mob:getID());
    -- end
    if (mob:getHPP() <= 40) then
        if (Boost_Used == 0) then
            mob:addMod(MOD_EVASION, 100);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;