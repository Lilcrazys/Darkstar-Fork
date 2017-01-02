-----------------------------------
-- Area: Legion
-- Soaring_Naraka
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
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);

    -- addMod
    mob:addMod(MOD_MDEF,45);
    mob:addMod(MOD_DEF,75);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 30);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_REGAIN, 35);
    mob:setMod(MOD_HASTE_ABILITY, 15);
    mob:setMod(MOD_UFASTCAST, 35);
    mob:setMod(MOD_QUAD_ATTACK, 25);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    -- local stance = mob:getLocalVar("stance");  -- Stance 1 = Raksha, Stance 0 = Yaksha
    local did2hr = mob:getLocalVar("did2hr");

    if (mob:getHPP() <= 10 and did2hr == 2) then
        mob:useMobAbility(730); -- Meikyo Shisui
        mob:setLocalVar("did2hr", 3);
    elseif (mob:getHPP() <= 30 and did2hr == 1) then
        mob:useMobAbility(691); -- Manafont
        mob:setLocalVar("did2hr", 2);
    elseif (mob:getHPP() <= 70 and did2hr == 0) then
        mob:useMobAbility(730); -- Meikyo Shisui
        mob:setLocalVar("did2hr", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 250);
    player:addTitle(SUBJUGATOR_OF_THE_SOARING);
end;
