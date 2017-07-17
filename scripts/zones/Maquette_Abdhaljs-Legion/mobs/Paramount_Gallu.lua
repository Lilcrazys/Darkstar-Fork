-----------------------------------
-- Area: Legion
--  MOB: Paramount_Gallu
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");
require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_DRAW_IN, 1);
    mob:setMobMod(MOBMOD_SIGHT_RANGE, 20);
    mob:setMobMod(MOBMOD_SOUND_RANGE, 20);
    mob:setMobMod(MOBMOD_HP_STANDBACK, 0);
    mob:setMobMod(MOBMOD_ADD_EFFECT, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 70);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_MACC, 1925);
    mob:setMod(MOD_MATT, 120);
    mob:setMod(MOD_ACC, 1925);
    mob:setMod(MOD_DARK_AFFINITY_DMG, 20);
    mob:setMod(MOD_DARK_AFFINITY_ACC, 20);

    mob:SetMobSkillAttack(4168); -- Enable Special Animation for melee attacks.
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local did2hr = mob:getLocalVar("did2hr");
    local Blood_Weapon = 695;
    local Manafont = 691;

    if (mob:getHPP() <= 10 and did2hr == 4) then
        mob:useMobAbility(Blood_Weapon);
        mob:setLocalVar("did2hr", 5);
    elseif (mob:getHPP() <= 10 and did2hr == 3) then
        mob:useMobAbility(Manafont);
        mob:setLocalVar("did2hr", 4);
    elseif (mob:getHPP() <= 25 and did2hr == 2) then
        mob:useMobAbility(Blood_Weapon);
        mob:setLocalVar("did2hr", 3);
    elseif (mob:getHPP() <= 50 and did2hr == 1) then
        mob:useMobAbility(Blood_Weapon);
        mob:setLocalVar("did2hr", 2);
    elseif (mob:getHPP() <= 75 and did2hr == 0) then
        mob:useMobAbility(Blood_Weapon);
        mob:setLocalVar("did2hr", 1);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    local resist = customResCheck(target, EFFECT_TERROR);
    if (resist >= math.random(1,1000) or math.random(1,9) ~= 5) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_TERROR,1,0,5);
        mob:resetEnmity(target);
        return SUBEFFECT_NONE,0,EFFECT_TERROR;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 350);
    player:addTitle(LEGENDARY_LEGIONNAIRE);
end;
