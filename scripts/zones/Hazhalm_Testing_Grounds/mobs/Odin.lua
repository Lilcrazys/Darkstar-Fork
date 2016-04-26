-----------------------------------
-- Area: ?
--  NM:  Odin
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMobMod(MOBMOD_DRAW_IN, 2); -- Alliance Draw In

    -- addMod
    mob:addMod(MOD_MDEF,130);
    mob:addMod(MOD_DEF,175);
    mob:addMod(MOD_ATT,300);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 250);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2500);
    mob:setMod(MOD_MATT,120);
    mob:setMod(MOD_ACC,2500);
    mob:setMod(MOD_TERRORRES,500);
    mob:setMod(MOD_STUNRES,5000);
end;
-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local BAM = mob:getLocalVar("BAM");

    if (mob:getHPP() <= 9 and BAM == 8) then
        mob:useMobAbility(2304); -- Sanngetall
        mob:useMobAbility(1870); -- Zantesuken
        mob:setLocalVar("BAM", 9);
    elseif (mob:getHPP() <= 19 and BAM == 7) then
        mob:useMobAbility(2304); -- Sanngetall
        mob:useMobAbility(2305); -- Geirrothr
        mob:setLocalVar("BAM", 8);
    elseif (mob:getHPP() <= 29 and BAM == 6) then
        mob:useMobAbility(2304); -- Sanngetall
        mob:useMobAbility(2305); -- Geirrothr
        mob:setLocalVar("BAM", 7);
    elseif (mob:getHPP() <= 39 and BAM == 5) then
        mob:useMobAbility(2304); -- Sanngetall
        mob:setLocalVar("BAM", 6);
    elseif (mob:getHPP() <= 49 and BAM == 4) then
        mob:useMobAbility(2304); -- Sanngetall
        mob:useMobAbility(2305); -- Geirrothr
        mob:setLocalVar("BAM", 5);
    elseif (mob:getHPP() <= 59 and BAM == 3) then
        mob:useMobAbility(2304); -- Sanngetall
        mob:setLocalVar("BAM", 4);
    elseif (mob:getHPP() <= 69 and BAM == 2) then
        mob:useMobAbility(2304); -- Sanngetall
        mob:setLocalVar("BAM", 3);
    elseif (mob:getHPP() <= 79 and BAM == 1) then
        mob:useMobAbility(2304); -- Sanngetall
        mob:useMobAbility(2305); -- Geirrothr
        mob:setLocalVar("BAM", 2);
    elseif (mob:getHPP() <= 89 and BAM == 0) then
        mob:useMobAbility(2304); -- Sanngetall
        mob:setLocalVar("BAM", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:getMainJob() == JOB_SMN and ally:hasSpell(305) == false) then
        ally:addSpell(305);
    end
    ally:addCurrency("legion_point", 500);
end;