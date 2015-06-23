-----------------------------------
-- Area: VoiddWatch NM
-- NPC: Mellonia
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
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);


    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,100);
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
    local Gnat_2hr_Used = 0;

    if (os.time(t) > mob:getLocalVar("depopTime")) then
        DespawnMob(mob:getID());
    end
    if (mob:getHPP() <= 40) then
        if (Gnat_2hr_Used == 0) then
            mob:useMobAbility(432); -- Chainspell
            mob:setLocalVar("Gnat_2hr", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    local RND = math.random(1,3);
    local EFFECT = EFFECT_NONE;

    if (RND == 1) then
        EFFECT = EFFECT_AMNESIA;
        target:addStatusEffect(EFFECT_AMNESIA,1,0,10);
    elseif (RND == 2) then
        EFFECT = EFFECT_SILENCE;
        target:addStatusEffect(EFFECT_SILENCE,1,0,10);
    elseif (RND == 3) then
        EFFECT = EFFECT_BIO;
        target:addStatusEffect(EFFECT_BIO,100,3,5);
    end
    return SUBEFFECT_POISON,163,EFFECT;
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;