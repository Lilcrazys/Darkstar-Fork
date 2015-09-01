-----------------------------------
-- Area: EDIT ME
-- VWNM: Gasha 1
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,100);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 20);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,25);

    -- var
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
    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) > 4) or (target:hasStatusEffect(EFFECT_SILENCE) == true)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_SILENCE,1,0,10);
    end
    return SUBEFFECT_SILENCE,163,EFFECT_SILENCE;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    SpawnMob(mob:getID()+1) -- Spawns Next Form
end;