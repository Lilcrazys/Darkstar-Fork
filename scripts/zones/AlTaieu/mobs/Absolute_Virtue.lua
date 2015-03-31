-----------------------------------
-- Area: Al'Taieu
-- NPC:  Absolute Virtue
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 500);
    mob:setMod(MOD_REFRESH, 500);
    mob:setMod(MOD_REGAIN, 25);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,150);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);
    mob:setMod(MOD_TRIPLE_ATTACK, 15);

    -- addMod
    mob:addMod(MOD_MDEF,100);
end;

-----------------------------------
-- onMobDisEngage Action
-----------------------------------

function onMobDisEngage(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
end;

------------------------------------
-- onSpellPrecast
function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
        spell:setMPCost(1);
    end
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local AV_2hr_Used = 0;

    if (mob:getLocalVar("AV_2hr_Used") ~= nil) then
        AV_2hr_Used_Used = mob:getLocalVar("AV_2hr_Used");
    end

    if (mob:getHPP() <= 10 and AV_2hr_Used == 8) then
        if (math.random(1,12) == 1) then
            mob:useMobAbility(432);
        elseif (math.random(1,12) == 2) then
            mob:useMobAbility(433);
        elseif (math.random(1,12) == 3) then
            mob:useMobAbility(434);
        elseif (math.random(1,12) == 4) then
            mob:useMobAbility(435);
        elseif (math.random(1,12) == 5) then
            mob:useMobAbility(436);
        elseif (math.random(1,12) == 6) then
            mob:useMobAbility(437);
        elseif (math.random(1,12) == 7) then
            mob:useMobAbility(438);
        elseif (math.random(1,12) == 8) then
            mob:useMobAbility(439);
        elseif (math.random(1,12) == 9) then
            mob:useMobAbility(440);
        elseif (math.random(1,12) == 10) then
            mob:useMobAbility(474);
        elseif (math.random(1,12) == 11) then
            mob:useMobAbility(475);
        elseif (math.random(1,12) == 12) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 9);
        end
    elseif (mob:getHPP() <= 20 and AV_2hr_Used == 7) then
        if (math.random(1,12) == 1) then
            mob:useMobAbility(432);
        elseif (math.random(1,12) == 2) then
            mob:useMobAbility(433);
        elseif (math.random(1,12) == 3) then
            mob:useMobAbility(434);
        elseif (math.random(1,12) == 4) then
            mob:useMobAbility(435);
        elseif (math.random(1,12) == 5) then
            mob:useMobAbility(436);
        elseif (math.random(1,12) == 6) then
            mob:useMobAbility(437);
        elseif (math.random(1,12) == 7) then
            mob:useMobAbility(438);
        elseif (math.random(1,12) == 8) then
            mob:useMobAbility(439);
        elseif (math.random(1,12) == 9) then
            mob:useMobAbility(440);
        elseif (math.random(1,12) == 10) then
            mob:useMobAbility(474);
        elseif (math.random(1,12) == 11) then
            mob:useMobAbility(475);
        elseif (math.random(1,12) == 12) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 8);
        end
    elseif (mob:getHPP() <= 30 and AV_2hr_Used == 6) then
        if (math.random(1,12) == 1) then
            mob:useMobAbility(432);
        elseif (math.random(1,12) == 2) then
            mob:useMobAbility(433);
        elseif (math.random(1,12) == 3) then
            mob:useMobAbility(434);
        elseif (math.random(1,12) == 4) then
            mob:useMobAbility(435);
        elseif (math.random(1,12) == 5) then
            mob:useMobAbility(436);
        elseif (math.random(1,12) == 6) then
            mob:useMobAbility(437);
        elseif (math.random(1,12) == 7) then
            mob:useMobAbility(438);
        elseif (math.random(1,12) == 8) then
            mob:useMobAbility(439);
        elseif (math.random(1,12) == 9) then
            mob:useMobAbility(440);
        elseif (math.random(1,12) == 10) then
            mob:useMobAbility(474);
        elseif (math.random(1,12) == 11) then
            mob:useMobAbility(475);
        elseif (math.random(1,12) == 12) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 7);
        end
    elseif (mob:getHPP() <= 40 and AV_2hr_Used == 5) then
        if (math.random(1,12) == 1) then
            mob:useMobAbility(432);
        elseif (math.random(1,12) == 2) then
            mob:useMobAbility(433);
        elseif (math.random(1,12) == 3) then
            mob:useMobAbility(434);
        elseif (math.random(1,12) == 4) then
            mob:useMobAbility(435);
        elseif (math.random(1,12) == 5) then
            mob:useMobAbility(436);
        elseif (math.random(1,12) == 6) then
            mob:useMobAbility(437);
        elseif (math.random(1,12) == 7) then
            mob:useMobAbility(438);
        elseif (math.random(1,12) == 8) then
            mob:useMobAbility(439);
        elseif (math.random(1,12) == 9) then
            mob:useMobAbility(440);
        elseif (math.random(1,12) == 10) then
            mob:useMobAbility(474);
        elseif (math.random(1,12) == 11) then
            mob:useMobAbility(475);
        elseif (math.random(1,12) == 12) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 6);
        end
    elseif (mob:getHPP() <= 50 and AV_2hr_Used == 4) then
        if (math.random(1,12) == 1) then
            mob:useMobAbility(432);
        elseif (math.random(1,12) == 2) then
            mob:useMobAbility(433);
        elseif (math.random(1,12) == 3) then
            mob:useMobAbility(434);
        elseif (math.random(1,12) == 4) then
            mob:useMobAbility(435);
        elseif (math.random(1,12) == 5) then
            mob:useMobAbility(436);
        elseif (math.random(1,12) == 6) then
            mob:useMobAbility(437);
        elseif (math.random(1,12) == 7) then
            mob:useMobAbility(438);
        elseif (math.random(1,12) == 8) then
            mob:useMobAbility(439);
        elseif (math.random(1,12) == 9) then
            mob:useMobAbility(440);
        elseif (math.random(1,12) == 10) then
            mob:useMobAbility(474);
        elseif (math.random(1,12) == 11) then
            mob:useMobAbility(475);
        elseif (math.random(1,12) == 12) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 5);
        end
    elseif (mob:getHPP() <= 60 and AV_2hr_Used == 3) then
        if (math.random(1,12) == 1) then
            mob:useMobAbility(432);
        elseif (math.random(1,12) == 2) then
            mob:useMobAbility(433);
        elseif (math.random(1,12) == 3) then
            mob:useMobAbility(434);
        elseif (math.random(1,12) == 4) then
            mob:useMobAbility(435);
        elseif (math.random(1,12) == 5) then
            mob:useMobAbility(436);
        elseif (math.random(1,12) == 6) then
            mob:useMobAbility(437);
        elseif (math.random(1,12) == 7) then
            mob:useMobAbility(438);
        elseif (math.random(1,12) == 8) then
            mob:useMobAbility(439);
        elseif (math.random(1,12) == 9) then
            mob:useMobAbility(440);
        elseif (math.random(1,12) == 10) then
            mob:useMobAbility(474);
        elseif (math.random(1,12) == 11) then
            mob:useMobAbility(475);
        elseif (math.random(1,12) == 12) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 4);
        end
    elseif (mob:getHPP() <= 70 and AV_2hr_Used == 2) then
        if (math.random(1,12) == 1) then
            mob:useMobAbility(432);
        elseif (math.random(1,12) == 2) then
            mob:useMobAbility(433);
        elseif (math.random(1,12) == 3) then
            mob:useMobAbility(434);
        elseif (math.random(1,12) == 4) then
            mob:useMobAbility(435);
        elseif (math.random(1,12) == 5) then
            mob:useMobAbility(436);
        elseif (math.random(1,12) == 6) then
            mob:useMobAbility(437);
        elseif (math.random(1,12) == 7) then
            mob:useMobAbility(438);
        elseif (math.random(1,12) == 8) then
            mob:useMobAbility(439);
        elseif (math.random(1,12) == 9) then
            mob:useMobAbility(440);
        elseif (math.random(1,12) == 10) then
            mob:useMobAbility(474);
        elseif (math.random(1,12) == 11) then
            mob:useMobAbility(475);
        elseif (math.random(1,12) == 12) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 3);
        end
    elseif (mob:getHPP() <= 80 and AV_2hr_Used == 1) then
        if (math.random(1,12) == 1) then
            mob:useMobAbility(432);
        elseif (math.random(1,12) == 2) then
            mob:useMobAbility(433);
        elseif (math.random(1,12) == 3) then
            mob:useMobAbility(434);
        elseif (math.random(1,12) == 4) then
            mob:useMobAbility(435);
        elseif (math.random(1,12) == 5) then
            mob:useMobAbility(436);
        elseif (math.random(1,12) == 6) then
            mob:useMobAbility(437);
        elseif (math.random(1,12) == 7) then
            mob:useMobAbility(438);
        elseif (math.random(1,12) == 8) then
            mob:useMobAbility(439);
        elseif (math.random(1,12) == 9) then
            mob:useMobAbility(440);
        elseif (math.random(1,12) == 10) then
            mob:useMobAbility(474);
        elseif (math.random(1,12) == 11) then
            mob:useMobAbility(475);
        elseif (math.random(1,12) == 12) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 2);
        end
    elseif (mob:getHPP() <= 90 and AV_2hr_Used == 0) then
        if (math.random(1,12) == 1) then
            mob:useMobAbility(432);
        elseif (math.random(1,12) == 2) then
            mob:useMobAbility(433);
        elseif (math.random(1,12) == 3) then
            mob:useMobAbility(434);
        elseif (math.random(1,12) == 4) then
            mob:useMobAbility(435);
        elseif (math.random(1,12) == 5) then
            mob:useMobAbility(436);
        elseif (math.random(1,12) == 6) then
            mob:useMobAbility(437);
        elseif (math.random(1,12) == 7) then
            mob:useMobAbility(438);
        elseif (math.random(1,12) == 8) then
            mob:useMobAbility(439);
        elseif (math.random(1,12) == 9) then
            mob:useMobAbility(440);
        elseif (math.random(1,12) == 10) then
            mob:useMobAbility(474);
        elseif (math.random(1,12) == 11) then
            mob:useMobAbility(475);
        elseif (math.random(1,12) == 12) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 1);
        end
    elseif (mob:getBattleTime() > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 5 or target:hasStatusEffect(EFFECT_TERROR == true)) then
        return 0,0,0;
    else
        local duration = 5;
        target:addStatusEffect(EFFECT_TERROR,1,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_NONE,0,EFFECT_TERROR;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(VIRTUOUS_SAINT);
end;