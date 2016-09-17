-----------------------------------
-- Area: Uleguaerand Range
--  MOB: Kumhau (Custom version)
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_MDEF, 30);
    mob:addMod(MOD_ICE_AFFINITY_DMG, 20);
    mob:addMod(MOD_ICE_AFFINITY_ACC, 20);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_MACC, 2500);
    mob:setMod(MOD_MATT, 100);
    mob:setMod(MOD_ACC,1450);
    mob:setMod(MOD_STUNRES, 500);

    -- Other
    mob:SetMobSkillAttack(4176); -- Enable Special Animation for melee attacks.
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
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
    local BattleTime = mob:getBattleTime();
    local Kumhau_2hr_Used = mob:getLocalVar("Kumhau_2hr");

    if (mob:getHPP() <= 10 and Kamhau_2hr_Used == 2) then
        mob:useMobAbility(694); -- Invincible
        mob:setLocalVar("Kumhau_2hr", 3);
        mob:addStatusEffect(EFFECT_HASTE,200,0,200);
    elseif (mob:getHPP() <= 30 and Kamhau_2hr_Used == 1) then
        mob:useMobAbility(694); -- Invincible
        mob:setLocalVar("Kumhau_2hr", 2);
    elseif (mob:getHPP() <= 70 and Kamhau_2hr_Used == 0) then
        mob:useMobAbility(694); -- Invincible
        mob:setLocalVar("Kamhau_2hr", 1);
    elseif (BattleTime - os.time() > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(18000,28800));   -- 5 to 8 hours
end;