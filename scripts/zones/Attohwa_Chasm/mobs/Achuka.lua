-----------------------------------
-- Area: Attohwa Chasm
-- NPC:  Achuka
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_MACC, 900);
    mob:setMod(MOD_MATT, 100);
    mob:setMod(MOD_DEF, 900);    
    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.

    -- addMod
    mob:setMod(MOD_ACC,1250);
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
    local Achuka_2hr_Used = 0;
    if (mob:getLocalVar("Achuka_2hr") ~= nil) then
        Achuka_2hr_Used = mob:getLocalVar("Achuka_2hr");
    end

    if (mob:getHPP() <= 10) then
        if (Achuka_2hr_Used == 2) then
            mob:useMobAbility(432); -- PD
            mob:setLocalVar("Achuka_2hr", 3);
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);
        end
    elseif (mob:getHPP() <= 30) then
        if (Achuka_2hr_Used == 1) then
            mob:useMobAbility(432); -- PD
            mob:setLocalVar("Achuka_2hr", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Achuka_2hr_Used == 0) then
            mob:useMobAbility(432); -- PD
            mob:setLocalVar("Achuka_2hr", 1);
        end
    elseif (BattleTime - os.time() > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    local SPELL_ID = 746;
    local CHANCE = 10;
    if (math.random(0,99) < CHANCE and killer:getMainJob() == JOB_BLU and killer:hasSpell(SPELL_ID) == false) then
        killer:addSpell(SPELL_ID);
    end
end;