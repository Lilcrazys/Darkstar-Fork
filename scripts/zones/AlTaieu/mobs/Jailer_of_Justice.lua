-----------------------------------
-- Area: Al'Taieu
--  NM:  Jailer of Justice
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);

    -- addMod
    mob:addMod(MOD_MDEF,20);

end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    -- local BattleTime = mob:getBattleTime();
    -- local variable = things;
    -- if (whatever) then
        -- do stuff;
    -- end

    -- Anything else you need to do in onMobFight, do it above this line!
    local lastXzomit = mob:getLocalVar("pop_xzomit");
    if (os.time() - lastXzomit > 30) then
        local xzomit1 = GetMobAction(mob:getID()+1);
        local xzomit2 = GetMobAction(mob:getID()+2);
        local xzomit3 = GetMobAction(mob:getID()+3);
        local xzomit4 = GetMobAction(mob:getID()+4);
        local xzomit5 = GetMobAction(mob:getID()+5);
        local xzomit6 = GetMobAction(mob:getID()+6);
        if (xzomit1 == ACTION_NONE or xzomit1 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+1, 300):updateEnmity(target);
            mob:setLocalVar("pop_xzomit", os.time());
        elseif (xzomit2 == ACTION_NONE or xzomit2 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+2, 300):updateEnmity(target);
            mob:setLocalVar("pop_xzomit", os.time());
        elseif (xzomit3 == ACTION_NONE or xzomit3 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+3, 300):updateEnmity(target);
            mob:setLocalVar("pop_xzomit", os.time());
        elseif (xzomit4 == ACTION_NONE or xzomit4 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+4, 300):updateEnmity(target);
            mob:setLocalVar("pop_xzomit", os.time());
        elseif (xzomit5 == ACTION_NONE or xzomit5 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+5, 300):updateEnmity(target);
            mob:setLocalVar("pop_xzomit", os.time());
        elseif (xzomit6 == ACTION_NONE or xzomit6 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+6, 300):updateEnmity(target);
            mob:setLocalVar("pop_xzomit", os.time());
        end
    end
end

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (target:hasStatusEffect(EFFECT_POISON)) then
        target:delStatusEffect(EFFECT_POISON);
    end

    duration = 10 * applyResistanceAddEffect(mob, target, ELE_WATER, EFFECT_POISON)
    utils.clamp(duration,1,30);

    target:addStatusEffect(EFFECT_POISON, 50, 3, duration);
    -- mob:resetEnmity(target);

    return SUBEFFECT_POISON, 160, EFFECT_POISON;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;