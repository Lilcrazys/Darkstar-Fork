-----------------------------------
-- Area: Abyssea - Empyreal Paradox (255)
--  NM:  Shinryu
-----------------------------------
package.loaded["scripts/zones/Abyssea-Empyreal_Paradox/TextIDs"] = nil;
-------------------------------------
require("scripts/zones/Abyssea-Empyreal_Paradox/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/keyitems");
require("scripts/globals/titles");
require("scripts/globals/quests");
require("scripts/globals/status");
require("scripts/globals/bcnm");

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
    mob:setMod(MOD_STUNRES,44);
    mob:setMod(MOD_PARALYZERES,30);
    mob:setMod(MOD_UFASTCAST, 65);
    mob:setMod(MOD_MACC, 2500); -- this needs to become addMod of the correct amount
    mob:setMod(MOD_MATT, 125);  -- this needs to become addMod of the correct amount
    mob:setMod(MOD_HUMANOID_KILLER, 7);
    mob:setMod(MOD_TERRORRES, 99);

    -- addMod
    mob:addMod(MOD_DMGRANGE, -5);
    mob:addMod(MOD_DMGMAGIC, -10);
    mob:addMod(MOD_MDEF, 25);

    -- Other
    -- mob:SetMobSkillAttack(LIST_ID_HERE); -- Enable Special Animation for melee attacks.
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
    local Shinryu_2hr_Used = mob:getLocalVar("Shinryu_2hr");

    -- This commented out stuff is for test purposes.
    -- mob:castSpell(218); -- Force cast meteor
    -- mob:setMP(0) -- Stop casting meathead
    -- mob:addTP(500) -- Spam those TP skills for me meathead
    -- mob:setMobMod(MOBMOD_SKILL_LIST,4223) -- Show me all "wings out" skills.
    -- mob:setMobMod(MOBMOD_SKILL_LIST,4225) -- show me all "wings in" skills.

    if (mob:getBattleTime() - mob:getLocalVar("Wings") > 60) then
        if (mob:AnimationSub() == 1) then
            mob:AnimationSub(0);
            mob:setLocalVar("Wings", mob:getBattleTime());
        elseif (mob:AnimationSub() == 0) then
            mob:AnimationSub(1);
            mob:setLocalVar("Wings", mob:getBattleTime());
        end
    end

    if (mob:getHPP() <= 10) then
        if (Shinryu_2hr_Used == 2) then
            mob:useMobAbility(688); -- MS
            mob:setLocalVar("Shinryu_2hr", 3);
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);
            mob:setMod(MOD_REGAIN,40);
            mob:setMod(MOD_UFASTCAST, 95);
        end
    elseif (mob:getHPP() <= 30) then
        if (Shinryu_2hr_Used == 1) then
            mob:useMobAbility(688); -- MS
            mob:setLocalVar("Shinryu_2hr", 2);
            mob:setMod(MOD_REGAIN,40);
        end
    elseif (mob:getHPP() <= 70) then
        if (Shinryu_2hr_Used == 0) then
            mob:useMobAbility(688); -- MS
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
        spell:setAnimation(280); -- AoE Meteor Animation (probably needs changed)
        spell:setMPCost(1);
    elseif (spell:getID() == 219) then -- Comet
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280); -- AoE Meteor Animation (probably needs changed)
        spell:setMPCost(1);
    elseif (spell:getID() == 244) then -- Meteor II
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280); -- AoE Meteor Animation (probably needs changed)
        spell:setMPCost(1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local ATMA = 30;
    local LUNAR = 40;

    player:addTitle(WYRM_GOD_DEFIER);

    if (math.random(0,99) < ATMA and player:hasKeyItem(ATMA_OF_THE_APOCALYPSE) == false) then
        player:addKeyItem(ATMA_OF_THE_APOCALYPSE);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_APOCALYPSE);
    end

    if (math.random(0,99) < LUNAR and player:hasKeyItem(LUNAR_ABYSSITE3) == false) then
        player:addKeyItem(LUNAR_ABYSSITE3);
        player:messageSpecial(KEYITEM_OBTAINED, LUNAR_ABYSSITE3);
    end
end;
