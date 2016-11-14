-----------------------------------
-- Area: Al'Taieu
--  NM:  Jailer of Hope
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,100);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,120);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REFRESH, 500);
    mob:setMod(MOD_REGAIN, 25);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 30);

    -- Other
    mob:setSpellList(0); -- If it dies with the ability to cast spells, the next spawn would be able to cast from the start.
    mob:setMobMod(MOBMOD_MAGIC_COOL, 20); -- This gives around 6 - 15 seconds between casts. Doesn't seem to work anywhere except in this function.
end;

-----------------------------------
-- onMobDisEngage Action
-----------------------------------

function onMobDisEngage(mob, target)
    mob:setLocalVar("RAGED", 0);
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local BattleTime = mob:getBattleTime();
    local JoH_2hr_Used = mob:getLocalVar("JoH_2hr");

    if (mob:getHPP() <= 10) then
        if (JoH_2hr_Used == 3) then
            mob:useMobAbility(432);
            mob:setLocalVar("JoH_2hr", 4);
        end
    elseif (mob:getHPP() <= 25) then
        if (JoH_2hr_Used == 2) then
            mob:useMobAbility(432);
            mob:setLocalVar("JoH_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (JoH_2hr_Used == 1) then
            mob:useMobAbility(432);
            mob:setLocalVar("JoH_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (JoH_2hr_Used == 0) then
            mob:useMobAbility(432);
            mob:setLocalVar("JoH_2hr", 1);
        end
    end

    if (BattleTime > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end

    if (mob:getLocalVar("SpellTime") < os.time() and mob:getLocalVar("SpellTime") ~= 0) then -- Checks for it being 0 because it gets set to 0 to avoid setting the spell list repeatedly
        mob:setSpellList(0);
        mob:setLocalVar("SpellTime", 0)
    end;
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
    if (skill:getID() == 1102) then -- Set spell list for Burst2/Thundaga3 upon using Plasma Charge. Allow for 60 seconds.
        mob:setSpellList(140);
        mob:setLocalVar("SpellTime", os.time() + 60);
    end;
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    -- Guestimating 2 in 3 chance to stun on melee.
    if ((math.random(1,100) >= 66) or (target:hasStatusEffect(EFFECT_STUN) == true)) then
        return 0,0,0;
    else
        local duration = math.random(4,6);
        target:addStatusEffect(EFFECT_STUN,5,0,duration);
        return SUBEFFECT_STUN,0,EFFECT_STUN;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;