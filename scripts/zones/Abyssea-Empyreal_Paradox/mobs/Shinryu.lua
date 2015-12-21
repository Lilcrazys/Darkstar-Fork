-----------------------------------
-- Area: Abyssea - Empyreal Paradox (255)
--  NM:  Shinryu
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
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- setMod
    mob:setMod(MOD_REGEN, 300);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_HASTE_ABILITY, 30);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,1000);
    mob:setMod(MOD_PARALYZERES,30);
    mob:setMod(MOD_UFASTCAST, 65);
    mob:setMod(MOD_MACC, 2500);
    mob:setMod(MOD_MATT, 125);
    mob:setMod(MOD_HUMANOID_KILLER, 7);
    mob:setMod(MOD_TERRORRES, 10000);

    -- addMod
    mob:addMod(MOD_DMGRANGE, -50);
    mob:addMod(MOD_DMGMAGIC, -128);
    mob:addMod(MOD_MDEF, 25);

    -- Other
    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
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

function onMobFight(mob, target)
    local Wings = mob:getLocalVar("Wings");
    local Shinryu_2hr_Used = 0;

    if (mob:getBattleTime() - mob:getLocalVar("Wings") > 180) then
        if (mob:AnimationSub() == 1) then
             mob:AnimationSub(0);
             mob:setLocalVar("Wings", mob:getBattleTime());
         elseif (mob:AnimationSub() == 0) then
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
            mob:setMod(MOD_UFASTCAST, 95);
        end
    elseif (mob:getHPP() <= 30) then
        if (Shinryu_2hr_Used == 1) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Shinryu_2hr", 2);
            mob:setMod(MOD_REGAIN,40);
        end
    elseif (mob:getHPP() <= 70) then
        if (Shinryu_2hr_Used == 0) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Shinryu_2hr", 1);
        end
    end
end;

------------------------------------
-- onSpellPrecast
------------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then -- Meteor
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280); -- AoE Meteor Animation
        spell:setMPCost(1);
    end
    if (spell:getID() == 219) then -- Meteor
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280); -- AoE Meteor Animation
        spell:setMPCost(1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    local CHANCE = 30;
    local LUNAR = 40;
    ally:addTitle(WYRM_GOD_DEFIER);

    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(ATMA_OF_THE_APOCALYPSE) == false) then
        ally:addKeyItem(ATMA_OF_THE_APOCALYPSE);
        ally:messageSpecial(6385, ATMA_OF_THE_APOCALYPSE);
    end

    if (math.random(0,99) < LUNAR  and ally:hasKeyItem(LUNAR_ABYSSITE3) == false) then
        ally:addKeyItem(LUNAR_ABYSSITE3);
        ally:messageSpecial(6385, LUNAR_ABYSSITE3);
    end
end;