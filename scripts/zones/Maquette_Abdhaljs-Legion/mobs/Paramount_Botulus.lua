-----------------------------------
-- Area: Legion
-- Paramount_Botulus
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SIGHT_RANGE, 20);
    mob:setMobMod(MOBMOD_SOUND_RANGE, 20);
    mob:setMobMod(MOBMOD_HP_STANDBACK, 0);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_REGAIN, 25);
    mob:setMod(MOD_HASTE_ABILITY, 10);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,125);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local did2hr = mob:getLocalVar("did2hr");
    local Chainspell = 692;
    local Manafont = 691;

    if (mob:getHPP() <= 10 and did2hr == 4) then
        mob:useMobAbility(Chainspell);
        mob:setLocalVar("did2hr", 5);
    elseif (mob:getHPP() <= 10 and did2hr == 3) then
        mob:useMobAbility(Manafont);
        mob:setLocalVar("did2hr", 4);
    elseif (mob:getHPP() <= 25 and did2hr == 2) then
        mob:useMobAbility(Chainspell);
        mob:setLocalVar("did2hr", 3);
    elseif (mob:getHPP() <= 50 and did2hr == 1) then
        mob:useMobAbility(Chainspell);
        mob:setLocalVar("did2hr", 2);
    elseif (mob:getHPP() <= 75 and did2hr == 0) then
        mob:useMobAbility(Chainspell);
        mob:setLocalVar("did2hr", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 350);
    player:addTitle(LEGENDARY_LEGIONNAIRE);
end;
