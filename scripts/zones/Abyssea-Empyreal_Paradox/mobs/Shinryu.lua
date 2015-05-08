-----------------------------------
--  Area: Abyssea - Empyreal Paradox (255)
--   Mob: Shinryu
-----------------------------------
-----------------------------------
package.loaded["scripts/zones/Abyssea-Empyreal_Paradox/TextIDs"] = nil;
package.loaded["scripts/globals/bcnm"] = nil;
-- package.loaded["scripts/globals/abyssea"] = nil;
-------------------------------------
require("scripts/globals/bcnm");
require("scripts/globals/titles");
require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/globals/keyitems");
-- require("scripts/globals/abyssea");
require("scripts/zones/Abyssea-Empyreal_Paradox/TextIDs");
require("scripts/globals/status");

-----------------------------------
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_STUNRES, 100);    
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC, 950);
    mob:setMod(MOD_MATT, 120);
    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
    
    -- addMod
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
    local Wings = mob:getLocalVar("Wings");
    local Shinryu_2hr_Used = 0;

    if (mob:getBattleTime() - mob:getLocalVar("Wings") > 180) then
        local anichange = math.random(0,1);
        if (anichnage == 0) then
            mob:AnimationSub(0);
            mob:setLocalVar("Wings", mob:getBattleTime());
        else
            mob:AnimationSub(1);
            mob:setLocalVar("Wings", mob:getBattleTime());
        end
    end                      



    if (mob:getLocalVar("Shinryu_2hr") ~= nil) then
        Shinryu_2hr_Used = mob:getLocalVar("Shinryu_2hr");
    end

    if (mob:getHPP() <= 10) then
        if (Shinryu_2hr_Used == 2) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Shinryu_2hr", 3);
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);
            mob:setMod(MOD_REGAIN,40);
            mob:setMod(MOD_TRIPLE_ATTACK, 25);
            mob:setMod(MOD_UFASTCAST, 95);
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

function onMobDeath(mob,killer)
    local CHANCE = 30;
    local LUNAR = 40;

    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_APOCALYPSE) == false) then
        killer:addKeyItem(ATMA_OF_THE_APOCALYPSE);
        killer:messageSpecial(6385, ATMA_OF_THE_APOCALYPSE);
        killer:addTitle(WYRM_GOD_DEFIER);
    end

    if (math.random(0,99) < LUNAR  and killer:hasKeyItem(LUNAR_ABYSSITE3) == false) then
        killer:addKeyItem(LUNAR_ABYSSITE3);
        killer:messageSpecial(6385, LUNAR_ABYSSITE3);
    end
end;


