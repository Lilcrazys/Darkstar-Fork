-----------------------------------
-- Area: Al'Taieu
--  HNM: Absolute Virtue
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
    mob:setMobMod(MOBMOD_DRAW_IN, 2); -- Alliance Draw In
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 500);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,120);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);
    mob:setMod(MOD_TRIPLE_ATTACK, 15);
    mob:setMod(MOD_STUNRES, 750);
    mob:setMod(MOD_PARALYZERES, 100);

    -- addMod
    mob:addMod(MOD_MDEF,100);
--[[[
    local JoL = GetMobByID(16912848);
    -- Special check for regen modification by JoL pets killed
    if (JoL:getLocalVar("JoL_Qn_xzomit_Killed") == 9) then
        mob:addMod(MOD_REGEN, -130)
    end
    if (JoL:getLocalVar("JoL_Qn_hpemde_Killed") == 9) then
        mob:addMod(MOD_REGEN, -130)
    end
end;
]]

    -- Special check for regen modification by JoL pets killed
    if (GetServerVariable("JoL_Qn_xzomit_Killed") == 9) then
        mob:addMod(MOD_REGEN, -130)
    end
    if (GetServerVariable("JoL_Qn_hpemde_Killed") == 9) then
        mob:addMod(MOD_REGEN, -130)
    end
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
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
    local DID2HR = mob:getLocalVar("DID2HR");
    local RND = math.random(1,12);
    local AV2HR = nil;
    local popTime = mob:getLocalVar("lastPetPop");

    if (mob:getBattleTime() > 3600 and mob:getLocalVar("RAGED") == 0) then
        -- In retail, this is where it'd just depop instead..Except we'd be tracking it from JoL's pop time instead of BattleTime.
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end

    if (os.time() - popTime > 120) then
        for Helper = mob:getID()+1, mob:getID()+4 do
            if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                SpawnMob(Helper, 300):updateEnmity(target);
                mob:setLocalVar("lastPetPop", os.time());
            end
        end


    else
        if (RND == 1) then
            AV2HR = 432;
        elseif (RND == 2) then
            AV2HR = 433;
        elseif (RND == 3) then
            AV2HR = 434;
        elseif (RND == 4) then
            AV2HR = 435;
        elseif (RND == 5) then
            AV2HR = 436;
        elseif (RND == 6) then
            AV2HR = 437;
        elseif (RND == 7) then
            AV2HR = 438;
        elseif (RND == 8) then
            AV2HR = 439;
        elseif (RND == 9) then
            AV2HR = 440;
        elseif (RND == 10) then
            AV2HR = 474;
        elseif (RND == 11) then
            AV2HR = 475;
        elseif (RND == 12) then
            AV2HR = 479;
        end

        if (AV2HR ~= nil) then
            if (mob:getHPP() <= 10 and DID2HR == 8) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 9);
            elseif (mob:getHPP() <= 20 and DID2HR == 7) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 8);
            elseif (mob:getHPP() <= 30 and DID2HR == 6) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 7);
            elseif (mob:getHPP() <= 40 and DID2HR == 5) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 6);
            elseif (mob:getHPP() <= 50 and DID2HR == 4) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 5);
            elseif (mob:getHPP() <= 60 and DID2HR == 3) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 4);
            elseif (mob:getHPP() <= 70 and DID2HR == 2) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 3);
            elseif (mob:getHPP() <= 80 and DID2HR == 1) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 2);
            elseif (mob:getHPP() <= 90 and DID2HR == 0) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 1);
            end
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
end;

------------------------------------
-- onMonsterMagicPrepare
------------------------------------

function onMonsterMagicPrepare(caster, target)
    if (caster:hasStatusEffect(EFFECT_MANAFONT)) then
        if (math.random(1,3) ~= 2) then
            return 218; -- Meteor
        else
            return 219; -- Comet
        end
    elseif (caster:hasStatusEffect(EFFECT_SOUL_VOICE)) then
        return 466; -- Virelai
    end
end;

-----------------------------------
-- onMagicHit
-----------------------------------

function onMagicHit(caster, target, spell)
    local REGEN = target:getMod(MOD_REGEN);
    local DAY = VanadielDayElement();
    local ELEM = spell:getElement();
    if (GetServerVariable("AV_Regen_Reduction") < 60) then
        -- Had to serverVar the regen instead of localVar because localVar reset on claim loss.
        if (ELEM == DAY and (caster:isPC() or caster:isPet())) then
            SetServerVariable("AV_Regen_Reduction", 1+GetServerVariable("AV_Regen_Reduction"));
            target:addMod(MOD_REGEN, -2);
        end
    end
    return 1;
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 5 or target:hasStatusEffect(EFFECT_TERROR) == true) then
        return 0,0,0;
    else
        local duration = 5;
        target:addStatusEffect(EFFECT_TERROR,1,0,duration);
        return SUBEFFECT_NONE,0,EFFECT_TERROR;
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    SetServerVariable("AV_Regen_Reduction", 0);
    DespawnMob(16912877);
    DespawnMob(16912878);
    DespawnMob(16912879);
    DespawnMob(16912880);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addTitle(VIRTUOUS_SAINT);
    SetServerVariable("AV_Regen_Reduction", 0);
    DespawnMob(16912877);
    DespawnMob(16912878);
    DespawnMob(16912879);
    DespawnMob(16912880);
end;