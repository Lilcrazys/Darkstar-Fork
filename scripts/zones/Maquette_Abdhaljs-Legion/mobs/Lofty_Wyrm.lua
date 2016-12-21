-----------------------------------
-- Area: Legion
-- Lofty_Wyrm
-----------------------------------

require("scripts/globals/status");

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
    mob:addMod(MOD_MATT,45);
    mob:addMod(MOD_MDEF,25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,15);
    mob:setMod(MOD_REGEN,25);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);

end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
    local MightyStrikesCount = mob:getLocalVar("MSC");

    if (MightyStrikesCount == 3 and mob:getHPP() <= 20) then
        mob:setLocalVar("MSC", 4);
        mob:useMobAbility(688); -- MS
        mob:addMod(MOD_REGAIN, 10);
        mob:addMod(MOD_DOUBLE_ATTACK, 15);
        mob:addStatusEffect(EFFECT_HASTE,100,0,100);
        mob:getStatusEffect(EFFECT_HASTE):setFlag(32);
        mob:addStatusEffect(EFFECT_ATTACK_BOOST,75,0,0);
        mob:getStatusEffect(EFFECT_ATTACK_BOOST):setFlag(32);
    elseif (MightyStrikesCount == 2 and mob:getHPP() <= 40) then
        mob:setLocalVar("MSC", 3);
        mob:useMobAbility(688); -- MS
    elseif (MightyStrikesCount == 1 and mob:getHPP() <= 60) then
        mob:setLocalVar("MSC", 2);
        mob:useMobAbility(688); -- MS
    elseif (MightyStrikesCount == 0 and mob:getHPP() <= 80) then
        mob:setLocalVar("MSC", 1);
        mob:useMobAbility(688); -- MS
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 10);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    SpawnMob(mob:getID()+3) -- Spawns Lofty_Zilant
end;
