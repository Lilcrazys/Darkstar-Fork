-----------------------------------
-- Area: Canyon
-- NPC:  Hurkan
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
    mob:setMobMod(MOBMOD_MAGIC_COOL, 35);
end;

-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,2500);
    mob:setMod(MOD_MACC,1500);    
    mob:setMod(MOD_MATT,115);
    mob:addMod(MOD_THUNDER_AFFINITY,20);

    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    mob:setLocalVar("BattleStart", os.time());
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
    local BattleStart = mob:getLocalVar("BattleStart");
    local Hurkan_2hr_Used = 0;
    if (mob:getLocalVar("Hurkan_2hr") ~= nil) then
        Hurkan_2hr_Used = mob:getLocalVar("Hurkan_2hr");
    end

    if (mob:getHPP() <= 10) then
        if (Hurkan_2hr_Used == 3) then
            mob:useMobAbility(436);
            mob:setLocalVar("Hurkan_2hr", 4);
        end
    elseif (mob:getHPP() <= 25) then
        if (Hurkan_2hr_Used == 2) then
            mob:useMobAbility(439);
            mob:setLocalVar("Hurkan_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (Hurkan_2hr_Used == 1) then
            mob:useMobAbility(436);
            mob:setLocalVar("Hurkan_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (Hurkan_2hr_Used == 0) then
            mob:useMobAbility(439);
            mob:setLocalVar("Hurkan_2hr", 1);
        end
    elseif (os.time() -BattleStart > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
   -- mob:setRespawnTime(math.random((259200),(432000)));   -- 3 to 5 days
end;