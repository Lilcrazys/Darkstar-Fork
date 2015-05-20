-----------------------------------
-- Area: Legion
-- Lofty_Wyrm

-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,15);
    mob:setMod(MOD_REGEN,25);

    -- addMod
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
    mob:addMod(MOD_MATT,45);
    mob:addMod(MOD_MDEF,25);
end;

-----------------------------------

-- onMobEngaged Action
-----------------------------------

-- function onMobEngaged(mob, target)
--end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)

    local Wings = mob:getLocalVar("Wings");
    local Tia_2hr_Used = mob:getLocalVar("Tia_2hr");

    if (mob:getBattleTime() - mob:getLocalVar("Wings") > 180) then
        if (mob:AnimationSub() == 1) then
             mob:useMobAbility(1026);
             mob:setLocalVar("Wings", mob:getBattleTime());
         elseif (mob:AnimationSub() == 2) then
             mob:AnimationSub(1); -- fly
             mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
             mob:SetMobSkillAttack(true);
             mob:setLocalVar("Wings", mob:getBattleTime());
         elseif (mob:AnimationSub() == 0) then
             mob:AnimationSub(1); -- fly
             mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
             mob:SetMobSkillAttack(true);
             mob:setLocalVar("Wings", mob:getBattleTime());
         end
    end

    if (mob:getHPP() <= 20) then
         if (Tia_2hr_Used == 3) then
              mob:useMobAbility(432); -- MS
              mob:setLocalVar("Tia_2hr", 4);
              mob:addStatusEffect(EFFECT_HASTE,200,0,200);
              mob:addMod(MOD_DOUBLE_ATTACK, 15);
              mob:addMod(MOD_REGAIN, 10);
              mob:addStatusEffect(EFFECT_ATTACK_BOOST,125,0,0);
              mob:getStatusEffect(EFFECT_ATTACK_BOOST):setFlag(32);
         end
    elseif (mob:getHPP() <= 40) then
         if (Tia_2hr_Used == 2) then
              mob:useMobAbility(432); -- MS
              mob:setLocalVar("Tia_2hr", 3);
         end
    elseif (mob:getHPP() <= 60) then
         if (Tia_2hr_Used == 1) then
              mob:useMobAbility(432); -- MS
              mob:setLocalVar("Tia_2hr", 2);
         end
    elseif (mob:getHPP() <= 80) then
         if (Tia_2hr_Used == 0) then
              mob:useMobAbility(432); -- MS
              mob:setLocalVar("Tia_2hr", 1);
         end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
-- function onAdditionalEffect(mob,target,damage)
-- end;

-----------------------------------
-- onMagicHit
-----------------------------------

-- function onMagicHit(caster, target, spell)
-- end

-----------------------------------
-- onSpikesDamage
-----------------------------------

-- function onSpikesDamage(mob,target,damage)
--end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    killer:addCurrency("legion_point", 10);
    SpawnMob(mob:getID()+3) -- Spawns Lofty_Zilant
end;