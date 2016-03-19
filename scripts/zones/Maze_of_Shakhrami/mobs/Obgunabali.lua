-----------------------------------
-- Area: ?
-- VWNM: Ogbunabali
-----------------------------------
package.loaded["scripts/zones/Maze_of_Shakhrami/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Maze_of_Shakhrami/TextIDs");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,175);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1900);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);
    mob:setMod(MOD_HASTE_ABILITY, 35);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9608,8919,50); -- Ifritear
        SetDropRate(9608,8920,0); -- Leviatear
        SetDropRate(9608,8921,0); -- Ramutear
        SetDropRate(9608,8922,0); -- Garutear
        SetDropRate(9608,8923,0); -- Titatear
        SetDropRate(9608,8924,0); -- Shivatear
        SetDropRate(9608,8925,0); -- Carbutear
        SetDropRate(9608,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9608,8919,0); -- Ifritear
        SetDropRate(9608,8920,50); -- Leviatear
        SetDropRate(9608,8921,0); -- Ramutear
        SetDropRate(9608,8922,0); -- Garutear
        SetDropRate(9608,8923,0); -- Titatear
        SetDropRate(9608,8924,0); -- Shivatear
        SetDropRate(9608,8925,0); -- Carbutear
        SetDropRate(9608,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9608,8919,0); -- Ifritear
        SetDropRate(9608,8920,0); -- Leviatear
        SetDropRate(9608,8921,50); -- Ramutear
        SetDropRate(9608,8922,0); -- Garutear
        SetDropRate(9608,8923,0); -- Titatear
        SetDropRate(9608,8924,0); -- Shivatear
        SetDropRate(9608,8925,0); -- Carbutear
        SetDropRate(9608,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9608,8919,0); -- Ifritear
        SetDropRate(9608,8920,0); -- Leviatear
        SetDropRate(9608,8921,0); -- Ramutear
        SetDropRate(9608,8922,50); -- Garutear
        SetDropRate(9608,8923,0); -- Titatear
        SetDropRate(9608,8924,0); -- Shivatear
        SetDropRate(9608,8925,0); -- Carbutear
        SetDropRate(9608,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9608,8919,0); -- Ifritear
        SetDropRate(9608,8920,0); -- Leviatear
        SetDropRate(9608,8921,0); -- Ramutear
        SetDropRate(9608,8922,0); -- Garutear
        SetDropRate(9608,8923,50); -- Titatear
        SetDropRate(9608,8924,0); -- Shivatear
        SetDropRate(9608,8925,0); -- Carbutear
        SetDropRate(9608,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9608,8919,0); -- Ifritear
        SetDropRate(9608,8920,0); -- Leviatear
        SetDropRate(9608,8921,0); -- Ramutear
        SetDropRate(9608,8922,0); -- Garutear
        SetDropRate(9608,8923,0); -- Titatear
        SetDropRate(9608,8924,50); -- Shivatear
        SetDropRate(9608,8925,0); -- Carbutear
        SetDropRate(9608,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9608,8919,0); -- Ifritear
        SetDropRate(9608,8920,0); -- Leviatear
        SetDropRate(9608,8921,0); -- Ramutear
        SetDropRate(9608,8922,0); -- Garutear
        SetDropRate(9608,8923,0); -- Titatear
        SetDropRate(9608,8924,0); -- Shivatear
        SetDropRate(9608,8925,50); -- Carbutear
        SetDropRate(9608,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9608,8919,0); -- Ifritear
        SetDropRate(9608,8920,0); -- Leviatear
        SetDropRate(9608,8921,0); -- Ramutear
        SetDropRate(9608,8922,0); -- Garutear
        SetDropRate(9608,8923,0); -- Titatear
        SetDropRate(9608,8924,0); -- Shivatear
        SetDropRate(9608,8925,0); -- Carbutear
        SetDropRate(9608,8926,50); -- Fenritear
    end
    
end;
-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local depopTime = mob:getLocalVar("depopTime");

end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 7 or target:hasStatusEffect(EFFECT_PETRIFICATION) == true) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_PETRIFICATION,10,0,15);
        return SUBEFFECT_PETRIFY,163,EFFECT_PETRIFICATION;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(JADE_STRATUM_ABYSSITE_II)) then -- Ogbunabali Kill
        ally:addKeyItem(JADE_STRATUM_ABYSSITE_III);
        ally:delKeyItem(JADE_STRATUM_ABYSSITE_II);
        ally:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE_III);
    end

    ally:addCurrency("bayld", 50);
    ally:addExp(10000);
end;