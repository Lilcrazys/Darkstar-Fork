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
------------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
        spell:setMPCost(1);
    end
end;

------------------------------------
-- onMonsterMagicPrepare
------------------------------------

function onMonsterMagicPrepare(caster, target)
    if (caster:hasStatusEffect(EFFECT_MANAFONT)) then
        return 218;
    elseif (caster:hasStatusEffect(EFFECT_SOUL_VOICE)) then
        return 466;
    end
end;
-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local DID2HR = 0;
    local RND = math.random(1,12);
    local AV2HR = nil;

    if (RND) == 1) then
        AV2HR = 432;
    elseif (RND) == 2) then
        AV2HR = 433;
    elseif (RND) == 3) then
        AV2HR = 434;
    elseif (RND) == 4) then
        AV2HR = 435;
    elseif (RND) == 5) then
        AV2HR = 436;
    elseif (RND) == 6) then
        AV2HR = 437;
    elseif (RND) == 7) then
        AV2HR = 438;
    elseif (RND) == 8) then
        AV2HR = 439;
    elseif (RND) == 9) then
        AV2HR = 440;
    elseif (RND) == 10) then
        AV2HR = 474;
    elseif (RND) == 11) then
        AV2HR = 475;
    elseif (RND) == 12) then
        AV2HR = 479;
    end

    if (mob:getLocalVar("DID2HR") ~= nil) then
        DID2HR_Used = mob:getLocalVar("DID2HR");
    end

    if (AV2HR ~= nil) then
        if (mob:getHPP() <= 10 and DID2HR == 8) then
            mob::useMobAbility(AV2hr);
            mob:setLocalVar("AV_2hr", 9);
        elseif (mob:getHPP() <= 20 and DID2HR == 7) then
            mob::useMobAbility(AV2hr);
            mob:setLocalVar("AV_2hr", 8);
        elseif (mob:getHPP() <= 30 and DID2HR == 6) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 7);
        elseif (mob:getHPP() <= 40 and DID2HR == 5) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 6);
        elseif (mob:getHPP() <= 50 and DID2HR == 4) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 5);
        elseif (mob:getHPP() <= 60 and DID2HR == 3) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 4);
        elseif (mob:getHPP() <= 70 and DID2HR == 2) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 3);
        elseif (mob:getHPP() <= 80 and DID2HR == 1) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 2);
        elseif (mob:getHPP() <= 90 and DID2HR == 0) then
            mob:useMobAbility(479);
            mob:setLocalVar("AV_2hr", 1);
        end
    end

    if (mob:getBattleTime() > 3600 and mob:getLocalVar("RAGED") == 0) then
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