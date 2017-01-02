-----------------------------------
-- Area: Legion
--  MOB: Veiled_Ironclad
-----------------------------------
require("scripts/globals/status");
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

    -- setMod
    mob:setMod(MOD_MACC,1425); -- Todo: convert to correct amount of addMod
    mob:setMod(MOD_MATT,120);  -- Todo: convert to correct amount of addMod

    -- addMod
    mob:addMod(MOD_ATT,105);
    mob:addMod(MOD_MDEF,55);
    mob:addMod(MOD_DEF,125);
    mob:addMod(MOD_DOUBLE_ATTACK, 15);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 20);
    mob:setMod(MOD_REGAIN, 35);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_COUNTER, 25);

    mob:SetMobSkillAttack(4167); -- Enable Special Animation for melee attacks.
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local did2hr = mob:getLocalVar("did2hr");

    if (mob:getHPP() <= 10 and did2hr == 2) then
        mob:useMobAbility(690); -- HF
        mob:setLocalVar("did2hr", 3);
    elseif (mob:getHPP() <= 30 and did2hr == 1) then
        mob:useMobAbility(688); -- MS
        mob:setLocalVar("did2hr", 2);
    elseif (mob:getHPP() <= 70 and did2hr == 0) then
        mob:useMobAbility(690); -- HF
        mob:setLocalVar("did2hr", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 150);
    player:addTitle(SUBJUGATOR_OF_THE_VEILED);
end;
