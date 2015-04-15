-----------------------------------
-- Area: Bibiki Bay
-- NPC:  Ravenous Cracklaw
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- MobMods
    mob:setMobMod(MOBMOD_AUTO_SPIKES,mob:getShortID());
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);

    -- Effects
    mob:addStatusEffect(EFFECT_DAMAGE_SPIKES,5,0,0);
    mob:getStatusEffect(EFFECT_DAMAGE_SPIKES):setFlag(32);
end;

-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod

    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_UFASTCAST, 60);
    mob:setMod(MOD_DOUBLE_ATTACK,10);
    mob:setMod(MOD_MACC, 900);
    mob:setMod(MOD_MATT, 80);
    -- addMod
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_DEF, 30);
    mob:addMod(MOD_MDEF, 30);

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
    local R_Cracklaw_2hr_Used =  mob:getLocalVar("Ravenous_Cracklaw_2hr");

    if (mob:getHPP() <= 10) then
        if (R_Cracklaw_2hr_Used == 3) then
            mob:useMobAbility(432);
            mob:setLocalVar("Ravenous_Cracklaw_2hr", 4);
        elseif (R_Cracklaw_2hr_Used == 4) then
            mob:useMobAbility(439);
            mob:setLocalVar("Ravenous_Cracklaw_2hr", 5);
        end
    elseif (mob:getHPP() <= 25) then
        if (R_Cracklaw_2hr_Used == 2) then
            mob:useMobAbility(439);
            mob:setLocalVar("Ravenous_Cracklaw_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (R_Cracklaw_2hr_Used == 1) then
            mob:useMobAbility(432);
            mob:setLocalVar("Ravenous_Cracklaw_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (R_Cracklaw_2hr_Used == 0) then
            mob:useMobAbility(439);
            mob:setLocalVar("Ravenous_Cracklaw_2hr", 1);
        end
    end

    if (mob:getBattleTime() and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    local RAND = math.random(0,99);
    if (RAND >= 30) then
        return 0,0,0;
    else
        local dmg = math.random(9,27);
        local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
        dmg = dmg + (INT_diff * 0.25);
        dmg = utils.clamp(dmg, 1, 99);
        target:delStatusEffect(EFFECT_DEFENSE_BOOST)
        if (not target:hasStatusEffect(EFFECT_DEFENSE_DOWN)) then
            target:addStatusEffect(EFFECT_DEFENSE_DOWN, 20, 0, 30);
        end
        target:delStatusEffect(EFFECT_ATTACK_BOOST)
        if (not target:hasStatusEffect(EFFECT_ATTACK_DOWN)) then
            target:addStatusEffect(EFFECT_ATTACK_DOWN, 20, 0, 30);
        end
        return SUBEFFECT_DELUGE_SPIKES,44,dmg;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    mob:setLocalVar("RAGED", 0);
   -- mob:setRespawnTime(math.random((259200),(432000)));   -- 3 to 5 days
end;