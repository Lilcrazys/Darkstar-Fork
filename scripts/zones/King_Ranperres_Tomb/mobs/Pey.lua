-----------------------------------
-- Area: King Ranperres Tomb
--  MOB: Pey (Vrtra's Skeleton Warrior)
-----------------------------------
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SIGHT_RANGE,30);
    mob:setMobMod(MOBMOD_SOUND_RANGE,30);

    -- setMod
    mob:setMod(MOD_REGAIN,33);
    mob:setMod(MOD_DMGPHYS,20);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,25);
    mob:setMod(MOD_PARALYZERES,30);
    mob:setMod(MOD_REGEN, 50);

    -- addMod
    mob:addMod(MOD_MATT,40);
    mob:addMod(MOD_MACC,200);
    mob:addMod(MOD_ACC,200);
    mob:addMod(MOD_DOUBLE_ATTACK,35);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
    local VRTRA = GetMobByID(17555890);
    if (VRTRA:hasStatusEffect(EFFECT_MIGHTY_STRIKES)) then
        if (mob:hasStatsEffect(EFFECT_ATTACK_BOOST) == false) then
            mob:addStatusEffect(EFFECT_ATTACK_BOOST, 20, 0, 35);
            mob:addStatusEffectEx(EFFECT_STR_BOOST, 0, 20, 0, 35);
        end
        if (mob:hasStatsEffect(EFFECT_MAGIC_DEF_BOOST) == false) then
            mob:addStatusEffect(EFFECT_MAGIC_DEF_BOOST, 35, 0, 35);
            mob:addStatusEffectEx(EFFECT_INT_BOOST, 0, 20, 0, 35);
        end
    end
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
end;
