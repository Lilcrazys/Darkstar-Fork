-----------------------------------
-- Area: Bibiki Bay
--  MOB: Tchakka (Custom Version)
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_DEF, 100);
    mob:addMod(MOD_MDEF, 50);
end;

-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_MACC, 2500);
    mob:setMod(MOD_MATT, 110);
    mob:setMod(MOD_ACC,1500);
    mob:setMod(MOD_WATER_AFFINITY_DMG, 20);
    mob:setMod(MOD_WATER_AFFINITY_ACC, 20);

    -- Other
    mob:SetMobSkillAttack(4175); -- Enable Special Animation for melee attacks.
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    mob:setLocalVar("BattleStart", os.time());
end;

-----------------------------------
-- onMobDisEngage Action
-----------------------------------

function onMobDisEngage(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------


function onMobFight(mob, target)
    local BattleStart = mob:getLocalVar("BattleStart");

    if (os.time() -BattleStart > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local CHANCE = 20;
    if (math.random(0,99) < CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(745) == false) then
         player:addSpell(745);
    end
    mob:setRespawnTime(math.random(18000,28800));   -- 5 to 8 hours
end;