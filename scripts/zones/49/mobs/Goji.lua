-----------------------------------
-- Area: VoiddWatch NM
-- NPC: Goji
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
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_QUAD_ATTACK,25);
    mob:setMod(MOD_DARK_AFFINITY,300);


    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,250);
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
    -- if (os.time(t) > mob:getLocalVar("depopTime")) then
       -- DespawnMob(mob:getID());
    -- end

    local Wings = mob:getLocalVar("Wings");

    if (mob:getBattleTime() - mob:getLocalVar("Wings") > 180) then
        if (mob:AnimationSub() == 1) then
           mob:AnimationSub(0); -- fly
           mob:setLocalVar("Wings", mob:getBattleTime());
        elseif (mob:AnimationSub() == 0) then
           mob:AnimationSub(1); -- fly
           mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
           mob:setLocalVar("Wings", mob:getBattleTime());
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;