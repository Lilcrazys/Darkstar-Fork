-----------------------------------
-- Area: Empy Paradox
-- NPC:  Shinryu
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------



-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMod(MOD_COUNTER,15);
    mob:addMod(MOD_DOUBLE_ATTACK,10)
    mob:setMod(MOD_UFASTCAST, 45);
    mob:addMod(MOD_REGEN, 30);
    mob:addMod(MOD_MDEF, 50);
    mob:addMod(MOD_DEF, -50);
    mob:addMod(MOD_ATT, -50);
    mob:setMod(MOD_REGAIN,10);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------



-----------------------------------
-- onMobDisEngage Action
-----------------------------------



-----------------------------------
-- onMobFight Action
-----------------------------------


function onMobFight(mob, target)
    local BattleStart = mob:getLocalVar("BattleStart");
    local Shinryu_2hr_Used = 0;
    if (mob:getLocalVar("Shinryu_2hr") ~= nil) then
        Shinryu_2hr_Used = mob:getLocalVar("Shinryu_2hr");
    end

    if (mob:getHPP() <= 10) then
        if (Shinryu_2hr_Used == 2) then
            mob:useMobAbility(432); -- MS
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);
            mob:setMod(MOD_REGAIN,20);
            mob:setMod(MOD_TRIPLE_ATTACK, 15);
            mob:setMod(MOD_UFASTCAST, 75);
            mob:addMod(MOD_MDEF, -350);
            mob:addMod(MOD_DEF, -350);
            mob:addMod(MOD_ATT, 150);
            mob:setLocalVar("Shinryu_2hr", 3);
        end
    elseif (mob:getHPP() <= 30) then
        if (Shinryu_2hr_Used == 1) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Shinryu_2hr", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Shinryu_2hr_Used == 0) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Shinryu_2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(WYRM_GOD_DEFIER);
end;