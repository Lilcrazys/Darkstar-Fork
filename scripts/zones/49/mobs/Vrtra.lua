-----------------------------------
-- Area: King Ranperre's Tomb
-- NPC:  Vrtra
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------
-- OnMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:addMod(MOD_DMGRANGE, 50);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2500);
    mob:setMod(MOD_MATT,120);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_DARK_AFFINITY,5);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,25);
    mob:setMod(MOD_PARALYZERES,30);
    mob:addMod(MOD_DEF,-100);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)

    local vrtra_2hr_Used = mob:getLocalVar("vrtra_2hr");

    if (mob:getHPP() <= 20) then
        if (vrtra_2hr_Used == 3) then
            mob:useMobAbility(439); -- BW
            mob:setLocalVar("vrtra_2hr", 4);
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);
            mob:addMod(MOD_DOUBLE_ATTACK, 15);
            mob:addMod(MOD_REGAIN, 10);
        end
    elseif (mob:getHPP() <= 40) then
        if (vrtra_2hr_Used == 2) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("vrtra_2hr", 3);
        end
    elseif (mob:getHPP() <= 60) then
        if (vrtra_2hr_Used == 1) then
            mob:useMobAbility(439); -- BW
            mob:setLocalVar("vrtra_2hr", 2);
        end
    elseif (mob:getHPP() <= 80) then
        if (vrtra_2hr_Used == 0) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("vrtra_2hr", 1);
        end
    end
end;
-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 246  then       -- set drain 2 to AoE
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(25);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) ~= 3) or (target:hasStatusEffect(EFFECT_CURSE_II) == true)) then
        return 0,0,0;
    else
        local duration = 10;
        target:addStatusEffect(EFFECT_CURSE_II,40,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_CURSE,0,EFFECT_CURSE_II;
    end
end;

-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target)
    target:addStatusEffect(EFFECT_BIND, 1, 0, 3);
    mob:useMobAbility(1053);
    mob:addTP(100);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(VRTRA_VANQUISHER);

    -- Set Vrtra's spawnpoint and respawn time (3-5 days)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random((75600),(86400)));

end;