-----------------------------------
-- Area: ?
-- VWNM: Lorbulcrud
-----------------------------------
package.loaded["scripts/zones/Gusgen_Mines/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Gusgen_Mines/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 35);

    -- addMod
    mob:addMod(MOD_ATT,175);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2000);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);
    mob:setMod(MOD_UDMGPHYS,50);
    mob:setMod(MOD_DEF,1000);
    mob:setMod(MOD_ACC,1400);

    -- Vars
    mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9606,8919,50); -- Ifritear
        SetDropRate(9606,8920,0); -- Leviatear
        SetDropRate(9606,8921,0); -- Ramutear
        SetDropRate(9606,8922,0); -- Garutear
        SetDropRate(9606,8923,0); -- Titatear
        SetDropRate(9606,8924,0); -- Shivatear
        SetDropRate(9606,8925,0); -- Carbutear
        SetDropRate(9606,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9606,8919,0); -- Ifritear
        SetDropRate(9606,8920,50); -- Leviatear
        SetDropRate(9606,8921,0); -- Ramutear
        SetDropRate(9606,8922,0); -- Garutear
        SetDropRate(9606,8923,0); -- Titatear
        SetDropRate(9606,8924,0); -- Shivatear
        SetDropRate(9606,8925,0); -- Carbutear
        SetDropRate(9606,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9606,8919,0); -- Ifritear
        SetDropRate(9606,8920,0); -- Leviatear
        SetDropRate(9606,8921,50); -- Ramutear
        SetDropRate(9606,8922,0); -- Garutear
        SetDropRate(9606,8923,0); -- Titatear
        SetDropRate(9606,8924,0); -- Shivatear
        SetDropRate(9606,8925,0); -- Carbutear
        SetDropRate(9606,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9606,8919,0); -- Ifritear
        SetDropRate(9606,8920,0); -- Leviatear
        SetDropRate(9606,8921,0); -- Ramutear
        SetDropRate(9606,8922,50); -- Garutear
        SetDropRate(9606,8923,0); -- Titatear
        SetDropRate(9606,8924,0); -- Shivatear
        SetDropRate(9606,8925,0); -- Carbutear
        SetDropRate(9606,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9606,8919,0); -- Ifritear
        SetDropRate(9606,8920,0); -- Leviatear
        SetDropRate(9606,8921,0); -- Ramutear
        SetDropRate(9606,8922,0); -- Garutear
        SetDropRate(9606,8923,50); -- Titatear
        SetDropRate(9606,8924,0); -- Shivatear
        SetDropRate(9606,8925,0); -- Carbutear
        SetDropRate(9606,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9606,8919,0); -- Ifritear
        SetDropRate(9606,8920,0); -- Leviatear
        SetDropRate(9606,8921,0); -- Ramutear
        SetDropRate(9606,8922,0); -- Garutear
        SetDropRate(9606,8923,0); -- Titatear
        SetDropRate(9606,8924,50); -- Shivatear
        SetDropRate(9606,8925,0); -- Carbutear
        SetDropRate(9606,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9606,8919,0); -- Ifritear
        SetDropRate(9606,8920,0); -- Leviatear
        SetDropRate(9606,8921,0); -- Ramutear
        SetDropRate(9606,8922,0); -- Garutear
        SetDropRate(9606,8923,0); -- Titatear
        SetDropRate(9606,8924,0); -- Shivatear
        SetDropRate(9606,8925,50); -- Carbutear
        SetDropRate(9606,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9606,8919,0); -- Ifritear
        SetDropRate(9606,8920,0); -- Leviatear
        SetDropRate(9606,8921,0); -- Ramutear
        SetDropRate(9606,8922,0); -- Garutear
        SetDropRate(9606,8923,0); -- Titatear
        SetDropRate(9606,8924,0); -- Shivatear
        SetDropRate(9606,8925,0); -- Carbutear
        SetDropRate(9606,8926,50); -- Fenritear
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

    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 50);
    ally:addExp(10000);
    if (ally:hasKeyItem(INDIGO_STRATUM_ABYSSITE_II)) then -- Lorbulcrud Kill
       ally:addKeyItem(INDIGO_STRATUM_ABYSSITE_III);
       ally:delKeyItem(INDIGO_STRATUM_ABYSSITE_II);
       ally:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE_III);
    end
end;